Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FA280916E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:35:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0F210E96C;
	Thu,  7 Dec 2023 19:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB48110E96B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977703; x=1733513703;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jTCaUSd2E9nBa0fWxNWrF3v/s65GonN9vsjrJfNmeng=;
 b=evdAei3L87/bIrsJYB6D51j29BJAM7mohAmmqUfA1VTPwhsItwDwDRbD
 qHjowPoKBvXHzoufSWdHdY6UgfDrxVp06XBUwKXpKMmzTsR9+UGKjFc+U
 0nDS46kXBaRsengO+fSlP+spDvd6UFf/ZLnFpTKY7K9j7lxzd04sEw9ey
 P7wheWze57snDVpghc1TDiGNp30b2JTUEgO710P35Oa0FInuMpNh0YOgw
 fbvXonG7Rco9UxMwYmkyi1Z6uzvASZVB1+QSqA7NftD02yUZEKIfWEA+7
 EXz6YPEG2HlGCC0iBqm1Wwdbg+P/DWbdqHXY7QKyw/mesxRFJci3TTuyY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694390"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694390"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:35:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213181"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:35:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:35:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915: Clean up intel_get_frame_time_us()
Date: Thu,  7 Dec 2023 21:34:39 +0200
Message-ID: <20231207193441.20206-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

intel_get_frame_time_us() is never called with a NULL crtc_state so
drop the redundant check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6029bb71276c..0058b07a7cda 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -893,7 +893,7 @@ transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder cpu_trans
 
 static u32 intel_get_frame_time_us(const struct intel_crtc_state *cstate)
 {
-	if (!cstate || !cstate->hw.active)
+	if (!cstate->hw.active)
 		return 0;
 
 	return DIV_ROUND_UP(1000 * 1000,
-- 
2.41.0

