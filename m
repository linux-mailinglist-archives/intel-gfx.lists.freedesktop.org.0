Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CDB1950E7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 07:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7D76E981;
	Fri, 27 Mar 2020 06:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459046E97F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 06:12:34 +0000 (UTC)
IronPort-SDR: dYxPwfIJSDKpMguYhXlyNUk73EmwAX5NThBNNsy+8+NxpzkEO0/GhLra5P8fZvLC4EbWrqhGGR
 qPqnoY3JVguQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 23:12:34 -0700
IronPort-SDR: wdJILqoEYVgc2CylNnVY0e/dOzbH2icZKpzXv4m0+AzgPpjhZZdZYOkhUL06o5nC2ALWjmfhXH
 I0rxC9qX3ayw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="420987141"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 23:12:33 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:41:06 +0530
Message-Id: <20200327061110.17371-4-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327061110.17371-1-vipin.anand@intel.com>
References: <20200327061110.17371-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915/display: Attach HDR property
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
