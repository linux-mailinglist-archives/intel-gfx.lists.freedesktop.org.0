Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E0D2AF00A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 12:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555C789F01;
	Wed, 11 Nov 2020 11:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E11989F01;
 Wed, 11 Nov 2020 11:52:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0645BA0091;
 Wed, 11 Nov 2020 11:52:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 11 Nov 2020 11:52:22 -0000
Message-ID: <160509554299.4718.13198499262403814809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201109201246.17117-1-manasi.d.navare@intel.com>
In-Reply-To: <20201109201246.17117-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv8=2C1/7=5D_drm/i915/dp=3A_Some_res?=
 =?utf-8?q?huffling_in_mode=5Fvalid_as_prep_for_bigjoiner_modes_=28rev2=29?=
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

Series: series starting with [v8,1/7] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes (rev2)
URL   : https://patchwork.freedesktop.org/series/83655/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3642707f5f97 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
3abf2ed167c7 drm/i915: Move encoder->get_config to a new function
968544a3c74a drm/i915/dp: Add a wrapper function around get_pipe_config
7c6b8f47d385 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:188: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#188: FILE: drivers/gpu/drm/i915/display/intel_display.c:13409:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 397 lines checked
a312828af913 drm/i915: Pass intel_atomic_state instead of drm_atomic_state
bf239f8a9820 drm/i915/dp: Add from_crtc_state to copy color blobs
f74e178a1a28 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
-:191: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#191: FILE: drivers/gpu/drm/i915/display/intel_dp.c:774:
+	if ((target_clock > max_dotclk || mode->hdisplay > 5120)
+	    && intel_dp_can_bigjoiner(intel_dp)) {

total: 0 errors, 0 warnings, 1 checks, 211 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
