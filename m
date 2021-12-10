Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49626470166
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6890C10E2B6;
	Fri, 10 Dec 2021 13:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920D610E29B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142257; x=1670678257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/LAn3G/T+KFCuXInbFZjKXVv2tw0jxdaWc5TGky+kS8=;
 b=VeKLP6/aDSDx84rt1sct3gd4zuvPr4Po7dLwqVeANdAPwfwXCD9E6ARP
 HCWjI4E+tOOstp7QHxul1f0GrYh9abQ0B5Qhe4JmdByV8PMhhWkoKYlvp
 KWTP8fZ33+GkQh8QIjxwLQ1iAaMKKecCtEb+q2amsXU10jGBl1gMfsUyC
 A8hl77FVrutPdCxDsXCBvTsixT1TSNtNniHPGUP3o2AF5CGRRLj5BobhS
 CPEZwXzmx/RvkRvHCUhwt7/08O7O5kCYd/RBF5CPaVXlDJeix6KtwVPKX
 cHyfPnBv0OoGLRHzHncWrvYQnDtrtdSqlPkwyIgNbFfJLpowsTJAEsfyH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="235856492"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="235856492"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="480724273"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:16:59 +0200
Message-Id: <aed5f1afda4448ec46c7ff1f95291edebf355790.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/fb: reduce include dependencies
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

We actually need i915_active_types.h, not i915_active.h.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index a88441edc8f9..ff0c37b079aa 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -28,7 +28,7 @@
 #include <linux/kref.h>
 
 #include "gem/i915_gem_object_types.h"
-#include "i915_active.h"
+#include "i915_active_types.h"
 
 struct drm_i915_private;
 
-- 
2.30.2

