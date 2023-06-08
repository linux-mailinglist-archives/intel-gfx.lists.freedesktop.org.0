Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C02E728979
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35CF10E614;
	Thu,  8 Jun 2023 20:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1BA10E61C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256270; x=1717792270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F5n0hkwo//otJuxkMrr6HBiDRcjfvUg3gusiRZtqnBI=;
 b=X7v05ZJhWhTeLLMyV19kQEFMUNQ9xiejlQsoFkyeSfT1tEaYBgy5k6aM
 0Wct1N+6+HCElT78RDDHTz2KkGiACdyH/HNu4DMQKWJHbZxgmsAR6D6YI
 e+5Ndegx1AMrCORcIXNEmdQm9RUUTJXpaAj2/p+lb+ghX8Iv4btr/8U5j
 2RU+uKVbF0A77bgw3IRcxaTP3leuV3F3QPYe9sCIU3tv3v6DF6J/8dbE4
 Bu+KPAnRLdN2iYUsmk731l2MfORFfg7HkV+8A2KsbQfXnl0eAnSYkIZGQ
 HTEHpJKsDfoplVeaj8j7dJFFBf8szVkfQ83JEO8Q/uRyHw1BPbKkeP3FN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012639"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012639"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100666"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100666"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:47 +0300
Message-Id: <20230608203057.23759-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/13] drm/i915/dsi: Print the VBT MIPI
 sequence delay duration
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Help out debugging things by printing out how long the VBT
delay sequence is supposed to wait.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index c7935ea498c4..e56ec3f2d84a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -235,7 +235,7 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
 	u32 delay = *((const u32 *) data);
 
-	drm_dbg_kms(&i915->drm, "\n");
+	drm_dbg_kms(&i915->drm, "%d usecs\n", delay);
 
 	usleep_range(delay, delay + 10);
 	data += 4;
-- 
2.39.3

