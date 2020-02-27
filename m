Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9220172253
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 16:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C856E91A;
	Thu, 27 Feb 2020 15:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84A346E90E;
 Thu, 27 Feb 2020 15:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CF92A00FD;
 Thu, 27 Feb 2020 15:33:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 27 Feb 2020 15:33:20 -0000
Message-ID: <158281760048.29657.8128080618462223204@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Refactor_Gen11+_SAGV_support_=28rev6=29?=
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

Series: Refactor Gen11+ SAGV support (rev6)
URL   : https://patchwork.freedesktop.org/series/73856/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a72659eb4666 drm/i915: Start passing latency as parameter
81ddfe1ca471 drm/i915: Introduce skl_plane_wm_level accessor.
bb8fb326c38f drm/i915: Add intel_bw_get_*_state helpers
1f6cb30bce42 drm/i915: Introduce more *_state_changed indicators
0aad2ca03244 drm/i915: Refactor intel_can_enable_sagv
-:806: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'state->active_pipe_changes != 0'
#806: FILE: drivers/gpu/drm/i915/intel_pm.c:6183:
+	if ((state->active_pipe_changes != 0) || state->ddb_state_changed)

total: 0 errors, 0 warnings, 1 checks, 679 lines checked
8b626dac4931 drm/i915: Added required new PCode commands
227852eaaaf7 drm/i915: Restrict qgv points which don't have enough bandwidth.
92ef8dc6a4f2 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
