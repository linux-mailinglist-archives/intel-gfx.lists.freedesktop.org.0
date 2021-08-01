Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244A63DC981
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Aug 2021 05:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7C76EA55;
	Sun,  1 Aug 2021 03:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D571A6EA55;
 Sun,  1 Aug 2021 03:42:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD29BA7DFB;
 Sun,  1 Aug 2021 03:42:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 01 Aug 2021 03:42:15 -0000
Message-ID: <162778933581.7732.13059107904424090665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210801033548.832022-1-jim.cromie@gmail.com>
In-Reply-To: <20210801033548.832022-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?yndbg=3A_add_special_aux=5Fprint_framework_=28rev2=29?=
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

Series: dyndbg: add special aux_print framework (rev2)
URL   : https://patchwork.freedesktop.org/series/93269/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  AR      lib/lib.a
  GEN     lib/crc32table.h
  CC      lib/crc32.o
  CC      lib/dynamic_debug.o
lib/dynamic_debug.c: In function ‘__dynamic_pr_debug’:
lib/dynamic_debug.c:651:17: error: ‘struct _ddebug’ has no member named ‘aux_channel’
   if (descriptor->aux_channel) {
                 ^~
lib/dynamic_debug.c:653:16: error: ‘struct _ddebug’ has no member named ‘aux_channel’
    (*descriptor->aux_channel)
                ^~
scripts/Makefile.build:271: recipe for target 'lib/dynamic_debug.o' failed
make[1]: *** [lib/dynamic_debug.o] Error 1
Makefile:1842: recipe for target 'lib' failed
make: *** [lib] Error 2


