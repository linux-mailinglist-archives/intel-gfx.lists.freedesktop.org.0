Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 600D085762D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B704610EA9E;
	Fri, 16 Feb 2024 06:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="MYhfAahz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4759610E433
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AEB9B61EF6;
 Fri, 16 Feb 2024 06:54:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 873C8C43390;
 Fri, 16 Feb 2024 06:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066440;
 bh=e3JLcK2Zorv6NzoLDXNqOtoctfvRfUkVpj0zHb6Uma0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MYhfAahznJHHc68nDGRIoxA2wQ6gIDbhrKn+7x4NtBDivZwEl1JX6AcMoyyufiVcp
 AXtdHNVVfwW/c7PEUNYyy3OCjLq/uonp9U+Y5zx0v0R7H3b9QyFhKfKrjVfw25bgNC
 vRDgrr78LIDkkkqOTS9LV4DbW0LllabFa+IrTGrx0n8P7YMuvQl6LCCNjFzMtIQMrF
 YnIFg25kvKFlZndJGBmmcJFm6ayZIWAIem3QMmRN0ydO0++zMkRbFz0xQYkXQ1B+5F
 JINaZHCT7vopkXJvrkhhRO/ejiy/1W9JMmUTK0JGKwJfalNn7vExyRzv9vnzl7Ft8T
 PrrAqqQz2GcAw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/21] drm/i915: remove i915_drm_client::id
Date: Fri, 16 Feb 2024 07:53:14 +0100
Message-ID: <20240216065326.6910-10-jirislaby@kernel.org>
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

i915_drm_client::id is not used since commit e894b724c316 (drm/i915:
Use the fdinfo helper). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/i915_drm_client.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index a439dd789936..2e7a50d16a88 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -24,8 +24,6 @@ struct drm_printer;
 struct i915_drm_client {
 	struct kref kref;
 
-	unsigned int id;
-
 	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
 	struct list_head ctx_list; /* List of contexts belonging to client. */
 
-- 
2.43.1

