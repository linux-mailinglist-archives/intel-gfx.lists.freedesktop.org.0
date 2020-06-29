Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C83420D2C6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 21:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC1289F31;
	Mon, 29 Jun 2020 19:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1427789CB5;
 Mon, 29 Jun 2020 19:08:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11D80A47E6;
 Mon, 29 Jun 2020 19:08:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 29 Jun 2020 19:08:44 -0000
Message-ID: <159345772407.747.16043566553918040912@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200629101256.13039-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=5D_drm/i915/gem=3A_Move_obj-=3El?=
 =?utf-8?q?ut=5Flist_under_its_own_lock_=28rev3=29?=
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

Series: series starting with [v2] drm/i915/gem: Move obj->lut_list under its own lock (rev3)
URL   : https://patchwork.freedesktop.org/series/78889/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c39cf9cd78da drm/i915/gem: Move obj->lut_list under its own lock
00af2c29ea68 drm/i915/gem: Split the context's obj:vma lut into its own mutex
-:82: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#82: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:173:
+	struct mutex lut_mutex;

total: 0 errors, 0 warnings, 1 checks, 105 lines checked
9e557cde27e4 drm/i915/gem: Drop forced struct_mutex from shrinker_taints_mutex
c199e797c70d drm/i915: Export ppgtt_bind_vma
ae5a264ca1f5 drm/i915: Preallocate stashes for vma page-directories
-:590: ERROR:SPACING: space required before the open parenthesis '('
#590: FILE: drivers/gpu/drm/i915/gt/intel_ppgtt.c:253:
+	if(err)

total: 1 errors, 0 warnings, 0 checks, 723 lines checked
cfb7c88fb6fe drm/i915: Switch to object allocations for page directories

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
