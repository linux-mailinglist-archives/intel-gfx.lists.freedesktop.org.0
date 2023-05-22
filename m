Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 198FE70CEA5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 01:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F92210E2C9;
	Mon, 22 May 2023 23:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7DFB10E01F;
 Mon, 22 May 2023 23:18:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D629A7DFF;
 Mon, 22 May 2023 23:18:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Mon, 22 May 2023 23:18:36 -0000
Message-ID: <168479751661.28282.8651847149391743885@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230522230759.153112-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBt?=
 =?utf-8?q?tl=3A_add_support_for_pmdemand_=28rev6=29?=
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

Series: mtl: add support for pmdemand (rev6)
URL   : https://patchwork.freedesktop.org/series/116949/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/116949/revisions/6/mbox/ not applied
Applying: drm/i915: fix the derating percentage for MTL
Applying: drm/i915: update the QGV point frequency calculations
Applying: drm/i915: store the peak bw per QGV point
Applying: drm/i915: extract intel_bw_check_qgv_points()
Applying: drm/i915: modify max_bw to return index to intel_bw_info
Applying: drm/i915/mtl: find the best QGV point for the SAGV configuration
Applying: drm/i915/mtl: Add support for PM DEMAND
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_power.c
M	drivers/gpu/drm/i915/i915_irq.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_irq.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_irq.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/Makefile
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915/mtl: Add support for PM DEMAND
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


