Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A54A6FBF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA5A10E83E;
	Wed,  2 Feb 2022 11:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D3910E83E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643800586; x=1675336586;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=v2TNTPD2gkR9SBbY42Dmeah5FNtpYbP1YLW4JepR+SU=;
 b=LBYNGtJKOubgsr2YTbWrCtPm0IOmYi9oP4FSJxgC7Lv+wwbEQq9wX4fJ
 M5WXWqqRliUDN80/YOkYvmVA5wiuS5kZha1TKTIVddR25XSLO+FnuAN1p
 LUmgr8uRHtYSX59h06UBRLn3MQssllopvczw//gO5T+QLVVTJ0pfbx3M6
 bjmCH47OW/FPb1gudoIUReXsDdUPqJ2DiSWc3INZKG8jEzFa+zVBqIBtV
 FBMjQohdJYHJGi+xc6/E7F1uC/TafLBSy/2LGowQsvqskgtqAhjTXXRvN
 xiwPNDOwYYt3n9YM1NsYU5A2g/x0ZbzluBvzDuVf+A/qQBR7R7KB3Haee g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="311203872"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="311203872"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:16:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="497711411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 02 Feb 2022 03:16:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 13:16:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 13:16:15 +0200
Message-Id: <20220202111616.1579-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
References: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Make the CHV CGM CSC register
 writes lockless
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

The CHV CGM CSC registers are single buffered and so we
may have to write them from the vblank worker, which
imposes very tight dealines. Drop the pointless locking
for the register accessess to reduce the overhead.
All the other registers we bash from the vblank worker
(LUTs) were already made lockless earlier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a41da9e3f9dc..8e05fb40d2bf 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -377,16 +377,16 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
 		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
 	}
 
-	intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF01(pipe),
-		       coeffs[1] << 16 | coeffs[0]);
-	intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF23(pipe),
-		       coeffs[3] << 16 | coeffs[2]);
-	intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF45(pipe),
-		       coeffs[5] << 16 | coeffs[4]);
-	intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF67(pipe),
-		       coeffs[7] << 16 | coeffs[6]);
-	intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF8(pipe),
-		       coeffs[8]);
+	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF01(pipe),
+			  coeffs[1] << 16 | coeffs[0]);
+	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF23(pipe),
+			  coeffs[3] << 16 | coeffs[2]);
+	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF45(pipe),
+			  coeffs[5] << 16 | coeffs[4]);
+	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF67(pipe),
+			  coeffs[7] << 16 | coeffs[6]);
+	intel_de_write_fw(dev_priv, CGM_PIPE_CSC_COEFF8(pipe),
+			  coeffs[8]);
 }
 
 /* convert hw value with given bit_precision to lut property val */
-- 
2.34.1

