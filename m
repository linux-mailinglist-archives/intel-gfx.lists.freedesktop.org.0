Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE52223125
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 04:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56AA66E328;
	Fri, 17 Jul 2020 02:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FDF06E326;
 Fri, 17 Jul 2020 02:24:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82799A66C9;
 Fri, 17 Jul 2020 02:24:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 17 Jul 2020 02:24:40 -0000
Message-ID: <159495268050.14919.6406497435376762511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/perf=3A_Whitelist_O?=
 =?utf-8?q?A_report_trigger_registers?=
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

Series: series starting with [1/3] drm/i915/perf: Whitelist OA report trigger registers
URL   : https://patchwork.freedesktop.org/series/79571/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
451a46ae0075 drm/i915/perf: Whitelist OA report trigger registers
9c529f1bfafe drm/i915/perf: Whitelist OA counter and buffer registers
54031bcae51f drm/i915/perf: Map OA buffer to user space for gen12 performance query
-:224: CHECK:SPACING: No space is necessary after a cast
#224: FILE: drivers/gpu/drm/i915/i915_perf.c:3298:
+	void __user *output = (void __user *) arg;

-:250: CHECK:SPACING: No space is necessary after a cast
#250: FILE: drivers/gpu/drm/i915/i915_perf.c:3324:
+	void __user *output = (void __user *) arg;

total: 0 errors, 0 warnings, 2 checks, 315 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
