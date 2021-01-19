Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E410F2FB542
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB866E0AF;
	Tue, 19 Jan 2021 10:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F876E0D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:22:11 +0000 (UTC)
IronPort-SDR: 7/LIwe5RH5NISlVuoHEl9WdV/5HX213c0uPVnWPq3Bi4jLqliMxZlfxTePB2GR09sGAOuSqk+Z
 WlhgRFhj+vMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="175403368"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="175403368"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:22:11 -0800
IronPort-SDR: ZdNuhoszkNqnoo/ZHAKC7xmJejjLLmH5r1icqd6HF/ONXBkcFcOpZQsUpqdH6pXi5mUDdpme+b
 veqVfDlHW21A==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="383876536"
Received: from obaracos-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.44.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:22:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:22:00 +0200
Message-Id: <1e33760f776359de8de5e164dbc8d4b988baf03d.1611051544.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611051543.git.jani.nikula@intel.com>
References: <cover.1611051543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/dp: add MSO related DPCD registers
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add DPCD register definitions for eDP 1.4 Multi-SST Operation.

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/drm_dp_helper.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 6236f212da61..a6ebecdcf1d4 100644
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
