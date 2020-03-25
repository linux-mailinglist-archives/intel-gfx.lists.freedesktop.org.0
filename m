Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5A4193437
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 00:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7726E850;
	Wed, 25 Mar 2020 23:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD8976E84E;
 Wed, 25 Mar 2020 23:09:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4182A432F;
 Wed, 25 Mar 2020 23:09:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "George Spelvin" <lkml@SDF.ORG>
Date: Wed, 25 Mar 2020 23:09:54 -0000
Message-ID: <158517779470.29633.4021166957790327115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325192429.GA8865@SDF.ORG>
In-Reply-To: <20200325192429.GA8865@SDF.ORG>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drivers/gpu/drm/i915/selftests/i915=5Fbuddy=2Ec=3A_Fix_bug?=
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

Series: drivers/gpu/drm/i915/selftests/i915_buddy.c: Fix bug
URL   : https://patchwork.freedesktop.org/series/75090/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
11370081d24e drivers/gpu/drm/i915/selftests/i915_buddy.c: Fix bug
-:53: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#53: FILE: drivers/gpu/drm/i915/selftests/i915_buddy.c:289:
+	s = 1 + i915_prandom_u32_max_state((1 << (33-12)) - 1, &prng);
 	                                            ^

total: 0 errors, 0 warnings, 1 checks, 36 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
