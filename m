Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DF58FB73E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D855810E525;
	Tue,  4 Jun 2024 15:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4uAxZBX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBA410E511
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515019; x=1749051019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+pPCOKcOkXH5io/Duj8SzSXOIucrz370gg0tb9paK3Y=;
 b=g4uAxZBXFMYxnz0z5+o6sBqoUzLJg7suPjxbdlybHhF25q099yt5Jt8O
 GJ+nOMH7WxaMRsWU3I/ZZ5tEoPf4uKw3XyjGU7242BcjHjeUXkksWrYjQ
 SNPG9aD8FGT78kEp4zDGtrMXAbMzUJaGghlaw86PjC7TnavcMFxi/DglL
 NvdPVd9a5nKHqJRfWfc98rRwUTlCicc38RcEwderHLIu0MePcSCoiKJQF
 XcQYujYMedxibg1+DBLSWOAiS2k3bcmcvK9wnbhYxCRfz2YuEIir/Mdai
 pbHFn+olpjFhGIx3+lIYM8JY2ihhH8CbkziLAtd9MaMwyIIMSjbW0Sld2 Q==;
X-CSE-ConnectionGUID: 0uL35ERRRUucB/RfJCB1yw==
X-CSE-MsgGUID: S5h59HA1Tt68DwSer9F6hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605406"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605406"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:16 -0700
X-CSE-ConnectionGUID: p68BijEEThi2s7VPJ8s8zQ==
X-CSE-MsgGUID: eRs9fDKeT/2ECgWAnKG6Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37144984"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 47/65] drm/i915: pass dev_priv explicitly to _DSPBTILEOFF
Date: Tue,  4 Jun 2024 18:26:05 +0300
Message-Id: <66ab5fd62709b4ebfcdfbe45381818e477bd7551.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBTILEOFF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9bb840895baa..7c4251f62411 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2314,7 +2314,7 @@
 #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
 #define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
 #define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
-#define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
+#define _DSPBTILEOFF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
 
-- 
2.39.2

