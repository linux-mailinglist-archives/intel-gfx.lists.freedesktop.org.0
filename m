Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D136810792
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 02:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104B810E1FA;
	Wed, 13 Dec 2023 01:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04BAE10E1FA;
 Wed, 13 Dec 2023 01:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1220A0093;
 Wed, 13 Dec 2023 01:22:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_=28stole?=
 =?utf-8?q?n=29_memory_region_related_fixes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 13 Dec 2023 01:22:04 -0000
Message-ID: <170243052498.10265.18204920237864391174@emeril.freedesktop.org>
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

Series: drm/i915: (stolen) memory region related fixes
URL   : https://patchwork.freedesktop.org/series/127721/
State : warning

== Summary ==

Error: dim checkpatch failed
57aa292bab73 drm/i915: Use struct resource for memory region IO as well
-:385: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#385: FILE: drivers/gpu/drm/i915/intel_region_ttm.c:227:
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
6f1daec92bb9 drm/i915: Print memory region info during probe
5bbcb4180a39 drm/i915: Remove ad-hoc lmem/stolen debugs
3cac577dc645 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
ddb1a05b1d8d drm/i915: Disable the "binder"
4ee33d48194e drm/i915: Rename the DSM/GSM registers
b34d6c789845 drm/i915: Fix PTE decode during initial plane readout
225e329229bd drm/i915: Fix region start during initial plane readout
24bf9674cb6f drm/i915: Fix MTL initial plane readout
30b9f4a02a3b drm/i915: s/phys_base/dma_addr/
8e6abaa24f65 drm/i915: Split the smem and lmem plane readout apart
5da25c7a5304 drm/i915: Simplify intel_initial_plane_config() calling convention


