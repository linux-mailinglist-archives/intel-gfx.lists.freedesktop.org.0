Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1D08BBECB
	for <lists+intel-gfx@lfdr.de>; Sun,  5 May 2024 01:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C463A10FF90;
	Sat,  4 May 2024 23:15:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NuUPQSjH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDCC10FF8F
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2024 23:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714864538; x=1746400538;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PoHtlZnBt0z8bP9pdP7QlUuasKnU+Dm5WGxiDydbq1g=;
 b=NuUPQSjH00fC8TFVwU6SYHAvbnlndeq9OmFfai/m03eNf1iq9DC/7TsR
 Be+sJ7cID3o2qjwa08bOR72jfDu04/K3PoBe1U+GGYP+efFdPF/Onq7Mc
 3OKfGe76mEJsABGlAuMivOLFMSsnm7i5WbLnVGOavL/I2NyCDOf/+0YBX
 puDA/9AZic8RMyevXoqWU1DksZ+7P25oBCZWxkftGJNRgXPpoWrpl0F6y
 hBGzobS5QSpa00vNzmbhWH3OLqa7uC2OAqv6SWCLxONO0QluiQWrS3F+E
 EkdR4ktu++O8efYnTHsPKQKWyAp/xD3PrPFj5dClQDFyUCy2Wk/HgN0Mq A==;
X-CSE-ConnectionGUID: BnL1datmTa2dEkm+2cQ6zw==
X-CSE-MsgGUID: Y1VMydgZScO+/jqP/S7uZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="14459058"
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="14459058"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:15:35 -0700
X-CSE-ConnectionGUID: n7XfMVV5RaaG8YOXbhGZVw==
X-CSE-MsgGUID: EoKYSXGPTT2P+lYlXdQbTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="28200952"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:15:35 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/xe/xe2: Enable Indirect Ring State support for Xe2
Date: Sat,  4 May 2024 16:15:27 -0700
Message-ID: <20240504231530.15732-5-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240504231530.15732-1-niranjana.vishwanathapura@intel.com>
References: <20240504231530.15732-1-niranjana.vishwanathapura@intel.com>
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

Indirect Ring State is the recommended mode for Xe2 platforms,
enable it by default.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 5bf94abf84cc..9f66c41067d3 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -164,6 +164,7 @@ static const struct xe_graphics_desc graphics_xelpg = {
 	.dma_mask_size = 46, \
 	.has_asid = 1, \
 	.has_flat_ccs = 1, \
+	.has_indirect_ring_state = true, \
 	.has_range_tlb_invalidation = 1, \
 	.has_usm = 1, \
 	.va_bits = 48, \
-- 
2.43.0

