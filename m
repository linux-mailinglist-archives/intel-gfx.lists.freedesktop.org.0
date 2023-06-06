Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E01D6724CB7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329D210E39A;
	Tue,  6 Jun 2023 19:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F3610E399
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078911; x=1717614911;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k/s812DcLCijXF7/p+/WAkpF8Lk2KzY3+tq83zOKYmY=;
 b=Lqdq4Xxa+qA1pB+c+CMXOo3rps50JhHUhjsaWNtnyWFDzkclHiGNKZiw
 /XW3Glo9YT+w+PnCl8bMCskZHod58aymrP/339r6Qby4ERezdjH9ydcza
 +A/6Xm1svtsgyeRzM0qOfgdqfDBXGPFIZqMvNbf5GaQG+uw2zSbvsSTNr
 kXsCWzFxv6uDnNAP3FB9XLn4yjffMo3fQ/9NduFG7F0DwZVyl95DiOU82
 hisXB85oxssIdhkPq3ZR1wI6ig51/fHqose4BmmpPEWj0k+JYPKyxEHSW
 PZBSdAic2JLbldvZWSUFF7i8337pcsQGHx6OqhHgf9OSVoN6dnmB5BcVL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146217"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146217"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709186996"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709186996"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:46 +0300
Message-Id: <20230606191504.18099-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/19] drm/i915: Constify LUT entries in
 checker
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

The LUT checker doesn't modify the LUT entries so make them const.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8966e6560516..2d5640aab4d8 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2848,16 +2848,16 @@ static int icl_pre_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 	return 16;
 }
 
-static bool err_check(struct drm_color_lut *lut1,
-		      struct drm_color_lut *lut2, u32 err)
+static bool err_check(const struct drm_color_lut *lut1,
+		      const struct drm_color_lut *lut2, u32 err)
 {
 	return ((abs((long)lut2->red - lut1->red)) <= err) &&
 		((abs((long)lut2->blue - lut1->blue)) <= err) &&
 		((abs((long)lut2->green - lut1->green)) <= err);
 }
 
-static bool intel_lut_entries_equal(struct drm_color_lut *lut1,
-				    struct drm_color_lut *lut2,
+static bool intel_lut_entries_equal(const struct drm_color_lut *lut1,
+				    const struct drm_color_lut *lut2,
 				    int lut_size, u32 err)
 {
 	int i;
@@ -2874,7 +2874,7 @@ static bool intel_lut_equal(const struct drm_property_blob *blob1,
 			    const struct drm_property_blob *blob2,
 			    int check_size, int precision)
 {
-	struct drm_color_lut *lut1, *lut2;
+	const struct drm_color_lut *lut1, *lut2;
 	int lut_size1, lut_size2;
 	u32 err;
 
-- 
2.39.3

