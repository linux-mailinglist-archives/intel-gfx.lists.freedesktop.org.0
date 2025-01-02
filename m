Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED59F9FF6F8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 09:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7078410E3C4;
	Thu,  2 Jan 2025 08:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GBbLFTvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B9410E3BB;
 Thu,  2 Jan 2025 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735807012; x=1767343012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+LycbfHECOYT76Qe5K2s9BO9lh87hriNwwutsjfcDDM=;
 b=GBbLFTvLNTa0Sya1LwEIGl1XldrgDVHkXuddq+6uahEBzzCAYjjomeUe
 XhNVDImMNa2BzkQhbn9bmG7Fw+LEQhUv40xnIaNMCNWUSGMMPdfeXiyWy
 EvrT/FrZ4OlKeTQyjnQw55ZzFshTndnxjvOze7QZ+xq+W9bZt/QP3lJLP
 Gxat1wxK1360/uCCX5P59L6zxTD/oKoq8WoO9bnpKscgm4Wpu6IECiag6
 TV9e65VyOWVWvkj09LO+f052/L6ylrl/glsFmWgYR9Q0sTAWtxDc4KTiM
 KOHfb+2X+ocjRuS9M8pTXhggtesHhbhtNMxD0cLWv2F0c+5IpV3f6A93N Q==;
X-CSE-ConnectionGUID: KU5IQR35SGWIIB/EWEqQ0Q==
X-CSE-MsgGUID: MY4pQZ1ESvGOUBh63A6NqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="23626895"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="23626895"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:52 -0800
X-CSE-ConnectionGUID: hN88QdAqQF6f+LPRRBUMNQ==
X-CSE-MsgGUID: Ju+bHqRSSmOeObZZkEmm0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="106314127"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.76])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/9] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to
 send full update
Date: Thu,  2 Jan 2025 10:36:30 +0200
Message-ID: <20250102083638.2552066-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102083638.2552066-1-jouni.hogander@intel.com>
References: <20250102083638.2552066-1-jouni.hogander@intel.com>
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

We are preparing for a change where only frontbuffer flush will use
single full frame bit of a new register (SFF_CTL) available on LunarLake
onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b021acb330f..476305010e11 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2381,7 +2381,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(display);
 
 	if (full_update) {
-		val |= man_trk_ctl_single_full_frame_bit_get(display);
 		val |= man_trk_ctl_continuos_full_frame(display);
 		goto exit;
 	}
-- 
2.43.0

