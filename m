Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7245A152460
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 02:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485736F427;
	Wed,  5 Feb 2020 01:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01CD66E939;
 Wed,  5 Feb 2020 01:08:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE28BA0003;
 Wed,  5 Feb 2020 01:08:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Wed, 05 Feb 2020 01:08:15 -0000
Message-ID: <158086489594.17319.17730418301188915694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_conversion_to_drm=5Fdevice_based_logging_macros=2E?=
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

Series: drm/i915: conversion to drm_device based logging macros.
URL   : https://patchwork.freedesktop.org/series/72959/
State : failure

== Summary ==

Applying: drm/i915/dp: convert to struct drm_device based logging macros.
Applying: drm/i915/dp_link_training: convert to drm_device based logging macros.
Applying: drm/i915/atomic: conversion to drm_device based logging macros.
Applying: drm/i915/color: conversion to drm_device based logging macros.
Applying: drm/i915/crt: automatic conversion to drm_device based logging macros.
Applying: drm/i915/dp_aux_backlight: convert to drm_device based logging macros.
Applying: drm/i915/dpll_mgr: convert to drm_device based logging macros.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dpll_mgr.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dpll_mgr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dpll_mgr.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0007 drm/i915/dpll_mgr: convert to drm_device based logging macros.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
