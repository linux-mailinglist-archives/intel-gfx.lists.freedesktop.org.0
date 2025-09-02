Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92967B40350
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80D910E6FE;
	Tue,  2 Sep 2025 13:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kzJVFnMR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD0510E6FE;
 Tue,  2 Sep 2025 13:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819901; x=1788355901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HpzNwoGzxBr64oXvt/apvqRlkO1M0R9k98PRKxOysr8=;
 b=kzJVFnMRZ+MCJ2W1s8KlMNHtuMVs21lpkkVIE/7KGVwFCoVVo85FVuDS
 4aHGZzLtzBAHKLEXevTRakRmmvgk97TLjzG2CKgaAIyqTeAUFxC7o8qRZ
 IKaeAbuADSjhOOBW57NV5ekTkeQ+xH6Ts3RhfEDvkQrFb5WGDLU/7Y8jq
 /F5fXT842QPinYW37C91OhtDf2KPSuyP3OUFawbbsp6acuhEQRS6pgInx
 9tv98fZX3l9q0ocpUPdvdTa1mIZC8LSDLb44K8u5QJatkOAyrwh7VNKsV
 1QVAk+VMr1gH17natIAiJ57Swd4WC20aJJeXPFJVA/jyHUhv7g9cI9ILP w==;
X-CSE-ConnectionGUID: nNaUA1WvReKzHgwUEWli1A==
X-CSE-MsgGUID: RvB6ULXqQLKyPWAViyI87w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736436"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736436"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:41 -0700
X-CSE-ConnectionGUID: ahL7++7SRzqpkwaSX5ZCGA==
X-CSE-MsgGUID: gC8MLr1MRuirdG9GsZmDvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587374"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/8] drm/i915/dram: Don't call
 skl_get_dram_info()/skl_get_dram_type() on icl
Date: Tue,  2 Sep 2025 16:31:12 +0300
Message-ID: <20250902133113.18778-8-ville.syrjala@linux.intel.com>
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

Currently the icl codepaths first determine the memory type from the
memory controller registers (via skl_get_dram_info()->skl_get_dram_type())
and then overwrite the results with icl_pcode_read_mem_global_info().
Get rid of the pointless (and potentially incorrecgt) skl_get_dram_type()
stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index bf3ba874f8c5..38b7dd20b18d 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -669,8 +669,9 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
 
 static int gen11_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	int ret = skl_get_dram_info(i915, dram_info);
+	int ret;
 
+	ret = skl_dram_get_channels_info(i915, dram_info);
 	if (ret)
 		return ret;
 
-- 
2.49.1

