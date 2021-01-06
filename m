Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81D2EBF43
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 15:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82D76E1FB;
	Wed,  6 Jan 2021 14:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 117976E1F9;
 Wed,  6 Jan 2021 14:02:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AE7BA8836;
 Wed,  6 Jan 2021 14:02:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Jan 2021 14:02:58 -0000
Message-ID: <160994177801.18709.13094783938706125386@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210106134005.10279-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210106134005.10279-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/8=5D_drm/i915/gt=3A_Rearrange_vlv_wor?=
 =?utf-8?q?karounds?=
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

Series: series starting with [1/8] drm/i915/gt: Rearrange vlv workarounds
URL   : https://patchwork.freedesktop.org/series/85549/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/i915/gt/intel_reset.c:1329:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gt/selftest_reset.c:101:20:    expected void *in
+drivers/gpu/drm/i915/gt/selftest_reset.c:101:20:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:101:20: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:102:46:    expected void const *src
+drivers/gpu/drm/i915/gt/selftest_reset.c:102:46:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:102:46: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:137:20:    expected void *in
+drivers/gpu/drm/i915/gt/selftest_reset.c:137:20:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:137:20: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:138:46:    expected void const *src
+drivers/gpu/drm/i915/gt/selftest_reset.c:138:46:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:138:46: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/gt/selftest_reset.c:99:34:    expected unsigned int [usertype] *s
+drivers/gpu/drm/i915/gt/selftest_reset.c:99:34:    got void [noderef] __iomem *[assigned] s
+drivers/gpu/drm/i915/gt/selftest_reset.c:99:34: warning: incorrect type in argument 1 (different address spaces)
+./include/linux/seqlock.h:843:24: warning: trying to copy expression type 31
+./include/linux/seqlock.h:843:24: warning: trying to copy expression type 31
+./include/linux/seqlock.h:869:16: warning: trying to copy expression type 31


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
