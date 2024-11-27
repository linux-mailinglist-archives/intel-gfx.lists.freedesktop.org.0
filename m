Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A459DA766
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D67D10EAC2;
	Wed, 27 Nov 2024 12:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJzqSU8Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6C710EABC;
 Wed, 27 Nov 2024 12:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709269; x=1764245269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nzFMqJnJayPxffBvYn7qT14XCfU+ODfvzHercHCjiO0=;
 b=KJzqSU8ZXdIzpvq6pLdCSlLJeR+A20OspvxddP/did1UXdK2Y+q8bVgc
 oqusyDE6+gOGVKTJTndsLSwJY6B3Bcx1bsL5WDjHEdzdndKunCrwYuicS
 yITh3jV9FSwuM1l9x1oZqCTqnUzG2mo8BvZ/8ufyoDJ6VNde7kdwznDUI
 Ify2GUUvCdFZkqYMHKCo20U7aZrRwX9ByBCNxGzdrleyKAJ/+gU/al7c+
 ipmKLr5b+/DXZ7GeYMsvDTUVR7vTYS3JUkdQvn2wWZ8VAAEpiRasArDe4
 0LwqVcbN3Gch9NOdGMwg/Y2IM4BrOOgQFPhbQN/bIEWl0p4wDbdqEznfD g==;
X-CSE-ConnectionGUID: LB8lFctYQjCIZYtNM2NdJA==
X-CSE-MsgGUID: YWgxUe51QsWWXMGfW3/iKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972830"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972830"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:49 -0800
X-CSE-ConnectionGUID: SB+/qYAlQ8uT0aRzCNhhOQ==
X-CSE-MsgGUID: EYOvYgNJQHir1rdjw730Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754985"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:47 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 5/6] drm/i915/display: update audio support based on the
 available frequencies
Date: Wed, 27 Nov 2024 14:07:14 +0200
Message-Id: <20241127120715.185348-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

After pruning the sad audio frequency list, if there are no
supported audio frequencies left, audio cannot be supported.
So mark has_audio accordingly.

v2: avoid bitwise operations on bool and use str_yes_no (Jani)
    use intel_display instead of i915

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index cf88728b8f80..f0a50dc3b8a6 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -797,6 +797,7 @@ bool intel_audio_compute_eld_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	bool audio_supported = false;
 	u8 *eld;
 
 	if (!intel_audio_eld_valid(encoder, conn_state))
@@ -826,9 +827,18 @@ bool intel_audio_compute_eld_config(struct intel_encoder *encoder,
 				    sad.freq, sad_freq, sad.channels,
 				    sad_channels);
 		}
+
+		/* If no supported freq in any sads, report audio not supported */
+		if (sad.freq)
+			audio_supported = true;
 	}
 
-	return true;
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] audio supported: %s\n",
+		    connector->base.base.id, connector->base.name,
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(audio_supported));
+	return audio_supported;
 }
 
 bool intel_audio_compute_config(struct intel_encoder *encoder,
-- 
2.34.1

