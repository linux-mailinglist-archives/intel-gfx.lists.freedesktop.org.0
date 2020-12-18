Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC5B2DE2EF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 13:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 924BD89388;
	Fri, 18 Dec 2020 12:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DBE68934F;
 Fri, 18 Dec 2020 12:52:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76A44A0118;
 Fri, 18 Dec 2020 12:52:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 18 Dec 2020 12:52:50 -0000
Message-ID: <160829597046.27179.7154779196586998441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_DP-HDMI2=2E1_PCON_=28rev9=29?=
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

Series: Add support for DP-HDMI2.1 PCON (rev9)
URL   : https://patchwork.freedesktop.org/series/82098/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
26eb0c2f2ee1 drm/edid: Add additional HFVSDB fields for HDMI2.1
-:61: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Swati Sharma <swati2.sharma@intel.com>' != 'Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
13ffe829d77e drm/edid: Parse MAX_FRL field from HFVSDB block
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/drm_edid.c:4948:
+		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
+				&hdmi->max_frl_rate_per_lane);

-:95: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Swati Sharma <swati2.sharma@intel.com>' != 'Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 68 lines checked
89853c019e04 drm/edid: Parse DSC1.2 cap fields from HFVSDB block
-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/drm_edid.c:4969:
+			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
+					&hdmi_dsc->max_frl_rate_per_lane);

-:52: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#52: FILE: drivers/gpu/drm/drm_edid.c:4970:
+			hdmi_dsc->total_chunk_kbytes = hf_vsdb[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;

total: 0 errors, 1 warnings, 1 checks, 125 lines checked
5120b1727391 drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
c68914ce7b67 drm/dp_helper: Add support for link failure detection
-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: include/drm/drm_dp_helper.h:2055:
+void drm_dp_pcon_hdmi_frl_link_error_count(struct drm_dp_aux *aux,
+					  struct drm_connector *connector);

total: 0 errors, 0 warnings, 1 checks, 76 lines checked
2f4d3c12ee27 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
-:15: WARNING:TYPO_SPELLING: 'Convertor' may be misspelled - perhaps 'Converter'?
#15: 
v3: Only setting the DSC bits for the Protocol Convertor control

-:165: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#165: FILE: drivers/gpu/drm/drm_dp_helper.c:3037:
+ * */

-:185: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#185: FILE: drivers/gpu/drm/drm_dp_helper.c:3057:
+ * */

-:210: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#210: FILE: drivers/gpu/drm/drm_dp_helper.c:3082:
+ * */

total: 0 errors, 4 warnings, 0 checks, 343 lines checked
d1464a87a5a8 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion
-:18: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#18: 
-Modified the color-conversion cap helper function, to accomodate

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
29e16a799211 drm/i915: Capture max frl rate for PCON in dfp cap structure
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
-tweaked the comparison of target bw and pcon frl bw to avoid roundup errors.

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
0f68d7283295 drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
-:86: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#86: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4005:
+{
+

-:147: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#147: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4066:
+	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);

-:166: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4085:
+	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);

-:172: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#172: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4091:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:172: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#172: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4091:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:176: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#176: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4095:
+	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_bw_mask, frl_trained_mask);

total: 0 errors, 5 warnings, 1 checks, 194 lines checked
3793f5252161 drm/i915: Check for FRL training before DP Link training
126578f6fe39 drm/i915: Add support for enabling link status and recovery
-:54: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6031:
+		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
ca5d8df43ceb drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4000:
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
+				     intel_dp->pcon_dsc_dpcd,

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4006:
+	drm_dbg_kms(&i915->drm, "PCON ENCODER DSC DPCD: %*ph\n",
+		   (int)sizeof(intel_dp->pcon_dsc_dpcd), intel_dp->pcon_dsc_dpcd);

total: 0 errors, 0 warnings, 2 checks, 39 lines checked
35f69a655bad drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
-:57: WARNING:TYPO_SPELLING: 'capabilites' may be misspelled - perhaps 'capabilities'?
#57: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3458:
+ * and dsc decoder capabilites

-:143: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#143: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3544:
+		if (min_slices <= 1 && src_max_slices >= 1 && hdmi_max_slices >= 1)
+		       target_slices = 1;

-:145: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#145: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3546:
+		else if (min_slices <= 2 && src_max_slices >= 2 && hdmi_max_slices >= 2)
+		       target_slices = 2;

-:147: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#147: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3548:
+		else if (min_slices <= 4 && src_max_slices >= 4 && hdmi_max_slices >= 4)
+		       target_slices = 4;

-:149: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#149: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3550:
+		else if (min_slices <= 8 && src_max_slices >= 8 && hdmi_max_slices >= 8)
+		       target_slices = 8;

-:151: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#151: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3552:
+		else if (min_slices <= 12 && src_max_slices >= 12 && hdmi_max_slices >= 12)
+		       target_slices = 12;

-:153: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#153: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3554:
+		else if (min_slices <= 16 && src_max_slices >= 16 && hdmi_max_slices >= 16)
+		       target_slices = 16;

total: 0 errors, 7 warnings, 0 checks, 248 lines checked
34ee9dfdadfd drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding
-:75: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#75: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4171:
+{
+

-:92: CHECK:LINE_SPACING: Please don't use multiple blank lines
#92: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4188:
+
+

-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4251:
+	bits_per_pixel = intel_dp_pcon_dsc_enc_bpp(intel_dp, crtc_state,
+						  num_slices, slice_width);

total: 0 errors, 0 warnings, 3 checks, 157 lines checked
d739034947bb drm/i915/display: Let PCON convert from RGB to YCbCr if it can
-:104: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4368:
+								   DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);

-:156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#156: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6922:
+	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
+							intel_dp->downstream_ports,

total: 0 errors, 1 warnings, 1 checks, 152 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
