Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD7D545D06
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 09:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B01113F2E;
	Fri, 10 Jun 2022 07:17:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C580113CF0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654845449; x=1686381449;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fn2PHs7M4dZXu7JH1dJRKT0PflHj9XVQQCVuZ+o430Q=;
 b=a+/+Fza0+VuI0SqhQe8Jru5m4TIX95FOWL3Gy8Mc9zHWpXdDAaOlhhOV
 owfykq+14fLqHHd+S0hDj+pLlJunYCOPeKItmxHADwyySf8Jrc1lnoa2q
 8mc5GcqZn9vUZRFhp6hFjFFBPFAUNOlnx8RW40t/FRKbTvjN1ZPLB4VjK
 2cjMlkpVrMYL8y7aRs3vg0DLY6CUedwUejQJgv6FbdWPHlwulE8iYg5yq
 HMk447cz2VWuRezst0hVs0A6onu6GHxF5m7ramnX834Bww4VLtEDgBgWh
 MJHN6Rp2/oTVBnuy/pEG0gxeyX6/5tI0XdvogKKSpt1jnPvgQ1AvkHSiw g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="302917288"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="302917288"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:29 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="828090974"
Received: from seamusk-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.39.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 10:17:03 +0300
Message-Id: <20220610071704.4150527-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220610071704.4150527-1-jouni.hogander@intel.com>
References: <20220610071704.4150527-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Do not start connector polling
 if display is disabled
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

Currently we are starting connector polling if display is disabled
using disable_display module parameter. Polling is just returning
always "not connected" state. This can be optimized by not starting
polling at all.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 8204126d17f9..5f8b4f481cff 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -668,7 +668,8 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  */
 void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(dev_priv) ||
+	    !INTEL_DISPLAY_ENABLED(dev_priv))
 		return;
 
 	WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
-- 
2.25.1

