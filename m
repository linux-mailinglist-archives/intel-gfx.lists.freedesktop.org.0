Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1487E445A84
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 20:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1789B6E0BE;
	Thu,  4 Nov 2021 19:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8713C6E0BE;
 Thu,  4 Nov 2021 19:22:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80B09A00A0;
 Thu,  4 Nov 2021 19:22:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 Nov 2021 19:22:14 -0000
Message-ID: <163605373450.6349.15040449467775786152@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211104161858.21786-1-jani.nikula@intel.com>
In-Reply-To: <20211104161858.21786-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/6=5D_drm/i915/audio=3A_group?=
 =?utf-8?q?_audio_under_anonymous_struct_in_drm=5Fi915=5Fprivate?=
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

Series: series starting with [v3,1/6] drm/i915/audio: group audio under anonymous struct in drm_i915_private
URL   : https://patchwork.freedesktop.org/series/96578/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
eaff73f1c59d drm/i915/audio: group audio under anonymous struct in drm_i915_private
b71eaad880d2 drm/i915/audio: name the audio sub-struct in drm_i915_private
-:325: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio.lpe.platdev"
#325: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1408:
+	if ((dev_priv)->audio.lpe.platdev != NULL)

-:338: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio.lpe.platdev"
#338: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:77:
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev != NULL)

-:347: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#347: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:99:
+	rsc[0].start    = rsc[0].end = dev_priv->audio.lpe.irq;

total: 0 errors, 0 warnings, 3 checks, 441 lines checked
ba85b7efe4cf drm/i915/audio: define the audio struct separately from drm_i915_private
81199ff96aa3 drm/i915/audio: move intel_audio_funcs internal to intel_audio.c
86620a390924 drm/i915/audio: clean up LPE audio init/cleanup calls
3d26d2e9512b drm/i915/audio: rename intel_init_audio_hooks to intel_audio_hooks_init


