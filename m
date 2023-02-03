Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA4068A43A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 22:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6E310E8FB;
	Fri,  3 Feb 2023 21:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F4F610E90F;
 Fri,  3 Feb 2023 21:07:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A96DAADE1;
 Fri,  3 Feb 2023 21:07:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Fri, 03 Feb 2023 21:07:18 -0000
Message-ID: <167545843833.8765.4111794917342294482@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230202162442.78216-1-mjrosato@linux.ibm.com>
In-Reply-To: <20230202162442.78216-1-mjrosato@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB2?=
 =?utf-8?q?fio=3A_fix_deadlock_between_group_lock_and_kvm_lock_=28rev7=29?=
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

Series: vfio: fix deadlock between group lock and kvm lock (rev7)
URL   : https://patchwork.freedesktop.org/series/113535/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113535/revisions/7/mbox/ not applied
Applying: vfio: fix deadlock between group lock and kvm lock
Using index info to reconstruct a base tree...
M	drivers/vfio/group.c
M	drivers/vfio/vfio.h
M	drivers/vfio/vfio_main.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/vfio/vfio_main.c
CONFLICT (content): Merge conflict in drivers/vfio/vfio_main.c
Auto-merging drivers/vfio/vfio.h
CONFLICT (content): Merge conflict in drivers/vfio/vfio.h
Auto-merging drivers/vfio/group.c
CONFLICT (content): Merge conflict in drivers/vfio/group.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 vfio: fix deadlock between group lock and kvm lock
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


