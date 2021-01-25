Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 490633024FA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 13:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA216E0AB;
	Mon, 25 Jan 2021 12:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75E1889FD4;
 Mon, 25 Jan 2021 12:34:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7260AA8836;
 Mon, 25 Jan 2021 12:34:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 25 Jan 2021 12:34:38 -0000
Message-ID: <161157807846.3418.16059409572259021130@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210120144215.924233-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210120144215.924233-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv12=2C1/2=5D_drm/i915/display=3A_Support?=
 =?utf-8?q?_PSR_Multiple_Instances_=28rev2=29?=
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

Series: series starting with [v12,1/2] drm/i915/display: Support PSR Multiple Instances (rev2)
URL   : https://patchwork.freedesktop.org/series/86091/
State : failure

== Summary ==

Applying: drm/i915/display: Support PSR Multiple Instances
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_debugfs.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_psr.c
M	drivers/gpu/drm/i915/display/intel_sprite.c
M	drivers/gpu/drm/i915/i915_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/display/intel_sprite.c
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_psr.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display_debugfs.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/display: Support PSR Multiple Instances
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
