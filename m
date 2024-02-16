Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7416857638
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198D710EAA9;
	Fri, 16 Feb 2024 06:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="CJqCV8/y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDE010EAA9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D10C660FC9;
 Fri, 16 Feb 2024 06:54:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39BF0C43390;
 Fri, 16 Feb 2024 06:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066468;
 bh=FdrONz3jqnEbBJVqtq1ykjLmdW7prwTBxhfQ4GglgTs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CJqCV8/yNzOiPeXngxMZCidOZ2fEeSBe7MNvGGeKcUAZcvCE9A7SQK+hJG4s9kfjw
 vXE2Uu77p1raT/HW+nbRV6hkej2H7N6zAg/8ZrC4Sr5o0SmceBZC+XJ46r7StE3KEl
 o6x6NeyQnKKBz3pCA/p8VXxhY0h1NeMQaSCF+EAbouvlthpTMewOWOvJSyKRJn/Eor
 typPJkEulN5DS6e3TeD/PgzkF0HgWDVUMwZSgSrCVIGg022tGWmbxmLsDqTzuD2rMb
 ATAlZwiezvB5qOdZivlJWHAyhb570/hY1KpCUnYsvGhb6ZgQFNCww1uqIAhtzN2ko9
 BJG76DnQun4/Q==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/21] drm/i915: remove intel_gvt_irq::pending_events
Date: Fri, 16 Feb 2024 07:53:23 +0100
Message-ID: <20240216065326.6910-19-jirislaby@kernel.org>
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

intel_gvt_irq::pending_events was never used since its addition in
commit c8fe6a6811a7 (drm/i915/gvt: vGPU interrupt virtualization.).
Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/interrupt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/interrupt.h b/drivers/gpu/drm/i915/gvt/interrupt.h
index b1fd6ed4e34a..cd214be98668 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.h
+++ b/drivers/gpu/drm/i915/gvt/interrupt.h
@@ -187,7 +187,6 @@ struct intel_gvt_irq {
 	struct intel_gvt_irq_info *info[INTEL_GVT_IRQ_INFO_MAX];
 	DECLARE_BITMAP(irq_info_bitmap, INTEL_GVT_IRQ_INFO_MAX);
 	struct intel_gvt_event_info events[INTEL_GVT_EVENT_MAX];
-	DECLARE_BITMAP(pending_events, INTEL_GVT_EVENT_MAX);
 	struct intel_gvt_irq_map *irq_map;
 };
 
-- 
2.43.1

