Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D48582DFCB1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 15:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD3E6E193;
	Mon, 21 Dec 2020 14:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D46516E192;
 Mon, 21 Dec 2020 14:18:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF637A882E;
 Mon, 21 Dec 2020 14:18:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 21 Dec 2020 14:18:34 -0000
Message-ID: <160856031482.419.10393293410701183282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201221130105.5519-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201221130105.5519-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Add_a_comment_about_how_to_use_udev_for_conf?=
 =?utf-8?q?iguring_engines_=28rev2=29?=
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

Series: drm/i915/gt: Add a comment about how to use udev for configuring engines (rev2)
URL   : https://patchwork.freedesktop.org/series/84578/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0ff0eef96366 drm/i915/gt: Add a comment about how to use udev for configuring engines
-:33: WARNING:LONG_LINE_COMMENT: line length of 111 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/gt/sysfs_engines.c:22:
+ * ACTION=="bind|add",SUBSYSTEM=="pci",DRIVER=="i915",RUN+="/usr/local/libexec/i915-disable-preempt-timeout.sh"

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
