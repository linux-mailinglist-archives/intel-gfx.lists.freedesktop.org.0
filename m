Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AACD728F16C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C0006ECBC;
	Thu, 15 Oct 2020 11:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 684C488E5B;
 Thu, 15 Oct 2020 11:37:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54FA2A363B;
 Thu, 15 Oct 2020 11:37:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 15 Oct 2020 11:37:45 -0000
Message-ID: <160276186531.13180.15764019278794074865@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015105259.27934-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201015105259.27934-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_DP-HDMI2=2E1_PCON_=28rev3=29?=
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

Series: Add support for DP-HDMI2.1 PCON (rev3)
URL   : https://patchwork.freedesktop.org/series/82098/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b6564bd05445 drm/edid: Add additional HFVSDB fields for HDMI2.1
-:57: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Swati Sharma <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
5cf1af19ed2a drm/edid: Parse MAX_FRL field from HFVSDB block
-:25: ERROR:SPACING: space required before the open parenthesis '('
#25: FILE: drivers/gpu/drm/drm_edid.c:4855:
+	switch(max_frl_rate) {

-:75: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 20)
#75: FILE: drivers/gpu/drm/drm_edid.c:4951:
+	if (hf_vsdb[7]) {
+		    DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");

-:99: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Swati Sharma <swati2.sharma@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 75 lines checked
5532836b0fcd drm/dp_helper: Add FRL training support for a DP-HDMI2.1 PCON
23370263e088 drm/i915: Capture max frl rate for PCON in dfp cap structure
66efbc57f8df drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
-:173: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#173: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3991:
+	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);

-:192: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#192: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4010:
+	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);

-:199: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4017:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:199: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#199: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4017:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:203: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#203: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4021:
+	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_mask, frl_trained_mask);

