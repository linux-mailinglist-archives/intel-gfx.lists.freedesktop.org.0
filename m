Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D12663F1E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 12:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788ED10E5A0;
	Tue, 10 Jan 2023 11:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 162AB10E5A0;
 Tue, 10 Jan 2023 11:15:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E80EEA77A5;
 Tue, 10 Jan 2023 11:15:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 10 Jan 2023 11:15:13 -0000
Message-ID: <167334931394.5202.14997322429624463055@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <Y7b6/7coJEVlTVxK@phenom.ffwll.local>
In-Reply-To: <Y7b6/7coJEVlTVxK@phenom.ffwll.local>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB0?=
 =?utf-8?q?reewide=3A_use_=5F=5Fxchg_in_most_obvious_places?=
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

Series: treewide: use __xchg in most obvious places
URL   : https://patchwork.freedesktop.org/series/112604/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC      init/main.o
In file included from ./include/net/page_pool.h:34,
                 from ./include/linux/skbuff.h:41,
                 from ./include/net/net_namespace.h:43,
                 from init/main.c:104:
./include/linux/ptr_ring.h:27:10: fatal error: linux/non-atomic/xchg.h: No such file or directory
   27 | #include <linux/non-atomic/xchg.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.build:252: init/main.o] Error 1
make[1]: *** [scripts/Makefile.build:504: init] Error 2
make: *** [Makefile:2008: .] Error 2


