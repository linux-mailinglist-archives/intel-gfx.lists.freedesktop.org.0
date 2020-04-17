Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337491AD3E7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 03:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873316E1EE;
	Fri, 17 Apr 2020 01:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 366B36E1A3;
 Fri, 17 Apr 2020 01:02:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DF23A3C0D;
 Fri, 17 Apr 2020 01:02:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Apr 2020 01:02:49 -0000
Message-ID: <158708536915.10465.7044907271791496650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417002942.4394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417002942.4394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/5=5D_drm/i915/selftests=3A_D?=
 =?utf-8?q?elay_spinner_before_waiting_for_an_interrupt?=
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

Series: series starting with [CI,1/5] drm/i915/selftests: Delay spinner before waiting for an interrupt
URL   : https://patchwork.freedesktop.org/series/76055/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
840a974dda70 drm/i915/selftests: Delay spinner before waiting for an interrupt
6727bb3359e8 drm/i915/gt: Trace RPS events
14195cf9296d drm/i915/gt: Use the RPM config register to determine clk frequencies
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 352 lines checked
19f5c73e9693 drm/i915/selftests: Move gpu energy measurement into its own little lib
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

-:109: CHECK:LINE_SPACING: Please don't use multiple blank lines
#109: FILE: drivers/gpu/drm/i915/selftests/librapl.c:26:
+
+

total: 0 errors, 1 warnings, 1 checks, 93 lines checked
9bf31402e7bd drm/i915/selftests: Check power consumption at min/max frequencies

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
