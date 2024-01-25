Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEB083C180
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 13:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A3E10F8DF;
	Thu, 25 Jan 2024 12:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D689B10F8DA;
 Thu, 25 Jan 2024 12:00:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_=28stole?=
 =?utf-8?q?n=29_memory_region_related_fixes_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 25 Jan 2024 12:00:04 -0000
Message-ID: <170618400487.709515.2817688029741916676@5338d5abeb45>
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

Series: drm/i915: (stolen) memory region related fixes (rev10)
URL   : https://patchwork.freedesktop.org/series/127721/
State : warning

== Summary ==

Error: dim checkpatch failed
72dda2db9044 drm/i915: Use struct resource for memory region IO as well
-:388: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#388: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:227:
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
647617023b28 drm/i915: Print memory region info during probe
d4d79a559964 drm/i915: Remove ad-hoc lmem/stolen debugs
84b6c1bef1e8 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
90f743608bc4 drm/i915: Disable the "binder"
73e317aef584 drm/i915: Rename the DSM/GSM registers
5da2ebc59918 drm/i915: Fix PTE decode during initial plane readout
e8e5509729b6 drm/i915: Fix region start during initial plane readout
6b64e9796923 drm/i915: Fix MTL initial plane readout
4e682d80a189 drm/i915: s/phys_base/dma_addr/
e6116924b137 drm/i915: Split the smem and lmem plane readout apart
9914347031fe drm/i915: Simplify intel_initial_plane_config() calling convention
fc524e5b6a53 drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
b5288e67b618 drm/i915: Tweak BIOS fb reuse check
eae214ae90cc drm/i915: Try to relocate the BIOS fb to the start of ggtt
-:104: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#104: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:51:
 }
+static inline bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,

-:105: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/i9xx_plane.h:52:
+						   const struct intel_initial_plane_config *plane_config)

total: 0 errors, 1 warnings, 1 checks, 229 lines checked
f07fd3928e76 drm/i915: Annotate more of the BIOS fb takeover failure paths


