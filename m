Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA18A437F68
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 22:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73AA6E027;
	Fri, 22 Oct 2021 20:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BC016E027;
 Fri, 22 Oct 2021 20:39:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 231EDAA917;
 Fri, 22 Oct 2021 20:39:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Oct 2021 20:39:29 -0000
Message-ID: <163493516911.14705.8181347931529816636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1634918767.git.jani.nikula@intel.com>
In-Reply-To: <cover.1634918767.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_split_out_audio_private_from_dev=5Fpriv?=
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

Series: drm/i915: split out audio private from dev_priv
URL   : https://patchwork.freedesktop.org/series/96195/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4d684e513941 drm/i915/audio: group audio under anonymous struct in drm_i915_private
7dde34aa454e drm/i915/audio: name the audio sub-struct in drm_i915_private
-:315: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio.lpe.platdev"
#315: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1371:
+	if ((dev_priv)->audio.lpe.platdev != NULL)

-:328: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio.lpe.platdev"
#328: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:77:
+#define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->audio.lpe.platdev != NULL)

-:337: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#337: FILE: drivers/gpu/drm/i915/display/intel_lpe_audio.c:99:
+	rsc[0].start    = rsc[0].end = dev_priv->audio.lpe.irq;

total: 0 errors, 0 warnings, 3 checks, 438 lines checked
f6bfd155afcd drm/i915/audio: define the audio struct separately from drm_i915_private
4ba26336de5d drm/i915/audio: move intel_audio_funcs internal to intel_audio.c


