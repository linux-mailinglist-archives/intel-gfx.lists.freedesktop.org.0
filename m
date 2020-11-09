Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4D12AB254
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 09:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD9B89363;
	Mon,  9 Nov 2020 08:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F6BD89363;
 Mon,  9 Nov 2020 08:22:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56846A363D;
 Mon,  9 Nov 2020 08:22:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Mon, 09 Nov 2020 08:22:09 -0000
Message-ID: <160491012935.18042.10219856714329669342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201105223359.28203-1-manasi.d.navare@intel.com>
In-Reply-To: <20201105223359.28203-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Final_prep_series_for_bigjoiner_=28rev2=29?=
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

Series: Final prep series for bigjoiner (rev2)
URL   : https://patchwork.freedesktop.org/series/83547/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6cf2a64fbb76 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
99648dc9d2bf drm/i915: Move encoder->get_config to a new function
c8081c28ad59 drm/i915/dp: Add a wrapper function around get_pipe_config
2ea170a05527 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:183: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#183: FILE: drivers/gpu/drm/i915/display/intel_display.c:13485:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 392 lines checked
9ec71e9df46e drm/i915: Pass intel_atomic_state instead of drm_atomic_state
8036c2301b4a drm/i915/dp: Add from_crtc_state to copy color blobs
18446671587a drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
-:191: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#191: FILE: drivers/gpu/drm/i915/display/intel_dp.c:774:
+	if ((target_clock > max_dotclk || mode->hdisplay > 5120)
+	    && intel_dp_can_bigjoiner(intel_dp)) {

total: 0 errors, 0 warnings, 1 checks, 211 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
