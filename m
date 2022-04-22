Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB5D50C031
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 21:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69C010E2B3;
	Fri, 22 Apr 2022 19:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3620110E2B3;
 Fri, 22 Apr 2022 19:14:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35496AADD8;
 Fri, 22 Apr 2022 19:14:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 22 Apr 2022 19:14:07 -0000
Message-ID: <165065484718.14006.12281096153487006302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220422165535.3952178-1-matthew.d.roper@intel.com>
In-Reply-To: <20220422165535.3952178-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBp?=
 =?utf-8?q?915=3A_Add_first_set_of_DG2_PCI_IDs?=
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

Series: i915: Add first set of DG2 PCI IDs
URL   : https://patchwork.freedesktop.org/series/103003/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/103003/revisions/1/mbox/ not applied
Applying: i915: Add first set of DG2 PCI IDs
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_pci.c
M	drivers/gpu/drm/i915/intel_device_info.c
M	include/drm/i915_pciids.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/i915_pciids.h
CONFLICT (content): Merge conflict in include/drm/i915_pciids.h
Auto-merging drivers/gpu/drm/i915/intel_device_info.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_device_info.c
Auto-merging drivers/gpu/drm/i915/i915_pci.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_pci.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 i915: Add first set of DG2 PCI IDs
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


