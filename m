Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F4992639D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 16:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B989F10E0B9;
	Wed,  3 Jul 2024 14:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3633F10E021;
 Wed,  3 Jul 2024 14:40:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBmaXggQ09ORklHX0RSTV9VU0Vf?=
 =?utf-8?b?RFlOQU1JQ19ERUJVRz15?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Jul 2024 14:40:06 -0000
Message-ID: <172001760621.25710.8142494833314532750@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240702215804.2201271-1-jim.cromie@gmail.com>
In-Reply-To: <20240702215804.2201271-1-jim.cromie@gmail.com>
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

Series: fix CONFIG_DRM_USE_DYNAMIC_DEBUG=y
URL   : https://patchwork.freedesktop.org/series/135705/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/135705/revisions/1/mbox/ not applied
Applying: docs/dyndbg: update examples \012 to \n
Applying: test-dyndbg: fixup CLASSMAP usage error
Applying: dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
Applying: dyndbg: make ddebug_class_param union members same size
Applying: dyndbg: replace classmap list with a vector
Applying: dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
Applying: dyndbg: split param_set_dyndbg_classes to _module & wrapper fns
Applying: dyndbg: drop NUM_TYPE_ARRAY
Applying: dyndbg: reduce verbose/debug clutter
Applying: dyndbg: silence debugs with no-change updates
Applying: dyndbg: tighten ddebug_class_name() 1st arg type
Applying: dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
Applying: dyndbg: reduce verbose=3 messages in ddebug_add_module
Applying: dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
Applying: dyndbg-API: fix DECLARE_DYNDBG_CLASSMAP
error: sha1 information is lacking or useless (include/linux/dynamic_debug.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0015 dyndbg-API: fix DECLARE_DYNDBG_CLASSMAP
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


