Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9483C49565A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 23:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BA610E8C9;
	Thu, 20 Jan 2022 22:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7294F10E87B;
 Thu, 20 Jan 2022 22:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642717697; x=1674253697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j1QT1B3dQXhCr8qm4/gURZrdMqKWEKawmn329qVxmOI=;
 b=KICq5EF0BTDJEXILYPcW8Mxp5kz9NhNKS2dVeEQeCyT8DchxJ9H5RPcd
 EudZt/7ZMUAAtqhv486Fjau6OFUfqF205MAAFa3GTxtEbB1b+OZhdlhEn
 P1faLzbL1GxxP2ZmkLiK11TzHgc29m96ZPR2dD03TA9O/OdyuFmNZzqoV
 4Vx/OttpxJQSi/ORnhR3tnaRk1uiG8G8DDw5fhJga9AyF680j+KQVF0eN
 XkcCU2NPMKYKT62Y4FD4Ia7RB8IwH1ebPmX+roLI7cSxClsEZINKz2pRv
 P5uK7GjOs/aLnmX7tLLblVF3HkfBH4FNcAD70OzJ10vqXFv4VczHr1OQ1 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="331841614"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="331841614"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:27:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="493618615"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:27:09 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 14:24:36 -0800
Message-Id: <20220120222436.3449778-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Update guc shim control
 programming on newer platforms
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting from xehpsdv, bit 0 of of the GuC shim control register has
been repurposed, while bit 2 is now reserved, so we need to avoid
setting those for their old meaning on newer platforms.

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index f773e7f35bc1a..40f7d4779c9ec 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -15,13 +15,15 @@
 
 static void guc_prepare_xfer(struct intel_uncore *uncore)
 {
-	u32 shim_flags = GUC_DISABLE_SRAM_INIT_TO_ZEROES |
-			 GUC_ENABLE_READ_CACHE_LOGIC |
-			 GUC_ENABLE_MIA_CACHING |
+	u32 shim_flags = GUC_ENABLE_READ_CACHE_LOGIC |
 			 GUC_ENABLE_READ_CACHE_FOR_SRAM_DATA |
 			 GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA |
 			 GUC_ENABLE_MIA_CLOCK_GATING;
 
+	if (GRAPHICS_VER_FULL(uncore->i915) < IP_VER(12, 50))
+		shim_flags |= GUC_DISABLE_SRAM_INIT_TO_ZEROES |
+			      GUC_ENABLE_MIA_CACHING;
+
 	/* Must program this register before loading the ucode with DMA */
 	intel_uncore_write(uncore, GUC_SHIM_CONTROL, shim_flags);
 
-- 
2.25.1

