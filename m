Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C78E645FEB
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19A510E40A;
	Wed,  7 Dec 2022 17:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B65A10E40C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433479; x=1701969479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u/IpzExxaG2xiNirS8Yy8PKq0Gqhj6MEq0tGO/X22+0=;
 b=XBoSfirUzQyT5iqV8xIHMAjm6lzFprXq6asb8nULHsgKGfObKn2L4qB7
 RuZOBxl/iobRMeds95DoRpRaO6ktpZBGdRcQTRYqBYIpRjrzB1l3rxeOJ
 HQ6AN7yfMDkc++0g4iV8G71meNngzWf2jHyANV8fMjA7FYAOCcaAZl36h
 9wo7V5V7BnVTu7dDazJdfFact8XTkKeQXAxaEvU9aLt1bOwTqqCgetzVO
 DSB2FDniZvt4NvYl6GZmPpZS+3z37MJ0tg/cikdSvSBT6f2tI8QFIm5M1
 ra1Ha2EkJVuLj6RjzaKFkjy+ha1b4nggPUfWONF3svS/MEU9xhMi+ymdn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315663416"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315663416"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="648813959"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="648813959"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:22 +0200
Message-Id: <21ea52a7c4fd400c256316143e3a2c9106c554d9.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/11] drm/i915/power: switch to intel_de_*
 register accessors in display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3adba64937de..1a23ecd4623a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1673,7 +1673,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
-		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
+		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
 	}
 
 	/* Wa_14011503030:xelpd */
-- 
2.34.1

