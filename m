Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC6E2D99CB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 15:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1116F6E213;
	Mon, 14 Dec 2020 14:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3F16E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 14:24:25 +0000 (UTC)
IronPort-SDR: /I1PNuWwCAUgWPg12+v267DU2hv+UgAQSbZZd9/F4/DV41rvRvTuBp2jrlAx6gH+uE3gsubIBJ
 ZRlw3qeIp01A==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="193071980"
X-IronPort-AV: E=Sophos;i="5.78,419,1599548400"; d="scan'208";a="193071980"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 06:24:12 -0800
IronPort-SDR: niIer5Cw+Q7vFfsLqB2OwkBITR4IG1YfoX1nnU/QMzmMuAQguWv8M5NY/vQM6mFYkDH7hyQgnr
 UaPFKs/kEhEQ==
X-IronPort-AV: E=Sophos;i="5.78,419,1599548400"; d="scan'208";a="556021067"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 06:24:10 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 19:40:32 +0530
Message-Id: <20201214141032.13431-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201211134244.14588-5-anshuman.gupta@intel.com>
References: <20201211134244.14588-5-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 04/19] drm/i915/hdcp: No HDCP when encoder
 is't initialized
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

There can be situation when DP MST connector is created without
mst modeset being done, in those cases connector->encoder will be
NULL. MST connector->encoder initializes after modeset.
Don't enable HDCP in such cases to prevent any crash.

Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Juston Li <juston.li@intel.com>
Tested-by: Karthik B S <karthik.b.s@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
v2:
Added missing RB of Ram.

 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b9d8825e2bb1..7d63e9495956 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2106,6 +2106,12 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	if (!hdcp->shim)
 		return -ENOENT;
 
+	if (!connector->encoder) {
+		drm_err(&dev_priv->drm, "[%s:%d] encoder is not initialized\n",
+			connector->base.name, connector->base.base.id);
+		return -ENODEV;
+	}
+
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp_mutex);
 	drm_WARN_ON(&dev_priv->drm,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
