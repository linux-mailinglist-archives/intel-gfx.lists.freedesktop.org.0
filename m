Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 924C42788EB
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 14:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74FF6E212;
	Fri, 25 Sep 2020 12:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBD806E214;
 Fri, 25 Sep 2020 12:59:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3556AA0EA;
 Fri, 25 Sep 2020 12:59:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 25 Sep 2020 12:59:30 -0000
Message-ID: <160103877090.10246.8003420003341897034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200925121340.29497-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20200925121340.29497-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_DP-HDMI2=2E1_PCON?=
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

Series: Add support for DP-HDMI2.1 PCON
URL   : https://patchwork.freedesktop.org/series/82098/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ca36191ea8ce drm/edid: Add additional HFVSDB fields for HDMI2.1
-:57: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Swati Sharma <swati2.sharma@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
085ed8f42a16 drm/edid: Parse MAX_FRL field from HFVSDB block
-:27: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#27: FILE: drivers/gpu/drm/drm_edid.c:4857:
+    u8 max_frl_rate_per_lane;$

-:28: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#28: FILE: drivers/gpu/drm/drm_edid.c:4858:
+    struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;$

-:30: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#30: FILE: drivers/gpu/drm/drm_edid.c:4860:
+    max_frl_rate_per_lane = (db[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;$

-:32: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#32: FILE: drivers/gpu/drm/drm_edid.c:4862:
+    switch(max_frl_rate_per_lane) {$

-:32: ERROR:SPACING: space required before the open parenthesis '('
#32: FILE: drivers/gpu/drm/drm_edid.c:4862:
+    switch(max_frl_rate_per_lane) {

-:33: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#33: FILE: drivers/gpu/drm/drm_edid.c:4863:
+    case 0:$

-:36: WARNING:TABSTOP: Statements should start on a tabstop
#36: FILE: drivers/gpu/drm/drm_edid.c:4866:
+	    break;

-:37: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#37: FILE: drivers/gpu/drm/drm_edid.c:4867:
+    case 1:$

-:40: WARNING:TABSTOP: Statements should start on a tabstop
#40: FILE: drivers/gpu/drm/drm_edid.c:4870:
+	    break;

-:41: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#41: FILE: drivers/gpu/drm/drm_edid.c:4871:
+    case 2:$

-:44: WARNING:TABSTOP: Statements should start on a tabstop
#44: FILE: drivers/gpu/drm/drm_edid.c:4874:
+	    break;

-:45: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#45: FILE: drivers/gpu/drm/drm_edid.c:4875:
+    case 3:$

-:48: WARNING:TABSTOP: Statements should start on a tabstop
#48: FILE: drivers/gpu/drm/drm_edid.c:4878:
+	    break;

-:49: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#49: FILE: drivers/gpu/drm/drm_edid.c:4879:
+    case 4:$

-:52: WARNING:TABSTOP: Statements should start on a tabstop
#52: FILE: drivers/gpu/drm/drm_edid.c:4882:
+	    break;

-:53: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#53: FILE: drivers/gpu/drm/drm_edid.c:4883:
+    case 5:$

-:56: WARNING:TABSTOP: Statements should start on a tabstop
#56: FILE: drivers/gpu/drm/drm_edid.c:4886:
+	    break;

-:57: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#57: FILE: drivers/gpu/drm/drm_edid.c:4887:
+    case 6:$

-:60: WARNING:TABSTOP: Statements should start on a tabstop
#60: FILE: drivers/gpu/drm/drm_edid.c:4890:
+	    break;

-:63: WARNING:TABSTOP: Statements should start on a tabstop
#63: FILE: drivers/gpu/drm/drm_edid.c:4893:
+	    break;

-:64: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#64: FILE: drivers/gpu/drm/drm_edid.c:4894:
+    }$

-:74: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 20)
#74: FILE: drivers/gpu/drm/drm_edid.c:4950:
+	if (hf_vsdb[7]) {
+		    DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");

-:98: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Swati Sharma <swati2.sharma@intel.com>'

total: 1 errors, 22 warnings, 0 checks, 74 lines checked
57e6b62ff35a drm/dp_helper: Add FRL training support for a DP-HDMI2.1 PCON
35c096404566 drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
-:174: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3936:
+	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);

-:193: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3955:
+	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);

-:200: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3962:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:200: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#200: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3962:
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {

-:204: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3966:
+	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_mask, frl_trained_mask);

-:247: CHECK:BRACES: braces {} should be used on all arms of this statement
#247: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4009:
+	if (intel_dp_pcon_start_frl_training(intel_dp) < 0) {
[...]
+	else
[...]

total: 0 errors, 5 warnings, 1 checks, 244 lines checked
b8761d77210f drm/i915: Check for FRL training before DP Link training
0c9c23579c4a drm/dp_helper: Add support for link status and link recovery
-:36: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#36: FILE: drivers/gpu/drm/drm_dp_helper.c:2682:
+	for (i = 0; i < hdmi->max_lane; i++)
+	{

-:38: ERROR:SPACING: space prohibited before that ',' (ctx:WxW)
#38: FILE: drivers/gpu/drm/drm_dp_helper.c:2684:
+		if (drm_dp_dpcd_readb(aux, DP_PCON_HDMI_ERROR_STATUS_LN0 + i , &buf) < 0)
 		                                                             ^

-:43: ERROR:SPACING: space required before the open parenthesis '('
#43: FILE: drivers/gpu/drm/drm_dp_helper.c:2689:
+	switch(error_count) {

total: 3 errors, 0 warnings, 0 checks, 68 lines checked
5215ca3211f4 drm/i915: Add support for enabling link status and recovery
-:47: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5935:
+		drm_dp_pcon_hdmi_frl_link_error_count(&intel_dp->aux, &intel_dp->attached_connector->base);

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
