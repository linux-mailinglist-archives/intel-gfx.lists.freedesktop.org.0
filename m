Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F77A81091F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 05:31:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A4310E135;
	Wed, 13 Dec 2023 04:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD20810E135;
 Wed, 13 Dec 2023 04:31:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D66C2AADE4;
 Wed, 13 Dec 2023 04:31:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_=28stole?=
 =?utf-8?q?n=29_memory_region_related_fixes_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 13 Dec 2023 04:31:17 -0000
Message-ID: <170244187785.10264.2478763800667037317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: (stolen) memory region related fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/127721/
State : warning

== Summary ==

Error: dim checkpatch failed
43431d68ff99 drm/i915: Use struct resource for memory region IO as well
-:385: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#385: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:227:
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
4740f0098482 drm/i915: Print memory region info during probe
f5fd743f6ee4 drm/i915: Remove ad-hoc lmem/stolen debugs
b9de2397f4ee drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
2f5eb71f0cc5 drm/i915: Disable the "binder"
ad5d174a7ad5 drm/i915: Rename the DSM/GSM registers
8943d3a47536 drm/i915: Fix PTE decode during initial plane readout
c0c84c45e7e3 drm/i915: Fix region start during initial plane readout
0e72f7c4959c drm/i915: Fix MTL initial plane readout
73e35d41526a drm/i915: s/phys_base/dma_addr/
0f775764deae drm/i915: Split the smem and lmem plane readout apart
a3e805b3a298 drm/i915: Simplify intel_initial_plane_config() calling convention


