Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFD38247A4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:44:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 225CA10E4E0;
	Thu,  4 Jan 2024 17:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE6E10E4E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704390253; x=1735926253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m/Y0SUHia4rHRme9+bPUN8c3OMOIz4yruhpu4JBYKnQ=;
 b=btxSAuZE5CqD9El2rnKRfTfOMk9f5lrqNiA/Pwl+cn/oSeZO/PZYylwu
 7fJszTjCpLCg4E0F0cCEhalViW1pwDRtc+7sferOfDvCmjEfLn21RcfBP
 BJOOkU1jkXJzRCjH3zLZtuHK9JKu8k1hmEm80tHI2F0nrcUjVDq1RXq32
 Utu6RVEa0E3NxQeslNcR6RMV6XYYGWcvvNmnZGAcGVuj74CPSlXJ7xFuy
 eaHMNE6yhfWE9oZB/vmom9LqwC+8SP9hn6WuXtKkOf09xeLyVoF9zQCjJ
 h8qmxrcSi8CU9rPGmKrUFmw9llwzRXCZoqLaILFBP+3Fahoocsl8qOmBk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4131132"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4131132"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="870998285"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="870998285"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/tv: use DISPLAY_VER instead of GRAPHICS_VER
Date: Thu,  4 Jan 2024 19:43:50 +0200
Message-Id: <20240104174350.823605-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104174350.823605-1-jani.nikula@intel.com>
References: <20240104174350.823605-1-jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display code should not care about graphics version. It's only comments
here, but update anyway.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index d4386cb3569e..9a217805d2f6 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1327,7 +1327,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	 * the active portion. Hence following this formula seems
 	 * more trouble that it's worth.
 	 *
-	 * if (GRAPHICS_VER(dev_priv) == 4) {
+	 * if (DISPLAY_VER(dev_priv) == 4) {
 	 *	num = cdclk * (tv_mode->oversample >> !tv_mode->progressive);
 	 *	den = tv_mode->clock;
 	 * } else {
-- 
2.39.2

