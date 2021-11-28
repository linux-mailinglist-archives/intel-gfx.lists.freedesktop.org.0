Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EEF4604DF
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Nov 2021 07:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877A66EB9C;
	Sun, 28 Nov 2021 06:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01CEF6EB8F;
 Sun, 28 Nov 2021 06:08:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC33EA0003;
 Sun, 28 Nov 2021 06:08:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sun, 28 Nov 2021 06:08:21 -0000
Message-ID: <163807970194.26082.4159224394642855784@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fbc=3A_More_FBC_refactoring_=28rev3=29?=
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

Series: drm/i915/fbc: More FBC refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/97239/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ecef8578b004 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage
d3fce6e917a0 drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()
d34c28935927 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache
9f5b6931ea18 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()
54eed564808c drm/i915/fbc: Nuke more FBC state
1acf585d8f7a drm/i915/fbc: Reuse the same struct for the cache and params
61bff1141b24 drm/i915/fbc: Pass around FBC instance instead of crtc
fa1855f35110 drm/i915/fbc: Track FBC usage per-plane
-:427: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#427: FILE: drivers/gpu/drm/i915/i915_trace.h:385:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),

-:427: WARNING:TABSTOP: Statements should start on a tabstop
#427: FILE: drivers/gpu/drm/i915/i915_trace.h:385:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),

-:447: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#447: FILE: drivers/gpu/drm/i915/i915_trace.h:407:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),

-:447: WARNING:TABSTOP: Statements should start on a tabstop
#447: FILE: drivers/gpu/drm/i915/i915_trace.h:407:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),

-:467: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#467: FILE: drivers/gpu/drm/i915/i915_trace.h:429:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),

-:467: WARNING:TABSTOP: Statements should start on a tabstop
#467: FILE: drivers/gpu/drm/i915/i915_trace.h:429:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),

total: 0 errors, 6 warnings, 0 checks, 423 lines checked
88636ab19217 drm/i915/fbc: Flatten __intel_fbc_pre_update()
01c5bd8f3273 drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff
b9d51c6c3959 drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c
aac0390be0a4 drm/i915/fbc: Introduce intel_fbc_add_plane()
39f3617ba35b drm/i915/fbc: Allocate intel_fbc dynamically
5023c9d56830 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()
d0e5f415b54b drm/i915/fbc: Disable FBC fully on FIFO underrun
160889a06c69 drm/i915/fbc: Nuke state_cache
c63d4fbb2cac drm/i915/fbc: Move plane pointer into intel_fbc_state
c8fe1882d435 drm/i915/fbc: s/parms/fbc_state/
65cdebed3462 drm/i915/fbc: No FBC+double wide pipe
5076f20a6bda drm/i915/fbc: Pimp the FBC debugfs output


