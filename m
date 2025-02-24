Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8885A43089
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 00:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C5F10E06B;
	Mon, 24 Feb 2025 23:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0365C10E06B;
 Mon, 24 Feb 2025 23:08:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_Imple?=
 =?utf-8?q?ment_POST=5FLT=5FADJ=5FREQ?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2025 23:08:56 -0000
Message-ID: <174043853699.1758402.12367985445652758432@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250224172645.15763-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250224172645.15763-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/dp: Implement POST_LT_ADJ_REQ
URL   : https://patchwork.freedesktop.org/series/145348/
State : warning

== Summary ==

Error: dim checkpatch failed
de7e728f1294 drm/dp: Add definitions for POST_LT_ADJ training sequence
a2f2624751cc drm/dp: Add POST_LT_ADJ_REQ helpers
78aa816ee4d7 drm/i915/dp: Clear DPCD training pattern before transmitting the idle pattern
70b91c39cd26 drm/i915/dp: Have intel_dp_get_adjust_train() tell us if anything changed
42a669171852 drm/i915/dp: Implement the POST_LT_ADJ_REQ sequence
-:58: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:779:
+		intel_dp_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX) != DP_TRAINING_PATTERN_4;

-:118: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1148:
+			       "POST_LT_ADJ_REQ done (%d changes). DP Training successful\n", changes);

-:126: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1156:
+			       "POST_LT_ADJ_REQ limit reached (%d changes). DP Training successful\n", changes);

-:134: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1164:
+			       "POST_LT_ADJ_REQ timeout reached (%d changes). DP Training successful\n", changes);

total: 0 errors, 4 warnings, 0 checks, 177 lines checked
7d0211b522d0 drm/i915/dp: Move intel_dp_training_pattern()
33d54acee8d6 drm/i915/dp: Implement .set_idle_link_train() for everyone
57abaca730c9 drm/i915/dp: Make .set_idle_link_train() mandatory
38dfd70a4729 hax: drm/i915: Disable TPS4 support to force POST_LT_ADJ_REQ usage


