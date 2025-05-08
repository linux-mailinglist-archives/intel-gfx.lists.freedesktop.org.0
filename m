Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0105AAAFD40
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 16:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF0010E3B0;
	Thu,  8 May 2025 14:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7950A10E3B0;
 Thu,  8 May 2025 14:37:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/dp=5Fmst=3A_Add_?=
 =?utf-8?q?support_for_fractional_link_bpps_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 May 2025 14:37:22 -0000
Message-ID: <174671504248.59893.9759757473383822575@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250428133135.3396080-1-imre.deak@intel.com>
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Add support for fractional link bpps (rev3)
URL   : https://patchwork.freedesktop.org/series/147435/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/147435/revisions/3/mbox/ not applied
Applying: drm/i915/dp_mst: Use the correct connector while computing the link BPP limit on MST
Applying: drm/i915/dp_mst: Simplify handling the single-bpp case during state computation
Applying: drm/i915/dp_mst: Validate compressed bpp vs. platform restrictions
Applying: drm/i915/dp_mst: Update the total link slot count early
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dp_mst.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp_mst.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/dp_mst: Update the total link slot count early
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


