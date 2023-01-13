Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592366A522
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 22:31:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D224510E04F;
	Fri, 13 Jan 2023 21:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B80A010E04F;
 Fri, 13 Jan 2023 21:31:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4717AADDA;
 Fri, 13 Jan 2023 21:31:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 13 Jan 2023 21:31:55 -0000
Message-ID: <167364551573.17536.8555770386080758919@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230113193016.749791-1-jim.cromie@gmail.com>
In-Reply-To: <20230113193016.749791-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?RM=5FUSE=5FDYNAMIC=5FDEBUG_regression_=28rev2=29?=
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

Series: DRM_USE_DYNAMIC_DEBUG regression (rev2)
URL   : https://patchwork.freedesktop.org/series/111651/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/111651/revisions/2/mbox/ not applied
Applying: test-dyndbg: fixup CLASSMAP usage error
Applying: test-dyndbg: show that DEBUG enables prdbgs at compiletime
Applying: dyndbg: replace classmap list with a vector
Applying: dyndbg: make ddebug_apply_class_bitmap more selective
Applying: dyndbg: split param_set_dyndbg_classes to inner/outer
Applying: dyndbg: drop NUM_TYPE_ARRAY
Applying: dyndbg: reduce verbose/debug clutter
Applying: dyndbg: tighten ddebug_class_name() 1st arg
Applying: dyndbg: constify ddebug_apply_class_bitmap args
Applying: dyndbg-API: split DECLARE_(DYNDBG_CLASSMAP) to $1(_DEFINE|_USE)
Applying: dyndbg-API: specialize DYNDBG_CLASSMAP_(DEFINE|USE)
Using index info to reconstruct a base tree...
M	include/asm-generic/vmlinux.lds.h
M	kernel/module/main.c
Falling back to patching base and 3-way merge...
Auto-merging kernel/module/main.c
Auto-merging include/asm-generic/vmlinux.lds.h
CONFLICT (content): Merge conflict in include/asm-generic/vmlinux.lds.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0011 dyndbg-API: specialize DYNDBG_CLASSMAP_(DEFINE|USE)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


