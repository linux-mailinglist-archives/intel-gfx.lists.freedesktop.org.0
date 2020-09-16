Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4E826C2C5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 14:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D546E9FA;
	Wed, 16 Sep 2020 12:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E221D6E15E;
 Wed, 16 Sep 2020 12:34:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCF63A47DB;
 Wed, 16 Sep 2020 12:34:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 16 Sep 2020 12:34:20 -0000
Message-ID: <160025966080.19374.8289218038230608864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916090059.3189-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200916090059.3189-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Show_engine_p?=
 =?utf-8?q?roperties_in_the_pretty_printer?=
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

Series: series starting with [1/3] drm/i915/gt: Show engine properties in the pretty printer
URL   : https://patchwork.freedesktop.org/series/81727/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
22a8bb51bc47 drm/i915/gt: Show engine properties in the pretty printer
-:49: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#49: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1618:
+}
+		P(heartbeat_interval_ms),

total: 0 errors, 0 warnings, 1 checks, 48 lines checked
4a0bcbb88652 drm/i915: Break up error capture compression loops with cond_resched()
5d65ed072d0d drm/i915: Reduce GPU error capture mutex hold time
-:36: WARNING:MEMORY_BARRIER: memory barrier without comment
#36: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1040:
+			mb();

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
