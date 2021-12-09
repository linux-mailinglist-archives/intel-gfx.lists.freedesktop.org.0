Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9AD46EFC8
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0766A10EDDD;
	Thu,  9 Dec 2021 16:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63E610E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057893; x=1670593893;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4G6w4sA7qGaN+EztHvR1KnkiiDqexosGse0CzeWsc3E=;
 b=fKm6KJwGBQV+frzRL4+sI/hObiBbh1w+8i0HZu5u6O3mm/LXBnGt0vSB
 WrEJRzZMrzVynFvNQFTjwKck/uFjpz3eZjRlow8Q1taZr682/Mbl8aS5X
 HQYa6lze8oEipwJwl7gJdXCkj6Pa3QbeDAJVFwj9KeQ6WLmuafiIP/bYF
 OPdJmXUu+WCgkEaf49SlZOe4uvycz6Imn27o5L6dapofZnRL/5T+aSgWe
 KGMsP1WAPgyL3wJ3TRBtIHpXSCVBw/ri0eo02/RDFgoC6V2IsFx/WKyh6
 Qw644N4n7GXxIUqmOkNRPL+aDO61jsCtruvidN/Op/dbf9TGCduSBO/2d A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="324359751"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="324359751"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="480341392"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:51:00 +0200
Message-Id: <04f0ac36d56e3c1221c3c171c36d7617bb00c7c2.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/fb: reduce include dependencies
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

