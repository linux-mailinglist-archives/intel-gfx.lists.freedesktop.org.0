Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3031A5FEE22
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5E010EADE;
	Fri, 14 Oct 2022 12:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7158610EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751939; x=1697287939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2Wan5UsgKqclkyE+3qT0wCdMCPLk7NrI3BjtuDulbI=;
 b=cyi/81j4ogRNKRA50LYS9Ad2NZfHJepvQod9FGR4K1CCOx1ul/ByLtJt
 /rp/26oIcBUMJn8DCPD2hhK1hoM5IO6KEXejZOY1tz8sdFk4OEmW1B535
 IX3TTwjD4sIlGmScOIsJogFHxJRX4LEFycze964VuShPDMF0cSaqDxgN7
 ePR6i/YmWY/psjf3HBB0rgznOkma0Yh2Dg3ctwobKjqpNbkN9aH/VwZqt
 jk6/K6vM1u6vJvL3lx2zBmL9+ye7csQrNZdumn1QMw15Grv8KLrxf/Nhd
 cAGjYyspanWfgbD8KPzCuj0WDlc8rpADjFOsNco/gswdYJWgnVff5ejRp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104692"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104692"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739820"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739820"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:17 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:38 +0300
Message-Id: <20221014124740.774835-19-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/20] drm/i915/mtl: Define mask for DDI AUX
 interrupts
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

Xe_LPD+ defines interrupt bits for only DDI ports in the DE Port
Interrupt registers. The bits for Type-C ports are defined in the PICA
interrupt registers.

BSpec: 50064
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 52517d7bbc75..1456c5336fc8 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2337,7 +2337,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB;
+	else if (DISPLAY_VER(dev_priv) >= 13)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
-- 
2.34.1

