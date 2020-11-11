Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC0A2AFB2E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 23:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D1589C17;
	Wed, 11 Nov 2020 22:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 446C689BFC;
 Wed, 11 Nov 2020 22:14:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B739A47EA;
 Wed, 11 Nov 2020 22:14:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 11 Nov 2020 22:14:54 -0000
Message-ID: <160513289421.4718.16851057327823019985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201111000819.29809-1-manasi.d.navare@intel.com>
In-Reply-To: <20201111000819.29809-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv9=2C1/7=5D_drm/i915/dp=3A_Some_res?=
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

Series: series starting with [v9,1/7] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes (rev2)
URL   : https://patchwork.freedesktop.org/series/83716/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bceebc3f06d1 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
3322a554f588 drm/i915: Move encoder->get_config to a new function
86d2442cbabe drm/i915/dp: Add a wrapper function around get_pipe_config
5e5e3dbf3ce4 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:190: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#190: FILE: drivers/gpu/drm/i915/display/intel_display.c:13416:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 397 lines checked
e40ad8303a92 drm/i915: Pass intel_atomic_state instead of drm_atomic_state
53b9f20a5e2a drm/i915/dp: Add from_crtc_state to copy color blobs
74290180d266 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
-:192: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#192: FILE: drivers/gpu/drm/i915/display/intel_dp.c:774:
+	if ((target_clock > max_dotclk || mode->hdisplay > 5120)
+	    && intel_dp_can_bigjoiner(intel_dp)) {

total: 0 errors, 0 warnings, 1 checks, 211 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
