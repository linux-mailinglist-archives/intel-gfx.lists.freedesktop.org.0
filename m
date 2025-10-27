Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84352C0D8F4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 13:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E711B10E46D;
	Mon, 27 Oct 2025 12:35:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hh25OizQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD62310E469;
 Mon, 27 Oct 2025 12:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761568521; x=1793104521;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2Tvl/0FS2j421J5vEf7qM8xRMeXASXWKqQA3w5itm4Q=;
 b=Hh25OizQ0BNROuSlmPg7LeyvesnAaL+rIpbv4gl9MsCtw7hc7Aa6RblB
 SlVOJb/yQXwLFXL3LLyfA1RBKDM5L9S72MytvpbEaI1xgM7lo9hnlD1ad
 zhoCWYqCRZTMvq//HR8A4ZeV6iHozI9JxzyphelxTG8DewJXJ3Evq+7ZL
 BkGp1wwI+XnHrbq8Mb3bVrt7xoUEXqnNGyQjnEhPgVQDTXlvnO3WkBEGn
 5Z+fGUcWMegJ0jnTVQ6AdNA0zmwkj+0ucMxx/aaHc9/TSNA1eivk80hRq
 73A+C0ASj9d7wk+pajnFlAmSUauUPnPvZTgtm+B8Su+JgKBctdg9Q9DxJ w==;
X-CSE-ConnectionGUID: /9jv0hC5TmWEM3Mucoqpww==
X-CSE-MsgGUID: OblVV5ujReKYMXuZrcC4eA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81070208"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="81070208"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 05:35:20 -0700
X-CSE-ConnectionGUID: /c9taISxTx2Yy+Pn8FW+QQ==
X-CSE-MsgGUID: XyfOafHKSSSLl5Bj8PgDpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="222240949"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP; 27 Oct 2025 05:35:19 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RFC PATCH] i915/display/intel_ddi: Reduce severity of failed FEC
 enabling
Date: Mon, 27 Oct 2025 13:35:17 +0100
Message-ID: <20251027123517.1770256-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

During some IGT tests (e.g. xe_pm@s2idle-exec-after, xe_pm@s2idle-mocs)
sink disconnects across suspend/resume, reconnecting later during resume
at some point. Hence during resume, where the driver is restoring the
pre-suspend mode, all the AUX transfers to the sink are expected to
fail.

Switch error message to KMS debug message of failed FEC enabling.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..6df927befe81 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2440,7 +2440,7 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 			return;
 	}
 
-	drm_err(display->drm, "Failed to enable FEC after retries\n");
+	drm_dbg_kms(display->drm, "Failed to enable FEC after retries\n");
 }
 
 static void intel_ddi_disable_fec(struct intel_encoder *encoder,
-- 
2.45.2

