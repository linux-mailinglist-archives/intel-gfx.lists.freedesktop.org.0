Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B2D90E35C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ADA810E8B8;
	Wed, 19 Jun 2024 06:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7VReAdM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4825110E8B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778136; x=1750314136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UBEla/a80ECRpZccNJIPNfxFjXvViudMnzBw0QRb6L0=;
 b=M7VReAdMehBXgcPhw0lvMc53b4wUQI74DPyzdF1+hlT6WSNU/Xgosc48
 F5J9RE5EKRo1TbXQHTGIxHbTPwPmXbRgQ1I+/fYdXMjRRW/0O4iyRx0qm
 zwL1F+djRffzW8l+1hUYYa68sytPy3WxH/PPA8K+4qiZE3f1AJZEg3q9B
 0yhSgDhWX+E4v1elHa6ZRlgrNZsOqmFhvBQ8ANMwv5w2jis1YFVEgk5ms
 iJPuXfiGf3tiqItgU5owWWRtjU311ruZ8MeYhN6BmUGHsTeHzoUye2gmo
 XqWOyjyBFPn9N/9Hy1BQx4kYniEFIQPAi+N9fOOC413YulgbvLt+/RPLG g==;
X-CSE-ConnectionGUID: weddnkASRqCazbPh9Wh6oQ==
X-CSE-MsgGUID: 4G+WGFcFQCy0ZXiXbpsw+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377397"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377397"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:16 -0700
X-CSE-ConnectionGUID: TsHHAcmHSBC+WxgNBdIAKQ==
X-CSE-MsgGUID: gwsMv4zaT/m71Gn9YiAn+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41906028"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 10/11] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Wed, 19 Jun 2024 09:21:30 +0300
Message-Id: <20240619062131.4021196-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
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

Move Early Transport validity check to be performed for Panel Replay as
well and use Early Transport for eDP Panel Replay always.

v2:set crtc_state->enable_psr2_su_region_et directly (not in if block)

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 35425567005d..03b90b06d64a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1440,9 +1440,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1489,6 +1486,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	crtc_state->enable_psr2_su_region_et =
+		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
+
 	return true;
 
 unsupported:
-- 
2.34.1

