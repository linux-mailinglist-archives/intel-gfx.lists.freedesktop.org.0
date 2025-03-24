Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9DCA6E3F6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 21:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3307310E08E;
	Mon, 24 Mar 2025 20:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2912310E08E;
 Mon, 24 Mar 2025 20:10:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_sagv/bw_clean?=
 =?utf-8?q?up_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Mar 2025 20:10:06 -0000
Message-ID: <174284700616.75091.7802075369879172247@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: sagv/bw cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/146014/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/146014/revisions/3/mbox/ not applied
Applying: drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_bw.c
M	drivers/gpu/drm/i915/display/intel_bw.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_bw.h
Auto-merging drivers/gpu/drm/i915/display/intel_bw.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_bw.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


