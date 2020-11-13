Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDC72B1BD0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 14:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1B66E4C5;
	Fri, 13 Nov 2020 13:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743126E4C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 13:25:05 +0000 (UTC)
IronPort-SDR: hjkfdMj+hFkDIz6Xdhmdv3mwysbIfumY6dzszYd1dd+c50DI576mTDCM+Pgp2Nj5wMz8amkcg0
 lv5Bg5Rmkj5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="170575449"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="170575449"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:25:03 -0800
IronPort-SDR: kpRKX3Gpms3Z5xuG2Y+7wM3Ec4L3DooNxZ09zJXD/rYeCW4rnMUxJF+suyYlWV4UYqp1IVIcVW
 QpYsv6g/3KwQ==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="532567339"
Received: from rbrenna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.159])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:25:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 15:24:33 +0200
Message-Id: <ea02854e2da120257e5241584c19bf079b20f8a5.1605273766.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605273766.git.jani.nikula@intel.com>
References: <cover.1605273766.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/cdclk: prefer intel_de_write()
 over I915_WRITE()
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
