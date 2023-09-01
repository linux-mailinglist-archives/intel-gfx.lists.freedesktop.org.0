Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFFA78FE09
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BF610E7D2;
	Fri,  1 Sep 2023 13:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B3C10E7D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573513; x=1725109513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U7QisNOe20gpnj8QXDG7zKT4i/6OX2/VGVYP47s8ZFI=;
 b=WxxtETHN/dfDPQqaQ2vKkJj3Bg7Z0CrU9keLEKxOHvucwS8W68A6Mn7F
 4CIm4PQpzTqdgSPncuJ5X5ATuRFmt8wnKHPt682re9hZ8KkVVHHMa07yy
 SEjKTDZ84c+Sj0onVdxkRA17pJH5tqBxJE/t5iP0tRj552D5KyxVuXzJ+
 gatMrz+w9K6CHIai5RJGxoizKegC6pfE+kepTIdHLXeijom/twxinkLdg
 sm0X32BKRU+h9hPR5G0FYDaAW8HKuWdhKIZET5lSYdLekXCcHRvfKzZAF
 mkx3pK23J9LbKzf5F53Vh9XeI0TJVWaeIT0bZWdathC1Wvo/ybaApV5vM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240649"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240649"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:05:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774995030"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774995030"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:05:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:05:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:37 +0300
Message-ID: <20230901130440.2085-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Disable VRR during seamless M/N
 changes
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

Make life less confusing by making sure VRR is disabled whenever
we do any drastic changes to the display timings, such as seamless
M/N changes.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c20eaf0e7a91..cbbee303cd00 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -916,13 +916,15 @@ static bool planes_disabling(const struct intel_crtc_state *old_crtc_state,
 static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 			 const struct intel_crtc_state *new_crtc_state)
 {
-	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state);
+	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
+		(new_crtc_state->vrr.enable && new_crtc_state->update_m_n);
 }
 
 static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 			  const struct intel_crtc_state *new_crtc_state)
 {
-	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state);
+	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->vrr.enable && new_crtc_state->update_m_n);
 }
 
 #undef is_disabling
-- 
2.41.0

