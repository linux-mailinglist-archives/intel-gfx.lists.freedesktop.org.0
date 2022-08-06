Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D3658B260
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 00:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21ACD18B71C;
	Fri,  5 Aug 2022 22:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7679112C8B;
 Fri,  5 Aug 2022 22:16:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AABBAA010C;
 Fri,  5 Aug 2022 22:16:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 05 Aug 2022 22:16:01 -0000
Message-ID: <165973776166.21184.318929812502731361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220805215355.3509287-1-jim.cromie@gmail.com>
In-Reply-To: <20220805215355.3509287-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?YNDBG=3A_opt-in_class=27d_debug_for_modules=2C_use_in_drm=2E_?=
 =?utf-8?b?KHJldjMp?=
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

Series: DYNDBG: opt-in class'd debug for modules, use in drm. (rev3)
URL   : https://patchwork.freedesktop.org/series/106427/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106427/revisions/3/mbox/ not applied
Applying: dyndbg: fix static_branch manipulation
Applying: dyndbg: fix module.dyndbg handling
Applying: dyndbg: show both old and new in change-info
Applying: dyndbg: reverse module walk in cat control
Applying: dyndbg: reverse module.callsite walk in cat control
Applying: dyndbg: use ESCAPE_SPACE for cat control
Applying: dyndbg: let query-modname override actual module name
Applying: dyndbg: add test_dynamic_debug module
Applying: dyndbg: drop EXPORTed dynamic_debug_exec_queries
Applying: dyndbg: cleanup local vars in ddebug_init
Applying: dyndbg: create and use struct _ddebug_info
Applying: dyndbg: add class_id to pr_debug callsites
Applying: dyndbg: add __pr_debug_cls for testing
Applying: dyndbg: add DECLARE_DYNDBG_CLASSMAP macro
Applying: kernel/module: add __dyndbg_classes section
Applying: dyndbg: add ddebug_attach_module_classes
Applying: dyndbg: validate class FOO by checking with module
Applying: doc-dyndbg: describe "class CLASS_NAME" query support
Applying: doc-dyndbg: edit dynamic-debug-howto for brevity, audience
Applying: dyndbg: add drm.debug style (drm/parameters/debug) bitmap support
Applying: dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes
Applying: drm_print: condense enum drm_debug_category
Applying: drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.
Applying: drm_print: interpose drm_*dbg with forwarding macros
Applying: drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
M	drivers/gpu/drm/Makefile
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/Makefile
Auto-merging drivers/gpu/drm/Kconfig
CONFLICT (content): Merge conflict in drivers/gpu/drm/Kconfig
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0025 drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


