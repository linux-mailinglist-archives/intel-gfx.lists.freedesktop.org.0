Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18E485762E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544F610E433;
	Fri, 16 Feb 2024 06:54:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="aDyJ4V/b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3CB10E433
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 323AB61EF8;
 Fri, 16 Feb 2024 06:54:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1EE4C433C7;
 Fri, 16 Feb 2024 06:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066443;
 bh=YgYjxfvUqDqcc0kdOcmV9/pe6rLivB5Hnys3gp0apvU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aDyJ4V/bLN4EkcMd8v47X1GZjrkbl4ceRUkFCXyjR/WHxHtMAmW8xc4cPK1n/BSCo
 fIqVQrxaOyozPq9h7b1vzKQQNuzbvdTG/id6nXhT1vKErrtpsVvEKjYXDbf6VDNn59
 OUGefLN2cjl1iN4ua9iqNJRgS3HobVWSRtRjrptOwzu+x2vuqmy1q/GRh4Atk9NWv0
 k0/BprtQj2kLdq/6ZlLApcfoUL2yO296nyzeV6sh0ZxRc2fU3sFg9MdVcjeO7zZFxt
 HVsj9AYDjTopKUxsbUHn34LtHeJkLAN2t1F7Gd0sF09/b6MfOPH0WrZPdJ7QxTRiqr
 1rLk1LQoXhfbg==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/21] drm/i915: remove i915_perf_stream::size_exponent
Date: Fri, 16 Feb 2024 07:53:15 +0100
Message-ID: <20240216065326.6910-11-jirislaby@kernel.org>
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

i915_perf_stream::size_exponent was never used since its addition in
commit a37f08a882b0 (drm/i915/perf: Refactor oa object to better manage
resources). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/i915_perf_types.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 46445248d193..39fb6ce4a7ef 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -288,7 +288,6 @@ struct i915_perf_stream {
 		struct i915_vma *vma;
 		u8 *vaddr;
 		u32 last_ctx_id;
-		int size_exponent;
 
 		/**
 		 * @oa_buffer.ptr_lock: Locks reads and writes to all
-- 
2.43.1

