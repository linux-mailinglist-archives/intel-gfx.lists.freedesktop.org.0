Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CED3DB957
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 15:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BA66F444;
	Fri, 30 Jul 2021 13:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AE6F6F441;
 Fri, 30 Jul 2021 13:30:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71F57A8830;
 Fri, 30 Jul 2021 13:30:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cai Huoqing" <caihuoqing@baidu.com>
Date: Fri, 30 Jul 2021 13:30:26 -0000
Message-ID: <162765182643.590.14942510560281326511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730094918.2928-1-caihuoqing@baidu.com>
In-Reply-To: <20210730094918.2928-1-caihuoqing@baidu.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Fix_typo_in_comments_and_Kconfig=2Edebug?=
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

Series: drm/i915: Fix typo in comments and Kconfig.debug
URL   : https://patchwork.freedesktop.org/series/93239/
State : failure

== Summary ==

Applying: drm/i915: Fix typo in comments and Kconfig.debug
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Kconfig.debug
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/i915_gpu_error.c
M	drivers/gpu/drm/i915/i915_pci.c
M	drivers/gpu/drm/i915/i915_perf.c
M	drivers/gpu/drm/i915/i915_pmu.h
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/i915_request.c
M	drivers/gpu/drm/i915/i915_vma.c
M	drivers/gpu/drm/i915/intel_pm.c
M	drivers/gpu/drm/i915/intel_region_ttm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_region_ttm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_region_ttm.c
Auto-merging drivers/gpu/drm/i915/intel_pm.c
Auto-merging drivers/gpu/drm/i915/i915_vma.c
Auto-merging drivers/gpu/drm/i915/i915_request.c
Auto-merging drivers/gpu/drm/i915/i915_reg.h
Auto-merging drivers/gpu/drm/i915/i915_pmu.h
Auto-merging drivers/gpu/drm/i915/i915_perf.c
Auto-merging drivers/gpu/drm/i915/i915_pci.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_pci.c
Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
Auto-merging drivers/gpu/drm/i915/i915_drv.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/Kconfig.debug
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Fix typo in comments and Kconfig.debug
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


