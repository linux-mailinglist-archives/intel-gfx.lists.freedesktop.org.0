Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B98B6F14DA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 12:00:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDC410ECD7;
	Fri, 28 Apr 2023 10:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BC910E3B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675990; x=1714211990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gk0IPkxqF06kaPhNGCrA8cQBSw9IRR4x92sXUeMa0qI=;
 b=JIySxs1D2vh0IQ3bX11C9Dn4fBVJa6/cGp4Dh/Aqb/+8nRgiwKM0V3bY
 EGVu6JC6Q9xiqR+TBmSFQsX1/V4kLmATlwiwWXe2sNHBLuxkK4QcxyOZh
 TRGiQ3lc9wk5BDC9MEQlQXOiWHMKKA+DX9FhIwF0+fyqGOaxOAminYQks
 D6gULNpoFw7qnN44B+C0Rjb9VthqImixg56Q5En6iE833VO74IV5C+EUs
 AvajjN+OU923vVNyJ3PvRP4R+ThMi3w+G2yPS5CbRNutLfXoYErW665gT
 tFYrHQ3FYi79aA6rccD4JVGoebPTrFSwqGL10iBs8/GQetF3YWnkeS5SD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698191"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698191"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295761"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295761"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:48 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:29 +0300
Message-Id: <20230428095433.4109054-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/13] drm/i915/mtl: Define mask for DDI AUX
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

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2b94b8ca8ec9..e5f12aa141f6 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1938,7 +1938,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
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

