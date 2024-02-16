Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D284A85762F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3708C10EAA0;
	Fri, 16 Feb 2024 06:54:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="bcPOWQoE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3AA10EAA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AD37261EF7;
 Fri, 16 Feb 2024 06:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2D78C433F1;
 Fri, 16 Feb 2024 06:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066446;
 bh=D1UVKTUwrumNB4hwYMCCqn17XRjRd4Butj96fqO0Ms8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bcPOWQoEz23Zw9RUcbqEyl8B6I+N8c2+TNF+litP20oTavcBUp4OMcqgSikxs9hIy
 GBUv8uCuIGafuExHqqNKSGSexCkHq2tZl+4NTqRLuUSAQlAquRvyKfMh9ZEaDuWvYi
 7Hwo0cJmbybLTXpfvhEU97F+owLSUn0nfuVr44SNOC4FBO5CBz3XdlAS87pPXo73RY
 YiUpVcKDF0HlR+Bii/IWPxg6+qMa7l4kjVr+djNQCMxDkEYj0v1QAnshCedXfLqx5M
 N68b3v8f0aCn+Hu6mL/eovXey2vuAviuiC0HezrAYj6ivjaPf2ow46KWtVaYYTAJRK
 uRSTpcFUqEYNA==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/21] drm/i915: remove intel_vgpu_gtt::active_ppgtt_mm_bitmap
Date: Fri, 16 Feb 2024 07:53:16 +0100
Message-ID: <20240216065326.6910-12-jirislaby@kernel.org>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240216065326.6910-1-jirislaby@kernel.org>
References: <20240216065326.6910-1-jirislaby@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_vgpu_gtt::active_ppgtt_mm_bitmap was never used since its
addition in commit 2707e4446688 (drm/i915/gvt: vGPU graphics memory
virtualization). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/gtt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.h b/drivers/gpu/drm/i915/gvt/gtt.h
index fb96ea454fd1..cb50700e6cc9 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.h
+++ b/drivers/gpu/drm/i915/gvt/gtt.h
@@ -208,7 +208,6 @@ struct intel_vgpu_scratch_pt {
 
 struct intel_vgpu_gtt {
 	struct intel_vgpu_mm *ggtt_mm;
-	unsigned long active_ppgtt_mm_bitmap;
 	struct list_head ppgtt_mm_list_head;
 	struct radix_tree_root spt_tree;
 	struct list_head oos_page_list_head;
-- 
2.43.1

