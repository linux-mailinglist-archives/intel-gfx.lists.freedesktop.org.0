Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A47569701
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 02:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDD210E491;
	Thu,  7 Jul 2022 00:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 119A110E0FA;
 Thu,  7 Jul 2022 00:47:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 069A0A0096;
 Thu,  7 Jul 2022 00:47:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Thu, 07 Jul 2022 00:47:44 -0000
Message-ID: <165715486498.2212.16727322646070060676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBp?=
 =?utf-8?q?915=3A_Introduce_Meteorlake?=
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

Series: i915: Introduce Meteorlake
URL   : https://patchwork.freedesktop.org/series/106000/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106000/revisions/1/mbox/ not applied
Applying: drm/i915/mtl: Add MeteorLake platform info
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/i915_pci.c
M	drivers/gpu/drm/i915/intel_device_info.c
M	drivers/gpu/drm/i915/intel_device_info.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_device_info.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_device_info.h
Auto-merging drivers/gpu/drm/i915/intel_device_info.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_device_info.c
Auto-merging drivers/gpu/drm/i915/i915_pci.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_pci.c
Auto-merging drivers/gpu/drm/i915/i915_drv.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/mtl: Add MeteorLake platform info
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


