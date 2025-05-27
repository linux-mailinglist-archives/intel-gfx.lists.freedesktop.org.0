Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2CBAC4B75
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 11:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAD410E44A;
	Tue, 27 May 2025 09:25:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X4milBIM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400E210E439;
 Tue, 27 May 2025 09:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748337944; x=1779873944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ES8uVNVWm4nWNYE/+de6bmIfuZAAc6naWhYMsDWjyzE=;
 b=X4milBIMLWM6Jx0tpnp89wcNAQlHUH9p0nsEMxMjKuF23dsbpQqN6KQf
 g1LK5znyQfLeD+7/DIu/+aAa00dOlwhQKi3RVh/fhH3TTyrZPmyYD9otx
 W6ppxg21zg214MmNFss2NqNZpgTfXTEOg/7NTZWLxn4Ir74DUfpaGbePj
 P83AKKqyLXwzMhqhEMjy6I7/lbngFp6E4Tuu26n+vgs1vuCr1MA1MfA4b
 Hp4cuwlnyelT7XCjw7ZNsS4IgIsybsRt9cXubTJZ+b3OvZ20LJ3osoWp1
 HJkyARH4Z20mh3jwFJBVr8/2Qfcp3APRZ3/tqCoQwvtifQacUIU2SgrjH A==;
X-CSE-ConnectionGUID: +SnuMz19SXKaZDOUDRvFuA==
X-CSE-MsgGUID: CI49jWgmRIW/yvimUqIrXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54114225"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54114225"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:44 -0700
X-CSE-ConnectionGUID: /oUoOg/bRrWFAWE+RcnFNA==
X-CSE-MsgGUID: biEbeGB/QwC9PF5TMm167A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="179922998"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
Date: Tue, 27 May 2025 12:25:23 +0300
Message-Id: <a866641bff364dcfcaaabaa1d53c4a8cfa94ff3f.1748337870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748337870.git.jani.nikula@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
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

There's no dram info on DG2 that we could use. The struct dram_info is
all zero on it, but be explicit about this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f5600f4b7772..817939f6d4dd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3251,7 +3251,7 @@ adjust_wm_latency(struct intel_display *display,
 	 * any underrun. If not able to get Dimm info assume 16GB dimm
 	 * to avoid any underrun.
 	 */
-	if (dram_info->wm_lv_0_adjust_needed)
+	if (!display->platform.dg2 && dram_info->wm_lv_0_adjust_needed)
 		wm[0] += 1;
 }
 
-- 
2.39.5

