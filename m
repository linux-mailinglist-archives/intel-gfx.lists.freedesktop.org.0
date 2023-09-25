Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCDB7AD62A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 12:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B6410E230;
	Mon, 25 Sep 2023 10:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9525F10E230;
 Mon, 25 Sep 2023 10:37:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D395A0169;
 Mon, 25 Sep 2023 10:37:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 25 Sep 2023 10:37:58 -0000
Message-ID: <169563827854.21535.10000314074115511685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230925091600.2941364-1-andrzej.hajda@intel.com>
In-Reply-To: <20230925091600.2941364-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?ebugobjects=3A_stop_accessing_objects_after_releasing_spinlock?=
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

Series: debugobjects: stop accessing objects after releasing spinlock
URL   : https://patchwork.freedesktop.org/series/124185/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  AR      lib/lib.a
  CC      lib/debugobjects.o
lib/debugobjects.c: In function ‘debug_object_activate’:
lib/debugobjects.c:727:3: error: label at end of compound statement
  727 |   default:
      |   ^~~~~~~
lib/debugobjects.c:748:2: error: label at end of compound statement
  748 |  default:
      |  ^~~~~~~
lib/debugobjects.c: In function ‘debug_object_destroy’:
lib/debugobjects.c:840:2: error: label at end of compound statement
  840 |  default:
      |  ^~~~~~~
make[3]: *** [scripts/Makefile.build:243: lib/debugobjects.o] Error 1
make[2]: *** [scripts/Makefile.build:480: lib] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1913: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


