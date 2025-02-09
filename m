Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 583D7A2DFEC
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2025 19:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385ED10E049;
	Sun,  9 Feb 2025 18:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3970010E049;
 Sun,  9 Feb 2025 18:32:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_joiner_a?=
 =?utf-8?q?nd_Y_plane_fixes_and_reorganization_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 09 Feb 2025 18:32:45 -0000
Message-ID: <173912596521.3991040.5434096395084744903@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: joiner and Y plane fixes and reorganization (rev4)
URL   : https://patchwork.freedesktop.org/series/144001/
State : warning

== Summary ==

Error: dim checkpatch failed
73d6b7a6cdfb drm/i915: Make sure all planes in use by the joiner have their crtc included
-:62: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
fdd7d927c768 Revert "drm/i915: Fix NULL ptr deref by checking new_crtc_state"
57b170889d73 drm/i915: Rework joiner and Y plane dependency handling
-:163: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#163: FILE: drivers/gpu/drm/i915/display/intel_display.c:6219:
+		ret = intel_joiner_add_affected_planes(state, intel_crtc_joined_pipe_mask(crtc_state));

total: 0 errors, 1 warnings, 0 checks, 139 lines checked
c9c0d370cd63 drm/i915: s/planar_slave/is_y_plane/
42e31efe4dbe drm/i915: Extract unlink_nv12_plane()
523298b9c573 drm/i915: Remove pointless visible check in unlink_nv12_plane()
25775e3957fc drm/i915: Extract link_nv12_planes()
5f24696af767 drm/i915: Rename the variables in icl_check_nv12_planes()
1e5cfaecb59d drm/i915: Move icl+ nv12 plane register mangling into skl_universal_plane.c
0a66a4aa3883 drm/i915: Relocate intel_atomic_check_planes()
-:262: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#262: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:1451:
+		ret = intel_joiner_add_affected_planes(state, intel_crtc_joined_pipe_mask(crtc_state));

total: 0 errors, 1 warnings, 0 checks, 622 lines checked
c2b9d57b24f2 drm/i915: Pimp the Y plane selection debugs


