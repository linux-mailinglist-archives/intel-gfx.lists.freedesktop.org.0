Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E496D4FFB
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 20:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E8A10E551;
	Mon,  3 Apr 2023 18:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE1110E544;
 Mon,  3 Apr 2023 18:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680545198; x=1712081198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kfVgsl0sH/QBcjbYimquAEwJBTDIavRZJjfHxjkzRic=;
 b=hvjRKuqsvt8BptcwxwrwaGIYa/MPQigwhPIGbtChvsTXd2txTyt1km2g
 +8KRbBmCL1XFlP5hVPmxS54tzFcigfHU8VOut1OFyvZ1yTn6WbLSGih8/
 uV2QbH8TwyV+IrVcL2je2Zj0MIU2c53zB9LoTErDGH1FaqswzcCS+YH2p
 bs+FLDojRI3LHJunuulNF416yw4fDsXoLfeuUf94Fpsls4nr1AkZPB3m8
 JU/74mGsPrgCWJBS/Ow1SMraRuc19URN0MqnIYdSvzIuHHQwxlNhG3JUA
 VAG83P9F2r2wwXFt6VRolaVy5fnn+0hNn9/nEAFQSO9zVXISg89pZs4oW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369787241"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="369787241"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 11:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="860307760"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="860307760"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.148])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 11:06:26 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon,  3 Apr 2023 11:06:11 -0700
Message-Id: <20230403180614.197711-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230403180614.197711-1-jose.souza@intel.com>
References: <20230403180614.197711-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915: Only initialize dlk phy lock
 in display 12 and newer
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This spin lock will not be used in older display versions, so no need
to initialize it.

Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dkl_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 5bce7b5b27bc7..1c5d410b74e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -108,5 +108,6 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
 void
 intel_dkl_phy_init(struct drm_i915_private *i915)
 {
-	spin_lock_init(&i915->display.dkl.phy_lock);
+	if (DISPLAY_VER(i915) >= 12)
+		spin_lock_init(&i915->display.dkl.phy_lock);
 }
-- 
2.40.0

