Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC98EB092EE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BB810E86A;
	Thu, 17 Jul 2025 17:14:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rw+I04z9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5AB10E86C;
 Thu, 17 Jul 2025 17:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772454; x=1784308454;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RUv+ymPLfA+Sdo2J5yukU1QTob3Zsd9rxeMvY6K3Evo=;
 b=Rw+I04z9TkTl68EpHa9+RopuiPU8b5mJOZuewvtOOCBIh+BgCg6eeLhj
 JM7oZLW0PxITXBALiWTjahqsAs+dXiTI4XMBgpU2Md9gQgeflpf3ydowk
 gblvQGZkgs50p4iaw63BxC7bu2oboz1KcXr+mh+3NpkKX3je9sRF3yiol
 dir3Q0dyNBQtmtkzfrI3JRbQZv1xzT1StWtTRWwb5Hm1DKTNjfULay6o2
 M9qk4hgQrGwPgG75G4YlO+cQA+Ve6qsEDqyal0AvSHaEK1G3BhXvHiz3M
 FPWKjOPUSGACkYu930xnB0h41pUj9aIk+NR+kaP/y6kgMfsJX/FLeM1mu w==;
X-CSE-ConnectionGUID: d7xQJqC2QGC3UJyvCHELnw==
X-CSE-MsgGUID: KwoAYHiKSWaloG0rma59mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729031"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729031"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:14:14 -0700
X-CSE-ConnectionGUID: oqr5xyOOQUuu+2IPWL6kGA==
X-CSE-MsgGUID: QjXQzOjnQOOJZ8EgT4ddEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488868"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:14:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:14:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 5/6] drm/i915: Remove unused dpt_total_entries()
Date: Thu, 17 Jul 2025 20:13:51 +0300
Message-ID: <20250717171353.23090-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
References: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
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

dpt_total_entries() is not used anywhere. Remove it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 4743d8b0bf40..c0a817018d08 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -33,8 +33,6 @@ i915_vm_to_dpt(struct i915_address_space *vm)
 	return container_of(vm, struct i915_dpt, vm);
 }
 
-#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
-
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
-- 
2.49.0

