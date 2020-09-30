Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2F827E175
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C22D6E511;
	Wed, 30 Sep 2020 06:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF356E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:55 +0000 (UTC)
IronPort-SDR: ZhEAfbCgduqPo5oQ0sG8Sob3ifri79RXlUekzJeKOieCWfb5UxKX4MtZjpJjJnlesDJBF+K2QH
 hrr2dB8Btqdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387783"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387783"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:54 -0700
IronPort-SDR: /BvcJhFjVIalkV1FfSa+/XIUXIIVr/4TawPUXyXfKeYexQqTbEe1N+4qZigUwwHXQT+zfIaI9F
 B1wrqyBVu8zw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487770"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:32 -0700
Message-Id: <20200930064234.85769-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 22/24] drm/i915/dg1: DG1 does not support DC6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

DC6 is not supported on DG1, so change the allowed DC mask for DG1.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 0827e68a9d89..7dfc697ccf78 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4689,7 +4689,10 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	int max_dc;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		max_dc = 4;
+		if (IS_DG1(dev_priv))
+			max_dc = 3;
+		else
+			max_dc = 4;
 		/*
 		 * DC9 has a separate HW flow from the rest of the DC states,
 		 * not depending on the DMC firmware. It's needed by system
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
