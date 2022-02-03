Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF1F4A8607
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9534F10FAC7;
	Thu,  3 Feb 2022 14:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D59210FAC5;
 Thu,  3 Feb 2022 14:20:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6853AA47DF;
 Thu,  3 Feb 2022 14:20:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 03 Feb 2022 14:20:17 -0000
Message-ID: <164389801739.15870.17645815375835666918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220203055012.14568-1-vandita.kulkarni@intel.com>
In-Reply-To: <20220203055012.14568-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_data_flow_metering_support_for_HDMI2=2E1?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add data flow metering support for HDMI2.1
URL   : https://patchwork.freedesktop.org/series/99668/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84a5cb52aee6 drm/hdmi21: Define frl_dfm structure
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
new file mode 100644

-:40: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#40: FILE: include/drm/drm_frl_dfm_helper.h:23:
+struct drm_frl_dfm_input_config {
+

-:83: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#83: FILE: include/drm/drm_frl_dfm_helper.h:66:
+struct drm_frl_dfm_params {
+

total: 0 errors, 1 warnings, 2 checks, 126 lines checked
ef52becbce64 drm/hdmi21: Add non dsc frl capacity computation helpers
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

-:138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#138: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:122:
+drm_get_total_frl_char_per_line_period(u32 line_time_ns, u32 frl_char_rate_min_k,
+				      u32 lanes)

-:215: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#215: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:199:
+		kcd = bpc/8;
 		         ^

-:218: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#218: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:202:
+	cfrl_free = max(((hblank * kcd) / k420 - 32 * audio_packets_line - 7),
+			 U32_MIN);

-:355: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#355: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:339:
+	nr = 3/2 * tribyte_active * FRL_TIMING_NS_MULTIPLIER;
 	      ^

-:369: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#369: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:353:
+drm_get_tblank_min(u32 num_lanes, u32 tribyte_blank,
+		    u32 overhead_max_k, u32 frl_char_min_rate_k)

-:400: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#400: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:384:
+	frl_char_payload_actual = DIV_ROUND_UP(3 * tribytes_active, 2) + tribytes_blank - cfrl_savings;

total: 0 errors, 2 warnings, 5 checks, 396 lines checked
cfe4d1abfbda drm/hdmi21: Add helpers to verify non-dsc DFM requirements
-:99: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#99: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:477:
+						 frl_dfm->params.tb_active, frl_dfm->params.tb_blank,

-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:490:
+	tblank_min_ns = drm_get_tblank_min(frl_dfm->config.lanes,
+					     frl_dfm->params.tb_blank,

-:116: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'tactive_ref_ns >= tactive_min_ns'
#116: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:494:
+	if ((tactive_ref_ns >= tactive_min_ns) &&
+	    (tblank_ref_ns >= tblank_min_ns)) {

-:116: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'tblank_ref_ns >= tblank_min_ns'
#116: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:494:
+	if ((tactive_ref_ns >= tactive_min_ns) &&
+	    (tblank_ref_ns >= tblank_min_ns)) {

-:123: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'tactive_ref_ns < tactive_min_ns'
#123: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:501:
+	if ((tactive_ref_ns < tactive_min_ns) &&
+	    (tblank_ref_ns >= tblank_min_ns)) {

-:123: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'tblank_ref_ns >= tblank_min_ns'
#123: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:501:
+	if ((tactive_ref_ns < tactive_min_ns) &&
+	    (tblank_ref_ns >= tblank_min_ns)) {

-:127: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#127: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:505:
+		frl_dfm->params.tb_borrowed = drm_get_tribytes_borrowed(tborrowed_ns,
+								 frl_dfm->params.ftb_avg_k);

-:151: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#151: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:529:
+	utilization = drm_compute_payload_utilization(frl_char_payload_actual,
+							frl_dfm->params.cfrl_line);

total: 0 errors, 1 warnings, 7 checks, 170 lines checked
d7bca9952da4 drm/hdmi21: Add support for DFM calculation with DSC
-:70: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#70: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:608:
+	return (hcactive_target_tb + hcblank_target_tb) * (fpixelclock_max_khz / (hactive + hblank));

-:146: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#146: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:684:
+		tb_delta_limit = (((tactive_ref_ns * FRL_TIMING_NS_MULTIPLIER) - (hcactive_target_tb/(ftb_avg_k * 1000))) *

-:146: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#146: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:684:
+		tb_delta_limit = (((tactive_ref_ns * FRL_TIMING_NS_MULTIPLIER) - (hcactive_target_tb/(ftb_avg_k * 1000))) *
 		                                                                                    ^

-:156: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#156: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:694:
+		tb_delta_limit = (_tb_delta_ns * (hcactive_target_tb + hcblank_target_tb1)) / line_time_ns;

-:166: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#166: FILE: drivers/gpu/drm/drm_frl_dfm_helper.c:704:
+{
+

total: 0 errors, 3 warnings, 2 checks, 308 lines checked
18e9986cd944 drm/hdmi21: Add frl_dfm_helper to Makefile


