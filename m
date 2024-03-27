Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DA388D552
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074E410F7AB;
	Wed, 27 Mar 2024 04:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2+z6AyO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC0710F7AB;
 Wed, 27 Mar 2024 04:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711512342; x=1743048342;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4q/3AbipgbsxfgjjflGVCzVHPaa9ZFCS0ALBtBVYLKI=;
 b=X2+z6AyOyIOuJPJWUMuQCCi65pR07QJPeES6WTcW+ezeQA/dB50WzkaK
 7MyUgAxvBZzcEzzOQURgSEgFMYa2LZhoIB0zrHAg+zIQVTMdnc6T31+N/
 oMwGa7uTGhcjJqie43CB4Cdhlm6P6NZHmYQ3lqpiVCMCJOgAOZKqG1hLE
 htH1C1ouQ7JwH5Vn5YXaenAUvQMO8wgC47uWKH56GD8tc7wmEd0Vo+bBk
 slivAnMBMvJoH2k+1LRR93CJSqK68deg8RdLriOQ82BDHs8itavFooYZl
 YBL9scraK+vif4oz8juh11WuNDJfeOxEYbBzZM6aFf0Yjgrz5BnE+3+Gk g==;
X-CSE-ConnectionGUID: PF596b1cR0Gek+OZyGxyNA==
X-CSE-MsgGUID: JpG7AIShQuaeocERDShTjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6457388"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6457388"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:05:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="20889865"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 21:05:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 21:05:40 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 21:05:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 21:05:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 21:05:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X7UvBonX0r8oXS4i1AOYcaiL5QezTMIxhxlO1YwY00AtlAqs0RzXrEzwqmGB/GNcJm0dd/bYPL2O5roN09r2SKguYlG1fxDeRWkFvVNhGfIqxKOVj7iIavFA9654mLbNwbFx2d8VekRoeRYJZIAfyht3H/HFWbfA1OF4pb5G5g7K0058zLTo0ka3rx6hOpUc+6nDs7Bo26fa8+JQXfYM1zyGXnC7fwOHXypRObMnT+oGClWxnLe8Ob0sT5zV+HXalDKqH4SglYEyGjOiTvsHagtBpopoCPuneAreuqhnG5zPAWJXpRSh6chJ0sdiWTX80nCSWr40s8LrJY1AatZAfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k0qImTpcbQsBzDXSxKR2EcVQPo8IU40sgFYLDk5U9WM=;
 b=h9PtpWBJCWpGSZimEVHBmPtp/4uYhk2cjlpSfNEwbUHCROfOtcnc9ZICpw571ZVM95ZuoKmwlcGzUGlnMKnuOI1mYO0W30BV2tjwMyHZ0CRf8wS48tQYUwX2DrHa20WCEukaPJXqHtqyzQy8mnRkD/sDrKM614p0mXaJlYn66KdY2KxoFyFNSwHneGTeq4WHJGFy1tQGNl8Fpg05tvyzPvtbqjfvN8+ZMAUjQT/riX9PanWY+nH4TEaCbiGKA4eLDi7OK2FQ+CZnvIqOZpTW2szWyqr7eSGpckpC64oZCU9ZSK/eCuEBbp2w1d0iMhYxiE3RzbkrwxodfMUvViD1mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 04:05:36 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Wed, 27 Mar 2024
 04:05:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/dp: Fix the computation for compressed_bpp for
 DISPLAY < 13
Thread-Topic: [PATCH] drm/i915/dp: Fix the computation for compressed_bpp for
 DISPLAY < 13
