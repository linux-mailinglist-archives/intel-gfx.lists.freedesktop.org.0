Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 251897F3E5B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 07:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B51110E5B5;
	Wed, 22 Nov 2023 06:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD5910E5B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 06:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700635938; x=1732171938;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JreSWUet6pd7aToO4aOua3x1OdLERM8zF2RqtLeFsqs=;
 b=Tw2WMgRK+YQFU0wMZDSPuN6PG47Um192eKaoohUqy6gL9I4ZGi+jIgxW
 F1Lhz5lt8UMNyUllFwoBzlS6nTXECF4oz8gM+nenuEWygv/0f+SNlpywk
 JCceqTvBw47odznT6IVN9YNt/PDtz79XpDk1zqvblDz8QKQWr0NJgxATb
 rdCXEiVYfnuYe1Ryaw5yNNv/n5XcLdMJBzyUXFH5k60E3O3HtMCjN/FQN
 qqLowHHK/A921lU2QWf2LElgt4Q5NXy/LJBla2zrih9R/nJ1XE0oyj8RG
 y74IGpTlkj915Wn/mwjeC1sjMFuoO8SYvBaZxZNsagFVz+LuArWfSTHri Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="394831168"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="394831168"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 22:52:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="940336064"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="940336064"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 22:52:16 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Nov 2023 12:16:27 +0530
Message-Id: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Get bigjoiner config before
 dsc config during readout
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

Currently we get bigjoiner config after the dsc get config, during HW
readout.
Since dsc_get_config now uses bigjoiner flags/pipes to compute DSC PPS
parameter pic_width, this results in a state mismatch when Bigjoiner
and DSC are used together.

So call get bigjoiner config before calling dsc get config function.

Fixes: 8b70b5691704 ("drm/i915/vdsc: Fill the intel_dsc_get_pps_config function")
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 959db3f61e84..e086caf3963d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3694,8 +3694,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (!active)
 		goto out;
 
-	intel_dsc_get_config(pipe_config);
 	intel_bigjoiner_get_config(pipe_config);
+	intel_dsc_get_config(pipe_config);
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(dev_priv) >= 11)
-- 
2.40.1

