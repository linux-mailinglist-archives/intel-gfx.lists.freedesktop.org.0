Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4015940EAEC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 21:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E016E858;
	Thu, 16 Sep 2021 19:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 334136E834;
 Thu, 16 Sep 2021 19:39:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29F72A01BB;
 Thu, 16 Sep 2021 19:39:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imran Khan" <imran.f.khan@oracle.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 19:39:52 -0000
Message-ID: <163182119213.8837.14866134424441410010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210916133535.3592491-1-imran.f.khan@oracle.com>
In-Reply-To: <20210916133535.3592491-1-imran.f.khan@oracle.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_lib=2C_stackdepot=3A_check_stackdepot_handle_before_accessi?=
 =?utf-8?q?ng_slabs_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: lib, stackdepot: check stackdepot handle before accessing slabs (rev3)
URL   : https://patchwork.freedesktop.org/series/94696/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d7e2c22d032f lib, stackdepot: check stackdepot handle before accessing slabs.
1a68f8420ad4 lib, stackdepot: Add helper to print stack entries.
5f20e9afbc22 lib, stackdepot: Add helper to print stack entries into buffer.
-:152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#152: FILE: include/linux/stackdepot.h:23:
+int stack_depot_snprint(depot_stack_handle_t handle, char *buf, size_t size,
+		       int spaces);

-:179: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#179: FILE: lib/stackdepot.c:231:
+int stack_depot_snprint(depot_stack_handle_t handle, char *buf, size_t size,
+		       int spaces)

total: 0 errors, 0 warnings, 2 checks, 157 lines checked


