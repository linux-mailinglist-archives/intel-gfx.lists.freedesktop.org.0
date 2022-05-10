Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA7F52126E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A110310F3AE;
	Tue, 10 May 2022 10:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B742F10F3AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179377; x=1683715377;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qzHSWrr1rMiWv5W57ztryFjYIAZ1Q+X0vMpFhDbRXcU=;
 b=CvhYH4f3t5XCDRe5WAb78Bgu/wlcZ8PAULQgFcc58AHfBxzLmrlfmDuQ
 HogLTvrszEW3MMMDXeRDU4xmZtPAEfRsVSZOGmj/m862yHO01KI7fE2FL
 U4mzr/dRxIMzoFAJ2ZI9WAe+UOaMcCaxZUBRNAf8vyntUmvgF6NwkbFZ1
 OqMEzAxY4ugd3vTVdx5gqe1NURgRYC0df2iw/Wj7WowRDhnLZlYki37Yp
 OIO3NGz3xTJ/davzOXnJu8/7PrejwwfVWUh+O0KQuGGiBFrUZtBdCIl4C
 cfu9uo2kzdwICGxE7Ou4hltjbab7NzEulHtzkd2yQXKJ3s8ztSTAq6tYO g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="355760264"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="355760264"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:42:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="570617736"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 10 May 2022 03:42:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:42:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:31 +0300
Message-Id: <20220510104242.6099-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/pps: Introduce pps_delays_valid()
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

Add a small helper that determines if the PPS delays have been
initialized or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 5b72c892a6f2..d1ce7dafce10 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1159,6 +1159,12 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 	}
 }
 
+static bool pps_delays_valid(struct edp_power_seq *delays)
+{
+	return delays->t1_t3 || delays->t8 || delays->t9 ||
+		delays->t10 || delays->t11_t12;
+}
+
 static void pps_init_delays_cur(struct intel_dp *intel_dp,
 				struct edp_power_seq *cur)
 {
@@ -1230,7 +1236,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
 	/* already initialized? */
-	if (final->t11_t12 != 0)
+	if (pps_delays_valid(final))
 		return;
 
 	pps_init_delays_cur(intel_dp, &cur);
-- 
2.35.1

