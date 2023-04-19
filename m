Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6AA6E83D3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 23:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A427B10E21A;
	Wed, 19 Apr 2023 21:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C701E10E1F4;
 Wed, 19 Apr 2023 21:35:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABCAFA0BCB;
 Wed, 19 Apr 2023 21:35:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Wed, 19 Apr 2023 21:35:51 -0000
Message-ID: <168194015167.10531.6869952839692764206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230419211219.2574008-1-fei.yang@intel.com>
In-Reply-To: <20230419211219.2574008-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev7?=
 =?utf-8?q?=29?=
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

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev7)
URL   : https://patchwork.freedesktop.org/series/115980/
State : warning

== Summary ==

Error: dim checkpatch failed
b549f1a87da9 drm/i915/mtl: Set has_llc=0
2eee4c46f95e drm/i915/mtl: Define MOCS and PAT tables for MTL
c5c3421946f5 drm/i915/mtl: Add PTE encode function
-:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#133: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:224:
+static u64 mtl_ggtt_pte_encode(dma_addr_t addr,
+			enum i915_cache_level level,

total: 0 errors, 0 warnings, 1 checks, 156 lines checked
3538dff09b85 drm/i915/mtl: workaround coherency issue for Media
585e41935d4f drm/i915/mtl: end support for set caching ioctl
06305200d5da drm/i915: preparation for using PAT index
3ea55ee00c04 drm/i915: use pat_index instead of cache_level
73ef30255ffe drm/i915: Allow user to set cache at BO creation


