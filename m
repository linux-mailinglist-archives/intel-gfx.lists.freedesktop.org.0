Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E80666A136
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 18:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7761C10E1F4;
	Fri, 13 Jan 2023 17:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FC7510E1F4;
 Fri, 13 Jan 2023 17:54:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8671FA882E;
 Fri, 13 Jan 2023 17:54:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Rosato" <mjrosato@linux.ibm.com>
Date: Fri, 13 Jan 2023 17:54:35 -0000
Message-ID: <167363247551.17533.7767132998086464908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230113171132.86057-1-mjrosato@linux.ibm.com>
In-Reply-To: <20230113171132.86057-1-mjrosato@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_vfio=3A_fix_potential_deadlock_on_vfio_group_lock_=28rev2?=
 =?utf-8?q?=29?=
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

Series: vfio: fix potential deadlock on vfio group lock (rev2)
URL   : https://patchwork.freedesktop.org/series/112759/
State : warning

== Summary ==

Error: dim checkpatch failed
3ddf9fe96184 vfio: fix potential deadlock on vfio group lock
-:109: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#109: FILE: drivers/vfio/vfio_main.c:397:
+{
+

-:110: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#110: FILE: drivers/vfio/vfio_main.c:398:
+
+}

total: 0 errors, 0 warnings, 2 checks, 143 lines checked


