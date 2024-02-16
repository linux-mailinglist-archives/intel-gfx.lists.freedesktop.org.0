Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C93857639
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3FE10EAAA;
	Fri, 16 Feb 2024 06:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="pvmJQd1o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5C510EAAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 9DF20CE27EC;
 Fri, 16 Feb 2024 06:54:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B58AC433F1;
 Fri, 16 Feb 2024 06:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066471;
 bh=vDCO89h9ED/qo4wLWevCKElHpB2BcZotTCPZ1w3i9Jc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pvmJQd1o5CPP9qPttQiY8V031wAlyPP80QwLnSBoz7mapvpDVmB0wq9pCsvT88IrX
 Iuta+sHkqfu1xh25oWlE98lwYiv6ag5ntxnwyRNEvLwru12wKB0SJUlIzc+dQCvtsy
 p9TyfWuQKHnJj756zzSkg7Tqv6NYshRSJ22ABSL3L98kvQlwW2Usnm0BJnp3WjBnrz
 nGPIXkqWsjtkR0TyHn5IyVseq9XEN3h7IrZ7YvurSZ6awet7/7Y9Jlb0xb6lAxvrX4
 Dcigyiv139H7vp8DNQG7K5OwwaXijp+kQV1A/+ruD8H9e0q98RA+qk+NyC4ABkBNGm
 uugYm5JdvTBOw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 19/21] drm/i915: remove execute_cb::signal
Date: Fri, 16 Feb 2024 07:53:24 +0100
Message-ID: <20240216065326.6910-20-jirislaby@kernel.org>
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

execute_cb::signal is not used since commit 5ac545b8b014
(drm/i915/request: Remove the hook from await_execution). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/i915_request.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f59081066a19..519e096c607c 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -52,7 +52,6 @@
 struct execute_cb {
 	struct irq_work work;
 	struct i915_sw_fence *fence;
-	struct i915_request *signal;
 };
 
 static struct kmem_cache *slab_requests;
-- 
2.43.1

