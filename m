Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7B148DBD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 19:26:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053D772B4F;
	Fri, 24 Jan 2020 18:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25F0E72B4F;
 Fri, 24 Jan 2020 18:26:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D12EA0009;
 Fri, 24 Jan 2020 18:26:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 24 Jan 2020 18:26:15 -0000
Message-ID: <157989037508.15091.6042031869306724995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1579871655.git.jani.nikula@intel.com>
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_mass_conversion_to_intel=5Fde=5F*=28=29?=
 =?utf-8?q?_register_accessors?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: mass conversion to intel_de_*() register accessors
URL   : https://patchwork.freedesktop.org/series/72533/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c07095a827f3 drm/i915/icl_dsi: use intel_de_*() functions for register access
36f2779671c5 drm/i915/audio: use intel_de_*() functions for register access
-:346: WARNING:LONG_LINE: line over 100 characters
#346: FILE: drivers/gpu/drm/i915/display/intel_audio.c:875:
+				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));

total: 0 errors, 1 warnings, 0 checks, 306 lines checked
65fb0d418cb5 drm/i915/cdclk: use intel_de_*() functions for register access
-:62: WARNING:LONG_LINE: line over 100 characters
#62: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:241:
+			    IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv) ? HPLLVCO_MOBILE : HPLLVCO);

-:306: CHECK:CAMELCASE: Avoid CamelCase: <CNL_DSSM_CDCLK_PLL_REFCLK_24MHz>
#306: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1301:
+	if (intel_de_read(dev_priv, SKL_DSSM) & CNL_DSSM_CDCLK_PLL_REFCLK_24MHz)

-:447: ERROR:CODE_INDENT: code indent should use tabs where possible
#447: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2553:
+^I^I               DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));$

total: 1 errors, 1 warnings, 1 checks, 398 lines checked
e3e9bb668fb8 drm/i915/color: use intel_de_*() functions for register access
-:279: ERROR:CODE_INDENT: code indent should use tabs where possible
#279: FILE: drivers/gpu/drm/i915/display/intel_color.c:564:
+^I^I               ilk_lut_10(&lut[i]));$

-:349: ERROR:CODE_INDENT: code indent should use tabs where possible
#349: FILE: drivers/gpu/drm/i915/display/intel_color.c:755:
+^I^I               lut[i].green);$

total: 2 errors, 0 warnings, 0 checks, 419 lines checked
975fff8f273d drm/i915/combo_phy: use intel_de_*() functions for register access
d93abf166aae drm/i915/crt: use intel_de_*() functions for register access
-:95: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#95: FILE: drivers/gpu/drm/i915/display/intel_crt.c:445:
+		save_adpa = adpa = intel_de_read(dev_priv, crt->adpa_reg);

-:129: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#129: FILE: drivers/gpu/drm/i915/display/intel_crt.c:501:
+	save_adpa = adpa = intel_de_read(dev_priv, crt->adpa_reg);

-:206: WARNING:LONG_LINE: line over 100 characters
#206: FILE: drivers/gpu/drm/i915/display/intel_crt.c:983:
+			       adpa | ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);

total: 0 errors, 1 warnings, 2 checks, 157 lines checked
3626a27aaf8e drm/i915/ddi: use intel_de_*() functions for register access
-:128: WARNING:LONG_LINE: line over 100 characters
#128: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1168:
+		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);

-:161: WARNING:LONG_LINE: line over 100 characters
#161: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1192:
+			       DP_TP_CTL_FDI_AUTOTRAIN | DP_TP_CTL_ENHANCED_FRAME_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_ENABLE);

-:173: WARNING:LONG_LINE: line over 100 characters
#173: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1199:
+			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));

-:256: WARNING:LONG_LINE: line over 100 characters
#256: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1267:
+		       DP_TP_CTL_FDI_AUTOTRAIN | DP_TP_CTL_LINK_TRAIN_NORMAL | DP_TP_CTL_ENHANCED_FRAME_ENABLE | DP_TP_CTL_ENABLE);

-:953: WARNING:LONG_LINE: line over 100 characters
#953: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3211:
+			       intel_de_read(dev_priv, DPCLKA_CFGCR0) | DPCLKA_CFGCR0_DDI_CLK_OFF(port));

total: 0 errors, 5 warnings, 0 checks, 1169 lines checked
dadca7367192 drm/i915/display: use intel_de_*() functions for register access
-:63: WARNING:LONG_LINE: line over 100 characters
#63: FILE: drivers/gpu/drm/i915/display/intel_display.c:522:
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);

