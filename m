Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD7897D0FB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 07:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD0410E7A2;
	Fri, 20 Sep 2024 05:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D43110E1C4;
 Fri, 20 Sep 2024 05:49:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_Fix_possible_?=
 =?utf-8?q?int_overflow_in_skl=5Fddi=5Fcalculate=5Fwrpll=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikita Zhandarovich" <n.zhandarovich@fintech.ru>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2024 05:49:04 -0000
Message-ID: <172681134424.1049164.9340987357566920561@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240919143607.14178-1-n.zhandarovich@fintech.ru>
In-Reply-To: <20240919143607.14178-1-n.zhandarovich@fintech.ru>
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

Series: drm/i915: Fix possible int overflow in skl_ddi_calculate_wrpll() (rev3)
URL   : https://patchwork.freedesktop.org/series/136455/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/136455/revisions/3/mbox/ not applied
Applying: drm/i915: Fix possible int overflow in skl_ddi_calculate_wrpll()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dpll_mgr.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dpll_mgr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dpll_mgr.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Fix possible int overflow in skl_ddi_calculate_wrpll()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


