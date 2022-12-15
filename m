Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D7564D47E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 01:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1FB910E4D3;
	Thu, 15 Dec 2022 00:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2FB10E4D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 00:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671063315; x=1702599315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TFXpeU3itBZXbu/RpVGGQWXtmp8W0J2/0zvds31HoNo=;
 b=YfWMRgVPRnGH+6hTSd+Uvkfa643ck7ZxhuAyopEauzJWidbngq1E1lvJ
 TpEj6eG7Meemo4QELZ2tk77g45Ps5SxB4dyGZQHUEHQLaZAJCwa0b1fM0
 OxzSnsVZJGP5ovl9g3GTNyaGJOECc+jykz+L3ool0poAZDCXXDnDguCOv
 y/iN8l9k7435JBQQu1ranmfONlIhzde3eOrMPeS+26BBee8Hv5heA7sFm
 gifk6V5RvP6zBWK3kYnXJYXQj8P+pSEvVXmcsIrgDeyBp4eammvVuqERx
 WMt+zoxJIZjtp+ya/1L6/gQ/BohGAEWh8+6T9XBGO1/jqdZ1psbH/d65N g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="345627988"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="345627988"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 16:15:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="712677730"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="712677730"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 16:15:14 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 16:14:59 -0800
Message-Id: <20221215001459.3759580-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: ratelimit errors in display engine irq
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While debugging page table faults it's useful not to kill the machine
with thousands of error mesages. Ratelimit all errors in
gen8_de_irq_handler().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index edfe363af838..7a43d1bb6f97 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2448,8 +2448,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			ret = IRQ_HANDLED;
 			gen8_de_misc_irq_handler(dev_priv, iir);
 		} else {
-			drm_err(&dev_priv->drm,
-				"The master control interrupt lied (DE MISC)!\n");
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied (DE MISC)!\n");
 		}
 	}
 
@@ -2460,8 +2460,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			ret = IRQ_HANDLED;
 			gen11_hpd_irq_handler(dev_priv, iir);
 		} else {
-			drm_err(&dev_priv->drm,
-				"The master control interrupt lied, (DE HPD)!\n");
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied, (DE HPD)!\n");
 		}
 	}
 
@@ -2510,12 +2510,12 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			}
 
 			if (!found)
-				drm_err(&dev_priv->drm,
-					"Unexpected DE Port interrupt\n");
+				drm_err_ratelimited(&dev_priv->drm,
+						    "Unexpected DE Port interrupt\n");
 		}
 		else
-			drm_err(&dev_priv->drm,
-				"The master control interrupt lied (DE PORT)!\n");
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied (DE PORT)!\n");
 	}
 
 	for_each_pipe(dev_priv, pipe) {
@@ -2526,8 +2526,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe));
 		if (!iir) {
-			drm_err(&dev_priv->drm,
-				"The master control interrupt lied (DE PIPE)!\n");
+			drm_err_ratelimited(&dev_priv->drm,
+					    "The master control interrupt lied (DE PIPE)!\n");
 			continue;
 		}
 
@@ -2548,10 +2548,10 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
-			drm_err(&dev_priv->drm,
-				"Fault errors on pipe %c: 0x%08x\n",
-				pipe_name(pipe),
-				fault_errors);
+			drm_err_ratelimited(&dev_priv->drm,
+					    "Fault errors on pipe %c: 0x%08x\n",
+					    pipe_name(pipe),
+					    fault_errors);
 	}
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
-- 
2.38.1

