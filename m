Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA24469C4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 21:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C5E6E424;
	Fri,  5 Nov 2021 20:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B79489F47;
 Fri,  5 Nov 2021 20:31:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71649A363D;
 Fri,  5 Nov 2021 20:31:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 05 Nov 2021 20:31:00 -0000
Message-ID: <163614426042.30613.9032546408207312877@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211105192637.2370737-1-jim.cromie@gmail.com>
In-Reply-To: <20211105192637.2370737-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB1?=
 =?utf-8?q?se_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=26_DRM=2Etrace_=28?=
 =?utf-8?q?rev2=29?=
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

Series: use DYNAMIC_DEBUG to implement DRM.debug & DRM.trace (rev2)
URL   : https://patchwork.freedesktop.org/series/96327/
State : failure

== Summary ==

Applying: dyndbg: add DEFINE_DYNAMIC_DEBUG_BITGRPS macro and callbacks
Applying: drm: fix doc grammar
Applying: amdgpu: use dyndbg.BITGRPS to control existing pr_debugs
Applying: i915/gvt: trim spaces from pr_debug "gvt: core:" prefixes
Applying: i915/gvt: use dyndbg.BITGRPS for existing pr_debugs
Applying: drm_print: add choice to use dynamic debug in drm-debug
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Makefile).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm_print: add choice to use dynamic debug in drm-debug
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


