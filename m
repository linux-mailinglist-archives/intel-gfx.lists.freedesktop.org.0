Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CD57C5907
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 18:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4093210E983;
	Wed, 11 Oct 2023 16:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2653D10E983
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 16:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697041268; x=1728577268;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a8CJF7+9kodHPFYtKad+qE0Cf3dj9nd8ebnqVLRSvsI=;
 b=HVbAVMOXTJQlrUsscHLC/v7DVO+2Zee7bCFVOeKv8IUmbm85fz3+Qgpn
 kJFW6dJyh1YwZf/LeDhPBY20GdZr3yiID7Xzo2JLtWlOwZN2iwHd75JSZ
 csXTg0FXY8io/uwXt/0Blrvg8+QNkgOSGN3GTY4zqaf8h1DrxO3yz0s/b
 47tk1ZqCUgXdMWLdJw5NyaA9qBpUVwZEbZuOIzkLEhdVuIeKqHL6dHhss
 3moXbvT5yXzl+87Kw12eFshz+2DKup8YLhHaxTx14PcrMIiiv84vNs2nZ
 ptV5bOJWS9BppGZo+6HOkDVj2wTfczwg9NgNOX0OaIQI9Z5EkfvBuofgN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="448907855"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="448907855"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="824238554"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="824238554"
Received: from lpaczyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:21:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 19:21:02 +0300
Message-Id: <20231011162102.1030354-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: stop including i915_utils.h from
 intel_runtime_pm.h
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

Remove an unnecessary include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index f79cda7a2503..be43614c73fd 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -11,8 +11,6 @@
 
 #include "intel_wakeref.h"
 
-#include "i915_utils.h"
-
 struct device;
 struct drm_i915_private;
 struct drm_printer;
-- 
2.39.2

