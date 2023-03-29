Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AE76CDB30
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E574910EAF9;
	Wed, 29 Mar 2023 13:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBF7D10EAFE
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097836; x=1711633836;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q5urDJsskuWWNG3pStiOS5fJAlxFiNbgrJo6PFqPX/U=;
 b=FDETCv9yj/PtrdsRewvj5SJWOlyJ0U9ynp4CltmkvgpR9MuIjMcoWrBu
 hbU16p085SD2l1jwTvnWsG6m2yG4wC9fRzDzrMmu+6EIbIeuLpxP6f9w0
 YUKPvjux9d55CU7g7ztdTBg6d7fEw2gREflBFgHFo7cNoHqBiQ3jERm2Y
 WL9HJZ6FLZLzqyJqRVxs4gxQ/NNRHR7UbK/RCPbVw/VGgd+kDR9GHI6yv
 c5bEOV4DpKoGjzlg1mmBpeQHl3m7xMzHaZ2w1bikUgUZayXcM1AJYesOo
 udMq4Py55CRhQ1UFmPs9whIZhykQEnnjv2Im13gAd4l4+7usTpL9bkQnC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379100"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379100"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029509"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029509"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:50:01 +0300
Message-Id: <20230329135002.3096-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Hook up csc into state checker
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Have the state checker validate that the csc matrices
look correct when read back from the hardware.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aa22241c971c..763f7fdfb27c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5643,6 +5643,24 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_CSC(name) do { \
+	PIPE_CONF_CHECK_X(name.preoff[0]); \
+	PIPE_CONF_CHECK_X(name.preoff[1]); \
+	PIPE_CONF_CHECK_X(name.preoff[2]); \
+	PIPE_CONF_CHECK_X(name.coeff[0]); \
+	PIPE_CONF_CHECK_X(name.coeff[1]); \
+	PIPE_CONF_CHECK_X(name.coeff[2]); \
+	PIPE_CONF_CHECK_X(name.coeff[3]); \
+	PIPE_CONF_CHECK_X(name.coeff[4]); \
+	PIPE_CONF_CHECK_X(name.coeff[5]); \
+	PIPE_CONF_CHECK_X(name.coeff[6]); \
+	PIPE_CONF_CHECK_X(name.coeff[7]); \
+	PIPE_CONF_CHECK_X(name.coeff[8]); \
+	PIPE_CONF_CHECK_X(name.postoff[0]); \
+	PIPE_CONF_CHECK_X(name.postoff[1]); \
+	PIPE_CONF_CHECK_X(name.postoff[2]); \
+} while (0)
+
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config->quirks | pipe_config->quirks) & (quirk))
 
@@ -5740,6 +5758,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_COLOR_LUT(pre_csc_lut, true);
 		PIPE_CONF_CHECK_COLOR_LUT(post_csc_lut, false);
 
+		PIPE_CONF_CHECK_CSC(csc);
+		PIPE_CONF_CHECK_CSC(output_csc);
+
 		if (current_config->active_planes) {
 			PIPE_CONF_CHECK_BOOL(has_psr);
 			PIPE_CONF_CHECK_BOOL(has_psr2);
-- 
2.39.2

