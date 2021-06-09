Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C1D3A1F74
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F486EB38;
	Wed,  9 Jun 2021 21:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B24EA6EB1C;
 Wed,  9 Jun 2021 21:54:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AAD3DA47DB;
 Wed,  9 Jun 2021 21:54:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 21:54:58 -0000
Message-ID: <162327569866.27478.12848705426043075841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609212959.471209-1-jason@jlekstrand.net>
In-Reply-To: <20210609212959.471209-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?dma-fence=2C_i915=3A_Stop_allowing_SLAB=5FTYPESAFE=5FBY=5FRCU_f?=
 =?utf-8?q?or_dma=5Ffence?=
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

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+./include/drm/drm_syncobj.h:110:50:    expected struct dma_fence *fence
+./include/drm/drm_syncobj.h:110:50:    expected struct dma_fence *fence
+./include/drm/drm_syncobj.h:110:50:    expected struct dma_fence *fence
+./include/drm/drm_syncobj.h:110:50:    expected struct dma_fence *fence
+./include/drm/drm_syncobj.h:110:50:    expected struct dma_fence *fence
+./include/drm/drm_syncobj.h:110:50:    expected struct dma_fence *fence
+./include/drm/drm_syncobj.h:110:50:    got struct dma_fence [noderef] __rcu *fence
+./include/drm/drm_syncobj.h:110:50:    got struct dma_fence [noderef] __rcu *fence
+./include/drm/drm_syncobj.h:110:50:    got struct dma_fence [noderef] __rcu *fence
+./include/drm/drm_syncobj.h:110:50:    got struct dma_fence [noderef] __rcu *fence
+./include/drm/drm_syncobj.h:110:50:    got struct dma_fence [noderef] __rcu *fence
+./include/drm/drm_syncobj.h:110:50:    got struct dma_fence [noderef] __rcu *fence
+./include/drm/drm_syncobj.h:110:50: warning: incorrect type in argument 1 (different address spaces)
+./include/drm/drm_syncobj.h:110:50: warning: incorrect type in argument 1 (different address spaces)
+./include/drm/drm_syncobj.h:110:50: warning: incorrect type in argument 1 (different address spaces)
+./include/drm/drm_syncobj.h:110:50: warning: incorrect type in argument 1 (different address spaces)
+./include/drm/drm_syncobj.h:110:50: warning: incorrect type in argument 1 (different address spaces)
+./include/drm/drm_syncobj.h:110:50: warning: incorrect type in argument 1 (different address spaces)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
