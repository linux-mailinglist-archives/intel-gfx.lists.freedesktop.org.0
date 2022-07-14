Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD00E574CD4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 14:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0958411289A;
	Thu, 14 Jul 2022 12:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE5B71128B3;
 Thu, 14 Jul 2022 12:06:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3CF3961E52;
 Thu, 14 Jul 2022 12:06:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81254C341CF;
 Thu, 14 Jul 2022 12:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657800390;
 bh=gcA9dOS6rwcNmQfl8nke3c+qO7FUQU/QyXIVIH9SjiU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sN3mwrVk2ZJrJEs3O1JYU5A0HKKO1m+I1ALTOeFIpI9xLW7iNMJvgiL1qE5gtXSOE
 PFbF+sg2RdBlhUjNifw+V2P63CgH7qMkuCBRuttgTPhQ7IUyY06ZZzQ1Hc3Vk/TUtr
 dkbnkurk1dIo15btmQpZl/RTAq/3j+MFnWh4ibBVShlUFwVrIOU89jQ5Utp/RCV5Ge
 3y1WMRvA+8mbi+svaf/TywgAfS9Zpf2SODKaD8Lf5Z/YLjWzYNpjLEl8yu9AmHDS1Q
 ATz2g9msqPS1ON0e733T+vKGgfFXAeqR4PD6hdQW7/IH97VZw3Pa7jUIucf0taJXKv
 iyp5iHIddixLA==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oBxbw-0059sw-0B;
 Thu, 14 Jul 2022 13:06:28 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Thu, 14 Jul 2022 13:06:15 +0100
Message-Id: <de22e315b5a9041610a6659616cdac50273e1b01.1657800199.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657800199.git.mchehab@kernel.org>
References: <cover.1657800199.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/21] drm/i915/guc: use kernel-doc for enum
 intel_guc_tlb_inval_mode
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Transform the comments for intel_guc_tlb_inval_mode into a
kernel-doc markup.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/21] at: https://lore.kernel.org/all/cover.1657800199.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 2e39d8df4c82..14e35a2f8306 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -190,15 +190,18 @@ enum intel_guc_tlb_invalidation_type {
 	INTEL_GUC_TLB_INVAL_GUC = 0x3,
 };
 
-/*
- * 0: Heavy mode of Invalidation:
+/**
+ * enum intel_guc_tlb_inval_mode - define the mode for TLB cache invlidation
+ *
+ * @INTEL_GUC_TLB_INVAL_MODE_HEAVY: Heavy Invalidation Mode.
  * The pipeline of the engine(s) for which the invalidation is targeted to is
  * blocked, and all the in-flight transactions are guaranteed to be Globally
- * Observed before completing the TLB invalidation
- * 1: Lite mode of Invalidation:
+ * Observed before completing the TLB invalidation.
+ * @INTEL_GUC_TLB_INVAL_MODE_LITE: Light Invalidation Mode.
  * TLBs of the targeted engine(s) are immediately invalidated.
  * In-flight transactions are NOT guaranteed to be Globally Observed before
  * completing TLB invalidation.
+ *
  * Light Invalidation Mode is to be used only when
  * it can be guaranteed (by SW) that the address translations remain invariant
  * for the in-flight transactions across the TLB invalidation. In other words,
-- 
2.36.1

