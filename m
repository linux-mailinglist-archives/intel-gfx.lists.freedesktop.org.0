Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B81CC53FA0B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 11:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077CC12AFEB;
	Tue,  7 Jun 2022 09:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D6912AFEB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 09:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654594936; x=1686130936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PauYYvuei1zOg0R9zhKtElme3YK3yym1LekVkJ1l3uo=;
 b=ZR6JlZekMqjy2AVks8m8XlKXLUxOWVPBJt/h6YIbm4u3Cocr8FZMOIGp
 u/s0VcsijDKCl9DfOrlsFtfAoM2ZBzuDnds0C9+1LWB2vV6cRXsZ4QhfZ
 Iukjut/qWYeqxWzjXUsBLPNykgPWltICcWjqi39srSx842JfMBZuhpY9v
 +yrZfzW5iGVQK1f1vs1T8rntQDZq6DMJ3bhj74l8y/ymR+F1A269FqW7d
 zW6+lSufSje4v217Tzd0IPiHNg0pkouPkjphphnU4+rYpPnOYYUNSjV1c
 TfBXrKAc87nI9srP+5tKMkxR+l4Cg0jmkHE2oEZOTjVkbjn9UZmVLC+64 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="257158565"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="257158565"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:42:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="584126470"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 02:42:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 12:42:06 +0300
Message-Id: <20220607094207.536699-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220607094207.536699-1-jani.nikula@intel.com>
References: <20220607094207.536699-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/3] drm/i915/drv: drop intel_bios.h include
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No longer needed after panel data was moved.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c3854b8a014f..eba94fa76b18 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -37,7 +37,6 @@
 #include <drm/drm_connector.h>
 #include <drm/ttm/ttm_device.h>
 
-#include "display/intel_bios.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_display.h"
 #include "display/intel_display_power.h"
-- 
2.30.2

