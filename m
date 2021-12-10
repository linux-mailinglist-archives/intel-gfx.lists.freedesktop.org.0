Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD740470165
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9B710E2A2;
	Fri, 10 Dec 2021 13:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA2410E292
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142252; x=1670678252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X9O8eGfuwx9BGPytK3uW2JwCsr/XEsch1Pve3woOJrk=;
 b=M78VHKmYU2gNpdhOXVs8wJCrnkZp/8uk3JYKpHPIcoidvTViXYsyffYs
 cIoUTQzwvFDuJzV5w9C4wXvxhyPyx/G3aIGsqlouTzxPpTjmHzj8QgjLb
 84SPv2TiyYWs6X07ucAg/mJ5BLPj3rsbO+XYWF9EL//lz+q67eDI5LqSW
 AH7gZDhGrBJ1tBmf+eMR9Y3jfzaq4blCrW8bL6H3vnDTCqyygohZJBMrc
 4Zd4HHJ7sqYnvnSAzBhO2EpvP8kJEWB2Folr2FtJ5kU4h9JzhYJbTUIcw
 dX3FIsT6Sa51Ss0ULdcNvN81vbDVN1NcH80zkYIjXW+X0nP2dFdmhTG68 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218365074"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="218365074"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="503929224"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:16:58 +0200
Message-Id: <fb54050e03f830a1b29eb14cb37466f39c499cc2.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915/fbc: avoid intel_frontbuffer.h
 include with declaration
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

Reduce include dependencies using forward declarations.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index b8d9cda85cfc..07ad0411fcc3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -8,8 +8,7 @@
 
 #include <linux/types.h>
 
-#include "intel_frontbuffer.h"
-
+enum fb_op_origin;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
-- 
2.30.2

