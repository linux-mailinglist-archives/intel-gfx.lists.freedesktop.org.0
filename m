Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532D561F4EE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 15:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BD810E19F;
	Mon,  7 Nov 2022 14:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3490D10E19F
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667829902; x=1699365902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=woMkuxvy/H7gIHQhoqoSCtvXMe3/OlfxzrBhwy7uSTY=;
 b=KNUhu+PSLqT9NuPwNtxnbxsGMBa4vYbzRSlU1wS46pTjj6chVTVobK9l
 Bs1mIuCx3MXu/NiU4cIu8xXZOe2b6Jmbr3VsqrVifFdC9VqhHNowyKChq
 XmLVPL47rErxmC7Uzm9ertGQK4j535YzqvNlQtZIWnpU9df7+bI7taR/A
 FiX/vDZTEg9FBLOguMBdoPZmZIlc0m/vrM+YwK62blyCA+JvnNyvtKI1t
 MN4dH5JyLVtWibjNPjTFrkSplrTmRcClUAY+e0kyB361PO0Gh3usQ05+S
 WE9KG6G0ngaxtM5nl+zlQ5m3PanlC7o7tPcTDZaEbxCycnJ3TokMTkWBr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="311549311"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="311549311"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 06:05:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="635919455"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="635919455"
Received: from briansim-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.14.193])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 06:04:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 16:04:54 +0200
Message-Id: <20221107140454.2680954-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: use <> instead of "" for headers
 in include/
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
Cc: jani.nikula@intel.com, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Headers in include/ should be included using the system header #include
syntax.

Fixes: 887a193b4fb1 ("drm/i915/pxp: add huc authentication and loading command")
Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 7ec36d94e758..f6a3f53a1d22 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -3,7 +3,8 @@
  * Copyright(c) 2021-2022, Intel Corporation. All rights reserved.
  */
 
-#include "drm/i915_drm.h"
+#include <drm/i915_drm.h>
+
 #include "i915_drv.h"
 
 #include "gem/i915_gem_region.h"
-- 
2.34.1

