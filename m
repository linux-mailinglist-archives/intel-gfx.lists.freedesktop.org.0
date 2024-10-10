Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E14F997C7A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA0610E86E;
	Thu, 10 Oct 2024 05:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKRDh9mU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA6F10E870;
 Thu, 10 Oct 2024 05:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728538464; x=1760074464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gy1uMYs1gdTbCHmDv3DmaooHU6YuNWJDSsaeO02R+Do=;
 b=KKRDh9mUF/etgrUQZ2qP0hTkTqUa9o5pwq/hS13aN547NsRqa5l2ihwi
 oqNcNuzc5KhyLTqR4s0It3oJc7lTsdV1t0EBQkgyqT0feiDlj18+TvkpI
 HKSutiI10yc+FCULVwV+HtA6YarDgWBDBPOjlPc9iGGaapgXTkI9VkKRx
 hH/hjbHaeZG5xXet2YbwmD55KTEotATdZGj+ojdqv/3yHnRvcTn6duRs9
 vR7yFwjx3vvZHV4lgo6D84eeLcPLfTaHO253AACFhjYiGOGq/0V6hfi1b
 39vbFZdcJF9i30FWq8qKwZt01AYnPAndSq+YyiSr51NPb4Qhl2QYZSHjf A==;
X-CSE-ConnectionGUID: 0s2FsK0PTqSo5tsihkHYtA==
X-CSE-MsgGUID: qZ4rYkAWTVaBPbAEKdBdoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30749362"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30749362"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:24 -0700
X-CSE-ConnectionGUID: /6763J0SRLuIGJDW2DK2cg==
X-CSE-MsgGUID: Hz2opstbSiW6F47/bXfgyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76697290"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.162])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/7] drm/i915/vrr: Do not overwrite TRANS_PUSH PSR Frame
 Change Enable
Date: Thu, 10 Oct 2024 08:33:11 +0300
Message-Id: <20241010053316.1580527-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241010053316.1580527-1-jouni.hogander@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
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

Currently vrr code is overwriting possibly set PSR PR Frame Change Enable
bit in TRANS_PUSH register. Avoid this by using rmw instead of write.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9a51f5bac3071..8b4e3f938efea 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -339,8 +339,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0,
+		     TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
@@ -371,7 +371,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_wait_for_clear(display,
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN,
+		     0);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
-- 
2.34.1

