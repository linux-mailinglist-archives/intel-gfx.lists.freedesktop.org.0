Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1517417BB0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 21:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038626EE52;
	Fri, 24 Sep 2021 19:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9847B6EE63
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 19:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10117"; a="211389602"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="211389602"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 12:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="437094391"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 24 Sep 2021 12:14:22 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 24 Sep 2021 12:14:52 -0700
Message-Id: <20210924191452.1539378-18-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924191452.1539378-1-alan.previn.teres.alexis@intel.com>
References: <20210924191452.1539378-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 17/17] drm/i915/pxp: enable PXP for
 integrated Gen12
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Note that discrete cards can support PXP as well, but we haven't tested
on those yet so keeping it disabled for now.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d4a6a9dcf182..169837de395d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -865,6 +865,7 @@ static const struct intel_device_info jsl_info = {
 	}, \
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
+	.has_pxp = 1, \
 	.display.has_dsb = 1
 
 static const struct intel_device_info tgl_info = {
@@ -891,6 +892,7 @@ static const struct intel_device_info rkl_info = {
 #define DGFX_FEATURES \
 	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_llc = 0, \
+	.has_pxp = 0, \
 	.has_snoop = 1, \
 	.is_dgfx = 1
 
-- 
2.25.1

