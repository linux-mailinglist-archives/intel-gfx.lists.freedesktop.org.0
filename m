Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4DA7AE390
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 04:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8490810E0D6;
	Tue, 26 Sep 2023 02:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DE3C10E0D6;
 Tue, 26 Sep 2023 02:03:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39E1CAADE1;
 Tue, 26 Sep 2023 02:03:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 26 Sep 2023 02:03:51 -0000
Message-ID: <169569383120.20980.15030676889155185012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230925131359.2948827-1-andrzej.hajda@intel.com>
In-Reply-To: <20230925131359.2948827-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_debugobjects=3A_stop_accessing_objects_after_releasing_spin?=
 =?utf-8?q?lock_=28rev2=29?=
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

Series: debugobjects: stop accessing objects after releasing spinlock (rev2)
URL   : https://patchwork.freedesktop.org/series/124185/
State : warning

== Summary ==

Error: dim checkpatch failed
4b916ef4f19b debugobjects: stop accessing objects after releasing spinlock
-:85: WARNING:LIKELY_MISUSE: nested (un)?likely() calls, IS_ERR already uses unlikely() internally
#85: FILE: lib/debugobjects.c:716:
+	} else if (likely(!IS_ERR(obj))) {

-:390: CHECK:SPACING: No space is necessary after a cast
#390: FILE: lib/debugobjects.c:1022:
+						   (void *) oaddr, o.state);

total: 0 errors, 1 warnings, 1 checks, 363 lines checked


