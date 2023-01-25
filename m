Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7B467B9EB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 19:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99BD610E814;
	Wed, 25 Jan 2023 18:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99C510E817
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674672773; x=1706208773;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/wAOQCigEDWUzw8yH5lxTRWzzyAPlDcWVRPrVFI9LbY=;
 b=FczA93dECymoprmt3nGuvO5brV6+KlXN7+ex43CURzgfWlMlNtFuZ+/R
 wK7UkMZXqWoKUv/SwRxBDGwt8kTDgdsxDvvOGaKHrRKnn4yQ6XVqyTLsL
 AvIRoIRDDmXMr/bITT2KNgeZA8DRxM+oTjPsrXewxQ4fduOJN5j7Nv6Xf
 TIeDMAosRev7OhyUxzlgouKJcTqlajBfftwgB8V/PTwnWQ5un1GLNp0Xh
 B1hEH5vt3tuet+T5PgOho5bQcBVuh3Jo7fXdOaxj0ihUDedAAT75+wW5s
 /REcDH2KnWkmfzKfUjGmsalX+s7t8bZiYN0ZdEc/+d9Fcs0JLqVLAKhtz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326671523"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="326671523"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 10:52:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655912189"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="655912189"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 25 Jan 2023 10:52:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Jan 2023 20:52:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 20:52:34 +0200
Message-Id: <20230125185234.21599-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Mask page table errors on gen2/3
 with FBC
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

FBC on gen2/3 seems to trigger page table errors. No visual
artifacts are visible, and essentially the same FBC
code works on gen4 so these seem entirely spurious. There
are also hints in gen3 bspec indicating that certain bits
in PGTBL_ER are just not wired up correctly in the
hardware.

Ideally we'd want to mask out only the bogus bits, but
sadly there is no mask for PGTBL_ER, and instead we are
forced to mask out all page table errors via EMR :(

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 081b79d00521..496f76bf42f3 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3473,8 +3473,23 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
 
 static u32 i9xx_error_mask(struct drm_i915_private *i915)
 {
-	return ~(I915_ERROR_PAGE_TABLE |
-		 I915_ERROR_MEMORY_REFRESH);
+	/*
+	 * On gen2/3 FBC generates (seemingly spurious)
+	 * display INVALID_GTT/INVALID_GTT_PTE table errors.
+	 *
+	 * Also gen3 bspec has this to say:
+	 * "DISPA_INVALID_GTT_PTE
+	 "  [DevNapa] : Reserved. This bit does not reflect the page
+	 "              table error for the display plane A."
+	 *
+	 * Unfortunately we can't mask off individual PGTBL_ER bits,
+	 * so we just have to mask off all page table errors via EMR.
+	 */
+	if (HAS_FBC(i915))
+		return ~I915_ERROR_MEMORY_REFRESH;
+	else
+		return ~(I915_ERROR_PAGE_TABLE |
+			 I915_ERROR_MEMORY_REFRESH);
 }
 
 static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -3762,6 +3777,9 @@ static u32 i965_error_mask(struct drm_i915_private *i915)
 	/*
 	 * Enable some error detection, note the instruction error mask
 	 * bit is reserved, so we leave it masked.
+	 *
+	 * i965 FBC no longer generates spurious GTT errors,
+	 * so we can always enable the page table errors.
 	 */
 	if (IS_G4X(i915))
 		return ~(GM45_ERROR_PAGE_TABLE |
-- 
2.39.1

