Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 449C4857633
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B361A10EAA3;
	Fri, 16 Feb 2024 06:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ID/5JZuI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F4010EAA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 19272CE1A97;
 Fri, 16 Feb 2024 06:54:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2631C433F1;
 Fri, 16 Feb 2024 06:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066456;
 bh=SXyIHpFd6ET8iufV6ZRXcOFvDY4mmrBUfCieGBadR0I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ID/5JZuIbZ7qR1aXjg2e0yERBM7vDBtiMaOKDAbabO1Cz1Sqt7sMoMOR+AZLRcshz
 KkpjdY7DmWTACjfEIrMqmLPmj82z/2aToB1WKxmewUwew8c8scMtgIhCX6olwQU+CY
 uXrphMLBWfGRsiB7m2y3U1qPgVZiU31qxJutPxz3dHx8YG0Rli7Q+5S/0z+APoqq9k
 Ak0PWXsjVwt0wqvttbAY1bFcDhRafgqlO3ILJlUQk3fkZCqsAKSVuyBqEH+JOSnLj6
 cI8IXozf1s30jEkneAMJBPzzNCgaAiz0oAFEaFXySEv340/YXVnqJTXGYAcX/mkYAN
 lGBIgQ2vH3fOw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/21] drm/i915: remove intel_vgpu::intx_trigger
Date: Fri, 16 Feb 2024 07:53:19 +0100
Message-ID: <20240216065326.6910-15-jirislaby@kernel.org>
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

intel_vgpu::intx_trigger was never used since its addition in commit
f30437c5e7bf (drm/i915/gvt: add KVMGT support). Drop it.

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
index 8e5d696fc79c..b8b8ffe4d566 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -221,7 +221,6 @@ struct intel_vgpu {
 
 	struct vfio_region *region;
 	int num_regions;
-	struct eventfd_ctx *intx_trigger;
 	struct eventfd_ctx *msi_trigger;
 
 	/*
-- 
2.43.1

