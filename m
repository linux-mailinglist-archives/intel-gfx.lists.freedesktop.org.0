Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD704864E1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 14:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD05910EE71;
	Thu,  6 Jan 2022 13:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B38810EE71
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 13:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641474224; x=1673010224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RwzYITkZgHe1FSIltmNFIe8MfFOj6CAJJKuuk4o5bXU=;
 b=OJ5ozXMt1TkEIJnpCMmiGtT7F+WG603etHq3Oj2OudmYXGZEgr4yordL
 LDl86udlRuXyaSJqtIDQXcvt4J/WNFvyCcfOKZDjg9Ql52E4GIGYdf4nx
 tMTply7tkcQ8iPoXUrG6B+yfFCN5eZdwg16upMaD0Gq379Y0qseS3mHQd
 fm1PMTI+FiwIsgC6hrBfy0hq8/BVF1fJ5p07IjODCFrrjmqmOAJhaquis
 sQ/lOCEzHkdWLLmpfZIlPzgPWtifMjA5GZRqgvFYTSwzxItdg8TkTSsze
 SmdKdJbiJWEp3PsIwtN5PHK/ikkplblJhy85ccM0efOjE0r3n6FiFFFb/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="240199861"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="240199861"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 05:03:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="668435324"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 05:03:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 18:19:18 +0530
Message-Id: <20220106124918.369075-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix the PIPE_MISC 12 BPC
 PORT_OUTPUT for DG2
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

Currently 12 BPC PORT_OUTPUT_BPC bits are set in PIPE_MISC register
for all Display > 12. DG2 is an exception.
This patch tweaks the condition to read and write the above bits
for DG2.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf7ce684dd8e..1655cff7794f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3774,8 +3774,8 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 		val |= PIPEMISC_10_BPC;
 		break;
 	case 36:
-		/* Port output 12BPC defined for ADLP+ */
-		if (DISPLAY_VER(dev_priv) > 12)
+		/* Port output 12BPC defined for ADLP+ except for DG2 */
+		if (DISPLAY_VER(dev_priv) > 12 && !IS_DG2(dev_priv))
 			val |= PIPEMISC_12_BPC_ADLP;
 		break;
 	default:
@@ -3835,7 +3835,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
 	case PIPEMISC_10_BPC:
 		return 30;
 	/*
-	 * PORT OUTPUT 12 BPC defined for ADLP+.
+	 * PORT OUTPUT 12 BPC defined for ADLP+ (except DG2)
 	 *
 	 * TODO:
 	 * For previous platforms with DSI interface, bits 5:7
@@ -3845,7 +3845,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
 	 * MIPI DSI HW readout.
 	 */
 	case PIPEMISC_12_BPC_ADLP:
-		if (DISPLAY_VER(dev_priv) > 12)
+		if (DISPLAY_VER(dev_priv) > 12 && !IS_DG2(dev_priv))
 			return 36;
 		fallthrough;
 	default:
-- 
2.25.1

