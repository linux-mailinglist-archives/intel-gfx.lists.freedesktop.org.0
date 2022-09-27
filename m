Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 206305EB6E5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 03:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E604C10E02A;
	Tue, 27 Sep 2022 01:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE75910E02A;
 Tue, 27 Sep 2022 01:33:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA5EDAADDB;
 Tue, 27 Sep 2022 01:33:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Tue, 27 Sep 2022 01:33:01 -0000
Message-ID: <166424238195.24578.5788105916027955670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220916014648.1310346-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220916014648.1310346-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?nitial_Meteorlake_Support_=28rev11=29?=
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

Series: Initial Meteorlake Support (rev11)
URL   : https://patchwork.freedesktop.org/series/106786/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106786/revisions/11/mbox/ not applied
Applying: drm/i915: Read graphics/media/display arch version from hw
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_gt_regs.h
M	drivers/gpu/drm/i915/i915_driver.c
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/i915_pci.c
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/intel_device_info.c
M	drivers/gpu/drm/i915/intel_device_info.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_device_info.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_device_info.h
Auto-merging drivers/gpu/drm/i915/intel_device_info.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_device_info.c
Auto-merging drivers/gpu/drm/i915/i915_reg.h
Auto-merging drivers/gpu/drm/i915/i915_pci.c
Auto-merging drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/i915_driver.c
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_regs.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_gt_regs.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Read graphics/media/display arch version from hw
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


