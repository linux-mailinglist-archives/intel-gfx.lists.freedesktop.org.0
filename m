Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA1C857627
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1E810E3DB;
	Fri, 16 Feb 2024 06:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="u7Qk1Sx4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4072C10E3DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B2BBE61F09;
 Fri, 16 Feb 2024 06:53:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F02DC433A6;
 Fri, 16 Feb 2024 06:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066428;
 bh=qkEq3E8Km4jpaGRnx1Vm2eeB5z7Na+ns2sz54n6h9uI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u7Qk1Sx4GA+PGmFjQyCFB2rBOZ8P5QWLyc9Jh5KlH9OocfGntKGl75SuUz2Bi+9J4
 3I5IfLJuVP+ogCoPL4n9b8H/U3Kr9ev+t5BHRElOVCFHW9FERbXvNH/eVG0iuhqURy
 Z+OMoy66+JIxkK9LzplSveGRMzqKLuPd4L3SwrGP46ODY1hm71WVuRIspzO50219nx
 N/DizssclSDGn1Sup9OZ4A0csADlHybg9vVfZ60a018fmhWDovvO8GvF71UcODibIu
 6FBKW9V5mCgdrU19Lzl0/nnqd/D90L6uytIClTUUfNpDReTZSpSDuGpO5Zgzqh5+Gn
 EMDkYkElKaqqw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/21] drm/i915: remove intel_gvt_mmio_info::{device,
 addr_range}
Date: Fri, 16 Feb 2024 07:53:10 +0100
Message-ID: <20240216065326.6910-6-jirislaby@kernel.org>
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

intel_gvt_mmio_info::device is not used since commit e0f74ed4634d
(i915/gvt: Separate the MMIO tracking table from GVT-g) and ::addr_range
was never used since its addition in commit 12d14cc43b34 (drm/i915/gvt:
Introduce a framework for tracking HW registers.). Drop them.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/mmio.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/mmio.h b/drivers/gpu/drm/i915/gvt/mmio.h
index bba154e38705..32ebacb078e8 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.h
+++ b/drivers/gpu/drm/i915/gvt/mmio.h
@@ -62,10 +62,8 @@ typedef int (*gvt_mmio_func)(struct intel_vgpu *, unsigned int, void *,
 struct intel_gvt_mmio_info {
 	u32 offset;
 	u64 ro_mask;
-	u32 device;
 	gvt_mmio_func read;
 	gvt_mmio_func write;
-	u32 addr_range;
 	struct hlist_node node;
 };
 
-- 
2.43.1

