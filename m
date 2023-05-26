Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF084712AC4
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5707A10E817;
	Fri, 26 May 2023 16:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5080789954
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119105; x=1716655105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f9UTPUFsAOqnNgCnuvvwy1sFp1/natX5HKc1HOzVMYY=;
 b=g0CVKwxJmaEhcM/EpedCOB+aBC6qs+g0GgtXlO5uXRQ1QYx6AvNubLTb
 QRidJ25n7dUdzJlAQb/MphKXSa7FFdMhXbF9QQOd0Mrn6vkit6dqNzvbl
 jtvlzBco1TO52Kf5sVDh0Mule1TYwBhzVPUIc6+/SS8SDq7PIJufWBWPp
 8zzRw1PhjXbrBxE5kNVBgCFqX/l8h1FaD3dKfxDWtlUMegxnWuKOnnIwj
 tH/+uKuAW1vBLHMmWITacRCPszp5h8cXI39kJ+7imi1CzsgJLlDXFq/ce
 cPeTiUPgntoVUeIPW6x6CsiTqYHb8n98SoSqtemR4OzDw4RJGNiUqCe3U g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="417730919"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="417730919"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682770207"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682770207"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:56 +0300
Message-Id: <a1a167a4ff18b19d10769d83670e414586c16956.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/dsi: drop unused but set
 variable data
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index cd90a30e04d8..aecd0142ce40 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -136,7 +136,7 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	enum port port = intel_dsi_host->port;
 	struct mipi_dsi_packet packet;
 	ssize_t ret;
-	const u8 *header, *data;
+	const u8 *header;
 	i915_reg_t data_reg, ctrl_reg;
 	u32 data_mask, ctrl_mask;
 
@@ -145,7 +145,6 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 		return ret;
 
 	header = packet.header;
-	data = packet.payload;
 
 	if (msg->flags & MIPI_DSI_MSG_USE_LPM) {
 		data_reg = MIPI_LP_GEN_DATA(port);
-- 
2.39.2

