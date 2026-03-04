Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HbKOUAwqGlPpQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC11D200343
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E51F10E9FF;
	Wed,  4 Mar 2026 13:14:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RgVMMGHo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CB310E9F1;
 Wed,  4 Mar 2026 13:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630077; x=1804166077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hd6hovMmB7VUPTF3ZkjiVaGe8Cn5dgkbMrKroebKH/U=;
 b=RgVMMGHowPaU3Ix/2gfwzGttYoxMg1fnasfBDuCalfN1Jr7+WrawrGO/
 bKP7wMXpdehkdTnMJDS2rV5s9+U2rJdmIZA/YnDUHdiJjlAowB2k2kpFm
 wZxHB8sMC4/HopnAdsFFAf+LjsgqDwMIbygbDVximH/d+MK9nMo6NP1tT
 O39NLGH9GqfRTYWi8TUHUJKlKYGMXeztwKzOVehSzRw6WvznwhyLV/nKa
 ko5iLktXEvT/vuX5FyoKFdXFyo/MZfUlEqrR1e1KeWHYXu09hhPy04uyv
 PROJWKCku3xfj7U4jfhZIjZ2vpdNBXGCNgr0HHa9q3BzByOZc7dXJ/QjT Q==;
X-CSE-ConnectionGUID: pVcWpDjYTuKItB6jGMbC3w==
X-CSE-MsgGUID: Y2EyoQPcQQGZevv9vYsX4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293465"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293465"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:36 -0800
X-CSE-ConnectionGUID: 4n3PP/VaRdWQTbqVghDnlA==
X-CSE-MsgGUID: wMkQWs68TRGx92NUmX4WBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350784"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:36 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 09/24] drm/i915/lt_phy: Add xe3plpd .update_active_dpll hook
Date: Wed,  4 Mar 2026 13:14:08 +0000
Message-ID: <20260304131423.1017821-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: BC11D200343
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Add .update_active_dpll function pointer to support
dpll framework for xe3plpd platform. Reuse ICL function
pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index af2613eeaf92..c1ed44b23bba 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4655,6 +4655,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.compute_dplls = xe3plpd_compute_dplls,
 	.get_dplls = mtl_get_dplls,
 	.put_dplls = icl_put_dplls,
+	.update_active_dpll = icl_update_active_dpll,
 };
 
 /**
-- 
2.43.0

