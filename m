Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBFA14D2D6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 23:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C62A89BF3;
	Wed, 29 Jan 2020 22:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CFE89BF3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 22:10:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 14:10:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="428109072"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2020 14:10:17 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jan 2020 14:10:16 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 29 Jan 2020 14:05:40 -0800
Message-ID: <20200129220540.7608-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/ddi: Ensure that the value assigned to
 ddi_clk_needed is a bool
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, the value assigned to the bool variable ddi_clk_needed
is a pointer -- which appears to have happened inadvertently. Therefore,
add a "!!" before the expression on the right to ensure that it results
in a bool.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c96f629cddc3..6df485289bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3109,7 +3109,7 @@ void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	}
 
 	port_mask = BIT(encoder->port);
-	ddi_clk_needed = encoder->base.crtc;
+	ddi_clk_needed = !!encoder->base.crtc;
 
 	if (encoder->type == INTEL_OUTPUT_DSI) {
 		struct intel_encoder *other_encoder;
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
