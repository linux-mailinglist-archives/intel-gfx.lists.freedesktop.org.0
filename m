Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A75318D9F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:52:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5ECF6EE3B;
	Thu, 11 Feb 2021 14:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E45A6EE35;
 Thu, 11 Feb 2021 14:52:33 +0000 (UTC)
IronPort-SDR: f9IQ9uJFDO5dekKpS2+InZr8h+qDYOhN7Rhn5pPiwsB/V5THep7DGoBTzTs86ztLT3U/vRXwlk
 5rv+v5WDRC3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182383395"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182383395"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:33 -0800
IronPort-SDR: AhvmfudvwlKh1iSVTrvXRKC1gLJ2I6nHB7URXQTDIGcUeVWXosfg7ZzwKkoYO+fwKT/MTK8r1Z
 gnyWXCgzUEZA==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="397339926"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:11 +0200
Message-Id: <ab57627f373ec4a80494bb51ea51080810d9bfb0.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/9] drm/dp: add MSO related DPCD registers
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add DPCD register definitions for eDP 1.4 Multi-SST Operation.

Cc: Nischal Varide <nischal.varide@intel.com>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/drm_dp_helper.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index edffd1dcca3e..632ad7faa006 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1016,6 +1016,11 @@ struct drm_device;
 #define DP_EDP_REGIONAL_BACKLIGHT_BASE      0x740    /* eDP 1.4 */
 #define DP_EDP_REGIONAL_BACKLIGHT_0	    0x741    /* eDP 1.4 */
 
+#define DP_EDP_MSO_LINK_CAPABILITIES        0x7a4    /* eDP 1.4 */
+# define DP_EDP_MSO_NUMBER_OF_LINKS_MASK    (7 << 0)
+# define DP_EDP_MSO_NUMBER_OF_LINKS_SHIFT   0
+# define DP_EDP_MSO_INDEPENDENT_LINK_BIT    (1 << 3)
+
 /* Sideband MSG Buffers */
 #define DP_SIDEBAND_MSG_DOWN_REQ_BASE	    0x1000   /* 1.2 MST */
 #define DP_SIDEBAND_MSG_UP_REP_BASE	    0x1200   /* 1.2 MST */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
