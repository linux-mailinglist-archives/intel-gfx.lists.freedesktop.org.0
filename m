Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC4C728983
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC72F10E613;
	Thu,  8 Jun 2023 20:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82ACB10E087
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256324; x=1717792324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6BpRiXNLd82dyGxZ3hjTOPPz7fuJo/kE4qqGNpwHYpU=;
 b=CBZBI+e8JF7huCmc2CqaS6PVnMBprqF9cI836uebbHRD1LU2qUZ6BMGD
 DJFS05BGyWUyTfPxhE6mlognlC5mhb6TUQHO+lYtgXc3KqxoOc1z3vZ3i
 +DbtpUUnXKd1m/hUQ7vFCQSavHrdheXZ892vz/nH4H8gxh3DxkpAy8wa/
 KkmuMri3UufXDD/BMeKrT+0q3ScVOojUTNZIA2joC08U7L4vJ/KGD24+b
 Btbk8vs0pqOFS64Gs7TAW6AlSVK+MSNPWBIAcxDI8QMJxu5bjat21wLS7
 ssb7Q0Y6YksRlYNXpIRoMHNX7K5Zc7FxLmaHHcJDLrn9I4PQ8U+9rGQk6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012738"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012738"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100857"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100857"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:54 +0300
Message-Id: <20230608203057.23759-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/13] drm/i915/dsi: Respect power_off_delay
 on icl+
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

icl+ DSI isn't respecting the panel power_off_delay. Remedy that.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ac5f30fc51bb..669637b61789 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1292,6 +1292,8 @@ static void gen11_dsi_powerdown_panel(struct intel_encoder *encoder)
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_OFF);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
+
+	msleep(intel_dsi->panel_off_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
-- 
2.39.3

