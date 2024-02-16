Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B3F857629
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE8410E42D;
	Fri, 16 Feb 2024 06:53:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="gRSpAaUC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBF210E432
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5E5B761EB1;
 Fri, 16 Feb 2024 06:53:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A57AC433C7;
 Fri, 16 Feb 2024 06:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066431;
 bh=eet1vEI7EGs4P/wMxc9m6gOO4iuk9u8MjHggPAsGzEc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gRSpAaUCq7sEC/LdG4M3Prfc0JaS8gfE/ZNfbr3xXAa+cwpwcDl0zfq9KRfMRwunE
 aHcasZ3/yonQzNLzyHiKFokR5zQLwEFmz09UtPTvTA6EHbgwoxRfP6x9+QRmKiMWLp
 eb9q0U0C54U5xO41R0JDA8qHjM3CNOrK5qJ6kfnBILsh3qHGe8z19tZOP9bA1Cf2VC
 3zSma9BWhPEotfmdH+P2JQlG1fsMRTBltcDKbRAIisxZCc7TPD3Pgcm5BjXd78B+H8
 tqBf+civB8pKDnVAZvqVu3UPWKMVNrkl89yjMvFOIa0EqiblkauoZBCEA4c7kRpqkN
 qIav2T3ztQW8w==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/21] drm/i915: remove intel_vgpu_workload::{ring_context,
 restore_inhibit}
Date: Fri, 16 Feb 2024 07:53:11 +0100
Message-ID: <20240216065326.6910-7-jirislaby@kernel.org>
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

intel_vgpu_workload::ring_context was never used since its addition in
commit 28c4c6ca7f79 (drm/i915/gvt: vGPU workload submission) and
::restore_inhibit since its addition in commit e473405783c0
(drm/i915/gvt: vGPU workload scheduler). Drop them.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/scheduler.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/scheduler.h b/drivers/gpu/drm/i915/gvt/scheduler.h
index 1f391b3da2cc..cd94993278b6 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.h
+++ b/drivers/gpu/drm/i915/gvt/scheduler.h
@@ -104,10 +104,8 @@ struct intel_vgpu_workload {
 
 	/* execlist context information */
 	struct execlist_ctx_descriptor_format ctx_desc;
-	struct execlist_ring_context *ring_context;
 	unsigned long rb_head, rb_tail, rb_ctl, rb_start, rb_len;
 	unsigned long guest_rb_head;
-	bool restore_inhibit;
 	struct intel_vgpu_elsp_dwords elsp_dwords;
 	bool emulate_schedule_in;
 	atomic_t shadow_ctx_active;
-- 
2.43.1

