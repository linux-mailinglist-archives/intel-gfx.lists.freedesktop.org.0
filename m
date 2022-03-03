Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F13F4CC919
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 23:35:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2549010E38E;
	Thu,  3 Mar 2022 22:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8B710E35F;
 Thu,  3 Mar 2022 22:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646346910; x=1677882910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NVP29WBTDKcjiuhOgTg+Kjsy8yhnY7PeQp0LpmSQMp8=;
 b=grwn44z8oTm2UUNWqgCPsNZr2j+YazVXRj8h/Mcf/TnwmNQIXqYv9KiZ
 px/Z8i1qPitNqB+oqfMZYRodfUU6xNeTa/pudefdbiqPFoWyhCIoJdNIz
 xTxf1rd1ri7p0/x3V9yoc2Fa6ta1UmvI/KR6f6lzyqUDD+M2E42NNkjie
 OjY2DRjFBKt96Zy4HxGbFqYNQJw9bw7hyLCO46Ur9bzYC3cIz5T9W0bQn
 mwxfxu7FjtNjjpOsavaIZTqdQfH9T3yTSB5CfGOXYeou7JlAO+YQ9PYGO
 +X3QfDDOINvLhkh2RFC3p6gI48fY9/Wa2nm8lXD9bPQ9zSf5ThekTMgPY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="254025408"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="254025408"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 14:35:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="536043492"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 14:35:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 14:34:35 -0800
Message-Id: <20220303223435.2793124-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303223435.2793124-1-matthew.d.roper@intel.com>
References: <20220303223435.2793124-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add RCS mask to GuC ADS params
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

From: Stuart Summers <stuart.summers@intel.com>

If RCS is not enumerated, GuC will return invalid parameters.
Make sure we do not send RCS supported when we have not enumerated
it.

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 32c2053f2f08..acc4a3766dc1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -433,7 +433,7 @@ static void guc_mmio_reg_state_init(struct intel_guc *guc)
 static void fill_engine_enable_masks(struct intel_gt *gt,
 				     struct iosys_map *info_map)
 {
-	info_map_write(info_map, engine_enabled_masks[GUC_RENDER_CLASS], 1);
+	info_map_write(info_map, engine_enabled_masks[GUC_RENDER_CLASS], RCS_MASK(gt));
 	info_map_write(info_map, engine_enabled_masks[GUC_COMPUTE_CLASS], CCS_MASK(gt));
 	info_map_write(info_map, engine_enabled_masks[GUC_BLITTER_CLASS], 1);
 	info_map_write(info_map, engine_enabled_masks[GUC_VIDEO_CLASS], VDBOX_MASK(gt));
-- 
2.34.1

