Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773BC6BB149
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 13:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96E810E037;
	Wed, 15 Mar 2023 12:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE85110E01F;
 Wed, 15 Mar 2023 12:26:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E325DACC20;
 Wed, 15 Mar 2023 12:26:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Wed, 15 Mar 2023 12:26:11 -0000
Message-ID: <167888317192.19838.17731409647461913432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224101356.2390838-1-mika.kahola@intel.com>
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/mtl=3A_Add_C10_and_C20_phy_support_=28rev7=29?=
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

Series: drm/i915/mtl: Add C10 and C20 phy support (rev7)
URL   : https://patchwork.freedesktop.org/series/109714/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/109714/revisions/7/mbox/ not applied
Applying: drm/i915/mtl: Initial DDI port setup
Applying: drm/i915/mtl: Add DP rates
Applying: drm/i915/mtl: Create separate reg file for PICA registers
Applying: drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
Applying: drm/i915/mtl: Add C10 phy programming for HDMI
Applying: drm/i915/mtl: Add vswing programming for C10 phys
Applying: drm/i915/mtl: Add support for PM DEMAND
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_power.c
M	drivers/gpu/drm/i915/i915_irq.c
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/intel_pm.c
M	drivers/gpu/drm/i915/intel_pm.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_pm.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_pm.h
Auto-merging drivers/gpu/drm/i915/intel_pm.c
Auto-merging drivers/gpu/drm/i915/i915_reg.h
Auto-merging drivers/gpu/drm/i915/i915_irq.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915/mtl: Add support for PM DEMAND
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


