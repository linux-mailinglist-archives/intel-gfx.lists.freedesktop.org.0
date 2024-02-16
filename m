Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ADF857634
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7103210EAA4;
	Fri, 16 Feb 2024 06:54:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="OZYa6F4s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCD910EAA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4DEFACE2A00;
 Fri, 16 Feb 2024 06:54:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DD1C433C7;
 Fri, 16 Feb 2024 06:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066459;
 bh=BXImqGWAPuqO33Ld3ZnMdqeekf4kcUYdKg21p7D7eN8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OZYa6F4sJIbOHW1A/nf05Cx7UXrlVbKnctd7m6e53k5qk8qOzli1waB1ESFi+U2kM
 P2n7o+9xU4Ntq4h0Cenr6KVAOohzzzX7qwCJK+WI3IuxC5cSB34oywUqoOSyhRuvKb
 aLKc44lOuKkKl66wsvAS9WJ7J8ioRM2/cjBSJJ8LMfhqiRA/TRDj5nNHO28jkT6H4N
 t3wKvbTA+xDlpXRf3E/OfJ/TayYEbOW0ZTu/bJDW2ZbLWxajekbTh0wPJ1FJ+oP0ga
 lkSC+uUbjxdLM6E3hn5kJ68nOcZqtknkriN1Nv3taD8LPYcq7WmzzZO0msKpQG1zm/
 2VxP9q4/ufFlg==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/21] drm/i915: remove gvt_mmio_block::device
Date: Fri, 16 Feb 2024 07:53:20 +0100
Message-ID: <20240216065326.6910-16-jirislaby@kernel.org>
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

gvt_mmio_block::device is not used since commit e0f74ed4634d (i915/gvt:
Separate the MMIO tracking table from GVT-g). Drop it.

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
index b8b8ffe4d566..2c95aeef4e41 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -253,7 +253,6 @@ struct intel_gvt_fence {
 
 /* Special MMIO blocks. */
 struct gvt_mmio_block {
-	unsigned int device;
 	i915_reg_t   offset;
 	unsigned int size;
 	gvt_mmio_func read;
-- 
2.43.1

