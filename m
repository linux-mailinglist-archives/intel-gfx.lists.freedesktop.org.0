Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DEE546813
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC7C112745;
	Fri, 10 Jun 2022 14:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FCA112745
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654870252; x=1686406252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZ9HQpiDShNnRck70c/LS2EGyV/PkKEg++tgNz+dF7k=;
 b=HZr21xbqIKDs8194bNW3dsnmwOAUVvMr9tdvctQu3VYlRZrkmrKPoEgl
 75xYbwdIcstjEHqsTdVZZS+gIi+vOXF0h31XplRZ3lJBmP+hXpYHpOSLK
 UoxK8ZyAZudVJ+jCFjM53XWstC9jBjWY+IwPlmz6ieLqKIlbC/7TxXcen
 nwQK/wpcDvjLet/oCsWyd++qyKfKMqzOEd/nUibiFWGD+AJ/Kqy3mWk7P
 Z7+SF97UB7Ch1Pie0IAv8rvBDHPySMPI9oSy33h+cIgMxQcueyefH50YC
 rIGMfoeHfi7XzZpap02SAf1AfS50JtGdGAzKI8jEwzKeBXfsfwz9FUsZV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="266406000"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="266406000"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:35 -0700
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="586229104"
Received: from vrao2-mobl1.gar.corp.intel.com (HELO localhost) ([10.252.58.80])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 17:10:25 +0300
Message-Id: <3a0b52593f19a465dc0dd898db5f6bf13537d734.1654870175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654870175.git.jani.nikula@intel.com>
References: <cover.1654870175.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/bios: use dvi and hdmi support
 helpers
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

Improve clarity by using the helpers we have.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aaea27fe5d16..8f9b879e140b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2472,10 +2472,10 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 	if (port != PORT_A || DISPLAY_VER(i915) >= 12)
 		return;
 
-	if (!(devdata->child.device_type & DEVICE_TYPE_TMDS_DVI_SIGNALING))
+	if (!intel_bios_encoder_supports_dvi(devdata))
 		return;
 
-	is_hdmi = !(devdata->child.device_type & DEVICE_TYPE_NOT_HDMI_OUTPUT);
+	is_hdmi = intel_bios_encoder_supports_hdmi(devdata);
 
 	drm_dbg_kms(&i915->drm, "VBT claims port A supports DVI%s, ignoring\n",
 		    is_hdmi ? "/HDMI" : "");
-- 
2.30.2

