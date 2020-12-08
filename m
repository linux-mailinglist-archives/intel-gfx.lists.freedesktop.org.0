Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B3C2D2591
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 09:18:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8951A6E09A;
	Tue,  8 Dec 2020 08:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD0ED6E09A;
 Tue,  8 Dec 2020 08:18:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3793A8835;
 Tue,  8 Dec 2020 08:18:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 08 Dec 2020 08:18:06 -0000
Message-ID: <160741548664.9599.16095941845710493508@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_DP-HDMI2=2E1_PCON_=28rev6=29?=
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

Series: Add support for DP-HDMI2.1 PCON (rev6)
URL   : https://patchwork.freedesktop.org/series/82098/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c8f6c1892e3c drm/edid: Add additional HFVSDB fields for HDMI2.1
-:61: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Swati Sharma <swati2.sharma@intel.com>' != 'Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
5af6ddcab5be drm/edid: Parse MAX_FRL field from HFVSDB block
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/drm_edid.c:4948:
+		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
+				&hdmi->max_frl_rate_per_lane);

-:95: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Swati Sharma <swati2.sharma@intel.com>' != 'Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 68 lines checked
0b3a89145fba drm/edid: Parse DSC1.2 cap fields from HFVSDB block
-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/drm_edid.c:4969:
+			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
+					&hdmi_dsc->max_frl_rate_per_lane);

-:52: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#52: FILE: drivers/gpu/drm/drm_edid.c:4970:
+			hdmi_dsc->total_chunk_kbytes = hf_vsdb[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;

total: 0 errors, 1 warnings, 1 checks, 125 lines checked
3c53492add7b drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
a99de34eb3a5 drm/dp_helper: Add support for link failure detection
-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: include/drm/drm_dp_helper.h:2066:
+void drm_dp_pcon_hdmi_frl_link_error_count(struct drm_dp_aux *aux,
+					  struct drm_connector *connector);

total: 0 errors, 0 warnings, 1 checks, 76 lines checked
212abe126799 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
-:15: WARNING:TYPO_SPELLING: 'Convertor' may be misspelled - perhaps 'Converter'?
#15: 
v3: Only setting the DSC bits for the Protocol Convertor control

-:165: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#165: FILE: drivers/gpu/drm/drm_dp_helper.c:3076:
+ * */

-:185: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#185: FILE: drivers/gpu/drm/drm_dp_helper.c:3096:
+ * */

-:210: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#210: FILE: drivers/gpu/drm/drm_dp_helper.c:3121:
+ * */

total: 0 errors, 4 warnings, 0 checks, 343 lines checked
1848c4e50299 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion
4ce50f87d12c drm/i915: Capture max frl rate for PCON in dfp cap structure
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
-tweaked the comparison of target bw and pcon frl bw to avoid roundup errors.

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
cc384ce1123d drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
-:83: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#83: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4001:
+{
+

-:144: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#144: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4062:
+	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);

-:163: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#163: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4081:
+	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);

-:169: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#169: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4087:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:169: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#169: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4087:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:173: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#173: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4091:
+	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_bw_mask, frl_trained_mask);

total: 0 errors, 5 warnings, 1 checks, 218 lines checked
36cbced30b1f drm/i915: Check for FRL training before DP Link training
26822b3bd3d0 drm/i915: Add support for enabling link status and recovery
-:51: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6051:
+		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);

-:64: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (24, 24)
#64: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6064:
+			if (ret < 0 || mode != DP_PCON_HDMI_MODE_TMDS)
+			drm_dbg(&dev_priv->drm, "Issue with PCON, cannot set TMDS mode\n");

total: 0 errors, 2 warnings, 0 checks, 98 lines checked
d8f4672c399e drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3996:
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
+				     intel_dp->pcon_dsc_dpcd,

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4002:
+	drm_dbg_kms(&i915->drm, "PCON ENCODER DSC DPCD: %*ph\n",
+		   (int)sizeof(intel_dp->pcon_dsc_dpcd), intel_dp->pcon_dsc_dpcd);

total: 0 errors, 0 warnings, 2 checks, 39 lines checked
e6fd58fd5496 drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
-:56: WARNING:TYPO_SPELLING: 'capabilites' may be misspelled - perhaps 'capabilities'?
#56: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3458:
+ * and dsc decoder capabilites

-:142: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#142: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3544:
+		if (min_slices <= 1 && src_max_slices >= 1 && hdmi_max_slices >= 1)
+		       target_slices = 1;

-:144: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#144: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3546:
+		else if (min_slices <= 2 && src_max_slices >= 2 && hdmi_max_slices >= 2)
+		       target_slices = 2;

-:146: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#146: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3548:
+		else if (min_slices <= 4 && src_max_slices >= 4 && hdmi_max_slices >= 4)
+		       target_slices = 4;

-:148: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#148: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3550:
+		else if (min_slices <= 8 && src_max_slices >= 8 && hdmi_max_slices >= 8)
+		       target_slices = 8;

-:150: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#150: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3552:
+		else if (min_slices <= 12 && src_max_slices >= 12 && hdmi_max_slices >= 12)
+		       target_slices = 12;

-:152: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#152: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3554:
+		else if (min_slices <= 16 && src_max_slices >= 16 && hdmi_max_slices >= 16)
+		       target_slices = 16;

total: 0 errors, 7 warnings, 0 checks, 248 lines checked
cabcbc8ae4c1 drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding
-:70: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#70: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4189:
+{
+

-:87: CHECK:LINE_SPACING: Please don't use multiple blank lines
#87: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4206:
+
+

-:150: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#150: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4269:
+	bits_per_pixel = intel_dp_pcon_dsc_enc_bpp(intel_dp, crtc_state,
+						  num_slices, slice_width);

total: 0 errors, 0 warnings, 3 checks, 156 lines checked
f4fd097025b5 drm/i915: Let PCON convert from RGB to YUV if it can
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6926:
+	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
+							intel_dp->downstream_ports);

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
af26eb8541c1 drm/i915: Enable PCON configuration for Color Conversion for TGL
-:8: WARNING:TYPO_SPELLING: 'platfrom' may be misspelled - perhaps 'platform'?
#8: 
TGL+ platfrom. This will help in supporting 8k@60 YUV420 modes common

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
