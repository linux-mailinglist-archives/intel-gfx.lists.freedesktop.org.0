Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF8EBFBCE2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 14:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5BF10E76C;
	Wed, 22 Oct 2025 12:15:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZaLj3bg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEEE10E76E;
 Wed, 22 Oct 2025 12:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761135300; x=1792671300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/2cIdzqXu/jNKAxty3QMbMKgy4rLctn3f2eZyz0EJHI=;
 b=AZaLj3bg4yyZkt5gU89WHWISOyEzmdWVzGkcy7DFdze2rSSdHtPg+X/2
 INZZhyhEaXqoKFh/EQ0kmnuV65KAnmW52RVwbaevWhRvGosylEtZbbYwI
 yeBaSWRpV9cqvyla2OMsQgdpjIP2jDi0WxdX6cfZwG6IoLpl7T/tCifMu
 escw2Ol6EXFYRZGgu6AVTEXl5m8ZE4W6aB+vhTE87yKxSX2/N84O0f0Sd
 ehNBCTxhaAmdvCyh2XR61VmqS/p+3l90oSNdvCSIDQsb7FYHIsLYLNPkT
 HoJys0pE/a0/Zi7tjNv18Zr1GPznR5JvxvbqKKMhLldjpjFGmQrSYpqqo Q==;
X-CSE-ConnectionGUID: nLEgi1WgQx2KjdEhAAao8Q==
X-CSE-MsgGUID: RE4WwRdXSdCokSgy1+8C5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63187864"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63187864"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:15:00 -0700
X-CSE-ConnectionGUID: 3qDtgMIwQq2Y44TCgmFagg==
X-CSE-MsgGUID: JpTfE7u0TpeNjufwPAWNCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="188983242"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 05:14:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/xe/compat: drop include xe_device.h from i915_drv.h
Date: Wed, 22 Oct 2025 15:14:50 +0300
Message-ID: <20251022121450.452649-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251022121450.452649-1-jani.nikula@intel.com>
References: <20251022121450.452649-1-jani.nikula@intel.com>
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

xe_device.h and xe_device_has_flat_ccs() are no longer needed since
commit 3a5c5c472c0e ("drm/i915/display: add HAS_AUX_CCS() feature
check").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 7c657ea98a44..3e79a74ff7de 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -12,7 +12,6 @@
 
 #include <drm/drm_drv.h>
 
-#include "xe_device.h" /* for xe_device_has_flat_ccs() */
 #include "xe_device_types.h"
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
-- 
2.47.3

