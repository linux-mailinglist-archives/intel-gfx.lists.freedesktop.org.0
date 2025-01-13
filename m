Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB35A0BFB2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 19:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365F010E799;
	Mon, 13 Jan 2025 18:21:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J8BVTbI0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3590B10E79A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 18:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736792517; x=1768328517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Txbztbma7JwBwqIx66zSrXolwpm4/Y5+nhy5WsF9ddI=;
 b=J8BVTbI01cybg6SUPIuqkURszVV/3nHnkwcr0BQFctF+hzfe48GZa5Gl
 GVWlJ1xvoyY4qPOayp8fS8QPwajPU6XYhlk9B1AvXyBZL8Px5VumKqRUP
 GIoDHmZIEqEch3WzNlId7yLVGxbnPAV585X7a5J71Suq5L5GBchRO1zuB
 g0ixfM92241PeDKgYvPWFogAjuInZ45nwNKDIGNEZCa1too7TDJPZEcwv
 DWjAOIizcKDQiUAQk4LLSigumqqZt0f642TI/2x8o96SVDZsJyfLnvxnK
 gjxVOet7dN6ziygKHFpuw81rWzfZjiVfcAVfjgquW/OeblLj5Ub5KiV9R g==;
X-CSE-ConnectionGUID: oEsekYp9So+OzQBCeUm1Dg==
X-CSE-MsgGUID: VhOx5cH8Qy+qGnNZ3q0oQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37299049"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37299049"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 10:21:57 -0800
X-CSE-ConnectionGUID: bo9RtDbSSkmVQzLo/xHVqw==
X-CSE-MsgGUID: gjo/SyXFS1KsBUODRMdwyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="105078560"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa010.fm.intel.com with ESMTP; 13 Jan 2025 10:21:55 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v3 6/8] drm/i915/soc: fix typos in i915/soc files
Date: Tue, 14 Jan 2025 00:13:16 +0530
Message-Id: <20250113184318.2549653-7-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113184318.2549653-1-nitin.r.gote@intel.com>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/soc reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 842db43e46c0..9f7c9dbc178e 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -243,7 +243,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * underneath. This is a requirement from virtualization team.
 	 *
 	 * In some virtualized environments (e.g. XEN), there is irrelevant
-	 * ISA bridge in the system. To work reliably, we should scan trhough
+	 * ISA bridge in the system. To work reliably, we should scan through
 	 * all the ISA bridge devices and check for the first match, instead
 	 * of only checking the first one.
 	 */
-- 
2.25.1

