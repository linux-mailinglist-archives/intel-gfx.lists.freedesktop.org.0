Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54E68C0163
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63EB111308D;
	Wed,  8 May 2024 15:48:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFNLTFj7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF91511308D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183321; x=1746719321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=04rGwcGtfLLnKG2YEiWgPeRrAPx4vrUBvpmpvK0vmzQ=;
 b=OFNLTFj7r2e76+ha3BFtoWzUSGdXdxe7qapEFUrUAyrH53GfQCbSFBCx
 HWxK56ZY2FSwbZ0hgZLeA+CPi3g3YZZPIHHaPiTGs0eHd40GBL0Au0Zzu
 lZJIIfj1An+Korv9yyhap84ZY22eELr6M9h+tHlfTv2XvaPpI6PRDKvwv
 7d+m/OoiEio5XyAjFQ3syyMSt/6S6NZrEw/0biRsY/BNWp6H0UattOolR
 +EZ2MJi17sc8+XY92t4CCoCc1h+prnjtNB5N5vXLI9BFnI7hnzvi9Fpo3
 sRcVn7LM8dMwaKahIuUVkJOaHT7VamKWPfnpTDBt6lfgdveY+qwiGvwfm g==;
X-CSE-ConnectionGUID: NGy18X3VQ6SoHJlI3o5wew==
X-CSE-MsgGUID: lQ/VbTKLQeaFLlj84sOpBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11215384"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11215384"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:41 -0700
X-CSE-ConnectionGUID: U7QxHM1AS2KYr7a8L4GAHg==
X-CSE-MsgGUID: 6bTvuEXfQxGzXSCAA+sWWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28884898"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/10] drm/i915: pass dev_priv explicitly to TRANS_PUSH
Date: Wed,  8 May 2024 18:47:55 +0300
Message-Id: <5b2a4eea42cf76830a829d8a543d877cad0fc52d.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
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
explicitly to the TRANS_PUSH register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e7709b06b92c..5031b7ac8007 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -237,7 +237,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
 		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
 }
 
@@ -250,7 +250,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return false;
 
-	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
+	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
@@ -261,7 +261,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
+		       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(dev_priv))
 		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
@@ -286,7 +287,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_wait_for_clear(dev_priv,
 				TRANS_VRR_STATUS(dev_priv, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
+	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), 0);
 
 	if (HAS_AS_SDP(dev_priv))
 		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder), 0);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 18c8ef911579..9d443365b85a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1317,7 +1317,7 @@
 #define _TRANS_PUSH_B			0x61A70
 #define _TRANS_PUSH_C			0x62A70
 #define _TRANS_PUSH_D			0x63A70
-#define TRANS_PUSH(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
+#define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
-- 
2.39.2

