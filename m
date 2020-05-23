Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E29C1DFA48
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 20:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E466E1FB;
	Sat, 23 May 2020 18:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01C916E0B7;
 Sat, 23 May 2020 18:36:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC1F2A47E6;
 Sat, 23 May 2020 18:35:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Hubbard" <jhubbard@nvidia.com>
Date: Sat, 23 May 2020 18:35:59 -0000
Message-ID: <159025895993.11805.11408419830982532523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522051931.54191-1-jhubbard@nvidia.com>
In-Reply-To: <20200522051931.54191-1-jhubbard@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mm/gup=2C_drm/i915=3A_refactor_gup=5Ffast=2C_convert_to_pin?=
 =?utf-8?b?X3VzZXJfcGFnZXMoKQ==?=
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

Series: mm/gup, drm/i915: refactor gup_fast, convert to pin_user_pages()
URL   : https://patchwork.freedesktop.org/series/77598/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cda3a034f4d1 mm/gup: move __get_user_pages_fast() down a few lines in gup.c
-:111: CHECK:SPACING: No space is necessary after a cast
#111: FILE: mm/gup.c:2766:
+	len = (unsigned long) nr_pages << PAGE_SHIFT;

total: 0 errors, 0 warnings, 1 checks, 124 lines checked
1241c3f40226 mm/gup: refactor and de-duplicate gup_fast() code
05e416e56b00 mm/gup: introduce pin_user_pages_fast_only()
d301b652c2da drm/i915: convert get_user_pages() --> pin_user_pages()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
