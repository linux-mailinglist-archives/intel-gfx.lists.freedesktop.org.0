Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B00198FBB55
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 20:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E85610E5AD;
	Tue,  4 Jun 2024 18:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9567A10E5AD;
 Tue,  4 Jun 2024 18:13:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_finish_t?=
 =?utf-8?q?he_job_of_removing_implicit_dev=5Fpriv?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Jun 2024 18:13:41 -0000
Message-ID: <171752482161.2264328.17703539527115752087@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1717514638.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: finish the job of removing implicit dev_priv
URL   : https://patchwork.freedesktop.org/series/134451/
State : warning

== Summary ==

Error: dim checkpatch failed
301fdadb6527 drm/i915: pass dev_priv explicitly to DPLL
f37456cf6a7c drm/i915: pass dev_priv explicitly to DPLL_MD
bd7912ce3034 drm/i915: pass dev_priv explicitly to TRANS_HTOTAL
f728f29b82a3 drm/i915: pass dev_priv explicitly to TRANS_HBLANK
e4dc6336bcbd drm/i915: pass dev_priv explicitly to TRANS_HSYNC
4e67dbb56ed6 drm/i915: pass dev_priv explicitly to TRANS_VTOTAL
9dfa4dd6653f drm/i915: pass dev_priv explicitly to TRANS_VBLANK
92615829c03b drm/i915: pass dev_priv explicitly to TRANS_VSYNC
50b932b61a7e drm/i915: pass dev_priv explicitly to BCLRPAT
3e70b784a2d4 drm/i915: pass dev_priv explicitly to TRANS_VSYNCSHIFT
2fa652d1271c drm/i915: pass dev_priv explicitly to PIPESRC
5e53aaac3af9 drm/i915: pass dev_priv explicitly to TRANS_MULT
b25ffcfc105a drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_EN
cbdee1b701e3 drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_STAT
34fce7d287cf drm/i915: pass dev_priv explicitly to PFIT_CONTROL
a9fc052426c9 drm/i915: pass dev_priv explicitly to PFIT_PGM_RATIOS
1af8cbd2f3ef drm/i915: pass dev_priv explicitly to PFIT_AUTO_RATIOS
0283b622ec17 drm/i915: pass dev_priv explicitly to TRANSCONF
-:151: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#151: FILE: drivers/gpu/drm/i915/display/intel_display.c:2804:
+				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;

-:155: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#155: FILE: drivers/gpu/drm/i915/display/intel_display.c:2807:
+				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;

-:342: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#342: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:416:
+		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) >> 5;

total: 0 errors, 3 warnings, 0 checks, 378 lines checked
477fa5587d8b drm/i915: pass dev_priv explicitly to PIPEDSL
9dac0910a7e9 drm/i915: pass dev_priv explicitly to PIPEFRAME
8cd79ec7d473 drm/i915: pass dev_priv explicitly to PIPEFRAMEPIXEL
-:29: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:389:
+		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
bf398e7bbaca drm/i915: pass dev_priv explicitly to PIPESTAT
3d28129b88a7 drm/i915: pass dev_priv explicitly to PIPE_ARB_CTL
1e74371f31ab drm/i915: pass dev_priv explicitly to ICL_PIPESTATUS
-:48: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/i915_reg.h:1930:
+#define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
90edd5cc6639 drm/i915: pass dev_priv explicitly to DSPARB
-:123: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#123: FILE: drivers/gpu/drm/i915/i915_suspend.c:95:
+		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,

total: 0 errors, 0 warnings, 1 checks, 104 lines checked
e0277b8f5042 drm/i915: pass dev_priv explicitly to DSPFW1
-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2071:
+^I^I           FW_WM(srwm, SR) |$

-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2071:
+	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
+		           FW_WM(srwm, SR) |

-:74: ERROR:CODE_INDENT: code indent should use tabs where possible
#74: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2072:
+^I^I           FW_WM(8, CURSORB) |$

-:75: ERROR:CODE_INDENT: code indent should use tabs where possible
#75: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2073:
+^I^I           FW_WM(8, PLANEB) |$

-:76: ERROR:CODE_INDENT: code indent should use tabs where possible
#76: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2074:
+^I^I           FW_WM(8, PLANEA));$

total: 4 errors, 0 warnings, 1 checks, 83 lines checked
c6badbb03211 drm/i915: pass dev_priv explicitly to DSPFW2
-:40: ERROR:CODE_INDENT: code indent should use tabs where possible
#40: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2076:
+^I^I           FW_WM(8, CURSORA) |$

-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2076:
+	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
+		           FW_WM(8, CURSORA) |

-:41: ERROR:CODE_INDENT: code indent should use tabs where possible
#41: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2077:
+^I^I           FW_WM(8, PLANEC_OLD));$

total: 2 errors, 0 warnings, 1 checks, 51 lines checked
d445b791484c drm/i915: pass dev_priv explicitly to DSPFW3
-:89: ERROR:CODE_INDENT: code indent should use tabs where possible
#89: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2082:
+^I^I           FW_WM(cursor_sr, CURSOR_SR));$

-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/i915/display/i9xx_wm.c:2082:
+	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
+		           FW_WM(cursor_sr, CURSOR_SR));

