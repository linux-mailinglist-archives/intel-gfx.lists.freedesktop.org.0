Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE0B2C82FD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 12:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E743A6E456;
	Mon, 30 Nov 2020 11:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D605A6E456
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 11:16:19 +0000 (UTC)
IronPort-SDR: NCkbCcshMe/iLnB9vzQTr+ls1FFeTwa84JNHz86pJ8IHNcAJ27hGDoFRHhxz5vd5DzUyWTZzgy
 agwQABbDI5EQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="234222387"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="234222387"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:19 -0800
IronPort-SDR: RdxhZwpkXmI0KZeeymwHvSnhSrebyk69L5+2l21urX0S8c6vYAmuiRCKSeoDOdMQd6jb01x27P
 VOopXzvD6ryg==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="549056591"
Received: from cshanno1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.44])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:15:54 +0200
Message-Id: <20201130111601.2817-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201130111601.2817-1-jani.nikula@intel.com>
References: <20201130111601.2817-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/10] drm/i915/cdclk: prefer
 intel_de_write() over I915_WRITE()
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's try to not add new ones while we're phasing out I915_READ() and
I915_WRITE().

Fixes: 27a6bc802bd9 ("drm/i915/dg1: Initialize RAWCLK properly")
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c449d28d0560..088d5908176c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2710,8 +2710,8 @@ static int dg1_rawclk(struct drm_i915_private *dev_priv)
 	 * DG1 always uses a 38.4 MHz rawclk.  The bspec tells us
 	 * "Program Numerator=2, Denominator=4, Divider=37 decimal."
 	 */
-	I915_WRITE(PCH_RAWCLK_FREQ,
-		   CNP_RAWCLK_DEN(4) | CNP_RAWCLK_DIV(37) | ICP_RAWCLK_NUM(2));
+	intel_de_write(dev_priv, PCH_RAWCLK_FREQ,
+		       CNP_RAWCLK_DEN(4) | CNP_RAWCLK_DIV(37) | ICP_RAWCLK_NUM(2));
 
 	return 38400;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
