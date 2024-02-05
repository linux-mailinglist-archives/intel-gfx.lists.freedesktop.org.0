Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB45984A97B
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 23:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6324610FCFB;
	Mon,  5 Feb 2024 22:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE4310FCFB;
 Mon,  5 Feb 2024 22:40:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_=28stole?=
 =?utf-8?q?n=29_memory_region_related_fixes_=28rev12=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 22:40:21 -0000
Message-ID: <170717282112.1024297.9332248361683060513@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: (stolen) memory region related fixes (rev12)
URL   : https://patchwork.freedesktop.org/series/127721/
State : warning

== Summary ==

Error: dim checkpatch failed
f812c80bfb4f drm/i915: Use struct resource for memory region IO as well
-:388: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#388: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:227:
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
6d1dbf45b3cf drm/i915: Print memory region info during probe
fefe86823eef drm/i915: Remove ad-hoc lmem/stolen debugs
cc5a4b03fda6 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
3e00f7ec50cb drm/i915: Disable the "binder"
03d3eebd180a drm/i915: Rename the DSM/GSM registers
fe637a067058 drm/i915: Fix PTE decode during initial plane readout
f9131c5dc0a8 drm/i915: Fix region start during initial plane readout
0ddce5474c8f drm/i915: Fix MTL initial plane readout
16f9ab75a878 drm/i915: s/phys_base/dma_addr/
583eddf23852 drm/i915: Split the smem and lmem plane readout apart
fd4e5f0a9269 drm/i915: Simplify intel_initial_plane_config() calling convention
00d4492e5823 drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
1f6ce3969d2b drm/i915: Tweak BIOS fb reuse check
6e86b363979e drm/i915: Try to relocate the BIOS fb to the start of ggtt
-:105: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#105: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:51:
 }
+static inline bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,

-:106: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:52:
+						   const struct intel_initial_plane_config *plane_config)

total: 0 errors, 1 warnings, 1 checks, 245 lines checked
39e69f545954 drm/i915: Annotate more of the BIOS fb takeover failure paths


