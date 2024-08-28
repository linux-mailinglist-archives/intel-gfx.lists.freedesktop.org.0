Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3668696268C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 14:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD05910E462;
	Wed, 28 Aug 2024 12:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BE410E438;
 Wed, 28 Aug 2024 12:06:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsb=3A_Use_?=
 =?utf-8?q?chained_DSBs_for_LUT_programming_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2024 12:06:57 -0000
Message-ID: <172484681712.810236.7756816728309260032@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/dsb: Use chained DSBs for LUT programming (rev3)
URL   : https://patchwork.freedesktop.org/series/135316/
State : warning

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/135316/revisions/3/mbox/ not applied
Applying: drm/i915: Calculate vblank delay more accurately
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_vblank.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_vblank.c
No changes -- Patch already applied.
Applying: drm/i915: Make vrr_{enabling, disabling}() usable outside intel_display.c
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
No changes -- Patch already applied.
Applying: drm/i915/dsb: Hook up DSB error interrupts
Applying: drm/i915/dsb: Convert dewake_scanline to a hw scanline number earlier
Applying: drm/i915/dsb: Shuffle code around
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_dsb.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/i915/dsb: Shuffle code around
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


