Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA4C6169C9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 17:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C7A710E50D;
	Wed,  2 Nov 2022 16:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E278810E50B;
 Wed,  2 Nov 2022 16:54:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBF61A010C;
 Wed,  2 Nov 2022 16:54:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eric Farman" <farman@linux.ibm.com>
Date: Wed, 02 Nov 2022 16:54:15 -0000
Message-ID: <166740805587.23604.13924139832977278958@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221102150152.2521475-1-farman@linux.ibm.com>
In-Reply-To: <20221102150152.2521475-1-farman@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_vfio-ccw_parent_rework_=28rev2=29?=
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

Series: vfio-ccw parent rework (rev2)
URL   : https://patchwork.freedesktop.org/series/109899/
State : warning

== Summary ==

Error: dim checkpatch failed
23f3cebda691 vfio/ccw: create a parent struct
-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/s390/cio/vfio_ccw_drv.c:144:
+		VFIO_CCW_MSG_EVENT(2, "sch %x.%x.%04x: unexpected interrupt\n",
+			sch->schid.cssid, sch->schid.ssid, sch->schid.sch_no);

total: 0 errors, 0 warnings, 1 checks, 234 lines checked
02cab55b9976 vfio/ccw: remove private->sch
8e956d5bb94a vfio/ccw: move private initialization to callback
906c43a0e358 vfio/ccw: move private to mdev lifecycle
172ada9ff137 vfio/ccw: remove release completion
f713625f9690 vfio/ccw: replace vfio_init_device with _alloc_
e91b7fbb1ab1 vfio: Remove vfio_free_device


