Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCE4195215
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 08:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA026E9B2;
	Fri, 27 Mar 2020 07:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742B16E9AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 07:33:03 +0000 (UTC)
IronPort-SDR: 69S/mSy06/LkfQrtT385iAjDMbBN4VFRLT86iaVhUQXYLllD9tBR9ouYhm3akek+DgOLLpwUfa
 BCbb6mS4PVSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 00:33:03 -0700
IronPort-SDR: yQKFviilZmU94c2HVKUHwaXiD8gfaLw7gvckc2Z5gh247eGIM4BJlzKuaP8PryB78C89XfaJS6
 kAe96uPhLoNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="251061011"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2020 00:33:02 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 13:01:36 +0530
Message-Id: <20200327073140.11568-4-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327073140.11568-1-vipin.anand@intel.com>
References: <20200327073140.11568-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/7] drm/i915/display: Attach HDR property
 for capable Gen9 devices
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

From: Uma Shankar <uma.shankar@intel.com>

Attach HDR property for Gen9 devices with MCA LSPCON
chips.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Vipin Anand <vipin.anand@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index c5ddabf903d6..4d8027493f2c 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -628,6 +628,11 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
 		return false;
 	}
 
+	if (lspcon->vendor == LSPCON_VENDOR_MCA && lspcon->hdr_supported)
+		drm_object_attach_property(&connector->base,
+					   connector->dev->mode_config.hdr_output_metadata_property,
+					   0);
+
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	DRM_DEBUG_KMS("Success: LSPCON init\n");
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
