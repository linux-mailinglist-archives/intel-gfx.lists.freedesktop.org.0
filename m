Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBCB667F61
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 20:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D38210E1B5;
	Thu, 12 Jan 2023 19:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A4D810E1B5;
 Thu, 12 Jan 2023 19:32:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03B70AA917;
 Thu, 12 Jan 2023 19:32:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Rosato" <mjrosato@linux.ibm.com>
Date: Thu, 12 Jan 2023 19:32:56 -0000
Message-ID: <167355197698.2073.14489426595750870916@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230109201037.33051-1-mjrosato@linux.ibm.com>
In-Reply-To: <20230109201037.33051-1-mjrosato@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBr?=
 =?utf-8?q?vm/vfio=3A_fix_potential_deadlock_on_vfio_group_lock_=28rev4=29?=
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

Series: kvm/vfio: fix potential deadlock on vfio group lock (rev4)
URL   : https://patchwork.freedesktop.org/series/112568/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/112568/revisions/4/mbox/ not applied
Applying: KVM: async kvm_destroy_vm for vfio devices
error: patch failed: drivers/vfio/vfio_main.c:361
error: drivers/vfio/vfio_main.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
Patch failed at 0001 KVM: async kvm_destroy_vm for vfio devices
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


