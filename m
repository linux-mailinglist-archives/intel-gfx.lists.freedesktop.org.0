Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F193AA434
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 21:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778346E046;
	Wed, 16 Jun 2021 19:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D6F36E046;
 Wed, 16 Jun 2021 19:22:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A302A7DFC;
 Wed, 16 Jun 2021 19:22:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 16 Jun 2021 19:22:12 -0000
Message-ID: <162387133203.8272.3838743742688587708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616152501.394518-1-matthew.auld@intel.com>
In-Reply-To: <20210616152501.394518-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv5=2C1/7=5D_drm/i915/ttm=3A_add_ttm=5Fbu?=
 =?utf-8?q?ddy=5Fman?=
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

Series: series starting with [v5,1/7] drm/i915/ttm: add ttm_buddy_man
URL   : https://patchwork.freedesktop.org/series/91589/
State : failure

== Summary ==

Applying: drm/i915/ttm: add ttm_buddy_man
.git/rebase-apply/patch:845: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/ttm: add i915_sg_from_buddy_resource
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_scatterlist.c
M	drivers/gpu/drm/i915/i915_scatterlist.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/ttm: Calculate the object placement at get_pages time
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_ttm.c
M	drivers/gpu/drm/i915/intel_region_ttm.c
M	drivers/gpu/drm/i915/intel_region_ttm.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_region_ttm.h
Auto-merging drivers/gpu/drm/i915/intel_region_ttm.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_ttm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_ttm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/ttm: Calculate the object placement at get_pages time
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
