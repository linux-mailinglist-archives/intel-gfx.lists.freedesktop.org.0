Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4329835F2D3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 454BC6E931;
	Wed, 14 Apr 2021 11:51:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C0A6E92E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:05 +0000 (UTC)
IronPort-SDR: 0XTQ26wQrNdnPsSucvUbTIT1fG2FmvAKfMhTiFo3rkOURuySDb/oqaI1t9R7Ot8yyOEThYTbku
 NkEkFQbJFSww==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119571"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119571"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:05 -0700
IronPort-SDR: TDNP3FO4Z4lOcNLEUw0puRy2a0eV+/V7MpDIR5UbJX3B6sRG0/9pN6mttLKPL2F9ujCqp/WDg8
 D2xJs6Kw4+Xw==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965270"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:04 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:23 +0100
Message-Id: <20210414115028.168504-24-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 23/28] drm/i915: Use IS_GEN in intel_bios.c
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_bios.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_bios.c b/drivers/gpu/drm/i915/intel_bios.c
index aa4df6548771..15c18d24e4e9 100644
--- a/drivers/gpu/drm/i915/intel_bios.c
+++ b/drivers/gpu/drm/i915/intel_bios.c
@@ -391,15 +391,12 @@ parse_sdvo_panel_data(struct drm_i915_private *dev_priv,
 static int intel_bios_ssc_frequency(struct drm_i915_private *dev_priv,
 				    bool alternate)
 {
-	switch (INTEL_GEN(dev_priv)) {
-	case 2:
+	if (IS_GEN2(dev_priv))
 		return alternate ? 66667 : 48000;
-	case 3:
-	case 4:
+	else if (IS_GEN(dev_priv, 3, 4))
 		return alternate ? 100000 : 96000;
-	default:
+	else
 		return alternate ? 100000 : 120000;
-	}
 }
 
 static void
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
