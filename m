Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EE8605018
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 21:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638D410E05B;
	Wed, 19 Oct 2022 19:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 00C4D10E05B;
 Wed, 19 Oct 2022 19:04:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDBB1A0099;
 Wed, 19 Oct 2022 19:04:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eric Farman" <farman@linux.ibm.com>
Date: Wed, 19 Oct 2022 19:04:41 -0000
Message-ID: <166620628196.29708.5522277796207941945@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019162135.798901-1-farman@linux.ibm.com>
In-Reply-To: <20221019162135.798901-1-farman@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_vfio-ccw_parent_rework?=
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

Series: vfio-ccw parent rework
URL   : https://patchwork.freedesktop.org/series/109899/
State : warning

== Summary ==

Error: dim checkpatch failed
730a07d272cf vfio/ccw: create a parent struct
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:59: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#59: FILE: drivers/s390/cio/vfio_ccw_drv.c:65:
+				wait_for_completion_timeout(&completion, 3*HZ);
 				                                          ^

-:87: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#87: FILE: drivers/s390/cio/vfio_ccw_drv.c:139:
+		VFIO_CCW_MSG_EVENT(2, "sch %x.%x.%04x: unexpected interrupt\n",
+			sch->schid.cssid, sch->schid.ssid, sch->schid.sch_no);

-:259: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#259: 
new file mode 100644

total: 0 errors, 1 warnings, 2 checks, 265 lines checked
f951372969d9 vfio/ccw: remove private->sch
c4a9ed65c50e vfio/ccw: move private initialization to callback
bc05fc00f2e5 vfio/ccw: move private to mdev lifecycle
94391c96f5d0 vfio/ccw: remove release completion
1a529004cdac vfio/ccw: replace vfio_init_device with _alloc_
d144255a82db vfio: Remove vfio_free_device


