Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4762E814C03
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 16:45:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E2410EA1A;
	Fri, 15 Dec 2023 15:45:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDBF510EA1A;
 Fri, 15 Dec 2023 15:45:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE6DDA02F0;
 Fri, 15 Dec 2023 15:45:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_=28stole?=
 =?utf-8?q?n=29_memory_region_related_fixes_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 15 Dec 2023 15:45:05 -0000
Message-ID: <170265510584.27834.13327264792944406358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: (stolen) memory region related fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/127721/
State : warning

== Summary ==

Error: dim checkpatch failed
e7cbf4e3592e drm/i915: Use struct resource for memory region IO as well
-:387: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#387: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:227:
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
df163a6b67b8 drm/i915: Print memory region info during probe
8540d04636d8 drm/i915: Remove ad-hoc lmem/stolen debugs
637857991a67 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
2649d131b38a drm/i915: Disable the "binder"
749426fcecc3 drm/i915: Rename the DSM/GSM registers
1f69f5e7e84f drm/i915: Fix PTE decode during initial plane readout
b3638bff7e4d drm/i915: Fix region start during initial plane readout
ab68b29bbf82 drm/i915: Fix MTL initial plane readout
272c9d024ff4 drm/i915: s/phys_base/dma_addr/
0ed9217df0c0 drm/i915: Split the smem and lmem plane readout apart
2d6d2559660c drm/i915: Simplify intel_initial_plane_config() calling convention
cdeb9cc51bbc drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
06c1a2465e13 drm/i915: Tweak BIOS fb reuse check
644c9f50b0ba drm/i915: Try to relocate the BIOS fb to the start of ggtt
-:100: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#100: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:51:
 }
+static inline bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,

-:101: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:52:
+						   const struct intel_initial_plane_config *plane_config)

total: 0 errors, 1 warnings, 1 checks, 232 lines checked