-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: drivers/gpu/drm/i915/display/intel_display.c:522:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);$

-:69: WARNING:LONG_LINE: line over 100 characters
#69: FILE: drivers/gpu/drm/i915/display/intel_display.c:525:
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));

-:69: ERROR:CODE_INDENT: code indent should use tabs where possible
#69: FILE: drivers/gpu/drm/i915/display/intel_display.c:525:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));$

-:80: ERROR:CODE_INDENT: code indent should use tabs where possible
#80: FILE: drivers/gpu/drm/i915/display/intel_display.c:535:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);$

-:85: ERROR:CODE_INDENT: code indent should use tabs where possible
#85: FILE: drivers/gpu/drm/i915/display/intel_display.c:538:
+^I^I               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);$

-:656: WARNING:LONG_LINE: line over 100 characters
#656: FILE: drivers/gpu/drm/i915/display/intel_display.c:5012:
+		               intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);

-:656: ERROR:CODE_INDENT: code indent should use tabs where possible
#656: FILE: drivers/gpu/drm/i915/display/intel_display.c:5012:
+^I^I               intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);$

-:1586: WARNING:LONG_LINE: line over 100 characters
#1586: FILE: drivers/gpu/drm/i915/display/intel_display.c:8242:
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

-:1627: ERROR:CODE_INDENT: code indent should use tabs where possible
#1627: FILE: drivers/gpu/drm/i915/display/intel_display.c:8643:
+^I^I               vsyncshift);$

-:1630: WARNING:LONG_LINE: line over 100 characters
#1630: FILE: drivers/gpu/drm/i915/display/intel_display.c:8646:
+		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htotal - 1) << 16));

-:1632: WARNING:LONG_LINE: line over 100 characters
#1632: FILE: drivers/gpu/drm/i915/display/intel_display.c:8648:
+		       (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));

-:1634: WARNING:LONG_LINE: line over 100 characters
#1634: FILE: drivers/gpu/drm/i915/display/intel_display.c:8650:
+		       (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));

-:1641: WARNING:LONG_LINE: line over 100 characters
#1641: FILE: drivers/gpu/drm/i915/display/intel_display.c:8657:
+		       (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));

-:1651: ERROR:CODE_INDENT: code indent should use tabs where possible
#1651: FILE: drivers/gpu/drm/i915/display/intel_display.c:8666:
+^I^I               intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));$

-:1672: WARNING:LONG_LINE: line over 100 characters
#1672: FILE: drivers/gpu/drm/i915/display/intel_display.c:8693:
+		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK_HSW;

-:2078: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2078: FILE: drivers/gpu/drm/i915/display/intel_display.c:10235:
+			m2_n2->link_n =	intel_de_read(dev_priv,
+							     PIPE_LINK_N2(transcoder));

-:2080: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2080: FILE: drivers/gpu/drm/i915/display/intel_display.c:10237:
+			m2_n2->gmch_m =	intel_de_read(dev_priv,
+							     PIPE_DATA_M2(transcoder))

-:2085: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2085: FILE: drivers/gpu/drm/i915/display/intel_display.c:10240:
+			m2_n2->gmch_n =	intel_de_read(dev_priv,
+							     PIPE_DATA_N2(transcoder));

-:2325: ERROR:CODE_INDENT: code indent should use tabs where possible
#2325: FILE: drivers/gpu/drm/i915/display/intel_display.c:10946:
+^I^I^I^I        TRANS_DDI_FUNC_CTL2(cpu_transcoder));$

-:2325: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2325: FILE: drivers/gpu/drm/i915/display/intel_display.c:10946:
+	trans_port_sync = intel_de_read(dev_priv,
+				        TRANS_DDI_FUNC_CTL2(cpu_transcoder));

-:2464: CHECK:CAMELCASE: Avoid CamelCase: <ILK_eDP_A_DISABLE>
#2464: FILE: drivers/gpu/drm/i915/display/intel_display.c:16612:
+	if (IS_GEN(dev_priv, 5) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))

total: 8 errors, 9 warnings, 5 checks, 2683 lines checked
9129d0adc87c drm/i915/display_power: use intel_de_*() functions for register access
-:312: WARNING:LONG_LINE: line over 100 characters
#312: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:944:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

