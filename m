Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FAB1F9E1D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 19:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BD489026;
	Mon, 15 Jun 2020 17:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FF7A88284;
 Mon, 15 Jun 2020 17:08:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC5C6A0BA8;
 Mon, 15 Jun 2020 17:08:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 17:08:02 -0000
Message-ID: <159224088293.16138.11431336191450835143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200615165013.22973-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200615165013.22973-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/selftests=3A_D?=
 =?utf-8?q?isable_preemptive_heartbeats_over_preemption_tests?=
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

Series: series starting with [CI,1/3] drm/i915/selftests: Disable preemptive heartbeats over preemption tests
URL   : https://patchwork.freedesktop.org/series/78380/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5227b0190b79 drm/i915/selftests: Disable preemptive heartbeats over preemption tests
031614ee83cc drm/i915/selftests: Dump engine state and trace upon hanging after reset
-:28: CHECK:LINE_SPACING: Please don't use multiple blank lines
#28: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:509:
+
+

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
13826b79b2ed drm/i915/gt: Add a safety submission flush in the heartbeat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
