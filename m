Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF64530F06E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 11:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996156E03F;
	Thu,  4 Feb 2021 10:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 71F6A6ED13;
 Thu,  4 Feb 2021 10:22:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B566AADD0;
 Thu,  4 Feb 2021 10:22:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 10:22:40 -0000
Message-ID: <161243416043.4501.16928167103286736079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204100341.10211-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210204100341.10211-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Restor?=
 =?utf-8?q?e_previous_heartbeat_interval?=
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

Series: series starting with [1/2] drm/i915/selftests: Restore previous heartbeat interval
URL   : https://patchwork.freedesktop.org/series/86687/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cb34222291bf drm/i915/selftests: Restore previous heartbeat interval
-:34: ERROR:CODE_INDENT: code indent should use tabs where possible
#34: FILE: drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c:206:
+^I       ^Imax(3 * TIMEOUT_COMPLETION, jiffies_to_usecs(6));$

-:34: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#34: FILE: drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c:206:
+^I       ^Imax(3 * TIMEOUT_COMPLETION, jiffies_to_usecs(6));$

total: 1 errors, 1 warnings, 0 checks, 53 lines checked
91fea4e951c9 drm/i915/gt: Ratelimit heartbeat completion probing


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
