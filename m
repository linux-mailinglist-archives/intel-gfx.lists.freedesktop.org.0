Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B3D1643CC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 12:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9406E5BF;
	Wed, 19 Feb 2020 11:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBF656E5BE;
 Wed, 19 Feb 2020 11:59:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E16FCA0099;
 Wed, 19 Feb 2020 11:59:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 19 Feb 2020 11:59:28 -0000
Message-ID: <158211356889.21062.686273739078512127@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftest=3A_Analyse?=
 =?utf-8?q?_timestamp_behaviour_across_context_switches?=
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

Series: series starting with [1/2] drm/i915/selftest: Analyse timestamp behaviour across context switches
URL   : https://patchwork.freedesktop.org/series/73637/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e360e7c59c3d drm/i915/selftest: Analyse timestamp behaviour across context switches
-:143: WARNING:MEMORY_BARRIER: memory barrier without comment
#143: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4573:
+		wmb();

-:157: WARNING:MEMORY_BARRIER: memory barrier without comment
#157: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4587:
+	rmb();

total: 0 errors, 2 warnings, 0 checks, 247 lines checked
e95291057367 drm/i915/selftests: Mark GPR checking more hostile
-:162: WARNING:MEMORY_BARRIER: memory barrier without comment
#162: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4471:
+		wmb();

-:172: WARNING:MEMORY_BARRIER: memory barrier without comment
#172: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4500:
+	wmb();

total: 0 errors, 2 warnings, 0 checks, 201 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
