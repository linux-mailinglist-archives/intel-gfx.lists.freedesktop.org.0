Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C332FA31962
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A5B10E193;
	Tue, 11 Feb 2025 23:19:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJEJY8PI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B3C10E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739315987; x=1770851987;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B8ntZNzbdSQVdqmGM2oAzpH8RDPppXX5tKGiYhmNVYo=;
 b=hJEJY8PIsvqL74v+0lEf1tFIMZNaxrPBfZAQ5XEgbCFP+Hb//f5c+r+4
 ZQgUEyv4puxZChx1IkhkqOV8Nq/DWSgP4kzGGjf6uxRVSHoCoOcKRFAQA
 xYCYwozLZIThCveiWBKb7zgccKg4tttaHk8KhFGWtziw09YvXa68Lp+L0
 duihVSmDUS2PfsdcQ79nCWCtsj28uhSbTqFMBg7jKZEyAmyw+VTCaiHxk
 3n8J5vj+SL/ws1hOyHK0MvReqKO1MHCOcYIuFsWV9pGtRozLdvJ3RLHkm
 3d//fSqtq3/GYiuVlW530tgL/y8BN7n59Gc4q+yMhCdGltPD6Ta4BjTer g==;
X-CSE-ConnectionGUID: 1hcriarERuWL++qxr0MqxQ==
X-CSE-MsgGUID: 9zZjOjqwQESmf6c7c2bK+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820125"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820125"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:19:47 -0800
X-CSE-ConnectionGUID: Zu6+LDTZRgu/uDZgq7tfQg==
X-CSE-MsgGUID: nhcOGsVJQPOXFOlpuwgFig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870848"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915: Bump RING_FAULT engine ID bits
Date: Wed, 12 Feb 2025 01:19:29 +0200
Message-ID: <20250211231941.22769-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
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

The fault engine ID field has been 5 bits since icl. Bump our
define to match. The extra bits were unused before icl so we
should be able to use the larger mask unconditionally.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 6dba65e54cdb..5e4f0545f558 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1041,7 +1041,7 @@
 #define GEN12_RING_FAULT_REG			_MMIO(0xcec4)
 #define XEHP_RING_FAULT_REG			MCR_REG(0xcec4)
 #define XELPMP_RING_FAULT_REG			_MMIO(0xcec4)
-#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x7)
+#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x1f)
 #define   RING_FAULT_GTTSEL_MASK		(1 << 11)
 #define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
 #define   RING_FAULT_FAULT_TYPE(x)		(((x) >> 1) & 0x3)
-- 
2.45.3

