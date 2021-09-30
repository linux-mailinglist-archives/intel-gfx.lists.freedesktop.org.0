Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9407441D89C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 13:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C036EB7C;
	Thu, 30 Sep 2021 11:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4E76EB7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 11:25:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="223274947"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="223274947"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:25:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="707902495"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:25:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 30 Sep 2021 14:24:36 +0300
Message-Id: <e2f79220ed2558f615c051e2533275a5dae1a04f.1633000838.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1633000838.git.jani.nikula@intel.com>
References: <cover.1633000838.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dram: return -ENOENT instead of -1
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

Avoid using the incidental -EPERM.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_dram.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 91866520c173..a506a2196de4 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -444,7 +444,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
 			break;
 		default:
 			MISSING_CASE(val & 0xf);
-			return -1;
+			return -ENOENT;
 		}
 	} else {
 		switch (val & 0xf) {
@@ -462,7 +462,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
 			break;
 		default:
 			MISSING_CASE(val & 0xf);
-			return -1;
+			return -ENOENT;
 		}
 	}
 
-- 
2.30.2

