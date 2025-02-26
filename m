Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7303FA461D1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 15:09:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A79510E83A;
	Wed, 26 Feb 2025 14:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jk/mNYr8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751D710E822;
 Wed, 26 Feb 2025 14:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740578978; x=1772114978;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=S1klgwNY1LddZx8pfkIaz6WNPXYM5jeihYNGHao2n5Y=;
 b=jk/mNYr87L8Srvv5jon+uNxk9/iOEOqkhC7SLLVgUuOui+cMCVMxz7tO
 ab+DTQYIhSeQ23TEMCZ4tJyS6VqDRujc+828JnZ6zfKTa76i/D8BFKoWd
 fiiKizYVrBXpDjpU8ydUYtQP2vX6n97tTN414cMLDOAjhQdoVgPDz/3qI
 ufBxNz3dMo7zh8n0TDgvtR+WdcXGZ2R8OVs380brgohnN6ErgXQiFj9KW
 9+BWvd3cR/yiQ//raIOUd+xWHwE3Ept95UsNmHDlDbj5C0C6wEWLg7H7O
 YR/WPQgU52BIKYOWvGcwyPvcO2iIjwussZMy63HU5Bbs68LYxQjXDwLpq A==;
X-CSE-ConnectionGUID: k73E1i5ASGy2x9TjChjzSw==
X-CSE-MsgGUID: ERO0ljsCTT+P9+TW2JKAQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52058213"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52058213"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 06:09:38 -0800
X-CSE-ConnectionGUID: PYLySkc6T+qiOM5eKlLFeg==
X-CSE-MsgGUID: G6wA9dczQEejWIc3xhMxag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="139930529"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.247])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 06:09:37 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 26 Feb 2025 11:08:46 -0300
Subject: [PATCH] drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250226-xe3lpd-wa-14020863754-v1-1-8096dfeb3c6d@intel.com>
X-B4-Tracking: v=1; b=H4sIAG0gv2cC/x3MMQqAMAxA0atIZgNptFa8ijiIphoQlRZUKN7d4
 viG/xNECSoRuiJBkEujHnuGKQuY1nFfBHXOBia2xNzgI9V2zniPaGpiapvK2RqtN8Y76ybPBLk
 9g3h9/m8/vO8HcoPfd2cAAAA=
X-Change-ID: 20250226-xe3lpd-wa-14020863754-5f11f757cf20
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Workaround Wa_14020863754 also applies to Xe3_LPD. Update
needs_wa_14020863754() accordingly.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index aaba438ab41e3c1c06d609593dc40dff33785d3a..67344cdbd8196fcca99af5311cf39d8e9bd810a4 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -190,7 +190,7 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
  */
 static bool needs_wa_14020863754(struct intel_display *display)
 {
-	return DISPLAY_VER(display) == 20 || display->platform.battlemage;
+	return IS_DISPLAY_VER(display, 20, 30) || display->platform.battlemage;
 }
 
 /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */

---
base-commit: 4a2f1c823287a84dc0bd46c5a93545dfe49967f2
change-id: 20250226-xe3lpd-wa-14020863754-5f11f757cf20

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

