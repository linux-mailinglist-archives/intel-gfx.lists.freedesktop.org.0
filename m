Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F71E168953
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5B86E4BB;
	Fri, 21 Feb 2020 21:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 840266F589;
 Fri, 21 Feb 2020 21:28:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CDFBA41FB;
 Fri, 21 Feb 2020 21:28:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 21 Feb 2020 21:28:29 -0000
Message-ID: <158232050948.7919.7605768995091154772@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Refactor_Gen11+_SAGV_support_=28rev2=29?=
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

Series: Refactor Gen11+ SAGV support (rev2)
URL   : https://patchwork.freedesktop.org/series/73703/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Start passing latency as parameter
Okay!

Commit: drm/i915: Introduce skl_plane_wm_level accessor.
Okay!

Commit: drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
Okay!

Commit: drm/i915: Refactor intel_can_enable_sagv
+drivers/gpu/drm/i915/intel_pm.c:3851:6: warning: symbol 'intel_compute_sagv_mask' was not declared. Should it be static?
+drivers/gpu/drm/i915/intel_pm.c:3905:6: warning: symbol 'intel_calculate_sagv_result' was not declared. Should it be static?

Commit: drm/i915: Added required new PCode commands
Okay!

Commit: drm/i915: Restrict qgv points which don't have enough bandwidth.
Okay!

Commit: drm/i915: Enable SAGV support for Gen12
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
