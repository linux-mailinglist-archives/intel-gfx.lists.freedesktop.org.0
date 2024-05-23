Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCB48CD30D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA4410E649;
	Thu, 23 May 2024 13:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChAUWcJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B782D10E643
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469252; x=1748005252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AtaRa5oL4CyU1VHlswWJ9FkQro1Bw24n1zxADvUUdJ0=;
 b=ChAUWcJ+SN6SffOPQanct6lRbjT1HM2XJSxsnMx1OArPTzCHetRL0ErA
 CTgIxNrIMYbooAu2D1C2jYUwkprtJnzUD793oxbZnn1gJokFnu2lkEudu
 0JzQOR6MxbkInVOgLoCYRLMo6jC6xNlrlbArT10Vy3sBEKFdUesbB+v8X
 357WeToohVZiSHrb8dbQxEYubU5fz6ZnojYUPM/0XBvRWeNqWuWwhbskD
 +9b9fu3kn0Mdl4fe56/wvnENwA9YoiEmIpdAH7v3rwpjwoc0Hdb9gztlD
 dtL4puPk6eL+feo44XeTPclWdGqOlHXiwAUdF8YMC1J3X6I3WA1S9zK85 Q==;
X-CSE-ConnectionGUID: 5E6JydwnSCabkwRkVZokWg==
X-CSE-MsgGUID: Agj1bgG6Qz+00I+1u7tYsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12966419"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="12966419"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:52 -0700
X-CSE-ConnectionGUID: 5BogjUnPQkmn3MUYrOXDcg==
X-CSE-MsgGUID: MmWlsyupQMSHT0/Qiaj7xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="64874885"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 16/16] drm/i915: pass dev_priv explicitly to PIPEGCMAX
Date: Thu, 23 May 2024 15:59:44 +0300
Message-Id: <5fdc8562fe7b8d26e1ec1bb8f9a221348246bbe1.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PIPEGCMAX register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 13 +++++++------
 drivers/gpu/drm/i915/display/intel_color_regs.h |  6 +++---
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a83f41ee6834..da56d24eb933 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1284,9 +1284,10 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
 				  i965_lut_10p6_udw(&lut[i]));
 	}
 
-	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 0), lut[i].red);
-	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 1), lut[i].green);
-	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 2), lut[i].blue);
+	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0), lut[i].red);
+	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1),
+			  lut[i].green);
+	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2), lut[i].blue);
 }
 
 static void i965_load_luts(const struct intel_crtc_state *crtc_state)
@@ -3239,9 +3240,9 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 		i965_lut_10p6_pack(&lut[i], ldw, udw);
 	}
 
-	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 0)));
-	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 1)));
-	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 2)));
+	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0)));
+	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1)));
+	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2)));
 
 	return blob;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 61c18b4a7fa5..8eb643cfead7 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -37,9 +37,9 @@
 						  (i) * 4)
 
 /* i965/g4x/vlv/chv */
-#define  _PIPEAGCMAX           0x70010
-#define  _PIPEBGCMAX           0x71010
-#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
+#define  _PIPEAGCMAX			0x70010
+#define  _PIPEBGCMAX			0x71010
+#define PIPEGCMAX(dev_priv, pipe, i)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
 
 /* ilk+ palette */
 #define _LGC_PALETTE_A           0x4a000
-- 
2.39.2

