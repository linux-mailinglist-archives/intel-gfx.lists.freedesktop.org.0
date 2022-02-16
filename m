Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 970934B92A3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 21:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B6110E4E0;
	Wed, 16 Feb 2022 20:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7D810E4E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 20:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645044759; x=1676580759;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ndLP91gB9sKPk+ZhODouVfm8w7AoJxDfXLAnAl6au/I=;
 b=P8YrIHvEQE+5mxjLQ3vs5Q5zlaYhdaVVBNrRppB7WazCFlldo7qtU+VD
 1FUXl0j63VilNDc47zfBeO1IlvNN43I2Dl9h1QeluZ0nBAqiSnNWspitx
 8DOWITNsxSwGPrMpnWc4Qrs4GySjX+UJe4Y+TmDjDZ0WF/vKNrkFGGeQj
 NAH3waZ2etIJPyRLFPScOSbGuDkxTNIaewEiXnIrIFN8JqPh2XafNSYHu
 ZYwfyVmcYU0y/sJ+hlrTnhs7JGHjI4/Aq21pt1dLz0JYJTw8H5CqmlhPI
 RUKtDiPWCWCKNPJE5riUKap6kOiUpI0HhoYrwXcXBkLBoSPXDKUKvU2Jx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="234255356"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="234255356"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 12:52:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="500006345"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 16 Feb 2022 12:52:37 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 12:52:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 12:52:37 -0800
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.2308.020;
 Wed, 16 Feb 2022 12:52:37 -0800
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on
 calibration error
Thread-Index: AQHYIooeRjgCQbekZUyESDa4iVGoOayVORHwgAFv6CA=
Date: Wed, 16 Feb 2022 20:52:36 +0000
Message-ID: <a96a5e566c404c30a83ae8f6887b77fa@intel.com>
References: <20220215163545.2175730-1-matthew.d.roper@intel.com>
 <6803827db66d48078de9284f1c935ef3@intel.com>
In-Reply-To: <6803827db66d48078de9284f1c935ef3@intel.com>
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

Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

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

