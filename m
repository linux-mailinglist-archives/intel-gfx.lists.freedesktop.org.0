Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6AC19DC45
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 18:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAFF6EC28;
	Fri,  3 Apr 2020 16:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C018E6EC27;
 Fri,  3 Apr 2020 16:59:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8C02A0138;
 Fri,  3 Apr 2020 16:59:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christophe Leroy" <christophe.leroy@c-s.fr>
Date: Fri, 03 Apr 2020 16:59:25 -0000
Message-ID: <158593316575.13351.9245885193516239583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <36e43241c7f043a24b5069e78c6a7edd11043be5.1585898438.git.christophe.leroy@c-s.fr>
In-Reply-To: <36e43241c7f043a24b5069e78c6a7edd11043be5.1585898438.git.christophe.leroy@c-s.fr>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/5=5D_uaccess=3A_Add_user=5Fread?=
 =?utf-8?q?=5Faccess=5Fbegin/end_and_user=5Fwrite=5Faccess=5Fbegin/end?=
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

Series: series starting with [v2,1/5] uaccess: Add user_read_access_begin/end and user_write_access_begin/end
URL   : https://patchwork.freedesktop.org/series/75471/
State : failure

== Summary ==

Applying: uaccess: Add user_read_access_begin/end and user_write_access_begin/end
Applying: uaccess: Selectively open read or write user access
Applying: drm/i915/gem: Replace user_access_begin by user_write_access_begin
Applying: powerpc/uaccess: Implement user_read_access_begin and user_write_access_begin
Applying: uaccess: Rename user_access_begin/end() to user_full_access_begin/end()
error: sha1 information is lacking or useless (arch/x86/include/asm/futex.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0005 uaccess: Rename user_access_begin/end() to user_full_access_begin/end()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
