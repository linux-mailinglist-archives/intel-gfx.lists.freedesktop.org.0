Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D8323EB1A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 12:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5636E9BD;
	Fri,  7 Aug 2020 10:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B24D96E9BD;
 Fri,  7 Aug 2020 10:02:08 +0000 (UTC)
IronPort-SDR: 99SipvRhL7f0UQrZuA7JAHGCsObYcjEEVpT8Njyhe2+VGTHMxLwdrnHpa8ORsWMFFZjE7fWgjN
 uKwNamB1vX9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="132604178"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="132604178"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 03:02:08 -0700
IronPort-SDR: 1yCDtPNIVDUIuDLXqk00YYSixtA6ams/6UZD4f1n6lz0ykNJ6eR0QW+O+r4kgUtLJ8Z68lZ0+O
 7zZnOrxp9aKQ==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="468178433"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 07 Aug 2020 03:02:04 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Aug 2020 15:05:51 +0530
Message-Id: <20200807093551.10673-8-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200807093551.10673-1-karthik.b.s@intel.com>
References: <20200807093551.10673-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 7/7] drm/i915: Enable async flips in i915
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
Cc: paulo.r.zanoni@intel.com, michel@daenzer.net,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com,
 harry.wentland@amd.com, nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable asynchronous flips in i915 for gen9+ platforms.

v2: -Async flip enablement should be a stand alone patch (Paulo)

v3: -Move the patch to the end of the serires (Paulo)

v4: -Rebased.

v5: -Rebased.

v6: -Rebased.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9629c751d2af..3574b2700b99 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17901,6 +17901,9 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 
 	mode_config->funcs = &intel_mode_funcs;
 
+	if (INTEL_GEN(i915) >= 9)
+		mode_config->async_page_flip = true;
+
 	/*
 	 * Maximum framebuffer dimensions, chosen to match
 	 * the maximum render engine surface size on gen4+.
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
