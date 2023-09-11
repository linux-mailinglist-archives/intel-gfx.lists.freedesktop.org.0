Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB9579AC84
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 01:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC3510E1EA;
	Mon, 11 Sep 2023 23:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 70D8110E1EA;
 Mon, 11 Sep 2023 23:35:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BBF4AADDA;
 Mon, 11 Sep 2023 23:35:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Mon, 11 Sep 2023 23:35:35 -0000
Message-ID: <169447533541.31369.8596976179384212643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230911230838.14461-1-jim.cromie@gmail.com>
In-Reply-To: <20230911230838.14461-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBm?=
 =?utf-8?q?ix_DRM=5FUSE=5FDYNAMIC=5FDEBUG_regression?=
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

Series: fix DRM_USE_DYNAMIC_DEBUG regression
URL   : https://patchwork.freedesktop.org/series/123572/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/123572/revisions/1/mbox/ not applied
Applying: test-dyndbg: fixup CLASSMAP usage error
Applying: dyndbg: make ddebug_class_param union members same size
Applying: dyndbg: replace classmap list with a vector
Applying: dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
Applying: dyndbg: split param_set_dyndbg_classes to module/wrapper fns
Applying: dyndbg: drop NUM_TYPE_ARRAY
Applying: dyndbg: reduce verbose/debug clutter
Applying: dyndbg: silence debugs with no-change updates
Applying: dyndbg: tighten ddebug_class_name() 1st arg type
Applying: dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
Applying: dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
Applying: dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
error: sha1 information is lacking or useless (lib/dynamic_debug.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


