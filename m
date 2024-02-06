Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FBC84B4F9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 13:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF4E112B36;
	Tue,  6 Feb 2024 12:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69605112B2C;
 Tue,  6 Feb 2024 12:19:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_DP_link_training_fai?=
 =?utf-8?q?lure_fallback?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 06 Feb 2024 12:19:45 -0000
Message-ID: <170722198543.1055287.13726762869138950496@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
In-Reply-To: <20240206104759.2079133-1-arun.r.murthy@intel.com>
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

Series: DP link training failure fallback
URL   : https://patchwork.freedesktop.org/series/129572/
State : warning

== Summary ==

Error: dim checkpatch failed
7517157fd57d drm/i915/display/dp: Add DP fallback on LT
-:79: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#79: FILE: drivers/gpu/drm/i915/display/intel_dp.c:353:
+			return true;
+		else

-:110: ERROR:SPACING: space required before the open parenthesis '('
#110: FILE: drivers/gpu/drm/i915/display/intel_dp.c:740:
+		for(index = 0; index < ARRAY_SIZE(dp2dot0_fallback); index++) {

-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: drivers/gpu/drm/i915/display/intel_dp.c:742:
+			if (link_rate == dp2dot0_fallback[index].link_rate &&
+				lane_count == dp2dot0_fallback[index].lane_count) {

-:113: ERROR:SPACING: space required before the open parenthesis '('
#113: FILE: drivers/gpu/drm/i915/display/intel_dp.c:743:
+				for(index += 1; index < ARRAY_SIZE(dp2dot0_fallback); index++) {

-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/display/intel_dp.c:745:
+					if (intel_dp_link_rate_supported(intel_dp,
+							dp2dot0_fallback[index].link_rate)) {

-:117: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_dp.c:747:
+								      dp2dot0_fallback[index].link_rate,

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_dp.c:747:
+						intel_dp_set_link_params(intel_dp,
+								      dp2dot0_fallback[index].link_rate,

-:118: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_dp.c:748:
+								      dp2dot0_fallback[index].lane_count);

total: 2 errors, 3 warnings, 3 checks, 122 lines checked
0037936f87cd drm/i915/display/dp: Dont send hotplug event on LT failure
-:7: WARNING:TYPO_SPELLING: 'requried' may be misspelled - perhaps 'required'?
#7: 
the user, but this is not requried as we are not changing the mode and
                          ^^^^^^^^

-:32: WARNING:LONG_LINE_COMMENT: line length of 117 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1093:
+	/* TODO: Re-visit, sending hotplug is not required. No need to notify user as we are not changing the mode */

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
59b2a6a6079a drm/i915/dp: use link rate and lane count in intel_dp struct
-:10: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#10: 
TODO: Need to still seperate out the use of link rate and port clock
                    ^^^^^^^^

-:313: ERROR:SPACING: space required before the open brace '{'
#313: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:534:
+	if (intel_dp_is_uhbr(intel_dp)){

total: 1 errors, 1 warnings, 0 checks, 588 lines checked
19a8d10154b4 drm/i915/display/dp: On LT failure retry LT


