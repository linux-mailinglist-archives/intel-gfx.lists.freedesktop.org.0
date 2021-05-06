Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0379B37597B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 19:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4184E6ECD7;
	Thu,  6 May 2021 17:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91F236ECD7;
 Thu,  6 May 2021 17:35:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DB9EA7DFC;
 Thu,  6 May 2021 17:35:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Thu, 06 May 2021 17:35:01 -0000
Message-ID: <162032250151.15693.11996296430183084888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210506172325.1995964-1-wse@tuxedocomputers.com>
In-Reply-To: <20210506172325.1995964-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Try_YCbCr420_color_when_RGB_fails?=
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

Series: drm/i915/display: Try YCbCr420 color when RGB fails
URL   : https://patchwork.freedesktop.org/series/89842/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00bf5b4bbe7e drm/i915/display: New function to avoid duplicate code in upcomming commits
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Moves some checks that later will be performed 2 times to an own fuction. This

-:7: WARNING:TYPO_SPELLING: 'fuction' may be misspelled - perhaps 'function'?
#7: 
Moves some checks that later will be performed 2 times to an own fuction. This
                                                                 ^^^^^^^

total: 0 errors, 2 warnings, 0 checks, 53 lines checked
6cff290a93e1 drm/i915/display: Restructure output format computation for better expandability
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Couples the decission between RGB and YCbCr420 mode and the check if the port

-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2110:
+static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
+				     struct intel_crtc_state *crtc_state,

-:68: CHECK:BRACES: braces {} should be used on all arms of this statement
#68: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2120:
+	if (connector->ycbcr_420_allowed && ycbcr_420_only)
[...]
+	else {
[...]

-:70: CHECK:BRACES: Unbalanced braces around else statement
#70: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2122:
+	else {

total: 0 errors, 1 warnings, 3 checks, 92 lines checked
fa1ae5bd837f drm/i915/display: Use YCbCr420 as fallback when RGB fails
-:48: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1924:
+		if (ycbcr_420_only || !connector->ycbcr_420_allowed || !drm_mode_is_420_also(&connector->display_info, mode))

-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2140:
+		if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420 &&
+				connector->ycbcr_420_allowed &&

total: 0 errors, 1 warnings, 1 checks, 44 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
