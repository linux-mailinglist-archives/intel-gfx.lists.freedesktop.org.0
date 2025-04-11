Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1A9A860EB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 16:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A8710EBDE;
	Fri, 11 Apr 2025 14:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgI//BBT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C21310EBE1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Apr 2025 14:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744382603; x=1775918603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xKiIJzgeAM0mnDrKELpUa0Nzp1Z7ANbbmWJpC3eFRl4=;
 b=mgI//BBTUiy4dBuJC380Nt071+KO9VSkSL7FujJAUw8tdyOUnKJYTcmm
 /p3mFOvRQV9JlRwdgw7LkDTMRaaNni1AP8bVgmpVkFKV2ieVkYDe9V1R7
 EMbVIPuEop6wC+K6NgtZxdidkFUTxyD+dA1qRDGsnKzbX+n+DsvWkKEBu
 crvxKj4xp9I9Hnen4bbtVtTSXNTYk+5HXXc3LXOWdfzP5ySFxt0BB/96o
 RSOz5r99Id9xb5Kms6AsmOmbkgL0O4ENYxQpQivq4jJKqj8QP3FEbafrR
 LfkwG9b3eqrZ8ipv6eqIJm8MuQ12GR+/de8pkntvvcD72mxaZfN+Y1e/l A==;
X-CSE-ConnectionGUID: pxpg7813RNuqXmEpi1J3+g==
X-CSE-MsgGUID: xh8CkktvT9uwwcA0zTpYxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="57316235"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="57316235"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:43:22 -0700
X-CSE-ConnectionGUID: qjL5s+DySTC2DgIPhbCyoQ==
X-CSE-MsgGUID: R9ydCCm5Qh6F6zabOJvmmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="134370137"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Apr 2025 07:43:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Apr 2025 17:43:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v2 2/2] drm/i915/pci: Remove force_probe requirement for DG1
Date: Fri, 11 Apr 2025 17:43:13 +0300
Message-ID: <20250411144313.11660-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
References: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
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

Dunno why we still have .require_force_probe=1 on DG1 after
all this time. I'm not aware of any real problems with DG1,
so get rid of the force_probe requirement.

Generally the difficulty with DG1 is that it requires a
4GiB BAR for the local memory, and that's not something
that works on every system.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 21006c7f615c..b2e311f4791a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -663,7 +663,6 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.require_force_probe = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
-- 
2.49.0

