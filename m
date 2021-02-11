Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAA2318DA7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB0DB6EE44;
	Thu, 11 Feb 2021 14:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E01696EE43
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:53:07 +0000 (UTC)
IronPort-SDR: y5SaSV1ZWOkVe7Z8cyo1jJGC4MvooePxeUxylKJqhz7dTieaGDPkRO1h7E2sYKp/5bO9yc7jWn
 qVz5P1CPWNRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="243741697"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="243741697"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:53:07 -0800
IronPort-SDR: eRf5BKgHmpw2OmsCQMJaK/lbY+8mNcxLUA76/tCjBTP0cL3mk83tFuZI/QO5Y4f9JhC/p7/Yqw
 7DS9kpfOcJKA==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="360014006"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:53:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:17 +0200
Message-Id: <77226d7dbb09090b646e4325d3cf304669a910b7.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/9] drm/i915/mso: add splitter state check
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
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fe9985bd5786..3059a07b8c36 100644
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
