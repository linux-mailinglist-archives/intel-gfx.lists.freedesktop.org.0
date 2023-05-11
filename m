Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A86FEE16
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 10:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F5510E1E0;
	Thu, 11 May 2023 08:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89AF510E1E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 08:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683795360; x=1715331360;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Em2FBgSfCX2bcp1hec6avrg/srsZg3ekc2QGfYG6TuA=;
 b=D6TX7yEpi07+0KsKjoOcRtGabWezkoqyCqrkBFBQENiYiCyxlMo/vZWU
 vEYNE7ogvGo1DwXKJEL7uaQJtK/5SMg6FMlnLziaD2izZ0A2sH5MiNhdw
 UzaqIPnd2y25psrpzizgQhxPuHrZiTOapetkA524Jc7IEbES9CkowdUhf
 p2eCT4fsfBYc9HGQPZxvAbkRRwkdLLTmrNHDY4zX80eNkiM9G6HI7glBT
 dkgrd31WT4tamIQh0w3fJNs9VBirNXBW7w+bgtMJitAtZxD+axuXJ4T2W
 pOcrFpfsq0Qv+tZsjtEkg7zPoivnl7mx8iGJB+ssTJH0JIjFoUglH0PdW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334923483"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="334923483"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:55:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="1029546806"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="1029546806"
Received: from nbathi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.185])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:55:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 11:55:53 +0300
Message-Id: <20230511085553.799321-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: drop display/ prefix from include
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
Cc: jani.nikula@intel.com, Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The display prefix is unnecessary within the display sub-directory.

Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 7e52aea6aa17..4056bb2323ca 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -5,11 +5,11 @@
 
 #include <drm/i915_hdcp_interface.h>
 
-#include "display/intel_hdcp_gsc.h"
 #include "gem/i915_gem_region.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
+#include "intel_hdcp_gsc.h"
 
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 {
-- 
2.39.2

