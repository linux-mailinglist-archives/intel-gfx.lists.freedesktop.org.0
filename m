Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24FD6A6D81
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 14:54:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0562410E25A;
	Wed,  1 Mar 2023 13:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C40F10E269
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 13:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677678869; x=1709214869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fF2Bmo9ON3kHPuQ7nBQ24OnKQfqn/1NRMytT+kUGiAs=;
 b=Awv8+5cbf9vzDHQR2CnXukL3i/BmWNYpfQ7rOq5s/OO3DyGChnlvhRwS
 Xy8LFbci2qNzqJyWCWCE3Z+A7klHWS914HN6IHh32GnZXlW08G9z1nnh2
 RUb0kvhHl3fPiNMZObxl9iDet76DTIzTstCdLqsnE2t69X/QXazzQI6dl
 985J+VTJUwpQHyW4PW3F8YG5+AnfhM83Olo/diqb5gDxkhLo4S0u8Xhrn
 B0PHsGkILKkNZqKwjSwFi7rHgINksVoRThflt7+oAFjJ64cNPYaMJS0j0
 2g6V/2C78CvfOfJisMLMpjn2WnRFYj1oWLsQotlkmGLDC5mcqQchHik8W Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="333139379"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="333139379"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="667875542"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="667875542"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 15:54:15 +0200
Message-Id: <f11cbbdb5a5c8961fcae0b3f6c87860ee00f8c26.1677678803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1677678803.git.jani.nikula@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/wm: remove display/ prefix from
 include
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

Remove the leftover from moving and renaming the file from driver top
level.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_wm_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_wm_types.h b/drivers/gpu/drm/i915/display/intel_wm_types.h
index bac2b6fdc5d0..628b7c0ce484 100644
--- a/drivers/gpu/drm/i915/display/intel_wm_types.h
+++ b/drivers/gpu/drm/i915/display/intel_wm_types.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "display/intel_display_limits.h"
+#include "intel_display_limits.h"
 
 enum intel_ddb_partitioning {
 	INTEL_DDB_PART_1_2,
-- 
2.39.1

