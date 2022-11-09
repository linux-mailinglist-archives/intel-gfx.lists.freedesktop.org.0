Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E09C76222EE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 05:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A96810E05C;
	Wed,  9 Nov 2022 04:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE4010E058
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 04:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667966607; x=1699502607;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YeKOsv/N775ZT/fmDxo2aEbzJJdoDjFINw/BckoRixA=;
 b=BHOib+zsSn7tzR+1vJMWBMrxJ4em2Uny0sjdYsPFTvnVuTHNVUe29k82
 oyv38lHnLdkRYAE4abG3nFPC32dhxkcGLT+Qip7zT/6n60wQhyQXQGi65
 gylydOfSn4A3N2X1d8oLUPxlVkORBuviokDUHvKmNpB7poK3EcXMzTOgt
 alNWbDpKlgV1VPVnSzdRhm/DHDr0RvYKRhUXx+WEvt9CZfRvT3wEWfN7I
 cXf5aOiiN+rbW1ucC6egp01d0c78SylRWIpKOqAdo24dIv9yZRzAdYxtZ
 Nvo31kDJBtrFCo2hDc+G5YmhTLZFIIucciRIh7aaI8rliLzcHR3DmiiUT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="309593088"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="309593088"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 20:03:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="965841161"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="965841161"
Received: from nischal-desktop.iind.intel.com ([10.223.74.174])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 20:03:25 -0800
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed,  9 Nov 2022 09:33:24 +0530
Message-Id: <20221109040324.17675-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: mode clock check related to
 max dotclk frequency
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

A check on mode->clock to see if is greater than i915->max_dotclk_freq
or greater than 2 * (i915_max_dotclk_freq) in case of big-joiner and
return an -EINVAL in both the cases

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..813f4c369dda 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -995,6 +995,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		bigjoiner = true;
 		max_dotclk *= 2;
 	}
+
+	if (mode->clock > max_dotclk)
+		return -EINVAL;
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-- 
2.36.0

