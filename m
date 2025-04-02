Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F45A793C0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 19:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BB18926D;
	Wed,  2 Apr 2025 17:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lnt7RyJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1497B10E876;
 Wed,  2 Apr 2025 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743614579; x=1775150579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E13rsEPnFbn4439/YySIfXIwKK9qjUT2p/ffpxqtSOo=;
 b=Lnt7RyJ6SMbFCDezhq8WdEMx3K3tSraM0JomW0eshQTPvpYimJBc318I
 7T9uWnP25w/QXTPmfirjN6Ms26OQTYch4GLTU1NNGCl8osRkvxWlg8BQk
 Et/shyLdslgNDn+2mz4xqDjCwZlKGl8/ZPxdtoembDEY2gHqBqQwbD/gP
 L1XQt8tbFqfLgUzCHKcCuZe8xZhY8K9dkNSS4RFIv5oEoB/0U4SgiBQZ2
 4/6cIGPaM2/aL/F8opkf7HMxkaKHnjs1Ck517IpTvL9erwvNzWn/3GMPn
 5Yz+OTd1sYWFfoJ9YN6JJFL8oDe5q9O9GpJRgSQGY8eM+AkR9GiJrvOpo w==;
X-CSE-ConnectionGUID: N7OkSMdoS0en5i5MH7/uDQ==
X-CSE-MsgGUID: JCKNCAdBQli4x0u9A/jWQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44891153"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44891153"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 10:22:59 -0700
X-CSE-ConnectionGUID: L78uF0k8RgWmnxuGFcFQBw==
X-CSE-MsgGUID: DlQQKxQ7RzO4eVLIa4PA/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="131964913"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 02 Apr 2025 10:22:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 20:22:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 5/6] drm/i915: Remove unused dpt_total_entries()
Date: Wed,  2 Apr 2025 20:22:39 +0300
Message-ID: <20250402172240.9275-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 2bf4ad6a0fdf..b505b52e93f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -32,8 +32,6 @@ i915_vm_to_dpt(struct i915_address_space *vm)
 	return container_of(vm, struct i915_dpt, vm);
 }
 
-#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
-
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
-- 
2.45.3