-:334: WARNING:LONG_LINE: line over 100 characters
#334: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:968:
+			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);

total: 0 errors, 2 warnings, 0 checks, 734 lines checked
f827549283b1 drm/i915/dp: use intel_de_*() functions for register access
-:710: WARNING:LONG_LINE: line over 100 characters
#710: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6917:
+			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));

-:769: WARNING:LINE_SPACING: Missing a blank line after declarations
#769: FILE: drivers/gpu/drm/i915/display/intel_dp.c:7560:
+		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
+		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,

total: 0 errors, 2 warnings, 0 checks, 660 lines checked
59d4feee81b6 drm/i915/dpio_phy: use intel_de_*() functions for register access
dac3c1307ff6 drm/i915/dpll_mgr: use intel_de_*() functions for register access
62cb010d54e3 drm/i915/dp_mst: use intel_de_*() functions for register access
6351092052d2 drm/i915/dsb: use intel_de_*() functions for register access
6b856ed292fb drm/i915/dvo: use intel_de_*() functions for register access
-:131: WARNING:LONG_LINE: line over 100 characters
#131: FILE: drivers/gpu/drm/i915/display/intel_dvo.c:305:
+		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) | (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
46415f31fdbe drm/i915/fbc: use intel_de_*() functions for register access
-:263: WARNING:LONG_LINE: line over 100 characters
#263: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:338:
+			       intel_de_read(dev_priv, CHICKEN_PIPESL_1(params->crtc.pipe)) | HSW_FBCQ_DIS);

-:312: ERROR:CODE_INDENT: code indent should use tabs where possible
#312: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1371:
+^I^I               500 << FBC_CTL_INTERVAL_SHIFT);$

total: 1 errors, 1 warnings, 0 checks, 247 lines checked
f6f92e9ec996 drm/i915/fifo_underrun: use intel_de_*() functions for register access
fd2ac1b92db5 drm/i915/gmbus: use intel_de_*() functions for register access
-:164: WARNING:LONG_LINE: line over 100 characters
#164: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:414:
+			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);

-:198: WARNING:LONG_LINE: line over 100 characters
#198: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:493:
+			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);

total: 0 errors, 2 warnings, 0 checks, 205 lines checked
3525b2857c38 drm/i915/hdcp: use intel_de_*() functions for register access
-:60: ERROR:CODE_INDENT: code indent should use tabs where possible
#60: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:116:
+^I                     HDCP_STATUS(dev_priv, cpu_transcoder, port)) &$

-:70: ERROR:CODE_INDENT: code indent should use tabs where possible
#70: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:125:
+^I                     HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &$

-:83: WARNING:LONG_LINE: line over 100 characters
#83: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:191:
+		       HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS | HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);

-:435: WARNING:LONG_LINE: line over 100 characters
#435: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1565:
+			       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) | CTL_LINK_ENCRYPTION_REQ);

-:451: WARNING:LONG_LINE: line over 100 characters
#451: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:1590:
+		       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) & ~CTL_LINK_ENCRYPTION_REQ);

total: 2 errors, 3 warnings, 0 checks, 380 lines checked
3841cf8aa830 drm/i915/hdmi: use intel_de_*() functions for register access
-:323: ERROR:CODE_INDENT: code indent should use tabs where possible
#323: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:495:
+^I^I^I^I        VLV_TVIDEO_DIP_DATA(crtc->pipe));$

-:386: ERROR:CODE_INDENT: code indent should use tabs where possible
#386: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:567:
+^I^I^I^I        hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2));$

-:668: ERROR:CODE_INDENT: code indent should use tabs where possible
#668: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1936:
+^I^I               temp & ~SDVO_ENABLE);$

-:703: WARNING:LONG_LINE: line over 100 characters
#703: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1982:
+		               intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);

-:703: ERROR:CODE_INDENT: code indent should use tabs where possible
#703: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1982:
+^I^I               intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);$

-:727: WARNING:LONG_LINE: line over 100 characters
#727: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1999:
+		               intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);

-:727: ERROR:CODE_INDENT: code indent should use tabs where possible
#727: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1999:
+^I^I               intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);$

-:774: WARNING:LINE_SPACING: Missing a blank line after declarations
#774: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3201:
+		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
+		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,

-:775: ERROR:CODE_INDENT: code indent should use tabs where possible
#775: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3202:
+^I^I               (temp & ~0xf) | 0xd);$

