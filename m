Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8241C574CE9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 14:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD981129AE;
	Thu, 14 Jul 2022 12:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3AA112921;
 Thu, 14 Jul 2022 12:06:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CBB3A61E96;
 Thu, 14 Jul 2022 12:06:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0B07C341DF;
 Thu, 14 Jul 2022 12:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657800390;
 bh=HQ757VXRDIBLfr8i1wjw+P/iX240DqJQqnlcI4nhgKY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YpshvzwA5HQ+kz50KlsBr04Sfu518nEUJNjziXiAOag4PJ9E91bzU2Tk7Gth3p6q8
 Hh07dHXttmYBjbjF/BDjZOVO2Ji3tAx+XoNC6kSDjHjzlwIehfnEedgjhvXcnJs3bF
 TlyqpRaqv+d0kGvAoNuwl7QFHJayJ+2bKpME/s0DeTQIRF1vD9RuRgZHrg87FGWQEU
 w0iCGwVqrvxwhl/dO032FlLoDdWhUVseuTT7eEVulzv5vXHQDvZE+I1DsqrLDVSCpu
 apBUT0Hq2f2P95NETGLAytLfdKnQqHU/bixOjg7sbR/u0b4dKZoKW+f9d7M00d6aSw
 MPlXVxu6CNX8Q==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oBxbw-0059tU-7T;
 Thu, 14 Jul 2022 13:06:28 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Thu, 14 Jul 2022 13:06:25 +0100
Message-Id: <a1198122be01aecd61fce6b76f18fcef6aaa9ec3.1657800199.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657800199.git.mchehab@kernel.org>
References: <cover.1657800199.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/21] drm/i915/guc: describe enum
 intel_guc_tlb_invalidation_type
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
Cc: Borislav Petkov <bp@suse.de>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a description for intel_guc_tlb_invalidation_type enum.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/21] at: https://lore.kernel.org/all/cover.1657800199.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 5c019856a269..e97065c62d28 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -187,6 +187,18 @@ enum intel_guc_state_capture_event_status {
 /* Flush PPC or SMRO caches along with TLB invalidation request */
 #define INTEL_GUC_TLB_INVAL_FLUSH_CACHE (1 << 31)
 
+/**
+ * enum intel_guc_tlb_invalidation_type - type of TLB cache invalidation
+ *
+ * @INTEL_GUC_TLB_INVAL_FULL:
+ *	Global TLB invalidation
+ * @INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE:
+ *	Page-selective TLB cache invalidation
+ * @INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE_CTX:
+ *	Context-selective TLB cache invalidation
+ * @INTEL_GUC_TLB_INVAL_GUC:
+ *	Invalidate TLB on GuC itself
+ */
 enum intel_guc_tlb_invalidation_type {
 	INTEL_GUC_TLB_INVAL_FULL = 0x0,
 	INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE = 0x1,
-- 
2.36.1

