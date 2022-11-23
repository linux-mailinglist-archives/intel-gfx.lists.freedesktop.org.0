Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52476635138
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 08:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F264E10E500;
	Wed, 23 Nov 2022 07:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41DD10E4F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 07:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669189436; x=1700725436;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wZ1VzSaqQP3DgdBbop9Zj5TCgHkH1CYhU0i3fY2oAy8=;
 b=Hme84/lNR49QZ6gUQkFNyhrZqRbwfq9HI/pwGgPinkVkCN+szqCD2Laj
 /gvcLiG/dSrwgHk2Gl9AjgPX4AkW9ZQKWnINAS55KudaisJ9mgC/F+vAB
 jqxlcAtw7PHu74fELOCVNctHKywsuHCEokgivy+t7ABYXFMpqfu923KDw
 7xMkxow1KPha8MwHRVFqqki76UAM+6QXt6JilMX9TUD9G2kG/zfYFZkt4
 9hhSJtOAcKczfVOni+ABUrswnJLm3UmEDA71MaJk9jAnob34KQGibwPU6
 Ypr9Xx3lEX70LBJ29X6EwuOlypXukUl4xv/PwXL/VJ5ac8d1qRrjYT776 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="293713341"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="293713341"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 23:43:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="730692265"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="730692265"
Received: from nischal-desktop.iind.intel.com ([10.223.74.174])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 23:43:55 -0800
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed, 23 Nov 2022 13:13:56 +0530
Message-Id: <20221123074356.7513-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: A check on mode->clock,
 if it exceeds max_dot_clock
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

Making sure that the  mode-clock is not greater than the
max_dot_clock freq.This patch will prevent attempts from
userspace to modeset with mode->clock greater than
max_dot_clock freq.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..e603b7c01d27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2045,6 +2045,16 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
+	if (!intel_dp_can_bigjoiner(intel_dp) &&
+			(adjusted_mode->clock > dev_priv->max_dotclk_freq))
+		return -EINVAL;
+
+	if (intel_dp_can_bigjoiner(intel_dp) &&
+		(adjusted_mode->clock >  (2 * dev_priv->max_dotclk_freq)))
+		return -EINVAL;
+
+
+
 	/*
 	 * Try to respect downstream TMDS clock limits first, if
 	 * that fails assume the user might know something we don't.
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 02f8374ea51f..50603806a964 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2247,6 +2247,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (adjusted_mode->clock > dev_priv->max_dotclk_freq)
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
 							 conn_state);
-- 
2.36.0

