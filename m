Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08F1A142E5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9931A10E2CD;
	Thu, 16 Jan 2025 20:16:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DxOi6R2O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFD810E2CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058609; x=1768594609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pz+zxLLlEkvCkBuAIiiLumSTmD7CucmiuWx3pY7FC8E=;
 b=DxOi6R2OdBJtLvtI/birJuRk8DCSoTNhwtICSKQ9wyfk6cKm3aKBWPNK
 Ag7U+2H+LHOPnqkbFIrtLRECh6ufvrTBwjrUDcxl4Dh5GUiJhVqaty68o
 def+RLkLt/XtvRQo40NEFNn4VUxNut+T5fZ/pNn1hTz4qCJ8IOpS3TreL
 NrCBDs8yfbmQrz/zJhSfUDiG3b48+5wWZK1xO8/yixatT65zuEAP5HvSv
 W/BgOUAVOazhUtsX+eAEfX9Xbzhdzoumq2d/l6h8FahqJX/AXQ3HUR4YS
 owkSrOYm1IyMENi3WYcLPnldz3jcXAj0JsnuvMiy7KSrRGHssEIv9R3HI w==;
X-CSE-ConnectionGUID: 4tzQW8qIQHiQAc8wvnLIKQ==
X-CSE-MsgGUID: YlT/M6TzSYSJ7l0Fz5+Bxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279236"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279236"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:16:49 -0800
X-CSE-ConnectionGUID: pS2Gt6ZTQD6NBSaH+ypJiQ==
X-CSE-MsgGUID: OHnjo+V7TdKh8ynIHoHcsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743488"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: [PATCH 3/8] drm/i915: Update TRANS_SET_CONTEXT_LATENCY during LRR
 updates
Date: Thu, 16 Jan 2025 22:16:32 +0200
Message-ID: <20250116201637.22486-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
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

Update TRANS_SET_CONTEXT_LATENCY in intel_set_transcoder_timings_lrr()
as well. While for actual LRR updates this should not change, I want
to reuse this code to also sanitize the vblank delay during boot,
and in that case we do need to update this.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1260e394afc7..ac6fc177099f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2930,6 +2930,10 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 13) {
+		intel_de_write(dev_priv,
+			       TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder),
+			       crtc_vblank_start - crtc_vdisplay);
+
 		/*
 		 * VBLANK_START not used by hw, just clear it
 		 * to make it stand out in register dumps.
-- 
2.45.2

