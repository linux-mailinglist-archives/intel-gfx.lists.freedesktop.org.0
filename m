Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248649963A2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 10:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6AC210E68F;
	Wed,  9 Oct 2024 08:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NWNUFrbN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F0A10E152;
 Wed,  9 Oct 2024 08:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728463742; x=1759999742;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Av+WN3bCqZb2AXLXh9fvQaP0o32oAeDJt3QQcdLFvZw=;
 b=NWNUFrbNCrNIFIBwzOYwViPfu8JoZXPpjmcSO9e8YINqtsPjm+hA6icw
 P0+YRyMGcAwx5h88+iGnFp7XSODJPxszN5yKeismOQgft7mrkMICg/LD6
 4+YmQ9sLq2aVzNN9ucIE9GJ9BdlKJVTdykJ/B27nI6LW+2E9yZ0Wi3I4k
 sQqUyg3Qku1ZJkRwGpU9ao5zrgEmGIW/qJhQx2iQQsb2M2Pzb69lpdmaI
 C+3b8kQIW/p1UpJiAHKfRMbSI4LCvBYqIp04yguKjZr6aes4czBUQrlJX
 cnHTWPrLWglUqBKcu96OCEPs/GLslvUXyut7/pOhnJd5FRVESXmDHRWFN A==;
X-CSE-ConnectionGUID: ZrrSHZuOR9+EvKGs/Wc0xw==
X-CSE-MsgGUID: Vfh5pvGQSVCPIPKrtdIsoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27228505"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27228505"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 01:49:01 -0700
X-CSE-ConnectionGUID: /FRaOyfMTlCBiLNPLUgGng==
X-CSE-MsgGUID: RAnDHBSLSAqsVtyMxx+LYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76610628"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 09 Oct 2024 01:48:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/cdclk: Check cdclk value before division
Date: Wed,  9 Oct 2024 14:16:34 +0530
Message-ID: <20241009084634.1801800-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Check cdclk value to avoid a divide by zero error. Since
bxt_cdclk_init_hw has cdclk can end up being 0 and then
we have a call to bxt_set_cdclk where we may end up dividing
this value by 0.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fa1c2012b10c..a5acc70fb87c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1921,7 +1921,7 @@ static u32 xe2lpd_mdclk_source_sel(struct intel_display *display)
 int intel_mdclk_cdclk_ratio(struct intel_display *display,
 			    const struct intel_cdclk_config *cdclk_config)
 {
-	if (mdclk_source_is_cdclk_pll(display))
+	if (mdclk_source_is_cdclk_pll(display) && cdclk_config->cdclk)
 		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
 
 	/* Otherwise, source for MDCLK is CD2XCLK. */
-- 
2.43.2

