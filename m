Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB2644E0A8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 04:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54F56E4EA;
	Fri, 12 Nov 2021 03:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 837A96E4EA;
 Fri, 12 Nov 2021 03:10:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72226A363C;
 Fri, 12 Nov 2021 03:10:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 12 Nov 2021 03:10:02 -0000
Message-ID: <163668660243.27231.15404555992634347506@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112025222.61031-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211112025222.61031-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pmu=3A_Increase_the_live=5Fengine=5Fbusy=5Fstats_s?=
 =?utf-8?q?ample_period?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/pmu: Increase the live_engine_busy_stats sample period
URL   : https://patchwork.freedesktop.org/series/96840/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7fca16cc17fe drm/i915/pmu: Increase the live_engine_busy_stats sample period
-:49: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#49: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:319:
+		udelay(10000);

-:49: WARNING:LONG_UDELAY: long udelay - prefer mdelay; see arch/arm/include/asm/delay.h
#49: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:319:
+		udelay(10000);

total: 0 errors, 1 warnings, 1 checks, 8 lines checked


