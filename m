Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6065757326A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 11:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6005C98A42;
	Wed, 13 Jul 2022 09:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E910098A40;
 Wed, 13 Jul 2022 09:27:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E05C7AADD1;
 Wed, 13 Jul 2022 09:27:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Wed, 13 Jul 2022 09:27:34 -0000
Message-ID: <165770445491.24811.5186168756743716211@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220602141850.21301-1-animesh.manna@intel.com>
In-Reply-To: <20220602141850.21301-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?ual_LFP/EDP_enablement_=28rev2=29?=
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

Series: Dual LFP/EDP enablement (rev2)
URL   : https://patchwork.freedesktop.org/series/104663/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/104663/revisions/2/mbox/ not applied
Applying: drm/i915/bios: calculate drrs mode using panel index for dual LFP
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/icl_dsi.c
M	drivers/gpu/drm/i915/display/intel_bios.c
M	drivers/gpu/drm/i915/display/intel_bios.h
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_lvds.c
M	drivers/gpu/drm/i915/display/intel_sdvo.c
M	drivers/gpu/drm/i915/display/intel_vbt_defs.h
M	drivers/gpu/drm/i915/display/vlv_dsi.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/vlv_dsi.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/vlv_dsi.c
Auto-merging drivers/gpu/drm/i915/display/intel_vbt_defs.h
Auto-merging drivers/gpu/drm/i915/display/intel_sdvo.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_sdvo.c
Auto-merging drivers/gpu/drm/i915/display/intel_lvds.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_lvds.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_bios.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_bios.h
Auto-merging drivers/gpu/drm/i915/display/intel_bios.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_bios.c
Auto-merging drivers/gpu/drm/i915/display/icl_dsi.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/icl_dsi.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/bios: calculate drrs mode using panel index for dual LFP
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


