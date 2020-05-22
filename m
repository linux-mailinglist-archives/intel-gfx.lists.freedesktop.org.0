Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D371DEEE4
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 20:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB93E6EA1F;
	Fri, 22 May 2020 18:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 078476EA1A;
 Fri, 22 May 2020 18:08:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D39E5A47E1;
 Fri, 22 May 2020 18:08:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 18:08:27 -0000
Message-ID: <159017090786.3048.15139886430613318567@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522174209.8885-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522174209.8885-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_mm/gup=3A_move_=5F=5Fge?=
 =?utf-8?q?t=5Fuser=5Fpages=5Ffast=28=29_down_a_few_lines_in_gup=2Ec?=
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

Series: series starting with [CI,1/4] mm/gup: move __get_user_pages_fast() down a few lines in gup.c
URL   : https://patchwork.freedesktop.org/series/77566/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
48c15b755cba mm/gup: move __get_user_pages_fast() down a few lines in gup.c
-:111: CHECK:SPACING: No space is necessary after a cast
#111: FILE: mm/gup.c:2766:
+	len = (unsigned long) nr_pages << PAGE_SHIFT;

total: 0 errors, 0 warnings, 1 checks, 124 lines checked
8f94b0b105bb mm/gup: refactor and de-duplicate gup_fast() code
25611799150b mm/gup: introduce pin_user_pages_fast_only()
2324b6885935 drm/i915: convert get_user_pages() --> pin_user_pages()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
