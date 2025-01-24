Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6F1A1B4D8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1CC10E7EC;
	Fri, 24 Jan 2025 11:39:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyGQRmlu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A2C10E83E;
 Fri, 24 Jan 2025 11:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718765; x=1769254765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UlrkBSafkNP+62mUr00oaZA+gnup6R4IojzNixdgb2A=;
 b=iyGQRmluoVWAIBumRMGWOx3waTbsNCMSVY/QU6nwRer2hwhIoRNN1Sdo
 wqeC9J6R1hulOX4nk1HBj1RCmSvUIxuQ47vVthmMNnA+avIWKYrXirRqH
 41WBjKimvzNFB4C8B3sVr+q9ZGi1Caam39xcxvEBam+uhcVFRifzjyZG8
 uEoqPTPIzbj1Y5N1COGki5RiWtELvTcRo9W4ePezDpmSL1ELDbft2Mhc+
 D618BrsU5Xxu6RkntLui6ylk4a280VAIBnKZzCOC528ogVgpElzt2PgHU
 JPVzaS06ofQ3mab8SOO+/h7amHhvGvCvQEu1oN8lndf8c74dIwQBdQuTK g==;
X-CSE-ConnectionGUID: W17X1FR1TLSKEsfcVQf8pg==
X-CSE-MsgGUID: L8TkLF+dRamLvKKCcqIidw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237753"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237753"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:25 -0800
X-CSE-ConnectionGUID: N2P19QG/Q2+GPnKrl/sv6w==
X-CSE-MsgGUID: 4y1JC5hgSSKr+kYlwl6mzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757812"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:23 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 01/13] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to
 send full update
Date: Fri, 24 Jan 2025 13:38:54 +0200
Message-ID: <20250124113906.850488-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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

It shouldn't be necessary to have SFF bit set if CFF bit is set in
PSR2_MAN_TRK_CTL -> removing setting it on all platforms as there is not
reason to have it different on older platforms.

v2: commit message improved

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2bdb6c9c22835..b4b795c1c43da 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2395,7 +2395,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(display);
 
 	if (full_update) {
-		val |= man_trk_ctl_single_full_frame_bit_get(display);
 		val |= man_trk_ctl_continuos_full_frame(display);
 		goto exit;
 	}
-- 
2.43.0