Thread-Index: AQHabsEpF8nBZzxlHkWQzfiDf6rlwrFLGi4g
Date: Wed, 27 Mar 2024 04:05:36 +0000
Message-ID: <SN7PR11MB67505CB6CA830E1553138A31E3342@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240305054443.2489895-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240305054443.2489895-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7663:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hz8AESN9IAj2mssCSZ/0+uHwt4WyCYjJRrCSfx08sOlZaw+bNmay9140gEpOoiS7DsG/j43uDZj/t1CZYNs44Ul+BovFZH1dp1DUShTLnLN2pe95ZM7D+vGoDlF/FNqKMjoYwMQGvPq8N1AFT6xtUQJXKw5rbS3Hnzu0o+uIw/l1xemnK8GnWt3DL4KhQiK20VvYcR2EtwxtqjM3iyy9W8MUWUxTO0RU0/NxWgn5UEwyVMYoyu0nH0YecLWh52BHtjt1NKvaz0x651dFofNGIB8dGI/BZufHCEP8HTe71mthVDtpheXI52P7u4PKqXbZSgA+KdPfvosHt4ktwVBaLVTgMG7EckAafEmiZoA5X3K8h4yWeiYQ4lQNUS1rU4Jj9n3GlXbFM2NNPdEHN0VszEKOwKEyrgZB4nBuN+hOCokiVQi3n421kTYRtbc/LOS1Wjku1hbxgpUcodG6KW/oSLNEP+hXI4brv5A2XTtHudXSlTSwAtm9js/ZoJAKugO2eD7ZQyn5dj8XF47vq19s4kZVLgK07cqe2/2KcZcq8e1Qt+U3Cav4nq9kC+MvDKPXkiOOfHIuqdc7CvbXszcYagkVaNy9tVc8kZA4tv/s4UU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oDxflJkc3mlR+1gHN4FB/kjgwBLNwrrUPI7WE/oXuqNb5ZgqjpFYISiYHj3E?=
 =?us-ascii?Q?S9FNFFOz20SB/m/fz4yGH84+xQ8wqllUlpBNkk87crn6CH8SKmUkgD0QbkeZ?=
 =?us-ascii?Q?VrzhYEgj8Ad4Q85B/fTyioXPxR6DiYFUmyNIGBS6cIVFMBbex0+pETCgn/bY?=
 =?us-ascii?Q?obz6RbMxGfJuKPGDSJ/n1JrizwOdbhhiwztUHpB5tZTeHnxBmTczWuYNvYw9?=
 =?us-ascii?Q?Q8Rj+jeSqmRiyu4JIvK5k/RNB+GX8aUvP7jkcltj5c8OsY4iDtFN2Iaex0Vq?=
 =?us-ascii?Q?atyr7A4zz13LcEv30xv0I97PcDg+mlVo51JCfHw6WO7t0lWXHlwwoy5DHuHT?=
 =?us-ascii?Q?eo9YuJ/ax43S6LrcmhoxC0Efs7o4EKQeyxO9iUAVyKCbQSJo4a4tbHlCuChf?=
 =?us-ascii?Q?wRnYeBzh0EqIRM44+eS5hH2yjz3UC55Dd04C3U+3AQ06X2T9+E18vznCK0oO?=
 =?us-ascii?Q?Ozi5Z2jc5GnDJmBCmWOUzfOaVdzEld4VE3ribhN1+j331UyxHkZLCaAV/ESh?=
 =?us-ascii?Q?8VHEHNlnu/6CplRn3FCsUYt4zsTZxC84aiFzp7yEtiRH8PRqC2Xq2GYfksMU?=
 =?us-ascii?Q?I1DE82Ccsfbb1peDkvUz+PJpoFNuWZDID0KMR07VaeQDZY+XcdB7Z/+eNs/Z?=
 =?us-ascii?Q?3hSwrzxOOVwn+oSoxiFhBjAADxKf/vAw211S8h9y1GjCPIUPvU7re2Ckt7UC?=
 =?us-ascii?Q?lxfBoKj6ZRFsGWRwT+IsIpCCO0IbmO39Oe5r5l5a4JkI183CD/+X2mSXN8hk?=
 =?us-ascii?Q?ugnNlZPP1T8VuDkFUqfPvQ57FTJB6TfKnHjybEIiDx92TnDUKnMljFfcUFj4?=
 =?us-ascii?Q?0w9rqewgOzUn7bF0t08vSgPRm7t/5LjFKLAYQtJGC7Ee1+seOPtbEQqoXM9A?=
 =?us-ascii?Q?do0caGRnjYi2pTOlu6S1VpBv16QDenLWrzht2EpM/CAzzxeInxZPF7sxw+vJ?=
 =?us-ascii?Q?l+FFFU+eDqAyTX/0XYhN3vVgSNW7hdW0MlHmaqbXDA2+6I9ybAQRI17k4YTf?=
 =?us-ascii?Q?Loknpr/UeAJSlddodYZbg+BiUkdM/BVvhVbSl4SI22ajB6S+z82Lab9xySxr?=
 =?us-ascii?Q?D8RP5xIQ8AUJ/IBJKN50lEKJvv5GLuX3dMY+FYENQ2U8bWSjaJDq8x7QEwOY?=
 =?us-ascii?Q?JH7u4enFIQhEoSMFMeDkd2XHHUVrxB5mP7prPE38duRZU9cFcskPkppSnnwD?=
 =?us-ascii?Q?Khva7Qrd15tBB3xotRi9T8nWua243UCvQmlkpz7esasPc/Ho79+TekktmAwt?=
 =?us-ascii?Q?RCsfqUkEAHsg/R3elfsj24czAQ7jWbqumLCvC8MUasuIlSNXVqXAkATQEAOw?=
 =?us-ascii?Q?pgqmNtEGfOi4Z/d/RvQHx21zQQT4XaYboukmbY3Cwd84hBiE5kl4S8zgF7hQ?=
 =?us-ascii?Q?6BFsHdRmuX5mwJ74aBDG3CZpHkfizxkMbZTAWqjH7bzthJ6IH3pMTJqlUlJo?=
 =?us-ascii?Q?rAwFJLJx3HG6MUf8gMOUx1VbWsZvjIOzv/ddxuE5MDtGBXLjBfrK+LN16lu0?=
 =?us-ascii?Q?jGFiwahZ55cuCnASqusMg/zz1l45vQ06sHwQCnEMWVnk1GuYKe/fwxlAz8Gm?=
 =?us-ascii?Q?Sb+7Ylguc4rv3BEM+TIzkBMdZHZGHX5O1S72uBPk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0f902eb-4995-471f-9ccc-08dc4e1327ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 04:05:36.1993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2wxnmYbezust4Fpr0EUBX0cCy19NRO3fg/OJXhcFtR67pPiOIAVSf2nWB7o1OmTJD0je56uGt5VTdLfAR3bbYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
X-OriginatorOrg: intel.com
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

> Subject: [PATCH] drm/i915/dp: Fix the computation for compressed_bpp for
> DISPLAY < 13
>=20
> For DISPLAY < 13, compressed bpp is chosen from a list of supported
> compressed bpps. Fix the condition to choose the appropriate compressed
> bpp from the list.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best
> compressed bpp")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.7+
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10162
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index e13121dc3a03..d579195f84ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1918,8 +1918,9 @@ icl_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  	dsc_max_bpp =3D min(dsc_max_bpp, pipe_bpp - 1);
>=20
>  	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> -		if (valid_dsc_bpp[i] < dsc_min_bpp ||
> -		    valid_dsc_bpp[i] > dsc_max_bpp)
> +		if (valid_dsc_bpp[i] < dsc_min_bpp)
> +			continue;
> +		if (valid_dsc_bpp[i] > dsc_max_bpp)
>  			break;
>=20
>  		ret =3D dsc_compute_link_config(intel_dp,
> --
> 2.40.1

