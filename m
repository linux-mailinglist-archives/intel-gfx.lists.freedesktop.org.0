Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746A613CEEA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 22:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F17526EB4D;
	Wed, 15 Jan 2020 21:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15F6B6EB4C;
 Wed, 15 Jan 2020 21:28:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E032A011C;
 Wed, 15 Jan 2020 21:28:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 21:28:22 -0000
Message-ID: <157912370202.2007.10473864620618910437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115205245.2772800-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200115205245.2772800-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Inject_a_cond=5Fresched=28=29_into_long_drm=5Fclflus?=
 =?utf-8?b?aF9zZygp?=
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

Series: drm: Inject a cond_resched() into long drm_clflush_sg()
URL   : https://patchwork.freedesktop.org/series/72085/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f1c4f0dc10f6 drm: Inject a cond_resched() into long drm_clflush_sg()
-:41: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#41: FILE: drivers/gpu/drm/drm_cache.c:124:
+		s.max = s.curr = s.sgp->offset;

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__iter' - possible side-effects?
#62: FILE: drivers/gpu/drm/drm_cache.c:145:
+#define for_each_sgt_page(__pp, __iter, __sgt)				\
+	for ((__iter) = __sgt_iter((__sgt)->sgl);			\
+	     ((__pp) = (__iter).pfn == 0 ? NULL :			\
+	      pfn_to_page((__iter).pfn + ((__iter).curr >> PAGE_SHIFT))); \
+	     (((__iter).curr += PAGE_SIZE) >= (__iter).max) ?		\
+	     (__iter) = __sgt_iter(__sg_next_resched((__iter).sgp)), 0 : 0)

total: 0 errors, 0 warnings, 2 checks, 68 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
