Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D1729D9B9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 00:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84DC6E7FE;
	Wed, 28 Oct 2020 23:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0EE56E7F5;
 Wed, 28 Oct 2020 23:00:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B95EFA8832;
 Wed, 28 Oct 2020 23:00:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Date: Wed, 28 Oct 2020 23:00:53 -0000
Message-ID: <160392605373.21341.13227792079182520693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201028214232.5631-1-manasi.d.navare@intel.com>
In-Reply-To: <20201028214232.5631-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/6=5D_drm/i915/dp=3A_Some_res?=
 =?utf-8?q?huffling_in_mode=5Fvalid_as_prep_for_bigjoiner_modes?=
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

Series: series starting with [v3,1/6] drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
URL   : https://patchwork.freedesktop.org/series/83173/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
29b307e050f4 drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner modes
7b5090a4c566 drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
-:141: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#141: FILE: drivers/gpu/drm/i915/display/intel_display.c:13460:
+	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;

total: 0 errors, 0 warnings, 1 checks, 357 lines checked
f4900e21412a drm/i915: Add pipe_mode readout in verify_crtc_state
a5f14d0b240f drm/i915: Pass intel_atomic_state instead of drm_atomic_state
779bec036a45 drm/i915/dp: Prep for bigjoiner atomic check
1388a0c36ca0 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
