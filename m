Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC9B3D04A0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 00:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E2D6E402;
	Tue, 20 Jul 2021 22:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD0A76E3A0;
 Tue, 20 Jul 2021 22:31:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9CDBA00C9;
 Tue, 20 Jul 2021 22:31:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 20 Jul 2021 22:31:36 -0000
Message-ID: <162682029682.12849.1769174142482206472@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210720223921.56160-1-matthew.brost@intel.com>
In-Reply-To: <20210720223921.56160-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Series_to_merge_a_subset_of_GuC_submission?=
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

Series: Series to merge a subset of GuC submission
URL   : https://patchwork.freedesktop.org/series/92791/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/gt/intel_reset.c:1396:5: warning: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
+drivers/gpu/drm/i915/gt/intel_ring_submission.c:1210:24: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/i915/i915_perf.c:1434:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1488:15: warning: memset with byte count of 16777216
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+./include/linux/stddef.h:17:9: this was the original definition
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
+/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h:417:9: warning: preprocessor token offsetof redefined


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
