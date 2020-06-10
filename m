Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664C31F5B65
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 20:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78586E835;
	Wed, 10 Jun 2020 18:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B426E834
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 18:42:37 +0000 (UTC)
IronPort-SDR: c4dQ2WR5oqKUD1IghvijB/3Ynh2EC0xfizY2Xp0P3kKMoxRuJ+8AsDcxaeSo0SpCXcACjVGYbn
 ssX6s8lOyjjA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:42:37 -0700
IronPort-SDR: UjOqfLjbgDbn4b7wtCGXBwD53LhWdUUHInz7w+3c8RCHeQfdXvdf5sVkdan+YpHcm/MuxR/pJe
 Izz/tCqSIr4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="473530153"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2020 11:42:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 00:42:27 +0530
Message-Id: <20200610191232.11620-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200610191232.11620-1-uma.shankar@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 3/8] drm/i915/display: Attach HDR property for
 capable Gen9 devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Attach HDR property for Gen9 devices with MCA LSPCON
chips.

v2: Cleaned HDR property attachment logic based on capability
as per Jani Nikula's suggestion.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 95d29c379076..7113c2efdab4 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -626,6 +626,11 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
 
 	lspcon_detect_hdr_capability(lspcon);
 
+	if (lspcon->hdr_supported)
+		drm_object_attach_property(&connector->base,
+					   connector->dev->mode_config.hdr_output_metadata_property,
+					   0);
+
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	DRM_DEBUG_KMS("Success: LSPCON init\n");
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
