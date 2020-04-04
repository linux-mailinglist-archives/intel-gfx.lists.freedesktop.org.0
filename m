Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A2019E458
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 11:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD286E0ED;
	Sat,  4 Apr 2020 09:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB1D96E0E9;
 Sat,  4 Apr 2020 09:52:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1D02A011A;
 Sat,  4 Apr 2020 09:52:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Sat, 04 Apr 2020 09:52:41 -0000
Message-ID: <158599396176.1393.12673748795667724850@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200404094101.672954-1-hch@lst.de>
In-Reply-To: <20200404094101.672954-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/6=5D_amdgpu=3A_a_NULL_-=3Emm_does_not_?=
 =?utf-8?q?mean_a_thread_is_a_kthread?=
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

Series: series starting with [1/6] amdgpu: a NULL ->mm does not mean a thread is a kthread
URL   : https://patchwork.freedesktop.org/series/75491/
State : failure

== Summary ==

Applying: amdgpu: a NULL ->mm does not mean a thread is a kthread
Applying: i915/gvt/kvm: a NULL ->mm does not mean a thread is a kthread
Applying: i915/gvt: remove unused xen bits
Applying: kernel: move use_mm/unuse_mm to kthread.c
Applying: kernel: better document the use_mm/unuse_mm API contract
Applying: kernel: set USER_DS in kthread_use_mm
error: sha1 information is lacking or useless (drivers/usb/gadget/function/f_fs.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0006 kernel: set USER_DS in kthread_use_mm
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
