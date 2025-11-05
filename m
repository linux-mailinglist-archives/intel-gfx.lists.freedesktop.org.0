Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CA2C376BF
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E06B10E308;
	Wed,  5 Nov 2025 19:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wt4F8FUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6281A10E32E;
 Wed,  5 Nov 2025 19:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369519; x=1793905519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nj/4o+5Dce/DEeZape6NvSnckCjVj78Ms+XjmZ8yCnU=;
 b=Wt4F8FURLOArSC/Em5t1TP1COGSP6lV6FrSKT/2BBdPvy45OBKK9SL+a
 6OvdHmfehhBqyaggXSUhvOnUikQUMibyOWaGWWXEBlJ71efdwImULhuIH
 VSkVjKwcbyPn+Pi/3jyzRW+muXr++BpwsHrYjUFFbIPRE93xMDhDpb1Zo
 jkHI6Zh5nMh155dDmHG94zlxxXVy5xJmAzRNrcZjQYj33oT7iq8NE/JLB
 XvQxySsqaDFmf/lypAXX0uQATRr5HfEedw91OggdtZgkzDo3VekRBL+Pr
 HYCe2BkF2zbJjr/jW4SCVV2S4+9TmB55uet8f+9M5M+6JyaLmLtt9lDRY A==;
X-CSE-ConnectionGUID: BgIVR/jVRD+6ouNEA+syHg==
X-CSE-MsgGUID: VB/DmOEfTn+yqR4Tgvryug==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64192499"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64192499"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:05:00 -0800
X-CSE-ConnectionGUID: h4BPqIEARyumNerfZohJnQ==
X-CSE-MsgGUID: lfiHHTxySYi6EBtRhFw6NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191642799"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:58 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915/hdcp: Use the default 2 usec fast polling timeout
Date: Wed,  5 Nov 2025 21:04:32 +0200
Message-ID: <20251105190433.16434-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For whatever unknown reason the HDCP code is using a custom
10 usec fast polling timeout instead of the normal 2 usec
value. Switch to the standard value to get rid of the special
case.

The eventual aim is to get rid of the fast vs. slow timeout
entirely and switch over to poll_timeout_us().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7195e8cf671c..d01733b6460e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -412,7 +412,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
 	/* Wait for the keys to load (500us) */
 	ret = intel_de_wait_custom(display, HDCP_KEY_STATUS,
 				   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
-				   10, 1, &val);
+				   2, 1, &val);
 	if (ret)
 		return ret;
 	else if (!(val & HDCP_KEY_LOAD_STATUS))
-- 
2.49.1

