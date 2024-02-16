Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AB9857631
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B3F10E3CF;
	Fri, 16 Feb 2024 06:54:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="KDfx5flm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4562210E3CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5ACBECE1A97;
 Fri, 16 Feb 2024 06:54:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1434FC433C7;
 Fri, 16 Feb 2024 06:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066449;
 bh=8o0wvfgtp9sQfzOgFfW8t1yUu/RnxbOaOuDmpI5A5qk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KDfx5flmsaTtfTYf4Irng/CnPwsgJzJ+dCaPmXn2In2KJowAOIDfk3S4a8EZN8Wci
 BNHEy6+fHdkUEo33XX5p8tlaEut0C49KaVhNLaHht/oPG2DVLypJecnoYueC81JbXi
 V0HMdYliYRfKvpOuoGFohYyUEurgXau3BOqP80MA+a6fFF2OrIEUmbWa6oaOlOC/I9
 l6Py+6hUpe5SiWWTWl///JzRTnAmmSkRN2KvUepgwDllHeTf1tMrfqLy5uFFpg1g6y
 H+/gIlTcFRsYy4ZdCjDqRfIxjzk/y2rYHqBZoql1212DKkabX918XDQfNWKRkEzMzb
 xNGpHrnT1crUQ==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/21] drm/i915: remove intel_vgpu_fence::base
Date: Fri, 16 Feb 2024 07:53:17 +0100
Message-ID: <20240216065326.6910-13-jirislaby@kernel.org>
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

intel_vgpu_fence::base was never used since its addition in commit
28a60dee2ce6 (drm/i915/gvt: vGPU HW resource management). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/gvt.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index c57aba09091f..b6fe17f1a16f 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -89,7 +89,6 @@ struct intel_vgpu_gm {
 /* Fences owned by a vGPU */
 struct intel_vgpu_fence {
 	struct i915_fence_reg *regs[INTEL_GVT_MAX_NUM_FENCES];
-	u32 base;
 	u32 size;
 };
 
@@ -444,7 +443,6 @@ int intel_gvt_load_firmware(struct intel_gvt *gvt);
 #define vgpu_hidden_gmadr_end(vgpu) \
 	(vgpu_hidden_gmadr_base(vgpu) + vgpu_hidden_sz(vgpu) - 1)
 
-#define vgpu_fence_base(vgpu) (vgpu->fence.base)
 #define vgpu_fence_sz(vgpu) (vgpu->fence.size)
 
 /* ring context size i.e. the first 0x50 dwords*/
-- 
2.43.1

