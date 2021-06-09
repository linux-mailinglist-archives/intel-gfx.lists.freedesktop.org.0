Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A243A1F69
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659536EB5A;
	Wed,  9 Jun 2021 21:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FA7F6EB5A;
 Wed,  9 Jun 2021 21:52:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8720DA47DB;
 Wed,  9 Jun 2021 21:52:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 21:52:03 -0000
Message-ID: <162327552352.27477.11205423977386478853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609212959.471209-1-jason@jlekstrand.net>
In-Reply-To: <20210609212959.471209-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-fence=2C_i915=3A_Stop_allowing_SLAB=5FTYPESAFE=5FBY=5FR?=
 =?utf-8?q?CU_for_dma=5Ffence?=
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

Series: dma-fence, i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence
URL   : https://patchwork.freedesktop.org/series/91299/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c4dee3b6c2a0 drm/i915: Move intel_engine_free_request_pool to i915_request.c
a566e7614443 drm/i915: Use a simpler scheme for caching i915_request
-:98: WARNING:REPEATED_WORD: Possible repeated word: 'we'
#98: FILE: drivers/gpu/drm/i915/i915_request.c:930:
+	 * (this can happen when switching to a kernel context), we we want

total: 0 errors, 1 warnings, 0 checks, 84 lines checked
425024c191b4 drm/i915: Stop using SLAB_TYPESAFE_BY_RCU for i915_request
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 0eafec6d3244 ("drm/i915: Enable lockless lookup of request tracking via RCU")'
#9: 
Ever since 0eafec6d3244 ("drm/i915: Enable lockless lookup of request

total: 1 errors, 0 warnings, 0 checks, 109 lines checked
6f5eaff5c611 dma-buf: Stop using SLAB_TYPESAFE_BY_RCU in selftests
3515a69ecbaf DONOTMERGE: dma-buf: Get rid of dma_fence_get_rcu_safe


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
