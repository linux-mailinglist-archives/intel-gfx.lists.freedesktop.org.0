Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6323344ED60
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 20:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8BC6F47C;
	Fri, 12 Nov 2021 19:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0846F478
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 19:38:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="233441365"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="233441365"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 11:38:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="534882662"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 12 Nov 2021 11:38:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Nov 2021 21:38:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 21:38:13 +0200
Message-Id: <20211112193813.8224-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Clean up FPGA_DBG/CLAIM_ER bits
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_BIT() & co. for FPGA_DBG/CLAIM_ER bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0ceb88828d93..a4d6bd380012 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2821,12 +2821,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN12_AUX_ERR_DBG		_MMIO(0x43f4)
 
 #define FPGA_DBG		_MMIO(0x42300)
-#define   FPGA_DBG_RM_NOCLAIM	(1 << 31)
+#define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)
 
 #define CLAIM_ER		_MMIO(VLV_DISPLAY_BASE + 0x2028)
-#define   CLAIM_ER_CLR		(1 << 31)
-#define   CLAIM_ER_OVERFLOW	(1 << 16)
-#define   CLAIM_ER_CTR_MASK	0xffff
+#define   CLAIM_ER_CLR		REG_BIT(31)
+#define   CLAIM_ER_OVERFLOW	REG_BIT(16)
+#define   CLAIM_ER_CTR_MASK	REG_GENMASK(15, 0)
 
 #define DERRMR		_MMIO(0x44050)
 /* Note that HBLANK events are reserved on bdw+ */
-- 
2.32.0

