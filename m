Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D0819D093
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 08:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D378C6EB08;
	Fri,  3 Apr 2020 06:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8C776EB08;
 Fri,  3 Apr 2020 06:54:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1D57A011B;
 Fri,  3 Apr 2020 06:54:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 03 Apr 2020 06:54:52 -0000
Message-ID: <158589689292.13351.13875264663811149679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?SAGV_support_for_Gen12+_=28rev10=29?=
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

Series: SAGV support for Gen12+ (rev10)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Start passing latency as parameter
Okay!

Commit: drm/i915: Eliminate magic numbers "0" and "1" from color plane
Okay!

Commit: drm/i915: Introduce skl_plane_wm_level accessor.
Okay!

Commit: drm/i915: Add intel_atomic_get_bw_*_state helpers
Okay!

Commit: drm/i915: Extract gen specific functions from intel_can_enable_sagv
Okay!

Commit: drm/i915: Add proper SAGV support for TGL+
+drivers/gpu/drm/i915/intel_pm.c:3836:6: warning: symbol 'intel_can_enable_sagv_on_pipe' was not declared. Should it be static?

Commit: drm/i915: Added required new PCode commands
Okay!

Commit: drm/i915: Rename bw_state to new_bw_state
Okay!

Commit: drm/i915: Restrict qgv points which don't have enough bandwidth.
Okay!

Commit: drm/i915: Enable SAGV support for Gen12
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
