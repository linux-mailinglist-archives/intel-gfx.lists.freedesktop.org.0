Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 294C44859CE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 21:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C4D10E13D;
	Wed,  5 Jan 2022 20:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA79710E21F;
 Wed,  5 Jan 2022 20:10:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9AB7A00FD;
 Wed,  5 Jan 2022 20:10:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 05 Jan 2022 20:10:20 -0000
Message-ID: <164141342082.25402.15604951649221430139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1641411696.git.jani.nikula@intel.com>
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_clean_up_i915=5Fdrv=2Eh?=
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

Series: drm/i915: clean up i915_drv.h
URL   : https://patchwork.freedesktop.org/series/98515/
State : failure

== Summary ==

Applying: drm/i915: split out i915_getparam.h from i915_drv.h
Applying: drm/i915: split out i915_cmd_parser.h from i915_drv.h
Applying: drm/i915: split out i915_gem_evict.h from i915_drv.h
Applying: drm/i915: split out gem/i915_gem_userptr.h from i915_drv.h
Applying: drm/i915: split out gem/i915_gem_tiling.h from i915_drv.h
Applying: drm/i915: split out i915_gem.h declarations from i915_drv.h
Applying: drm/i915: split out i915_gem_internal.h from i915_drv.h
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/i915_drv.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915: split out i915_gem_internal.h from i915_drv.h
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


