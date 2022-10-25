Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F8A60D15B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 18:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E62B10E1A1;
	Tue, 25 Oct 2022 16:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 136C810E144;
 Tue, 25 Oct 2022 16:12:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F278A0003;
 Tue, 25 Oct 2022 16:12:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Tue, 25 Oct 2022 16:12:10 -0000
Message-ID: <166671433005.15484.15515995479507602766@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221025155057.40128-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20221025155057.40128-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/ttm=3A_rework_on_ttm=5Fresource_to_use_size=5Ft_type?=
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

Series: drm/ttm: rework on ttm_resource to use size_t type
URL   : https://patchwork.freedesktop.org/series/110129/
State : warning

== Summary ==

Error: dim checkpatch failed
5d3feb81e845 drm/ttm: rework on ttm_resource to use size_t type
-:57: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#57: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:65:
+	BUG_ON(start + size > res->size);

-:192: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#192: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:65:
+	GEM_BUG_ON(!bman_res->base.size);

-:313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#313: FILE: drivers/gpu/drm/nouveau/nouveau_bo74c1.c:48:
+	PUSH_NVSQ(push, NV74C1, 0x0304, new_reg->size,
 				0x0308, upper_32_bits(mem->vma[0].addr),

total: 0 errors, 2 warnings, 1 checks, 582 lines checked