total: 6 errors, 3 warnings, 0 checks, 677 lines checked
38949463942f drm/i915/lpe_audio: use intel_de_*() functions for register access
fa2af54524c8 drm/i915/lvds: use intel_de_*() functions for register access
-:121: WARNING:LONG_LINE: line over 100 characters
#121: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:213:
+		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) | REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) | REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));

-:127: WARNING:LONG_LINE: line over 100 characters
#127: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:216:
+		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) | REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));

-:134: WARNING:LONG_LINE: line over 100 characters
#134: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:219:
+		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));

total: 0 errors, 3 warnings, 0 checks, 135 lines checked
33568867e120 drm/i915/overlay: use intel_de_*() functions for register access
70abf854e570 drm/i915/panel: use intel_de_*() functions for register access
-:107: WARNING:LINE_SPACING: Missing a blank line after declarations
#107: FILE: drivers/gpu/drm/i915/display/intel_panel.c:610:
+	u32 val = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, val | level);

total: 0 errors, 1 warnings, 0 checks, 609 lines checked
5a5f3f5ef651 drm/i915/pipe_crc: use intel_de_*() functions for register access
406166f74cf9 drm/i915/psr: use intel_de_*() functions for register access
-:158: WARNING:LONG_LINE: line over 100 characters
#158: FILE: drivers/gpu/drm/i915/display/intel_psr.c:740:
+		WARN_ON(intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv->psr.transcoder)) & EDP_PSR2_ENABLE);

total: 0 errors, 1 warnings, 0 checks, 183 lines checked
e4aa567631f4 drm/i915/sdvo: use intel_de_*() functions for register access
c3ae7ea81350 drm/i915/sprite: use intel_de_*() functions for register access
-:188: WARNING:LONG_LINE: line over 100 characters
#188: FILE: drivers/gpu/drm/i915/display/intel_sprite.c:670:
+				  (plane_state->color_plane[1].y << 16) | plane_state->color_plane[1].x);

total: 0 errors, 1 warnings, 0 checks, 510 lines checked
afa64a3c6bbd drm/i915/tv: use intel_de_*() functions for register access
-:206: WARNING:LONG_LINE: line over 100 characters
#206: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1529:
+			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT) | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));

-:259: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#259: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1590:
+	save_tv_dac = tv_dac = intel_de_read(dev_priv, TV_DAC);

-:260: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#260: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1591:
+	save_tv_ctl = tv_ctl = intel_de_read(dev_priv, TV_CTL);

total: 0 errors, 1 warnings, 2 checks, 257 lines checked
12c70fe8b613 drm/i915/vdsc: use intel_de_*() functions for register access
f3b543cd4384 drm/i915/vga: use intel_de_*() functions for register access
cdbe7f57017f drm/i915/vlv_dsi: use intel_de_*() functions for register access
-:529: ERROR:CODE_INDENT: code indent should use tabs where possible
#529: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1085:
+^I^I^I^I              BXT_MIPI_TRANS_HACTIVE(port));$

-:533: ERROR:CODE_INDENT: code indent should use tabs where possible
#533: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1088:
+^I^I^I^I              BXT_MIPI_TRANS_VACTIVE(port));$

-:537: ERROR:CODE_INDENT: code indent should use tabs where possible
#537: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1091:
+^I^I^I^I              BXT_MIPI_TRANS_VTOTAL(port));$

-:656: WARNING:LONG_LINE: line over 100 characters
#656: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1389:
+			       adjusted_mode->crtc_vdisplay << VERTICAL_ADDRESS_SHIFT | mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);

-:678: WARNING:LONG_LINE: line over 100 characters
#678: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1438:
+				       txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);

-:686: WARNING:LONG_LINE: line over 100 characters
#686: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1441:
+				       txbyteclkhs(adjusted_mode->crtc_vtotal * adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);

-:776: WARNING:LONG_LINE: line over 100 characters
#776: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1509:
+			       intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);

-:788: WARNING:LONG_LINE: line over 100 characters
#788: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1516:
+				       intel_dsi->video_frmt_cfg_bits | intel_dsi->video_mode_format | IP_TG_CONFIG | RANDOM_DPI_DISPLAY_RESOLUTION);

total: 3 errors, 5 warnings, 0 checks, 733 lines checked
913f16a2e7ae drm/i915/vlv_dsi_pll: use intel_de_*() functions for register access

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
