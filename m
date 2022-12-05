Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9C1642365
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFC310E0FF;
	Mon,  5 Dec 2022 07:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C8410E123
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670224021; x=1701760021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ycdxeGr5NJPLx7VypCTXhWQj76nXK2YHjw85UFASsLc=;
 b=P3soJtahXAGmWqCTPFZ0sfB89P7Lnxj29cf3H/fOOmKb11fTpkIrqcKV
 AWuM09K4KSR609j/Hqt81jrFHT4sjzNBpVpa51OrCzB4tDr9ScqYCUWVw
 x0oAqUBmDhUZsG4TWRhmYBD/gczhyMrKDXfqYMCdg0O+czHWVcm2MywUT
 TgVBamj6isNblMv7BrRpY23/PM1NkCBR9vazqoYLN8wZoZQdRSt+JD8hw
 RwU7TM+R+rGoaim4rWkWr9/nkcElubkPRDYbNm0tx5G0RPrmIGi7o5wFt
 T/8IZDERgonFM2k/ulBPKl/OUUzpc1IQdHUvjSJhZAk3j0dKUcQuCGqmW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="317423674"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="317423674"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="676489358"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="676489358"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 04 Dec 2022 23:06:58 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 12:35:40 +0530
Message-Id: <20221205070543.2510309-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221205070543.2510309-1-suraj.kandpal@intel.com>
References: <20221205070543.2510309-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: MTL has one GSC CS on the
 media GT
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Now that we have the GSC FW support code as a user to the GSC CS, we
can add the relevant flag to the engine mask. Note that the engine will
still be disabled until we define the GSC FW binary file.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 414b4bfd514b..3f803c1280c0 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1125,7 +1125,7 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
 		.type = GT_MEDIA,
 		.name = "Standalone Media GT",
 		.gsi_offset = MTL_MEDIA_GSI_BASE,
-		.engine_mask = BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
+		.engine_mask = BIT(VECS0) | BIT(VCS0) | BIT(VCS2) | BIT(GSC0),
 	},
 	{}
 };
-- 
2.25.1

