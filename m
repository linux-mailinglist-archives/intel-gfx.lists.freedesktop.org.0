Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D009F0EDD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 15:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF0210F03C;
	Fri, 13 Dec 2024 14:16:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJgNw9s6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CF110F036;
 Fri, 13 Dec 2024 14:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734099390; x=1765635390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZB42c8ARdo0vQZjzWOIypJ6LS1HPbp9P/zLADFJ1G7w=;
 b=jJgNw9s6qpa22wI62z3ib9J2aqzd6SG0x6lRMpCwpELFtzCJRCWwQz14
 uTcSp91hvo0XhmaSDUoVeD8rAe5p+T0/zm4JtncPqB0Vmnf7TZmbNFOp4
 qJf8a7UbQd+eYA9HGY8l5NP5XIkh54YLyNPjitHWr3iCaijvB9feLL1qx
 osOlDoDJlWF0gN8CrOzY/28VeAZ1Tuy4zfA8dicsZUHJt4BgnbK5drBB5
 lrRg9jqz8yR04z3Hb9hb/c+KsaZOysFjxjbtpGueiie4dNQNMT12G9AAM
 DwhO+VDxaWQcVQztkXpXyhhih/TXfiN+WskAKngg79XFPtHH3P44gW98M Q==;
X-CSE-ConnectionGUID: rGJj+eazSUOvcBbp1CPGPg==
X-CSE-MsgGUID: ZHx7BGfYQQuq9beHCI4zgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34689425"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34689425"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:30 -0800
X-CSE-ConnectionGUID: ji0pB0TtSMeWJ+R6faXK2A==
X-CSE-MsgGUID: xTU8V2r+R9ibdekJOmk/tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133916265"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 4/6] drm/i915/ddi: gracefully handle errors from
 intel_ddi_init_hdmi_connector()
Date: Fri, 13 Dec 2024 16:15:56 +0200
Message-Id: <e6f582986722bf3187ddceb8e31dfd9fa5fd1d66.1734099220.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734099220.git.jani.nikula@intel.com>
References: <cover.1734099220.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Errors from intel_ddi_init_hdmi_connector() can just mean "there's no
HDMI" while we'll still want to continue with DP only. Handle the errors
gracefully, but don't propagate. Clear the hdmi_reg which is used as a
proxy to indicate the HDMI is initialized.

v2: Gracefully handle but do not propagate

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 21277cf8afef..2c4308506435 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4757,7 +4757,16 @@ static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 		return -ENOMEM;
 
 	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
-	intel_hdmi_init_connector(dig_port, connector);
+
+	if (!intel_hdmi_init_connector(dig_port, connector)) {
+		/*
+		 * HDMI connector init failures may just mean conflicting DDC
+		 * pins or not having enough lanes. Handle them gracefully, but
+		 * don't fail the entire DDI init.
+		 */
+		dig_port->hdmi.hdmi_reg = INVALID_MMIO_REG;
+		kfree(connector);
+	}
 
 	return 0;
 }
-- 
2.39.5

