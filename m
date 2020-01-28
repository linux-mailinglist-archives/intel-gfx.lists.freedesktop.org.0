Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F05A14AE2C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 03:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40BC6EC59;
	Tue, 28 Jan 2020 02:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DE976EC57;
 Tue, 28 Jan 2020 02:33:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 858D6A011A;
 Tue, 28 Jan 2020 02:33:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 02:33:10 -0000
Message-ID: <158017879051.20537.2603388949294169689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/8=5D_drm/i915/gt=3A_Expose_engine_pro?=
 =?utf-8?q?perties_via_sysfs?=
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

Series: series starting with [1/8] drm/i915/gt: Expose engine properties via sysfs
URL   : https://patchwork.freedesktop.org/series/72638/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/gt: Expose engine properties via sysfs
-
+drivers/gpu/drm/i915/gt/sysfs_engines.c:51:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/sysfs_engines.c:52:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/sysfs_engines.c:56:10: error: bad integer constant expression

Commit: drm/i915/gt: Expose engine->mmio_base via sysfs
+drivers/gpu/drm/i915/gt/sysfs_engines.c:60:10: error: bad integer constant expression
+drivers/gpu/drm/i915/gt/sysfs_engines.c:61:10: error: bad integer constant expression
-O:drivers/gpu/drm/i915/gt/sysfs_engines.c:51:10: error: bad integer constant expression
-O:drivers/gpu/drm/i915/gt/sysfs_engines.c:52:10: error: bad integer constant expression

Commit: drm/i915/gt: Expose timeslice duration to sysfs
Okay!

Commit: drm/i915/gt: Expose busywait duration to sysfs
+drivers/gpu/drm/i915/intel_wakeref.c:135:19: warning: context imbalance in 'wakeref_auto_timeout' - unexpected unlock
+drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y

Commit: drm/i915/gt: Expose reset stop timeout via sysfs
Okay!

Commit: drm/i915/gt: Expose preempt reset timeout via sysfs
Okay!

Commit: drm/i915/gt: Expose heartbeat interval via sysfs
Okay!

Commit: drm/i915/gt: Limit C-states while waiting for requests
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
