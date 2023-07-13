Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F109751F00
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 12:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282FE10E687;
	Thu, 13 Jul 2023 10:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1632910E683;
 Thu, 13 Jul 2023 10:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689244676; x=1720780676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gUfpFpc/luPElWH1FzjfFkFIB8EVuqvB5v+u0sS1Z/A=;
 b=JD6BtTV5Op1iRX48A+i+jPxo8YdfW8yDmKowtj6vO7YixEayxdtM6soJ
 QjYi/GW5/PguL+diItreVzoxgn1QGpa6kZhf0U4qorNmKhfYoupjBxS2j
 0F8rcrMxMgVV3Kk6ON8r2o9cCCY74UurakouZg/CE9FFK8gdzGfcIjXaR
 9/wrA/eM5UHC65bwZy8q7qyzemN6gErU6zkaDVUuIrxw4i7V5VDPrGP54
 cfGhVSlPQ7hlU+iRhkIVNGGq/fgNUQZ6hjSDzc4MC0pDa0cEZ+ESrjJa8
 oHwbzTQC8T4Z6vTune0pbkSsGe6vzMNmmk4NHru7m26ZgPoxyyMoR9TkU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="428897603"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="428897603"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 03:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="895965373"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="895965373"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 03:37:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 13 Jul 2023 16:03:35 +0530
Message-Id: <20230713103346.1163315-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230713103346.1163315-1-ankit.k.nautiyal@intel.com>
References: <20230713103346.1163315-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/i915/dp: Remove extra logs for
 printing DSC info
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

DSC compressed bpp and slice counts are already getting printed at the
end of dsc compute config. Remove extra logs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c1fd448d80e1..23ede846202c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1780,9 +1780,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 								output_bpp);
 		}
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
-		drm_dbg_kms(&dev_priv->drm, "DSC: compressed bpp %d slice count %d\n",
-			    pipe_config->dsc.compressed_bpp,
-			    pipe_config->dsc.slice_count);
 	}
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-- 
2.40.1

