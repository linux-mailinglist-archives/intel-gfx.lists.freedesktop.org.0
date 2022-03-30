Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF1E4EC691
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 16:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E6F10E1E6;
	Wed, 30 Mar 2022 14:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B6A10E1E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 14:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648650629; x=1680186629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zkfB32ZIt9le4go58oiKuJchQv4WQoI0xn7BC0c0ls0=;
 b=Lb3mJh1dV4wK9qS6Mq6LXajOwaJesbxeURwV8SvbGajPchuIVfaDHvtI
 oYs+AnTk0A3FUg5r5SezvqKf0DgF6ESZJed4684BU8hVskFmh6AJFOWMl
 P2oL6AHPOVe+SRraTjvwrh5jZ4wr9b9AJCui9wdbdCmgHnvpLyz4+ZNwT
 R7bIQER6Rre8hmZnvHBAZ5E057H7UpgbJifwnPr3CaHxY8dUdyyXw7ylx
 +VkJZuz7SwI6vnbF64U6zB2Zimp/S5ls5LEOz/FfVuuEQBFGwEahHy1mK
 r+BEfQdKsaQQcQLqTWyz3lGFB4Wod96K1spjhJiQbJxeLw6Hh3lD1jsT1 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241711261"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="241711261"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 07:30:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="653851221"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 07:30:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 07:31:34 -0700
Message-Id: <20220330143136.84930-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330143136.84930-1-jose.souza@intel.com>
References: <20220330143136.84930-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 2/4] drm/i915/display/adlp: Adjust MBUS DBOX
 BW and B credits
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Caz Yokoyama <caz.yokoyama@intel.com>

Alderlake-P has different MBUS DBOX BW and B credits than other
platforms, so here setting it properly.

BSpec: 49213
BSpec: 50343
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8501929bca3aa..e5f12f2040af8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1845,7 +1845,10 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
 	else
 		val |= MBUS_DBOX_A_CREDIT(2);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		val |= MBUS_DBOX_BW_CREDIT(2);
+		val |= MBUS_DBOX_B_CREDIT(8);
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(12);
 	} else {
-- 
2.35.1

