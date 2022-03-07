Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7404D0116
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 15:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B386110E146;
	Mon,  7 Mar 2022 14:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C80B610E132;
 Mon,  7 Mar 2022 14:23:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1A3FA363D;
 Mon,  7 Mar 2022 14:23:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jarkko Sakkinen" <jarkko@kernel.org>
Date: Mon, 07 Mar 2022 14:23:08 -0000
Message-ID: <164666298878.12768.6421053274318178671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220306021534.83553-1-jarkko@kernel.org>
In-Reply-To: <20220306021534.83553-1-jarkko@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBt?=
 =?utf-8?b?bTogQWRkIGZfb3BzLT5wb3B1bGF0ZSgpIChyZXYzKQ==?=
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

Series: mm: Add f_ops->populate() (rev3)
URL   : https://patchwork.freedesktop.org/series/101097/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC      ipc/shm.o
ipc/shm.c: In function ‘shm_mmap’:
ipc/shm.c:590:34: error: ‘do_populate’ undeclared (first use in this function); did you mean ‘mm_populate’?
  ret = call_mmap(sfd->file, vma, do_populate);
                                  ^~~~~~~~~~~
                                  mm_populate
ipc/shm.c:590:34: note: each undeclared identifier is reported only once for each function it appears in
scripts/Makefile.build:288: recipe for target 'ipc/shm.o' failed
make[1]: *** [ipc/shm.o] Error 1
Makefile:1831: recipe for target 'ipc' failed
make: *** [ipc] Error 2


