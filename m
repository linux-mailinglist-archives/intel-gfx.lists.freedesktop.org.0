Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A796E80EA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 20:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF77B10EA73;
	Wed, 19 Apr 2023 18:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D31210EA39;
 Wed, 19 Apr 2023 18:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681927711; x=1713463711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s4klNEl6ZXgcMz5lvaEb4iG5+b/X216MHmBJ62w7Yas=;
 b=UtGJWZIRWHB2jCGIrdcisrDpBuBXydp2ocOfxHbFYOo5p/FOckp9S31h
 h++t2xtKR+A5JjDna6ERkdwr0zxq2vAyQtBxmhwg+aPtprBMkKMkxxHQf
 oBMX3Lf4uh+Zxy51l4FnGMId3tgS3GgnWv1WHJfbcqrkHUHFU0QuPBN55
 HeO7zErAYMSEzVYsM/eS45BeC6xL49fveYDChaaQlQs+X/cExvyNV4ssA
 bfILRrJAsC/DZah0/3BqLdYOcwrYzCeEMP8lRf3G/np/iQdQyc+FG6Kzq
 VzDmXpS5p1iKZ6IG8bPm9Xl8uka8Yc2STZf0HvDeQNwTX3/360748m+Ld g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329695022"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329695022"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="724139425"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="724139425"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:08:29 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 11:09:35 -0700
Message-Id: <20230419180942.2494156-2-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230419180942.2494156-1-fei.yang@intel.com>
References: <20230419180942.2494156-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/mtl: Set has_llc=0
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

On MTL, LLC is not shared between GT and CPU, set has_llc=0.

Signed-off-by: Fei Yang <fei.yang@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d64e074d7457..272a8ba37b64 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1147,6 +1147,7 @@ static const struct intel_device_info mtl_info = {
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
 	.has_guc_deprivilege = 1,
+	.has_llc = 0,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
-- 
2.25.1

