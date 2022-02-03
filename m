Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6F44A8BE6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE5510E6E8;
	Thu,  3 Feb 2022 18:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E7B210E6E8;
 Thu,  3 Feb 2022 18:50:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BE8EA0169;
 Thu,  3 Feb 2022 18:50:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 03 Feb 2022 18:50:39 -0000
Message-ID: <164391423911.15865.17301816375972160301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_a_bitmask_for_bigjoiner_state_tracking?=
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

Series: drm/i915: Use a bitmask for bigjoiner state tracking
URL   : https://patchwork.freedesktop.org/series/99680/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9451ce773538 drm/i915: Flag crtc scaling_filter changes as modeset
a1b2697d7287 drm/i915: Fix bigjoiner state copy fails
30f3289be9ea drm/i915: Remove weird code from intel_atomic_check_bigjoiner()
eb369188b6f9 drm/i915: Clean up the bigjoiner state copy logic
b8c9664a64ec drm/i915: Nuke some dead code
c7593cfe9487 drm/i915: Introduce intel_crtc_is_bigjoiner_{slave, master}()
-:46: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#46: 
+ intel_crtc_is_bigjoiner_slave(S) ? E1 : intel_crtc_is_bigjoiner_master(S) ? E2 : E3

total: 0 errors, 1 warnings, 0 checks, 222 lines checked
530e8b8b8894 drm/i915: Convert for_each_intel_crtc_mask() to take a pipe mask instead
-:31: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#31: FILE: drivers/gpu/drm/i915/display/intel_display.h:433:
+#define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
 	list_for_each_entry(intel_crtc,					\
 			    &(dev)->mode_config.crtc_list,		\
 			    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_crtc' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/display/intel_display.h:433:
+#define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
 	list_for_each_entry(intel_crtc,					\
 			    &(dev)->mode_config.crtc_list,		\
 			    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))

total: 1 errors, 0 warnings, 1 checks, 139 lines checked
d5dfb430dc97 drm/i915: Use for_each_intel_crtc_in_pipe_mask() more
2a5f134f4a89 drm/i915: Return both master and slave pipes from enabled_bigjoiner_pipes()
e91cede7c36e drm/i915: Change bigjoiner state tracking to use the pipe bitmask
-:528: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#528: FILE: drivers/gpu/drm/i915/display/intel_display.c:10510:
+								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {

-:531: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#531: FILE: drivers/gpu/drm/i915/display/intel_display.c:10513:
+					slave_crtc_state = to_intel_crtc_state(slave_crtc->base.state);

total: 0 errors, 2 warnings, 0 checks, 597 lines checked


