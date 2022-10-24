Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD4360AECC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 17:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E111C10E851;
	Mon, 24 Oct 2022 15:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0790510E840;
 Mon, 24 Oct 2022 15:15:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01804A7DFB;
 Mon, 24 Oct 2022 15:15:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Mon, 24 Oct 2022 15:15:18 -0000
Message-ID: <166662451800.3425.13345079959595010499@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019152736.654451-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20221019152736.654451-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/ttm=3A_rework_on_ttm=5Fr?=
 =?utf-8?q?esource_to_use_size=5Ft_type?=
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

Series: series starting with [1/6] drm/ttm: rework on ttm_resource to use size_t type
URL   : https://patchwork.freedesktop.org/series/110055/
State : warning

== Summary ==

Error: dim checkpatch failed
b400c116c652 drm/ttm: rework on ttm_resource to use size_t type
472c5abe2a6d drm/amd: fix’s on ttm_resource rework to use size_t type
-:57: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#57: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:65:
+	BUG_ON(start + size > res->size);

total: 0 errors, 1 warnings, 0 checks, 97 lines checked
81b511f1f701 drm/i915: fix’s on ttm_resource rework to use size_t type
-:59: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#59: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:65:
+	GEM_BUG_ON(!bman_res->base.size);

total: 0 errors, 1 warnings, 0 checks, 74 lines checked
a99d7b96e05d drm/nouveau: fix’s on ttm_resource rework to use size_t type
-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: drivers/gpu/drm/nouveau/nouveau_bo74c1.c:48:
+	PUSH_NVSQ(push, NV74C1, 0x0304, new_reg->size,
 				0x0308, upper_32_bits(mem->vma[0].addr),

total: 0 errors, 0 warnings, 1 checks, 133 lines checked
eb5693378d6f drm/radeon: fix’s on ttm_resource rework to use size_t type
127e6c00c737 drm/vmwgfx: fix’s on ttm_resource rework to use size_t type


