Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1C18BCBA8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 12:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B864210EB05;
	Mon,  6 May 2024 10:09:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eoUIshrm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC9810EB05
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 10:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714990154; x=1746526154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G13JGe7TIzFTGkNq3z3XepUXlPXf5TK3oL6rDfORlHE=;
 b=eoUIshrm5unORqjk/5EJMuyhS2Im++1aiT+bpu8uvw2Td0i/9PQZFaWl
 n4s1EhpO1jHCL3/efR0QcEPoYXXb2LXNQ+os2myIWHNPngokOYFID0Gg5
 ERy+I/G+7oNMuX7cIe40ypjr6qaymztRVJ/G4U1h1quSrxnDMtLRoqV0r
 54tVfOcOmYR0ONikqqASxDVITXrHjJwBA/NSPwzcH0BmjvP9t9n/XWOQ7
 3ra4BDBEhKz3oQlCpa7hYSEuajiORH+UJifWgkuvsL/pwurDYcRDzMBTg
 fqoni6WnwGUtt5lpxLWRiU8uXf/irj2yyZSmCqJVYIsJ89oLWosQKc6CH g==;
X-CSE-ConnectionGUID: n2SjtFlrQgSExpvexkUmDg==
X-CSE-MsgGUID: 4tZPShZvRw6pWI61A1fuUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="21341425"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21341425"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:14 -0700
X-CSE-ConnectionGUID: 4oTYYdUaQp6J20+LbKo6DQ==
X-CSE-MsgGUID: m0G46ScpTHiE6M9aHRjfnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32719024"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915: pass dev_priv explicitly to PIPE_CRC_CTL
Date: Mon,  6 May 2024 13:09:02 +0300
Message-Id: <2ac4438aa885be9d0fcf5c697beee99a4cd2c23f.1714990089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714990089.git.jani.nikula@intel.com>
References: <cover.1714990089.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 5a468ed6e26c..35c3dd1130ce 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -608,8 +608,8 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 		goto out;
 
 	pipe_crc->source = source;
-	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), val);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
 
 	if (!source) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
@@ -643,8 +643,8 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc)
 	/* Don't need pipe_crc->lock here, IRQs are not generated. */
 	pipe_crc->skipped = 0;
 
-	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), val);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
 }
 
 void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
@@ -658,7 +658,7 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
 	pipe_crc->skipped = INT_MIN;
 	spin_unlock_irq(&pipe_crc->lock);
 
-	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), 0);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), 0);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
 	intel_synchronize_irq(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ae692f461982..4525afafc79f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1137,7 +1137,7 @@
 #define _PIPE_CRC_RES_4_B_IVB		0x61070
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 
-#define PIPE_CRC_CTL(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
+#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
 #define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
 #define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
 #define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
-- 
2.39.2

