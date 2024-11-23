namespace QuanLyCuaHangBanSach
{
    partial class fKhoSach
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panelDMSS = new System.Windows.Forms.Panel();
            this.lsvDanhGia = new System.Windows.Forms.ListView();
            this.MaSach1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.TenSach1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SoLuong1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.panel3 = new System.Windows.Forms.Panel();
            this.txtSoLuong = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtTenSach = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btnLuu = new System.Windows.Forms.Button();
            this.btnHuy = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.txtMaSach = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lbMaSach = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.lsvKhoSach = new System.Windows.Forms.ListView();
            this.MaSach = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.TenSach = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SoLuong = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.panel2 = new System.Windows.Forms.Panel();
            this.cbTimKiem = new System.Windows.Forms.ComboBox();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.panelDMSS.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelDMSS
            // 
            this.panelDMSS.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.panelDMSS.Controls.Add(this.lsvDanhGia);
            this.panelDMSS.Controls.Add(this.panel3);
            this.panelDMSS.Controls.Add(this.panel1);
            this.panelDMSS.Controls.Add(this.lsvKhoSach);
            this.panelDMSS.Controls.Add(this.panel2);
            this.panelDMSS.Location = new System.Drawing.Point(4, 2);
            this.panelDMSS.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panelDMSS.Name = "panelDMSS";
            this.panelDMSS.Size = new System.Drawing.Size(1641, 637);
            this.panelDMSS.TabIndex = 4;
            // 
            // lsvDanhGia
            // 
            this.lsvDanhGia.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.MaSach1,
            this.TenSach1,
            this.SoLuong1});
            this.lsvDanhGia.FullRowSelect = true;
            this.lsvDanhGia.HideSelection = false;
            this.lsvDanhGia.Location = new System.Drawing.Point(1090, 233);
            this.lsvDanhGia.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.lsvDanhGia.Name = "lsvDanhGia";
            this.lsvDanhGia.Size = new System.Drawing.Size(535, 389);
            this.lsvDanhGia.TabIndex = 30;
            this.lsvDanhGia.UseCompatibleStateImageBehavior = false;
            this.lsvDanhGia.View = System.Windows.Forms.View.Details;
            // 
            // MaSach1
            // 
            this.MaSach1.Text = "Mã Sách";
            this.MaSach1.Width = 100;
            // 
            // TenSach1
            // 
            this.TenSach1.Text = "Tên Sách";
            this.TenSach1.Width = 170;
            // 
            // SoLuong1
            // 
            this.SoLuong1.Text = "Số Lượng Kho";
            this.SoLuong1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.SoLuong1.Width = 100;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.Control;
            this.panel3.Controls.Add(this.txtSoLuong);
            this.panel3.Controls.Add(this.label5);
            this.panel3.Controls.Add(this.txtTenSach);
            this.panel3.Controls.Add(this.label4);
            this.panel3.Controls.Add(this.btnLuu);
            this.panel3.Controls.Add(this.btnHuy);
            this.panel3.Controls.Add(this.btnSua);
            this.panel3.Controls.Add(this.txtMaSach);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.lbMaSach);
            this.panel3.Location = new System.Drawing.Point(17, 210);
            this.panel3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(510, 410);
            this.panel3.TabIndex = 29;
            // 
            // txtSoLuong
            // 
            this.txtSoLuong.Location = new System.Drawing.Point(135, 232);
            this.txtSoLuong.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtSoLuong.Name = "txtSoLuong";
            this.txtSoLuong.Size = new System.Drawing.Size(359, 22);
            this.txtSoLuong.TabIndex = 16;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Arial", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(8, 230);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(111, 22);
            this.label5.TabIndex = 15;
            this.label5.Text = "Số Lượng:";
            // 
            // txtTenSach
            // 
            this.txtTenSach.Location = new System.Drawing.Point(135, 160);
            this.txtTenSach.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtTenSach.Name = "txtTenSach";
            this.txtTenSach.Size = new System.Drawing.Size(359, 22);
            this.txtTenSach.TabIndex = 14;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(8, 158);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 22);
            this.label4.TabIndex = 13;
            this.label4.Text = "Tên Sách:";
            // 
            // btnLuu
            // 
            this.btnLuu.BackColor = System.Drawing.Color.DarkSalmon;
            this.btnLuu.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLuu.Location = new System.Drawing.Point(189, 314);
            this.btnLuu.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(133, 64);
            this.btnLuu.TabIndex = 11;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = false;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnHuy
            // 
            this.btnHuy.BackColor = System.Drawing.Color.DarkSalmon;
            this.btnHuy.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHuy.Location = new System.Drawing.Point(359, 314);
            this.btnHuy.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnHuy.Name = "btnHuy";
            this.btnHuy.Size = new System.Drawing.Size(133, 64);
            this.btnHuy.TabIndex = 12;
            this.btnHuy.Text = "Hủy";
            this.btnHuy.UseVisualStyleBackColor = false;
            this.btnHuy.Click += new System.EventHandler(this.btnHuy_Click);
            // 
            // btnSua
            // 
            this.btnSua.BackColor = System.Drawing.Color.DarkSalmon;
            this.btnSua.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSua.Location = new System.Drawing.Point(22, 314);
            this.btnSua.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(133, 64);
            this.btnSua.TabIndex = 9;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = false;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // txtMaSach
            // 
            this.txtMaSach.Location = new System.Drawing.Point(135, 97);
            this.txtMaSach.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtMaSach.Name = "txtMaSach";
            this.txtMaSach.Size = new System.Drawing.Size(359, 22);
            this.txtMaSach.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Coral;
            this.label2.Location = new System.Drawing.Point(96, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(325, 29);
            this.label2.TabIndex = 7;
            this.label2.Text = "Thông Tin Sách Trong Kho";
            // 
            // lbMaSach
            // 
            this.lbMaSach.AutoSize = true;
            this.lbMaSach.Font = new System.Drawing.Font("Arial", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMaSach.Location = new System.Drawing.Point(18, 95);
            this.lbMaSach.Name = "lbMaSach";
            this.lbMaSach.Size = new System.Drawing.Size(97, 22);
            this.lbMaSach.TabIndex = 1;
            this.lbMaSach.Text = "Mã Sách:";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Control;
            this.panel1.Controls.Add(this.radioButton2);
            this.panel1.Controls.Add(this.radioButton1);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(1087, 14);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(537, 202);
            this.panel1.TabIndex = 24;
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radioButton2.Location = new System.Drawing.Point(47, 137);
            this.radioButton2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(383, 28);
            this.radioButton2.TabIndex = 16;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Top 10 sách có số lượng tồn kho ít nhất";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radioButton1.Location = new System.Drawing.Point(47, 81);
            this.radioButton1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(421, 28);
            this.radioButton1.TabIndex = 15;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Top 10 sách có số lượng tồn kho nhiều nhất";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Coral;
            this.label1.Location = new System.Drawing.Point(157, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(237, 29);
            this.label1.TabIndex = 14;
            this.label1.Text = "Đánh Giá Kho Sách";
            // 
            // lsvKhoSach
            // 
            this.lsvKhoSach.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.MaSach,
            this.TenSach,
            this.SoLuong});
            this.lsvKhoSach.FullRowSelect = true;
            this.lsvKhoSach.HideSelection = false;
            this.lsvKhoSach.Location = new System.Drawing.Point(540, 14);
            this.lsvKhoSach.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.lsvKhoSach.Name = "lsvKhoSach";
            this.lsvKhoSach.Size = new System.Drawing.Size(536, 607);
            this.lsvKhoSach.TabIndex = 24;
            this.lsvKhoSach.UseCompatibleStateImageBehavior = false;
            this.lsvKhoSach.View = System.Windows.Forms.View.Details;
            this.lsvKhoSach.SelectedIndexChanged += new System.EventHandler(this.lsvKhoSach_SelectedIndexChanged);
            // 
            // MaSach
            // 
            this.MaSach.Text = "Mã Sách";
            this.MaSach.Width = 100;
            // 
            // TenSach
            // 
            this.TenSach.Text = "Tên Sách";
            this.TenSach.Width = 170;
            // 
            // SoLuong
            // 
            this.SoLuong.Text = "Số Lượng Kho";
            this.SoLuong.Width = 100;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.Control;
            this.panel2.Controls.Add(this.cbTimKiem);
            this.panel2.Controls.Add(this.btnTimKiem);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Location = new System.Drawing.Point(17, 14);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(510, 182);
            this.panel2.TabIndex = 23;
            // 
            // cbTimKiem
            // 
            this.cbTimKiem.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cbTimKiem.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbTimKiem.DropDownHeight = 60;
            this.cbTimKiem.FormattingEnabled = true;
            this.cbTimKiem.IntegralHeight = false;
            this.cbTimKiem.Location = new System.Drawing.Point(22, 122);
            this.cbTimKiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTimKiem.Name = "cbTimKiem";
            this.cbTimKiem.Size = new System.Drawing.Size(311, 24);
            this.cbTimKiem.TabIndex = 17;
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.BackColor = System.Drawing.Color.DarkSalmon;
            this.btnTimKiem.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.Location = new System.Drawing.Point(358, 102);
            this.btnTimKiem.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(134, 61);
            this.btnTimKiem.TabIndex = 14;
            this.btnTimKiem.Text = "Tìm Kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = false;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Coral;
            this.label3.Location = new System.Drawing.Point(125, 26);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(247, 29);
            this.label3.TabIndex = 14;
            this.label3.Text = "Tìm Kiếm Thông Tin";
            // 
            // fKhoSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(1659, 678);
            this.Controls.Add(this.panelDMSS);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "fKhoSach";
            this.Text = "fKhoSach";
            this.Load += new System.EventHandler(this.fKhoSach_Load);
            this.panelDMSS.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelDMSS;
        private System.Windows.Forms.ListView lsvKhoSach;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ComboBox cbTimKiem;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListView lsvDanhGia;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.Button btnHuy;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.TextBox txtMaSach;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lbMaSach;
        private System.Windows.Forms.TextBox txtSoLuong;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtTenSach;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.ColumnHeader MaSach1;
        private System.Windows.Forms.ColumnHeader TenSach1;
        private System.Windows.Forms.ColumnHeader SoLuong1;
        private System.Windows.Forms.ColumnHeader MaSach;
        private System.Windows.Forms.ColumnHeader TenSach;
        private System.Windows.Forms.ColumnHeader SoLuong;
    }
}