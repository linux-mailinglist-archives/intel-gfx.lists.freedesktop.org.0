Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C09D82A1D58
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Nov 2020 11:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1806EA92;
	Sun,  1 Nov 2020 10:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1EB76EA92;
 Sun,  1 Nov 2020 10:38:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1588AA8832;
 Sun,  1 Nov 2020 10:38:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Sun, 01 Nov 2020 10:38:17 -0000
Message-ID: <160422709705.4895.293981534971832629@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_DP-HDMI2=2E1_PCON_=28rev4=29?=
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

Series: Add support for DP-HDMI2.1 PCON (rev4)
URL   : https://patchwork.freedesktop.org/series/82098/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
27e3b6298aa3 drm/edid: Add additional HFVSDB fields for HDMI2.1
-:60: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Swati Sharma <swati2.sharma@intel.com>' != 'Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
1aebdfd6f051 drm/edid: Parse MAX_FRL field from HFVSDB block
-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/drm_edid.c:4946:
+		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
+				&hdmi->max_frl_rate_per_lane);

-:94: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Swati Sharma <swati2.sharma@intel.com>' != 'Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 68 lines checked
8f11c904f67d drm/edid: Parse DSC1.2 cap fields from HFVSDB block
-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/gpu/drm/drm_edid.c:4967:
+			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
+					&hdmi_dsc->max_frl_rate_per_lane);

-:51: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#51: FILE: drivers/gpu/drm/drm_edid.c:4968:
+			hdmi_dsc->total_chunk_kbytes = hf_vsdb[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;

total: 0 errors, 1 warnings, 1 checks, 125 lines checked
ba56200d5979 drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
a8f954072aa1 drm/dp_helper: Add support for link failure detection
-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: include/drm/drm_dp_helper.h:2066:
+void drm_dp_pcon_hdmi_frl_link_error_count(struct drm_dp_aux *aux,
+					  struct drm_connector *connector);

total: 0 errors, 0 warnings, 1 checks, 76 lines checked
66e1ef9ccd96 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
-:155: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#155: FILE: drivers/gpu/drm/drm_dp_helper.c:3070:
+ * */

-:175: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#175: FILE: drivers/gpu/drm/drm_dp_helper.c:3090:
+ * */

-:200: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#200: FILE: drivers/gpu/drm/drm_dp_helper.c:3115:
+ * */

total: 0 errors, 3 warnings, 0 checks, 337 lines checked
387f2d64c66f drm/i915: Capture max frl rate for PCON in dfp cap structure
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
-tweaked the comparison of target bw and pcon frl bw to avoid roundup errors.

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
d827cabe3e1d drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
-:97: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#97: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3952:
+{
+

-:169: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#169: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4024:
+	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);

-:188: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#188: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4043:
+	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);

-:194: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4049:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:194: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#194: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4049:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:198: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4053:
+	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_bw_mask, frl_trained_mask);

total: 0 errors, 5 warnings, 1 checks, 232 lines checked
572ef7628b8b drm/i915: Check for FRL training before DP Link training
f528721e41d3 drm/i915: Add support for enabling link status and recovery
-:47: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6004:
+		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);

total: 0 errors, 1 warnings, 0 checks, 86 lines checked
addfded61f9d drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3935:
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
+				     intel_dp->pcon_dsc_dpcd,

-:54: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#54: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3941:
+	drm_dbg_kms(&i915->drm, "PCON ENCODER DSC DPCD: %*ph\n",
+		   (int)sizeof(intel_dp->pcon_dsc_dpcd), intel_dp->pcon_dsc_dpcd);

total: 0 errors, 0 warnings, 2 checks, 39 lines checked
e32618cd039c drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
-:106: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#106: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3522:
+		if (min_slices <= 1 && src_max_slices >= 1 && hdmi_max_slices >= 1)
+		       target_slices = 1;

-:108: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#108: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3524:
+		else if (min_slices <= 2 && src_max_slices >= 2 && hdmi_max_slices >= 2)
+		       target_slices = 2;

-:110: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#110: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3526:
+		else if (min_slices <= 4 && src_max_slices >= 4 && hdmi_max_slices >= 4)
+		       target_slices = 4;

-:112: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#112: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3528:
+		else if (min_slices <= 8 && src_max_slices >= 8 && hdmi_max_slices >= 8)
+		       target_slices = 8;

-:114: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#114: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3530:
+		else if (min_slices <= 12 && src_max_slices >= 12 && hdmi_max_slices >= 12)
+		       target_slices = 12;

-:116: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#116: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3532:
+		else if (min_slices <= 16 && src_max_slices >= 16 && hdmi_max_slices >= 16)
+		       target_slices = 16;

total: 0 errors, 6 warnings, 0 checks, 196 lines checked
15815a741992 drm/i915: Configure PCON for DSC1.1 to DSC1.2 encoding
-:83: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#83: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4153:
+{
+

-:100: CHECK:LINE_SPACING: Please don't use multiple blank lines
#100: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4170:
+
+

-:141: CHECK:LINE_SPACING: Please don't use multiple blank lines
#141: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4211:
+
+

-:146: CHECK:LINE_SPACING: Please don't use multiple blank lines
#146: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4216:
+
+

-:148: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '!hdmi_is_dsc_1_2'
#148: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4218:
+	if ((version_major != 1 || version_minor != 2) ||
+	    (!hdmi_is_dsc_1_2))

-:164: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#164: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4234:
+	bits_per_pixel = intel_dp_pcon_dsc_enc_bpp(intel_dp, crtc_state,
+						  num_slices, slice_width);

total: 0 errors, 0 warnings, 6 checks, 173 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
