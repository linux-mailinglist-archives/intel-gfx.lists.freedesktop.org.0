Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECCD329B3E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 12:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30DA89D46;
	Tue,  2 Mar 2021 11:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F0B89D46
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 11:03:23 +0000 (UTC)
IronPort-SDR: yoSd3+ShG9Dy31JJanTB7XJld45N9MycF+dAoCC3CkPUcfsd/PSWFD8zKry3kW3Fa9Ys2dWkTs
 LgxZ8oPJ5tpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="166012561"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="166012561"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:03:22 -0800
IronPort-SDR: DC4GmEdclNRan2PDTL8JmtxuUMygYqDTif+sGtpNuKiu9eKq+gkSndQz3eimIyFpQiwlS9pWpN
 d3WfIoEdmuUA==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444703321"
Received: from rwathan-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.106])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:03:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 13:03:00 +0200
Message-Id: <459a332f3cdce941c57312150872559db68f88c1.1614682842.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1614682842.git.jani.nikula@intel.com>
References: <cover.1614682842.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/mso: add splitter state check
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

For starters, we expect the state to be zero, as we don't enable MSO
anywhere.

v2: Refer to splitter.

Cc: Nischal Varide <nischal.varide@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49f2a974eca2..48750435fbd6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9326,6 +9326,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
 
+	PIPE_CONF_CHECK_BOOL(splitter.enable);
+	PIPE_CONF_CHECK_I(splitter.link_count);
+	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
+
 	PIPE_CONF_CHECK_I(mst_master_transcoder);
 
 	PIPE_CONF_CHECK_BOOL(vrr.enable);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
