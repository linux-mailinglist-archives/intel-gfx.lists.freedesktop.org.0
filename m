Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EC7938B35
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F2C10E411;
	Mon, 22 Jul 2024 08:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fY77xZbU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765D410E413
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636778; x=1753172778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xm4EEx0wY+arIdJH8Jsk7QtHV3nrsx5Hc12XAcDz6E4=;
 b=fY77xZbUv6zhb2yORW01N5zraqzVYkgIbFeDBgYCtrycrxfZOmKUUccs
 5kFGsAZs+4Vi/qh2NPszXPcJJYdoHfXoktN/CDLfDlN0a1DIfVjn5PecR
 EIkPYtLM6iwvRAA14N33rBVZR6uo04U04+avPxyBRWn8G3fV5J5bMfXh0
 HuDqzIXLla1tfe/dRHLe+qPEREQHo4/qGUB5NcdV5ZOjbjaBYOMkd00Kv
 JjJyq12MDrb2J+tDepmqC2wm1aMIG5FKC4k0PLkBcOsZmXMljKg3r1lkX
 jtphcc7Gcdemb9hRH1dvp47eudt1WoQQIydEDjoFd8BalSApILN2HK9EZ w==;
X-CSE-ConnectionGUID: pY+e9GW/RludmAiGpF6N6Q==
X-CSE-MsgGUID: uVzMeKXyRmqlynFBRR6uPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806951"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806951"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:17 -0700
X-CSE-ConnectionGUID: 2bXz30n+QxGH+Req1lO/Jw==
X-CSE-MsgGUID: iRk1GU+MTqGzgSYpdV2zQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752930"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/10] drm/i915/vrr: Avoid sending PUSH when VRR TG is used
 with Fixed refresh rate
Date: Mon, 22 Jul 2024 13:57:03 +0530
Message-ID: <20240722082705.3635041-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

As per Bspec:68925: Push enable must be set if not configuring for a
fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5a80a8eae087..e60a8833bd7b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -316,7 +316,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
@@ -329,7 +329,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -343,8 +343,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	if (!crtc_state->vrr.fixed_rr)
+		intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
+			       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(dev_priv))
 		intel_de_write(dev_priv,
-- 
2.45.2

