Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AF445C2E5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 14:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74D96E892;
	Wed, 24 Nov 2021 13:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BCE06E892;
 Wed, 24 Nov 2021 13:31:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35843A008A;
 Wed, 24 Nov 2021 13:31:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 24 Nov 2021 13:31:08 -0000
Message-ID: <163776066821.25292.3074028352919714259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fbc=3A_More_FBC_refactoring?=
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

Series: drm/i915/fbc: More FBC refactoring
URL   : https://patchwork.freedesktop.org/series/97239/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
daf75ef5fa24 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage
af7d3467e59a drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()
766554ded9a6 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache
d39a6774d015 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()
6d32c9dc060d drm/i915/fbc: Nuke more FBC state
eddfad2b1288 drm/i915/fbc: Reuse the same struct for the cache and params
31e06105aefc drm/i915/fbc: Pass around FBC instance instead of crtc
8611830ea672 drm/i915/fbc: Track FBC usage per-plane
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
850242482fdc drm/i915/fbc: Flatten __intel_fbc_pre_update()
277d0981c162 drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff
5f0b99188755 drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c
c62767b59742 drm/i915/fbc: Introduce intel_fbc_add_plane()
da0902427db7 drm/i915/fbc: Allocate intel_fbc dynamically
c6c6f9f8c3f8 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()
e0bd9ec2a43d drm/i915/fbc: Disable FBC fully on FIFO underrun
af74b495dd54 drm/i915/fbc: Nuke state_cache
33c7b45b4f46 drm/i915/fbc: Move plane pointer into intel_fbc_state
dac670cc9e0d drm/i915/fbc: s/parms/fbc_state/
a70975006ff0 drm/i915/fbc: No FBC+double wide pipe
3d901c6ba4e2 drm/i915/fbc: Pimp the FBC debugfs output


