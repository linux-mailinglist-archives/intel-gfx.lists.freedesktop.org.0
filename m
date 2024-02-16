Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0742A857632
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765A210EAA2;
	Fri, 16 Feb 2024 06:54:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="FNZN1U+W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E29F10EAA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B9DD6CE29FD;
 Fri, 16 Feb 2024 06:54:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 665B7C43399;
 Fri, 16 Feb 2024 06:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066453;
 bh=TktpFXRJz/ldFZumo7iwlZkQPrtoXAs7MIXqQ9AMx+A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FNZN1U+WIzhHHPi5oj6KocxGGyE+DAW/vy1cSJoV03TW0rpM7j68r9Y0/KAC/GZHL
 Cc7oh1TJ29x8OBhQwOJt5brlWQ/o6m2uVrxXMyq42QtrwEfReN/C7DWGa1sN5k2A/p
 weXkEzT8r55DVqJyD9izVzNfObcpkZ6qQSXmxOrM+6HDtO8D+J1FLoo5iG5FY4eBy1
 kZXa9mlRuLSAwi81J12G2RmwQe5PCi2CCqtJuUYF84b4pewjVi1ahvyTQAZrJehH4U
 nWqh5wRFZ1ND/RTTd+kXNm8ZpcDC24td26oInNolWGYhN/uupW6kmehBSbWhM+47YW
 rBX2+8omIIPHw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/21] drm/i915: remove intel_vgpu_opregion::mapped
Date: Fri, 16 Feb 2024 07:53:18 +0100
Message-ID: <20240216065326.6910-14-jirislaby@kernel.org>
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

intel_vgpu_opregion::mapped is not used since commit 367748066eeb
(drm/i915/gvt: remove enum hypervisor_type). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/gvt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index b6fe17f1a16f..8e5d696fc79c 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -118,7 +118,6 @@ struct intel_vgpu_irq {
 };
 
 struct intel_vgpu_opregion {
-	bool mapped;
 	void *va;
 	u32 gfn[INTEL_GVT_OPREGION_PAGES];
 };
-- 
2.43.1

