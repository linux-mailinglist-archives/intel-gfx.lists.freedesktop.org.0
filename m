Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFC55FD60E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 10:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13A0010E102;
	Thu, 13 Oct 2022 08:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B096910E102;
 Thu, 13 Oct 2022 08:17:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A891AAADD2;
 Thu, 13 Oct 2022 08:17:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Thu, 13 Oct 2022 08:17:44 -0000
Message-ID: <166564906466.20377.7018458465252330933@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926191109.1803094-1-keescook@chromium.org>
In-Reply-To: <20220926191109.1803094-1-keescook@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBv?=
 =?utf-8?q?verflow=3A_Introduce_overflows=5Ftype=28=29_and_castable=5Fto?=
 =?utf-8?b?X3R5cGUoKSAocmV2Mik=?=
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

Series: overflow: Introduce overflows_type() and castable_to_type() (rev2)
URL   : https://patchwork.freedesktop.org/series/109076/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/109076/revisions/2/mbox/ not applied
Applying: overflow: Introduce overflows_type() and castable_to_type()
Using index info to reconstruct a base tree...
M	include/linux/overflow.h
M	lib/overflow_kunit.c
Falling back to patching base and 3-way merge...
Auto-merging lib/overflow_kunit.c
CONFLICT (content): Merge conflict in lib/overflow_kunit.c
Auto-merging include/linux/overflow.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 overflow: Introduce overflows_type() and castable_to_type()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


