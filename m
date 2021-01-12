Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 763FD2F3690
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743C489C14;
	Tue, 12 Jan 2021 17:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329B089C14
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:05:28 +0000 (UTC)
IronPort-SDR: XyLOl4CIiojwsFvBydpzJiiIcvzQoNegEemFgyhPdWXMwTTqSeBShNClF4Yuedw2uO62sLhbKz
 JcE7/X6gvFDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165751361"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="165751361"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:04:39 -0800
IronPort-SDR: BaVQnhmJeF0cAwdxMqL9JIVFBUbKFu7gLElYlSjI2kTD+dTkAeoaJzuVwqAj2jn8L3Aia9TvPZ
 x0PZKmlSigWw==
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="381494337"
Received: from vbucoci-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:04:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 19:04:29 +0200
Message-Id: <20210112170429.27619-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/region: make intel_region_map static
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are no users outside of intel_memory_region.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 2 +-
 drivers/gpu/drm/i915/intel_memory_region.h | 5 -----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index b326993a1026..1bfcdd89b241 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -10,7 +10,7 @@
 #define REGION_MAP(type, inst) \
 	BIT((type) + INTEL_MEMORY_TYPE_SHIFT) | BIT(inst)
 
-const u32 intel_region_map[] = {
+static const u32 intel_region_map[] = {
 	[INTEL_REGION_SMEM] = REGION_MAP(INTEL_MEMORY_SYSTEM, 0),
 	[INTEL_REGION_LMEM] = REGION_MAP(INTEL_MEMORY_LOCAL, 0),
 	[INTEL_REGION_STOLEN] = REGION_MAP(INTEL_MEMORY_STOLEN, 0),
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 232490d89a83..6590d55df6cb 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -51,11 +51,6 @@ enum intel_region_id {
 	for (id = 0; id < ARRAY_SIZE((i915)->mm.regions); id++) \
 		for_each_if((mr) = (i915)->mm.regions[id])
 
-/**
- * Memory regions encoded as type | instance
- */
-extern const u32 intel_region_map[];
-
 struct intel_memory_region_ops {
 	unsigned int flags;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
