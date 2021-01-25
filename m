Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE29D302740
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9984A6E217;
	Mon, 25 Jan 2021 15:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FFD6E17B;
 Mon, 25 Jan 2021 15:52:46 +0000 (UTC)
IronPort-SDR: GffRSTYNFsvc8fPpTTbih0bCe5gLDd86ce5y+rtaICrZYZ5+JqCiqZ6qBgD25T7AfGQ3RqHrzn
 8zWEXwlqnE5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="166848001"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="166848001"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:45 -0800
IronPort-SDR: xG0tNyAeiWYgRZBw4D4U4V980XBn523BHLvSgowNr+SQDFM93evGIBsXS60BffiIJ9N+VQnvGw
 VAyaNIhYSWKA==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="361553991"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:25 +0200
Message-Id: <a27ffb488632240ce670434f0ea439a4519db2c3.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/dp: add MSO related DPCD registers
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
