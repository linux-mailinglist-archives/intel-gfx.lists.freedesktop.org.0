Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751859DEB33
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98E810E53C;
	Fri, 29 Nov 2024 16:40:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a9FM1/0s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E58D10E533;
 Fri, 29 Nov 2024 16:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732898427; x=1764434427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KnI4igaOSsxAu7V+pgHxHN9ELxMvZ5WZhf0ujZ/Q4YA=;
 b=a9FM1/0sWbosLNk9gjl6kB27PzrH2VkdxaPsk1QX29w2LAxLNhuheaF7
 4kZPomEu1zsoZ+O2Nxfady8EArnxrrgFq60xadavznM8i3mgS92Dopa2i
 5CEU+PKSV7mN6loZ96Jj1PIG+6Ef2AInFfSjVEIDPXMGnyKUp4i/q71NO
 fnupDU7KEBW389msZrEZrMujD0a5WTHPeb4YTqfFZVrGR7N7zh6EaX7Qh
 54AQGJe58udzylIGQJ+N1zeNeazdLICgPGcIyyeoENItn0M3aI1fT4KY6
 LV7nKqyTdaSSAjhwcOSt0M+kFuywdumLVFAUGCfoJDKnTlBlquuoLeXSJ Q==;
X-CSE-ConnectionGUID: /xSL0KNgSa2JUXn6Lbz6EA==
X-CSE-MsgGUID: O/+NRtAXRYyXP6aNK/vEtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33291172"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="33291172"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:40:27 -0800
X-CSE-ConnectionGUID: 0GvgBnRiSAi4tPK9UvxQCg==
X-CSE-MsgGUID: LC+/3EybS6e6BfCrEI5rGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="96956924"
Received: from eamartin-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.90])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:40:26 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 1/3] drm/i915/dmc_wl: Extract
 intel_dmc_wl_flush_release_work()
Date: Fri, 29 Nov 2024 13:37:54 -0300
Message-ID: <20241129164010.29887-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241129164010.29887-1-gustavo.sousa@intel.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
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

We will need to flush the release work from outside in an upcoming
change. Let's put that into a public interface and call it
intel_dmc_wl_flush_release_work().

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 +++++++++++-
 drivers/gpu/drm/i915/display/intel_dmc_wl.h |  1 +
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 853d75610489..09075830c12f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -349,7 +349,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	flush_delayed_work(&wl->work);
+	intel_dmc_wl_flush_release_work(display);
 
 	spin_lock_irqsave(&wl->lock, flags);
 
@@ -377,6 +377,16 @@ void intel_dmc_wl_disable(struct intel_display *display)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
+void intel_dmc_wl_flush_release_work(struct intel_display *display)
+{
+	struct intel_dmc_wl *wl = &display->wl;
+
+	if (!__intel_dmc_wl_supported(display))
+		return;
+
+	flush_delayed_work(&wl->work);
+}
+
 void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 {
 	struct intel_dmc_wl *wl = &display->wl;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
index 147eeb4d8432..5488fbdf29b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -32,6 +32,7 @@ struct intel_dmc_wl {
 void intel_dmc_wl_init(struct intel_display *display);
 void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state);
 void intel_dmc_wl_disable(struct intel_display *display);
+void intel_dmc_wl_flush_release_work(struct intel_display *display);
 void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
 void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
 void intel_dmc_wl_get_noreg(struct intel_display *display);
-- 
2.47.0

