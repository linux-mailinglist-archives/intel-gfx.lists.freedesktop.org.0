Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75C857626
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341BA10E1A7;
	Fri, 16 Feb 2024 06:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="AZfOy8AS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4248610E3DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9933C61EFF;
 Fri, 16 Feb 2024 06:53:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 932E8C433C7;
 Fri, 16 Feb 2024 06:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066425;
 bh=sH0FzSylb4GHpKMjELKxOSqoIZwIATsF0+uo2uRnxfE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AZfOy8AS1VK794BqL6EDv6yN4/raYXNT5U7KlgAdOJiZS4GPNDzMCLba4+68d/6CH
 fQweIQd5bMxXv8H33HHDsDkqEnikj528gOFmAc3ypAnDT2qYip7vOoZOqlYZuRGorc
 xeiSKoxWi7pPX0S3hJF9YETECd9RujLyhyKZqqV/lcAQOClVYwOFp9EnO39LsUSKG1
 aFFlIuiXlycxCnHFJ26ihTzCPz7pfYIiERAKyExjotKbiIzg9VuxrVuoFvvaac2nFj
 0M07qcJK7luruzbR+Ai8jXgBVZcXkYWynqFyfjqq4KEm4LqbG8gpdPvoIp/BxqfDug
 RfX7JfabFHc0A==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/21] drm/i915: remove intel_gvt_gtt::{mm_alloc_page_table,
 mm_free_page_table}
Date: Fri, 16 Feb 2024 07:53:09 +0100
Message-ID: <20240216065326.6910-5-jirislaby@kernel.org>
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

intel_gvt_gtt::{mm_alloc_page_table,mm_free_page_table} are not used
since commit ede9d0cfcb78 (drm/i915/gvt: Rework shadow graphic memory
management code). Drop them.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/gtt.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.h b/drivers/gpu/drm/i915/gvt/gtt.h
index 4cb183e06e95..fb96ea454fd1 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.h
+++ b/drivers/gpu/drm/i915/gvt/gtt.h
@@ -93,8 +93,6 @@ struct intel_gvt_gtt_gma_ops {
 struct intel_gvt_gtt {
 	const struct intel_gvt_gtt_pte_ops *pte_ops;
 	const struct intel_gvt_gtt_gma_ops *gma_ops;
-	int (*mm_alloc_page_table)(struct intel_vgpu_mm *mm);
-	void (*mm_free_page_table)(struct intel_vgpu_mm *mm);
 	struct list_head oos_page_use_list_head;
 	struct list_head oos_page_free_list_head;
 	struct mutex ppgtt_mm_lock;
-- 
2.43.1