total: 0 errors, 5 warnings, 0 checks, 243 lines checked
5dca2e8ce7dc drm/i915: Check for FRL training before DP Link training
d5229d1b0a07 drm/dp_helper: Add support for link status and link recovery
-:36: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#36: FILE: drivers/gpu/drm/drm_dp_helper.c:2907:
+	for (i = 0; i < hdmi->max_lanes; i++)
+	{

-:38: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#38: FILE: drivers/gpu/drm/drm_dp_helper.c:2909:
+		if (drm_dp_dpcd_readb(aux, DP_PCON_HDMI_ERROR_STATUS_LN0 + i , &buf) < 0)
 		                                                             ^

-:43: ERROR:SPACING: space required before the open parenthesis '('
#43: FILE: drivers/gpu/drm/drm_dp_helper.c:2914:
+	switch(error_count) {

total: 3 errors, 0 warnings, 0 checks, 68 lines checked
d95bcc66c14e drm/i915: Add support for enabling link status and recovery
-:47: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5977:
+		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
7186f49cb2c6 drm/edid: Parse DSC1.2 cap fields from HFVSDB block
-:28: ERROR:CODE_INDENT: code indent should use tabs where possible
#28: FILE: drivers/gpu/drm/drm_edid.c:4899:
+        hdmi->dsc_native_420 = db[11] & DRM_EDID_DSC_NATIVE_420;$

-:28: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#28: FILE: drivers/gpu/drm/drm_edid.c:4899:
+        hdmi->dsc_native_420 = db[11] & DRM_EDID_DSC_NATIVE_420;$

total: 1 errors, 1 warnings, 0 checks, 67 lines checked
1acec2c71f1a drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
-:47: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#47: FILE: drivers/gpu/drm/drm_dp_helper.c:2958:
+ * */

-:67: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#67: FILE: drivers/gpu/drm/drm_dp_helper.c:2978:
+ * */

-:92: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#92: FILE: drivers/gpu/drm/drm_dp_helper.c:3003:
+ * */

total: 0 errors, 3 warnings, 0 checks, 227 lines checked
eb940db0bb23 drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
-:31: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#31: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1303:
+	u8 max_slices;;

-:88: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#88: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3916:
+	case DP_PCON_DSC_RC_BUF_BLK_1KB :
 	                                ^

-:91: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#91: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3919:
+	case DP_PCON_DSC_RC_BUF_BLK_4KB :
 	                                ^

-:94: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#94: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3922:
+	case DP_PCON_DSC_RC_BUF_BLK_16KB :
 	                                 ^

-:97: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#97: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3925:
+	case DP_PCON_DSC_RC_BUF_BLK_64KB :
 	                                 ^

-:100: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#100: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3928:
+	default :
 	        ^

-:115: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 15)
#115: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3943:
+	if (buf & DP_PCON_DSC_24_PER_DSC_ENC)
+	       max_slices = 24;

-:152: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#152: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3980:
+	case DP_PCON_DSC_DEPTH_8_BITS :
 	                              ^

-:155: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#155: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3983:
+	case DP_PCON_DSC_DEPTH_9_BITS :
 	                              ^

-:158: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#158: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3986:
+	case DP_PCON_DSC_DEPTH_10_BITS :
 	                               ^

-:161: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#161: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3989:
+	case DP_PCON_DSC_DEPTH_11_BITS :
 	                               ^

-:164: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#164: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3992:
+	case DP_PCON_DSC_DEPTH_12_BITS :
 	                               ^

-:167: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#167: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3995:
+	case DP_PCON_DSC_DEPTH_13_BITS :
 	                               ^

-:170: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#170: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3998:
+	case DP_PCON_DSC_DEPTH_14_BITS :
 	                               ^

-:173: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#173: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4001:
+	case DP_PCON_DSC_DEPTH_15_BITS :
 	                               ^

-:176: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#176: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4004:
+	case DP_PCON_DSC_DEPTH_16_BITS :
 	                               ^

-:179: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#179: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4007:
+	default :
 	        ^

-:206: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#206: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4034:
+	pcon_dsc->max_slice_width = buf;;

-:212: ERROR:SPACING: space required before the open parenthesis '('
#212: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4040:
+	switch(buf & DP_PCON_DSC_BPP_INCR_MASK) {

-:228: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#228: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4056:
+	default :
 	        ^

total: 17 errors, 3 warnings, 0 checks, 218 lines checked
86eb94630c5f drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
-:37: ERROR:SPACING: spaces required around that '+=' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3453:
+	for (slice_height = 96; slice_height <= vactive; slice_height+=2)
 	                                                             ^

-:100: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#100: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3516:
+		if (min_slices <= 1 && src_max_slices >= 1 && hdmi_max_slices >= 1)
+		       target_slices = 1;

-:102: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#102: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3518:
+		else if (min_slices <= 2 && src_max_slices >= 2 && hdmi_max_slices >= 2)
+		       target_slices = 2;

-:104: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#104: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3520:
+		else if (min_slices <= 4 && src_max_slices >= 4 && hdmi_max_slices >= 4)
+		       target_slices = 4;

-:106: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#106: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3522:
+		else if (min_slices <= 8 && src_max_slices >= 8 && hdmi_max_slices >= 8)
+		       target_slices = 8;

-:108: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#108: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3524:
+		else if (min_slices <= 12 && src_max_slices >= 12 && hdmi_max_slices >= 12)
+		       target_slices = 12;

-:110: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 23)
#110: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3526:
+		else if (min_slices <= 16 && src_max_slices >= 16 && hdmi_max_slices >= 16)
+		       target_slices = 16;

total: 1 errors, 6 warnings, 0 checks, 186 lines checked
133fc9c90e8f drm/i915: Configure PCON for DSC1.1 to DSC1.2 encoding
-:82: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#82: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4280:
+{
+

-:99: CHECK:LINE_SPACING: Please don't use multiple blank lines
#99: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4297:
+
+

-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4353:
+	bits_per_pixel = intel_dp_pcon_dsc_enc_bpp(intel_dp, crtc_state,
+						  num_slices, slice_width);

total: 0 errors, 0 warnings, 3 checks, 166 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
