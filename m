Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2FA4D3509
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589E610E55C;
	Wed,  9 Mar 2022 17:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D99010E57F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845338; x=1678381338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=18jOptX9AJomq02KK/2OdDLUl9eUNHpRHllctUUtTxc=;
 b=MdbNwpXu7gcWp5qiJY0F0+j5b3BX3F866iONxi2IWFV/j7boPFR0jgzj
 5ahzAsh6NDntOGmO+mXHg9gORE7DQCT8Uc2Eetxm/HEiygHZk19Zb0seK
 /dWIxorObJJda/0qNtRJ01LYWL3OFVDPkPTwbmz5jcfGu5WHR1NDZvgcH
 U066hs9VBJPSemFELDZog1+IMymnAc0iWxfwOAoG1OFvFoVwWLWQYcYaP
 YhBaALf1Ycgea2kM4EqqolBSfqIQs89feIM7ma89yOINvBhyE5gC3OGUC
 WGccB5SGxB7RkrMXI9mMqMKkF2BsBJDmI8nLIeR0/jfqCYj5C834t5kcy Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="252598769"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="252598769"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="632667378"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 09 Mar 2022 08:50:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:50:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:46 +0200
Message-Id: <20220309164948.10671-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/8] drm/i915: Fix PSF GV point mask when
 SAGV is not possible
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Don't just mask off all the PSF GV points when SAGV gets disabled.
This should in fact cause the Pcode to reject the request since
at least one PSF point must remain enabled at all times.

Cc: stable@vger.kernel.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: 192fbfb76744 ("drm/i915: Implement PSF GV point support")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ad1564ca7269..adf58c58513b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -992,7 +992,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	 * cause.
 	 */
 	if (!intel_can_enable_sagv(dev_priv, new_bw_state)) {
-		allowed_points = BIT(max_bw_point);
+		allowed_points &= ADLS_PSF_PT_MASK;
+		allowed_points |= BIT(max_bw_point);
 		drm_dbg_kms(&dev_priv->drm, "No SAGV, using single QGV point %d\n",
 			    max_bw_point);
 	}
-- 
2.34.1

