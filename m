Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788764B7AD1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 23:56:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EB710E5E6;
	Tue, 15 Feb 2022 22:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978B410E5EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644965812; x=1676501812;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VEZcOW53MgXTEwCd76Yh/1sEKtv4rH4fhbs2MhZC6no=;
 b=f7Wnt+b0B2NdGdZxSgl40nXUu1A1xj2T2at9OVzggCIZDvmnexA25OT2
 LOBbByscvzac8ntlPJZ+FSPLYhwrsRNiuHuGYNHvhachpm18vSm7dm0KA
 Q+2pDNZA2MdGAkyKKaxemjzxmOj3lm1+7ZUbG2VuoQfGBWj8XRU0LT68x
 bRakO7oRMlfQOKXa7JgFgRIf+Sk4+k8HSQFDOlWSQTG7msT2wOwyxH29L
 UtqqDQmC6xhTw4zz1kKRkpazsdb485gMVsUyzPHSrJkT0GUjRYc5mBN0O
 hI5/6dWRI/tTMSMKYLz1nSTkuaiuWWMhYLuW7491r8olXmuubszQ1oJ7a w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="248069689"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="248069689"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 14:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="604060631"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 15 Feb 2022 14:56:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 15 Feb 2022 14:56:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 15 Feb 2022 14:56:51 -0800
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.2308.020;
 Tue, 15 Feb 2022 14:56:51 -0800
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on
 calibration error
Thread-Index: AQHYIooeRjgCQbekZUyESDa4iVGoOayVORHw
Date: Tue, 15 Feb 2022 22:56:51 +0000
Message-ID: <6803827db66d48078de9284f1c935ef3@intel.com>
References: <20220215163545.2175730-1-matthew.d.roper@intel.com>
In-Reply-To: <20220215163545.2175730-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on
 calibration error
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

Acked-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
=20
-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt=
 Roper
Sent: Tuesday, February 15, 2022 8:36 AM
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on calib=
ration error

We need to use phy_name() to convert the PHY value into a human-readable ch=
aracter in the error message.

Fixes: a6a128116e55 ("drm/i915/dg2: Wait for SNPS PHY calibration during di=
splay init")
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/dr=
m/i915/display/intel_snps_phy.c
index 8573a458811a..8fd00de981fc 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -35,7 +35,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_=
private *i915)
 		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
 			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
-				phy);
+				phy_name(phy));
 	}
 }
=20
--
2.34.1

