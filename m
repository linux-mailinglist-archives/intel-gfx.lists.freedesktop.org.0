Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322AFB40346
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 989D710E6FF;
	Tue,  2 Sep 2025 13:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="icERAnmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D770B10E6FF;
 Tue,  2 Sep 2025 13:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819887; x=1788355887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IOXbLKbABGo+0yKmi+RAZufpQulHfWPQmWmVEPKKNUY=;
 b=icERAnmzazF0SbcG3sC2CtNC8ztttg2b2vfWwM7mU/DZMe5YJE9E4NLv
 ttLLGGCkdxf73+imYd7gBw0tjjqgDF4861ahJ/cxrO0kC477DW9/4uqtI
 IlQ33coGFHkbYMd9R6T6+6piEhQob759Q/Gign2dtaAaa5WHnWXYT+i42
 9H8mFUeFMzBbSv2sUN04NJcnqUn0lktHaj+vkIJk0N6gnCj3L7WdQXaSs
 bCMsT0Ye4iipxn9n/muQ35ON5WwLhvQTkZqfC5ZRgiUhu6hIcYsR4acGb
 iN+djnbOvSSwhvIwZDFpTkBw1WGGXyah/aubvCOcxYnSTGZTWCB/YvxCX g==;
X-CSE-ConnectionGUID: V+pjqxA+SuaV0RAt5jZpeQ==
X-CSE-MsgGUID: 79yrylAaSB2KoN+WYtxKJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736426"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736426"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:27 -0700
X-CSE-ConnectionGUID: 3gyOjn3eSHCI1vlgkkBiWQ==
X-CSE-MsgGUID: Ofh1V9gYQzumsnyRqrsgQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587312"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/8] drm/i915/dram: Pack dram_info better
Date: Tue,  2 Sep 2025 16:31:08 +0300
Message-ID: <20250902133113.18778-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

struct dram_info has two holes in the middle. Shuffle things
around to plug them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 846a77b1aa90..6212944d44aa 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -12,9 +12,6 @@ struct drm_i915_private;
 struct drm_device;
 
 struct dram_info {
-	bool wm_lv_0_adjust_needed;
-	u8 num_channels;
-	bool symmetric_memory;
 	enum intel_dram_type {
 		INTEL_DRAM_UNKNOWN,
 		INTEL_DRAM_DDR2,
@@ -28,10 +25,13 @@ struct dram_info {
 		INTEL_DRAM_GDDR_ECC,
 		__INTEL_DRAM_TYPE_MAX,
 	} type;
-	u8 num_qgv_points;
-	u8 num_psf_gv_points;
 	unsigned int fsb_freq;
 	unsigned int mem_freq;
+	u8 num_channels;
+	u8 num_qgv_points;
+	u8 num_psf_gv_points;
+	bool symmetric_memory;
+	bool wm_lv_0_adjust_needed;
 };
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
-- 
2.49.1

