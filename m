Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031186F4774
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB5010E37B;
	Tue,  2 May 2023 15:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B573E10E5A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041932; x=1714577932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zvYpiSIE0pVgop1LmCttrpHzo5I3hxlAcXbez8BqOns=;
 b=DZwMyj6GnIkaUezqJd8nb2zrFG6P+v5BMzNHFgV6NG1nP4lSjM44PA+x
 fYEpXs+K92vWSxCw5Te1Rg81mBmMzKa3nDYqMh/GrDQXWtG3kQQKtleTH
 WTqrUXVV5TvoAUhsWWbInkvuav4qgg18DCzlXGPmDzDwGySm22jUJ5XPN
 Un8fZWv5SSh5k6+urn7jUg4bUnjTxwnQ9Yznqtf5DNRH64hkMsq1dj9Of
 NNcWcgA76sLQSzksO3pv2OxU1aDzi4eurrWwRDnfPtQ9AN84kcbunS+9+
 nTFFMV99BCB71LRspkDQYWedXxFTilDC5lkzOFUytFfbNMPVBArUHAHsg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337554218"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="337554218"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="728976858"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="728976858"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:31 +0300
Message-Id: <c22e58e770019667980b3617f6e963b76d7e79a7.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/24] drm/i915/gtt: fix i915_vm_resv_put()
 kernel-doc parameter name
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

drivers/gpu/drm/i915/gt/intel_gtt.h:515: warning: Function parameter or member 'vm' not described in 'i915_vm_resv_put'
drivers/gpu/drm/i915/gt/intel_gtt.h:515: warning: Excess function parameter 'resv' description in 'i915_vm_resv_put'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 1910683f03b4..9aff343beaa8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -509,7 +509,7 @@ static inline void i915_vm_put(struct i915_address_space *vm)
 
 /**
  * i915_vm_resv_put - Release a reference on the vm's reservation lock
- * @resv: Pointer to a reservation lock obtained from i915_vm_resv_get()
+ * @vm: The vm whose reservation lock reference we want to release
  */
 static inline void i915_vm_resv_put(struct i915_address_space *vm)
 {
-- 
2.39.2

