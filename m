Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DE06044B2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 14:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C22F10F20E;
	Wed, 19 Oct 2022 12:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0F9B10F20E;
 Wed, 19 Oct 2022 12:11:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D895CA9932;
 Wed, 19 Oct 2022 12:11:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Date: Wed, 19 Oct 2022 12:11:35 -0000
Message-ID: <166618149588.29707.9959484235650008253@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019052043.3193842-1-ashutosh.dixit@intel.com>
In-Reply-To: <20221019052043.3193842-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBp?=
 =?utf-8?q?915=3A_CAGF_and_RC6_changes_for_MTL_=28rev7=29?=
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

Series: i915: CAGF and RC6 changes for MTL (rev7)
URL   : https://patchwork.freedesktop.org/series/108156/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/108156/revisions/7/mbox/ not applied
Applying: drm/i915: Use GEN12_RPSTAT register for GT freq
Applying: drm/i915/mtl: Modify CAGF functions for MTL
Applying: drm/i915/gt: Use RC6 residency types as arguments to residency functions
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_rc6.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_rc6.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_rc6.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/gt: Use RC6 residency types as arguments to residency functions
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


