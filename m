Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFDCCB05EB
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 16:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D38F10E1FD;
	Tue,  9 Dec 2025 15:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="FP0ZEAaJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09A510E1EE;
 Tue,  9 Dec 2025 15:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765293206;
 bh=TpBR6UngkEpzlvmNtau/oYGa2aWfBUU+yiZ7AlBxeZ8=;
 h=From:To:Cc:Subject:Date:From;
 b=FP0ZEAaJ4rl2eCKjcosqX0e0/t8sbL+glc59ycNp+REIBgLxBzYUOj4DvVsSbVG5P
 Mtt0a5PntJtUv5eww6eDDpRyud9mMVTbtN6WsaKSvD6cunB9gipsPJf408QM0hchbH
 Y02o40zk4q5mK5LGCJLH3Rs5Mz8uTAppFnUGKRIOSDqDFD1nb5IvQxgTiIRV+1USa/
 B15/+yRuW+35k4KboKOGAMxnsiWLf5ZOxK4hswhStUCsARevU8glScHVhPDSZaavl2
 Pu684VCud9h42yG8vzAPqyKV1m8DcGBePRE3L8Khs2jRb+LMVoCFil3VgRICJ76Nu4
 QraIEMCKI4GNg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 stable@vger.kernel.org
Subject: [PATCH 1/2] drm/xe: Use generic_handle_irq_safe inside heci gsc irq
 handler
Date: Tue,  9 Dec 2025 16:13:20 +0100
Message-ID: <20251209151319.494640-3-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
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

This makes the irq handler safe on PREEMPT-RT too.
This is similar to the i915 commit 8cadce97bf26 ("drm/i915/gsc: mei
interrupt top half should be in irq disabled context").

Fixes: 87a4c85d3a3e ("drm/xe/gsc: add gsc device support")
Cc: <stable@vger.kernel.org> # v6.8+
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_heci_gsc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
index 2b3d49dd394c0..495cdd4f948d5 100644
--- a/drivers/gpu/drm/xe/xe_heci_gsc.c
+++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
@@ -223,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
 	if (xe->heci_gsc.irq < 0)
 		return;
 
-	ret = generic_handle_irq(xe->heci_gsc.irq);
+	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
 	if (ret)
 		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
 }
@@ -243,7 +243,7 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
 	if (xe->heci_gsc.irq < 0)
 		return;
 
-	ret = generic_handle_irq(xe->heci_gsc.irq);
+	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
 	if (ret)
 		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
 }
-- 
2.51.0

