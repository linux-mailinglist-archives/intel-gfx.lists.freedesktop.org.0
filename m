Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C534D3E62
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5108410E524;
	Thu, 10 Mar 2022 00:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F1610E524
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873292; x=1678409292;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/vGbOPptpNEyhshoyY+6eCc89lCJsZMFa/ah8uYe3Io=;
 b=lG0hHcDT0zqr0ROGEn3oR578ZAw40PmiAY3a0oJ68+hqxzD4E7fNvJTP
 h0DB1UDR3GnzsTxThQVJfb4rrwN5C+DgmT4ZHgT19JFl1mZQoBjkUZdE/
 XgNRZOnEtoTLgM3+mDHMk+FDIHvBuHkpAcbTI8V2D8xUnwPzZiFS7TPKU
 4sI8IT1/YaIlh6XyqhkYfariaZ5m43YdM567tmhD7ihlcOOYXQ/aFgFSv
 V/PcJq48PCgW9s89Pbng2UNb0hwN3bCulUDbYt6gBl+42mmxv5xU42lkz
 h4uaM9rsZoSEsWFDLxsrxfaW8Ck9gHmLm0Uysjp6iNFDsSzFbqODjvIqW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="253956394"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="253956394"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="510700817"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 09 Mar 2022 16:48:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:51 +0200
Message-Id: <20220310004802.16310-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Constify intel_drrs_init() args
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

Pass the fixed_mode as const to intel_drrs_init() since it's
not supposed to mutate the mode.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 2 +-
 drivers/gpu/drm/i915/display/intel_drrs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 146f2cf7d01a..3b871a51eb55 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -421,7 +421,7 @@ void intel_drrs_page_flip(struct intel_atomic_state *state,
  */
 struct drm_display_mode *
 intel_drrs_init(struct intel_connector *connector,
-		struct drm_display_mode *fixed_mode)
+		const struct drm_display_mode *fixed_mode)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_encoder *encoder = connector->encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 9ec9c447211a..6bca7692f59f 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -31,6 +31,6 @@ void intel_drrs_compute_config(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *pipe_config,
 			       int output_bpp, bool constant_n);
 struct drm_display_mode *intel_drrs_init(struct intel_connector *connector,
-					 struct drm_display_mode *fixed_mode);
+					 const struct drm_display_mode *fixed_mode);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.34.1

