Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7809485F8F7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 13:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F341410E921;
	Thu, 22 Feb 2024 12:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OEgVDeY0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FB810E921
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 12:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606631; x=1740142631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XEgQhwCjvVnBIYpqvVT2/kKuixPKuT3xUcSGLW/FUrg=;
 b=OEgVDeY0qUV7mdP5fIatk44sAc3EPKkbIxVfh3W9yaz2LbQhu7JZv5kL
 6jyenm578yZW93Jnkuwc2zJjsGtdTgYOJ0BbGbe5r7JzQgAlSRq+Ak0WD
 gZXx2DiJK4aJKPc2y0Hcylvt/WAMe/q03WIMmZ7i8PBJ04gX/9ludyn0Z
 ulZQ831FaCp4LMZs2xQWMZau436maGdT4aJHN+O95F5E+MlTULJ8wvJ2b
 wt2w6UUPhivzQ8zv6dYMfc79tkR/ge77jvzeePIjb1PlezcmGil8QIW7+
 hPJaThoub+Y/eb0Z7RWyq5d1YlNT59NDms83Y/qIwebrwh0ZKvXVF+I82 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2979152"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2979152"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5464368"
Received: from sfriis-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.44.6])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:57:09 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v1 6/6] drm/xe/lnl: Enable the display support
Date: Thu, 22 Feb 2024 14:56:34 +0200
Message-Id: <20240222125634.275047-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Enable the display support for LUNARLAKE

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 5b5c29761c5d..42ba2ea62c1e 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -333,6 +333,7 @@ static const struct xe_device_desc mtl_desc = {
 
 static const struct xe_device_desc lnl_desc = {
 	PLATFORM(XE_LUNARLAKE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.34.1

