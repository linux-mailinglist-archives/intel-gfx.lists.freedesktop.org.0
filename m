Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 570EF3BF23E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 00:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574956E834;
	Wed,  7 Jul 2021 22:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 197466E1F8;
 Wed,  7 Jul 2021 22:48:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12542A73C9;
 Wed,  7 Jul 2021 22:48:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 07 Jul 2021 22:48:06 -0000
Message-ID: <162569808604.30453.12758871193003368571@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBC?=
 =?utf-8?q?egin_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev4=29?=
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

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev4)
URL   : https://patchwork.freedesktop.org/series/92135/
State : failure

== Summary ==

Applying: drm/i915: Add "release id" version
Applying: drm/i915: Add XE_HP initial definitions
Applying: drm/i915: Fork DG1 interrupt handler
Applying: drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based
Applying: drm/i915/gen12: Use fuse info to enable SFC
Applying: drm/i915/selftests: Allow for larger engine counts
Applying: drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gt/intel_engine_cs.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