total: 1 errors, 0 warnings, 1 checks, 104 lines checked
a5be892a21be drm/i915: pass dev_priv explicitly to PIPE_FRMCOUNT_G4X
4ac941106983 drm/i915: pass dev_priv explicitly to PIPE_FLIPCOUNT_G4X
d9589992ade4 drm/i915: pass dev_priv explicitly to CHV_BLEND
0133051e4b51 drm/i915: pass dev_priv explicitly to CHV_CANVAS
6ceef72a943a drm/i915: pass dev_priv explicitly to SWF0
-:33: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF0>
#33: FILE: drivers/gpu/drm/i915/i915_suspend.c:43:
+			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,

total: 0 errors, 0 warnings, 1 checks, 44 lines checked
597a06e475e8 drm/i915: pass dev_priv explicitly to SWF1
-:33: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF1>
#33: FILE: drivers/gpu/drm/i915/i915_suspend.c:45:
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,

total: 0 errors, 0 warnings, 1 checks, 56 lines checked
07ecea50cf43 drm/i915: pass dev_priv explicitly to SWF3
-:33: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF3>
#33: FILE: drivers/gpu/drm/i915/i915_suspend.c:49:
+			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,

total: 0 errors, 0 warnings, 1 checks, 44 lines checked
a3b180280198 drm/i915: pass dev_priv explicitly to _PIPEBDSL
29a03188b1f9 drm/i915: pass dev_priv explicitly to _TRANSBCONF
be5ffe5a05c7 drm/i915: pass dev_priv explicitly to _PIPEBSTAT
20a83089316c drm/i915: pass dev_priv explicitly to _PIPEB_FRMCOUNT_G4X
3c774852fe45 drm/i915: pass dev_priv explicitly to _PIPEB_FLIPCOUNT_G4X
2c2ba9a89d94 drm/i915: pass dev_priv explicitly to _DSPBCNTR
24cb8b68d492 drm/i915: pass dev_priv explicitly to _DSPBADDR
fdc2c0838276 drm/i915: pass dev_priv explicitly to _DSPBSTRIDE
46d61bb14dae drm/i915: pass dev_priv explicitly to _DSPBPOS
0567c36f35cb drm/i915: pass dev_priv explicitly to _DSPBSIZE
7e74f9199ee2 drm/i915: pass dev_priv explicitly to _DSPBSURF
4779fce49c4f drm/i915: pass dev_priv explicitly to _DSPBTILEOFF
5eaf764fe254 drm/i915: pass dev_priv explicitly to _DSPBOFFSET
7eef8e8bc0f2 drm/i915: pass dev_priv explicitly to _DSPBSURFLIVE
b3d2ae738152 drm/i915: pass dev_priv explicitly to PIPE_DATA_M1
2736ffa451cb drm/i915: pass dev_priv explicitly to PIPE_DATA_N1
ef9c2dc4adf2 drm/i915: pass dev_priv explicitly to PIPE_DATA_M2
bf8773957e68 drm/i915: pass dev_priv explicitly to PIPE_DATA_N2
13113c81c208 drm/i915: pass dev_priv explicitly to PIPE_LINK_M1
468988ff967b drm/i915: pass dev_priv explicitly to PIPE_LINK_N1
db78525d2f7b drm/i915: pass dev_priv explicitly to PIPE_LINK_M2
1bd5af50348a drm/i915: pass dev_priv explicitly to PIPE_LINK_N2
7c81e2008d0b drm/i915: pass dev_priv explicitly to HSW_STEREO_3D_CTL
7d5ccd404138 drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL
-:151: ERROR:CODE_INDENT: code indent should use tabs where possible
#151: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3768:
+^I^I^I^I        TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));$

-:246: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#246: FILE: drivers/gpu/drm/i915/display/intel_fdi.c:38:
+					  TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;

total: 1 errors, 1 warnings, 0 checks, 302 lines checked
d3026ea2523c drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL2
-:65: ERROR:CODE_INDENT: code indent should use tabs where possible
#65: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3763:
+^I^I^I^I         TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder));$

total: 1 errors, 0 warnings, 0 checks, 62 lines checked
5e360600eba3 drm/i915: pass dev_priv explicitly to TGL_DP_TP_CTL
5e5bdf3599e0 drm/i915: pass dev_priv explicitly to TGL_DP_TP_STATUS
-:21: ERROR:CODE_INDENT: code indent should use tabs where possible
#21: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:2200:
+^I^I^I^I        tgl_dp_tp_transcoder(crtc_state));$

total: 1 errors, 0 warnings, 0 checks, 17 lines checked
901faa07bfcc drm/i915: pass dev_priv explicitly to TRANS_MSA_MISC
76c16b9d1c11 drm/i915: pass dev_priv explicitly to TRANS_SET_CONTEXT_LATENCY
-:45: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/i915_reg.h:4239:
+#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
faeacabf283f drm/i915: pass dev_priv explicitly to MTL_CLKGATE_DIS_TRANS
-:43: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/i915_reg.h:4721:
+#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)

total: 0 errors, 1 warnings, 0 checks, 25 lines checked


