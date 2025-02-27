Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DA7A48CDE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 00:39:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3E110EBB7;
	Thu, 27 Feb 2025 23:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E053C10EBB0;
 Thu, 27 Feb 2025 23:39:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_Imple?=
 =?utf-8?q?ment_POST=5FLT=5FADJ=5FREQ_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2025 23:39:06 -0000
Message-ID: <174069954690.2926940.3474512207163477743@b555e5b46a47>
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

Series: drm/i915/dp: Implement POST_LT_ADJ_REQ (rev2)
URL   : https://patchwork.freedesktop.org/series/145348/
State : warning

== Summary ==

Error: dim checkpatch failed
bfa49de32de7 drm/dp: Add definitions for POST_LT_ADJ training sequence
d287aa6407ca drm/dp: Add POST_LT_ADJ_REQ helpers
a698d9368736 drm/i915/dp: Clear DPCD training pattern before transmitting the idle pattern
be8aeef39c3c drm/i915/dp: Have intel_dp_get_adjust_train() tell us if anything changed
16f6aa25ba3c drm/i915/dp: Implement the POST_LT_ADJ_REQ sequence
-:58: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:765:
+		intel_dp_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX) != DP_TRAINING_PATTERN_4;

-:118: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1134:
+			       "POST_LT_ADJ_REQ done (%d changes). DP Training successful\n", changes);

-:126: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1142:
+			       "POST_LT_ADJ_REQ limit reached (%d changes). DP Training successful\n", changes);

-:134: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1150:
+			       "POST_LT_ADJ_REQ timeout reached (%d changes). DP Training successful\n", changes);

total: 0 errors, 4 warnings, 0 checks, 177 lines checked
965c3e8a473b drm/i915/dp: Move intel_dp_training_pattern()
e8dd76d6cd84 drm/i915/dp: Implement .set_idle_link_train() for everyone
e8b069e4b35d drm/i915/dp: Make .set_idle_link_train() mandatory
0ca2ffc328b8 hax: drm/i915: Disable TPS4 support to force POST_LT_ADJ_REQ usage


