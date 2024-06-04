Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 476108FB73C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A8910E509;
	Tue,  4 Jun 2024 15:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPhUJ/OU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CA810E501
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515015; x=1749051015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Hq1CrcWwyUyxKGiNnNnXL7VsMEifLIUwVnERhMj0y0=;
 b=FPhUJ/OUd96WxDDl7KNahtOsA2Ln+OX4V4iiL2R6QLkLdowdh8GLlAR6
 mfqE1jdqQQQsnOH1BYy9E2PqkypCwKFJ8kY4C22XC/9x2vDLq90ERM4t4
 YqwbmASGLXccPpko0r5PhxnYUwWYKa8T35KuvMP1Xes6MWykdUU+77a5K
 C/xXJHSpFqJKolrTtggETKuCAEuAx5nHWwHy+DbdgRJajTnHWmZ9vTSMV
 R963+AcXBUJDn18DyiGUWgaOwpjF4KXyzLkLVvpzfR20gAiCat/vvGm4e
 he9ZfGgGmPhAY5M38IQE1BfvQHnEbxKGAOELstPziN4CrCJtc4xvQ091b g==;
X-CSE-ConnectionGUID: a9e0JvYCS/a66pUwceEPtw==
X-CSE-MsgGUID: 1JyALi2nTYmZq70EMKEHFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605391"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605391"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:12 -0700
X-CSE-ConnectionGUID: yM3GBwBxTHaxScBTifjBeg==
X-CSE-MsgGUID: TUVxtGMIQWyRukG+zjlkxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37144935"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 46/65] drm/i915: pass dev_priv explicitly to _DSPBSURF
Date: Tue,  4 Jun 2024 18:26:04 +0300
Message-Id: <614e35baab65117ce7d5a64526b69b44e68116fe.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the _DSPBSURF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index bb904266c3cd..88ef8b7b9ab4 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1009,7 +1009,7 @@ static int south_chicken2_mmio_write(struct intel_vgpu *vgpu,
 }
 
 #define DSPSURF_TO_PIPE(offset) \
-	calc_index(offset, _DSPASURF, _DSPBSURF, 0, DSPSURF(dev_priv, PIPE_C))
+	calc_index(offset, _DSPASURF, _DSPBSURF(dev_priv), 0, DSPSURF(dev_priv, PIPE_C))
 
 static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 36ed23b93475..9bb840895baa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2313,7 +2313,7 @@
 #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
 #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
 #define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
-#define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
+#define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
 #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
-- 
2.39.2

