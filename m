Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C48BC7D17
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D446310E956;
	Thu,  9 Oct 2025 07:55:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWdFzCIy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07A310E956
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996538; x=1791532538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CqJcBNafGfBiY4jqdIhM/5mEogLTsXXyX0dd/AIRQFs=;
 b=hWdFzCIyv/ZC7u+pJivNhRLdW3IGK2m5sHMJJVXMc4MRfarVN25AFcj8
 iDDTASSzBythmmuqUEOst2EpO+uAtRyBSAeU9iDBw78mHcKPHfBiyw1A7
 uISttn6v93ut2xAKfTk+Lc3fr6wA5m1yiJI6KTpfjOv/9u60+p/J7jIdR
 IIIcxDd1HpUnJ9U2OocdQ2ccGABlczOrfH+uanyesi+QsTtz0ZZ41hBGM
 fcB6oZ1gDJtIxX829EVQcdWeT1ctJ4gZY0834pQOLCtLo9LRo866l9aeV
 kWPF9bxUUuxqj8pm3lj8388+qvSQLmXgtAgDtv44X3tzmQK7yDIRmudj5 g==;
X-CSE-ConnectionGUID: 3fLoJN3cSvuwEsap0HdLDQ==
X-CSE-MsgGUID: uKwxEksaS6alfS1T87iPZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880724"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880724"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:38 -0700
X-CSE-ConnectionGUID: nWg0/crnSdal/7+kl5M+Hg==
X-CSE-MsgGUID: KW4SR+JQRc6TiNgppc8d4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600923"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:36 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 1/7] drm/i915/wm: clarify watermark ops with comments
Date: Thu,  9 Oct 2025 10:54:32 +0300
Message-ID: <20251009075517.837587-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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

Some of the ops in struct intel_wm_funcs are used only for legacy
watermark management, while others are only for SKL+ or both.  Clarify
that in the struct definition.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index df4da52cbdb3..7144b61fb1ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -78,7 +78,7 @@ struct intel_display_funcs {
 
 /* functions used for watermark calcs for display. */
 struct intel_wm_funcs {
-	/* update_wm is for legacy wm management */
+	/* these are only for legacy wm management */
 	void (*update_wm)(struct intel_display *display);
 	int (*compute_watermarks)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
@@ -88,8 +88,12 @@ struct intel_wm_funcs {
 					 struct intel_crtc *crtc);
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
+
+	/* these are for SKL+ wm management */
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 	void (*get_hw_state)(struct intel_display *display);
+
+	/* this is used by both legacy and SKL+ */
 	void (*sanitize)(struct intel_display *display);
 };
 
-- 
2.51.0

