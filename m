Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED53170FF9C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 23:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5548C10E63A;
	Wed, 24 May 2023 21:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7483D10E63A;
 Wed, 24 May 2023 21:05:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57611AADD7;
 Wed, 24 May 2023 21:05:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 24 May 2023 21:05:12 -0000
Message-ID: <168496231233.11319.8501253235787847203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Init_DDI_ports_based_on_port=5Fmask_=28rev2=29?=
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

Series: drm/i915: Init DDI ports based on port_mask (rev2)
URL   : https://patchwork.freedesktop.org/series/117641/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/117641/revisions/2/mbox/ not applied
Applying: drm/i915: Remove bogus DDI-F from hsw/bdw output init
Applying: drm/i915: Introduce device info port_mask
Using index info to reconstruct a base tree...
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
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915: Introduce device info port_mask
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


