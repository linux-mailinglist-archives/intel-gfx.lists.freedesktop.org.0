Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5AC879631
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AB510F1B1;
	Tue, 12 Mar 2024 14:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JTXivgoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DD210F1B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 14:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253757; x=1741789757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ZTug4nRHj5lGHp2KoHehFKvs7MsU1LciYi9R/KEE2Y=;
 b=JTXivgoYO5mlN5CM4PItFoCpdlxrPcmEYrWZ1qLWC+qqt8oMa+Vhuzks
 ofuAH+XKfzrGrXN+zjaCT8Lpe8m1+P303m0h39jgPGC6AxmGfzR8vB03E
 r/6rtN6I9raZ+/eMr5lAdMAv6+M/pakuCSiUec1qjTQ+dMONbEuWxUGQe
 2Man8sL3QITpz/02w6+VAwjC8RiDodtW9mBR1eFidAH/XIDY0Tdn4rNHB
 J6a3D/Fe4QTeiSbAD3whP5KyQxYRgecj2z2LjRlrCykSlBXNQ5zpTLVJd
 2bk+7/x3j65S201CknX8a3vdws3KvBf7+fW91SORRuYnYAOaiVKTHCfLC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4818302"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4818302"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11612465"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [RFC 2/7] drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
Date: Tue, 12 Mar 2024 16:28:57 +0200
Message-Id: <be0b0cc222f015f5d43c8cf2318fa0d8322e85fc.1710253533.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710253533.git.jani.nikula@intel.com>
References: <cover.1710253533.git.jani.nikula@intel.com>
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

Pass encoder to intel_wait_ddi_buf_active().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c587a8efeafc..fe00c34b5127 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -200,9 +200,10 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 			port_name(port));
 }
 
-static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
-				      enum port port)
+static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int timeout_us;
 	int ret;
@@ -3354,7 +3355,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
-	intel_wait_ddi_buf_active(dev_priv, port);
+	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_enable_ddi(struct intel_atomic_state *state,
@@ -3574,7 +3575,7 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
 	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
-	intel_wait_ddi_buf_active(dev_priv, port);
+	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
@@ -3624,7 +3625,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
-	intel_wait_ddi_buf_active(dev_priv, port);
+	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
-- 
2.39.2

