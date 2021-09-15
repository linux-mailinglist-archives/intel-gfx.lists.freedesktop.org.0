Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085F340CB39
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 18:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD186E984;
	Wed, 15 Sep 2021 16:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09CD56E978;
 Wed, 15 Sep 2021 16:50:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01244A9932;
 Wed, 15 Sep 2021 16:50:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Sep 2021 16:50:52 -0000
Message-ID: <163172465299.30119.2194615473558090944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210915163957.2949166-1-jim.cromie@gmail.com>
In-Reply-To: <20210915163957.2949166-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB1?=
 =?utf-8?q?se_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev3=29?=
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

Series: use DYNAMIC_DEBUG to implement DRM.debug (rev3)
URL   : https://patchwork.freedesktop.org/series/93914/
State : failure

== Summary ==

Applying: dyndbg: add module to a vpr-info in dd-exec-queries
Applying: dyndbg: pr-info in boot-param should say so
Applying: dyndbg: rationalize verbosity
Applying: dyndbg: use alt-quotes in vpr-infos, not those user might use
Applying: dyndbg: vpr-info on remove-module complete, not starting
Applying: dyndbg: no vpr-info on empty queries
Applying: dyndbg-doc: fix bootparam usage example
Applying: dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES bitmap and callbacks
Applying: drm: fix doc grammar error
Applying: i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes
Applying: i915/gvt: use DEFINE_DYNAMIC_DEBUG_CATEGORIES for existing prdbgs
Applying: amdgpu: use DEFINE_DYNAMIC_DEBUG_CATEGORIES on existing prdbgs
Applying: drm_print: add choice to use dynamic debug in drm-debug
error: sha1 information is lacking or useless (drivers/gpu/drm/amd/amdgpu/Makefile).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0013 drm_print: add choice to use dynamic debug in drm-debug
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


