Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 491A04DD788
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6FA10E7CA;
	Fri, 18 Mar 2022 09:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D157410E7CA;
 Fri, 18 Mar 2022 09:57:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1E7BA00E8;
 Fri, 18 Mar 2022 09:57:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 18 Mar 2022 09:57:20 -0000
Message-ID: <164759744085.31587.10470611144890539966@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?sync_flip_optimization_for_DG2_=28rev10=29?=
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

Series: Async flip optimization for DG2 (rev10)
URL   : https://patchwork.freedesktop.org/series/98981/
State : failure

== Summary ==

Applying: drm/i915: Pass plane to watermark calculation functions
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_atomic_plane.h
M	drivers/gpu/drm/i915/intel_pm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_pm.c
Auto-merging drivers/gpu/drm/i915/display/intel_atomic_plane.h
No changes -- Patch already applied.
Applying: drm/i915: Introduce do_async_flip flag to intel_plane_state
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_atomic_plane.c
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/display/intel_atomic_plane.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_atomic_plane.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915: Introduce do_async_flip flag to intel_plane_state
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


