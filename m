Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E10F42FFA5
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Oct 2021 03:22:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B905B6E3D8;
	Sat, 16 Oct 2021 01:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05A976E3D8;
 Sat, 16 Oct 2021 01:22:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0A37AA3D8;
 Sat, 16 Oct 2021 01:22:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 16 Oct 2021 01:22:49 -0000
Message-ID: <163434736995.20374.8639880353900538802@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015234705.12392-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211015234705.12392-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Add_a_name_t?=
 =?utf-8?q?o_the_execlists_stats?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/pmu: Add a name to the execlists stats
URL   : https://patchwork.freedesktop.org/series/95904/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d0d1caf5425 drm/i915/pmu: Add a name to the execlists stats
08a443a8135c drm/i915/pmu: Connect engine busyness stats from GuC to pmu
-:325: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#325: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:256:
+		udelay(10000);

-:325: WARNING:LONG_UDELAY: long udelay - prefer mdelay; see arch/arm/include/asm/delay.h
#325: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:256:
+		udelay(10000);

-:344: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#344: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:294:
+		udelay(10000);

-:344: WARNING:LONG_UDELAY: long udelay - prefer mdelay; see arch/arm/include/asm/delay.h
#344: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:294:
+		udelay(10000);

total: 0 errors, 2 warnings, 2 checks, 682 lines checked


