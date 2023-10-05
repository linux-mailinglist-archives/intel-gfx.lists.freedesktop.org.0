Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E11C07B9CB0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 13:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D1710E075;
	Thu,  5 Oct 2023 11:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C6310E075
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 11:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696504452; x=1728040452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t3mqCiu7rgk7sor5gNQ5Ao2t9CxBkLbd5TZuZsRQWu4=;
 b=TPnL8EftXI/V/4lvpbolYglNsRITHWfyyh6lS1mU4LCVa1Zzlue7xhTC
 nfsseiFmPN3j77+yFOn7AODaaA5llewA2nYewwePtmiVyVLOA+9vDgCQJ
 ijSHEdDBEC73/L/RKugHWygGwHuMu4gVYTcrkV7oDv54+bzrZeU1LkJKL
 jzL8MK7uAh3eaSSW0pGgRzLMieGyhoY00QWePJTp9k5tHDApK7FBd+w7M
 +fExH97CghiHdwBQX4DnYsrB/7IfwNZm5VDsdZSutaayShOfMKIDIYk/1
 RubztqQu4stMQFtxjv/VqbKzpYc6Z1YcU0R7KO6iiaH9G1Fxd/hWYdEIg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="469739556"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="469739556"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 04:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="745414502"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="745414502"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 05 Oct 2023 04:14:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 16:40:41 +0530
Message-Id: <20231005111040.578997-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231005064257.570671-1-suraj.kandpal@intel.com>
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ddi: Remove redundant intel_connector
 NULL check
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

Remove redundant intel_connector NULL check. Having it here just
creates further confusion and also the variable already gets
dereferenced before the aforementioned NULL check

Fixes: dba14b27dd3c ("drm/i915: Reinitialize sink scrambling/TMDS clock ratio on HPD")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4668de45d6fe..9151d5add960 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4333,7 +4333,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	u8 config;
 	int ret;
 
-	if (!connector || connector->base.status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return 0;
 
 	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
-- 
2.25.1

