Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D52A33DADF6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 22:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9236EE77;
	Thu, 29 Jul 2021 20:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A9016EE77;
 Thu, 29 Jul 2021 20:59:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37545A8832;
 Thu, 29 Jul 2021 20:59:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 29 Jul 2021 20:59:06 -0000
Message-ID: <162759234622.27324.11642470312529350579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
In-Reply-To: <20210729170008.2836648-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBC?=
 =?utf-8?q?egin_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev8=29?=
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

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev8)
URL   : https://patchwork.freedesktop.org/series/92135/
State : failure

== Summary ==

Applying: drm/i915/xehp: handle new steering options
Applying: drm/i915/xehpsdv: Define steering tables
Applying: drm/i915/dg2: Add forcewake table
Applying: drm/i915/dg2: Update LNCF steering ranges
Applying: drm/i915/dg2: Add SQIDI steering
Applying: drm/i915/xehp: Loop over all gslices for INSTDONE processing
Applying: drm/i915/dg2: Report INSTDONE_GEOM values in error state
Applying: drm/i915/xehp: Changes to ss/eu definitions
Applying: drm/i915/xehpsdv: Add maximum sseu limits
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_sseu.c
M	drivers/gpu/drm/i915/gt/intel_sseu.h
M	drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
Auto-merging drivers/gpu/drm/i915/gt/intel_sseu.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_sseu.h
Auto-merging drivers/gpu/drm/i915/gt/intel_sseu.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 drm/i915/xehpsdv: Add maximum sseu limits
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
