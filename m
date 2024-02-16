Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 524DF857635
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A0810EAA5;
	Fri, 16 Feb 2024 06:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="sTepzBhp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E1710EAA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6F8FDCE2A00;
 Fri, 16 Feb 2024 06:54:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 477CEC43394;
 Fri, 16 Feb 2024 06:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066462;
 bh=76rc2RXrSGYrSj0C5tpAcUBDgwB+L+6GnchV2Cb1TXk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sTepzBhpub0N6GDHAWQ92fg6hamVDAWFkhi1H3OtEdwVXR6BNgFJkIPVRVIhczNtY
 ONzylcaA0wElfNFJcdsPuk0mkKJNZDECU+nYLVaAlA4GAyU6pQbIaIXE6ClA0wSeR5
 oC/eBD0nRHX5kZ3wPgWaVZqYwtLBaa4z6OrnVatq7GWMoN84XmAupCV/BadcabFxVV
 D662aciGIIKh06bobhx5cHhSObz3FGi3TC6b0Cm5z2SV7asXpY4IFYWoeI5y/OkhA7
 bEiwXCwZnbh+F2O4Lg9k6m/BfLwyF+I+eMm97cAh1nrU2UBbLHoLnd9hI0XzuEJ4lo
 AVYPt998gh00A==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/21] drm/i915: remove intel_gvt_irq_info::warned
Date: Fri, 16 Feb 2024 07:53:21 +0100
Message-ID: <20240216065326.6910-17-jirislaby@kernel.org>
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

intel_gvt_irq_info::warned was never used since its addition in commit
c8fe6a6811a7 (drm/i915/gvt: vGPU interrupt virtualization.). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/interrupt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
index c8e7dfc9f791..336d079c4207 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.c
+++ b/drivers/gpu/drm/i915/gvt/interrupt.c
@@ -40,7 +40,6 @@ struct intel_gvt_irq_info {
 	char *name;
 	i915_reg_t reg_base;
 	enum intel_gvt_event_type bit_to_event[INTEL_GVT_IRQ_BITWIDTH];
-	unsigned long warned;
 	int group;
 	DECLARE_BITMAP(downstream_irq_bitmap, INTEL_GVT_IRQ_BITWIDTH);
 	bool has_upstream_irq;
-- 
2.43.1

