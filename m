Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA16582983A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 12:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A1010E59E;
	Wed, 10 Jan 2024 11:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CBDF10E597
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 11:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704884494; x=1736420494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9BxZH5gMAM7wxH5XbpKGUqfYBfKMvhQzdq6EHj5igNc=;
 b=f1dcFhprgeW5D7HocYAs6yfk3MI/5IkiFr/181vSjZ8zd3BOqlsmWJCL
 NRA1kI0F35HtG3luPEq+DjrRvtCT44nt+nUM4pxQaYGPvY0p4NzQuC6LG
 GHKNJ4pJzAhyoWZfawZic5iD6PLKvWFetuwRLjcpjy/3HoBCHbSVCUOq2
 5AYWUWphSP1VXW+aNsJXfQMu/0IjkIXsAyEU9EkMK8MRWdzrBCOFkcDk8
 H2Do7A0Nti1DyFOAFejS7FX+t7BITuG9Vz12jPFmhq0p8w2ONPkXcTgAR
 Ck5aI2Bfkt5ucvkzmj4yDg9G/S0V6PCPUI+QZ1N9N7lrXV8pA3Pi/2RN3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11965058"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="11965058"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:01:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="23908716"
Received: from plebeaut-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.36.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:01:23 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb alloc
Date: Wed, 10 Jan 2024 13:00:08 +0200
Message-Id: <20240110110009.28799-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110110009.28799-1-vinod.govindapillai@intel.com>
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC compressed frame buffer size need to be PAGE_SIZE aligned
and the corresponding the drm_gem functions check the object
size alignment using PAGE_SIZE macro. Use the PAGE_SIZE macro
in the cfb alloc as well instead of the magic number.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f17a1afb4929..9b9c8715d664 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -764,13 +764,15 @@ static int find_compression_limit(struct intel_fbc *fbc,
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
 	ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
-						   size <<= 1, 4096, 0, end);
+						   size <<= 1, PAGE_SIZE, 0,
+						   end);
 	if (ret == 0)
 		return limit;
 
 	for (; limit <= intel_fbc_max_limit(i915); limit <<= 1) {
 		ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
-							   size >>= 1, 4096, 0, end);
+							   size >>= 1, PAGE_SIZE, 0,
+							   end);
 		if (ret == 0)
 			return limit;
 	}
-- 
2.34.1

