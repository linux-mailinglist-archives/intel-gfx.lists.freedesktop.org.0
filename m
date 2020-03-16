Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DBD186EFE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 16:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B3F6E453;
	Mon, 16 Mar 2020 15:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 625F46E432;
 Mon, 16 Mar 2020 15:47:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 590D2A47E2;
 Mon, 16 Mar 2020 15:47:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 15:47:37 -0000
Message-ID: <158437365733.18996.9784634310240835389@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915=3A_Move_GGTT_fence_?=
 =?utf-8?q?registers_under_gt/?=
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

Series: series starting with [1/7] drm/i915: Move GGTT fence registers under gt/
URL   : https://patchwork.freedesktop.org/series/74703/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cfd159dc30dd drm/i915: Move GGTT fence registers under gt/
-:6: WARNING:TYPO_SPELLING: 'throught' may be misspelled - perhaps 'through'?
#6: 
Since the fence registers control HW detiling throught the GGTT

-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
rename from drivers/gpu/drm/i915/i915_gem_fence_reg.c

total: 0 errors, 2 warnings, 0 checks, 205 lines checked
4e7c950ab87c drm/i915/gt: Pull restoration of GGTT fences underneath the GT
84d01acc1bc9 drm/i915: Remove manual save/resume of fence register state
9f9e340e8b4d drm/i915/gt: Allocate i915_fence_reg array
5003f815b7aa drm/i915/gt: Store the fence details on the fence
750dc9e7ceb3 drm/i915/gt: Only wait for GPU activity before unbinding a GGTT fence
9eeea4468363 drm/i915/gt: Make fence revocation unequivocal

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
