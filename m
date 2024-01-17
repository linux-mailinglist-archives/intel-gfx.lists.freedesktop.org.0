Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E095830AF8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 17:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A9810E029;
	Wed, 17 Jan 2024 16:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5EE10E029;
 Wed, 17 Jan 2024 16:23:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_=28stole?=
 =?utf-8?q?n=29_memory_region_related_fixes_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 17 Jan 2024 16:23:52 -0000
Message-ID: <170550863290.537693.16505610258454205972@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: (stolen) memory region related fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/127721/
State : warning

== Summary ==

Error: dim checkpatch failed
420bd052296b drm/i915: Use struct resource for memory region IO as well
-:388: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#388: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:227:
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
36939988182b drm/i915: Print memory region info during probe
b068f5dd348b drm/i915: Remove ad-hoc lmem/stolen debugs
5c3f5c028395 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
9d4356c8b4f9 drm/i915: Disable the "binder"
eeeddbd1c219 drm/i915: Rename the DSM/GSM registers
0f97740ee08d drm/i915: Fix PTE decode during initial plane readout
3e1f008c0575 drm/i915: Fix region start during initial plane readout
376b52c85c46 drm/i915: Fix MTL initial plane readout
9d7013c0a8a2 drm/i915: s/phys_base/dma_addr/
ad263486e9a0 drm/i915: Split the smem and lmem plane readout apart
3ae104619d2c drm/i915: Simplify intel_initial_plane_config() calling convention
4fe3e6f3e4ec drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
e1f6060ee679 drm/i915: Tweak BIOS fb reuse check
0e59c24c2a0a drm/i915: Try to relocate the BIOS fb to the start of ggtt
-:104: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#104: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:51:
 }
+static inline bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,

-:105: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:52:
+						   const struct intel_initial_plane_config *plane_config)

total: 0 errors, 1 warnings, 1 checks, 229 lines checked
d5cdc16e4e91 drm/i915: Annotate more of the BIOS fb takeover failure paths


