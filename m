Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD58986F0A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 10:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0159910EB13;
	Thu, 26 Sep 2024 08:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWVzchZW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356B310EB12
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 08:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727339973; x=1758875973;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f3ItGnaMBa54nFK5AoIgYiSIWsFDxYgEYW+QV1h/Csk=;
 b=kWVzchZWL+e4U1rjndR/P4Ne+aR6uvs3uTRZVWuQZw0PZ/p6dS6YQo17
 AJIhVP9YCg8NysAaX8SHJCaqQ+IXK3ZUupQM3amakX62I2dBC1pz+9W80
 mWtoZnjSOHFrtmpDaM/fFHiAM1e9khqaCNZhl6wbdMf+avf/kgfAvEU0K
 wO+8Vf+qlgG4H5LSU8VkG2sYZyivZq4iG3yMUsT0pmKxggM+HTKWDgKzX
 IIpizdOwxfX4RgQRI7UP6eZH8ynPbv8Voqu1l1Onn2RIQPlgnaKK0sclC
 +lIBLIX0DnleDlJpGxFtBSzIzFLhaO+Zc/C2Iwjv59xWGwRqTQIgnIPov g==;
X-CSE-ConnectionGUID: hEzlZMiqQvqzx0Qn0DD4sg==
X-CSE-MsgGUID: vkadRTcCRdmnSojf36uJMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26574930"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26574930"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 01:39:33 -0700
X-CSE-ConnectionGUID: RrsicKpOQjKjK3qgy2n2uw==
X-CSE-MsgGUID: eu/Xf8j7R3C8eWLaY3QHZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72205537"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 01:39:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 01:39:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 01:39:32 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 01:39:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hGOvcxIdszmxsy+KWxPEc1QXCiPVFpfgq3yhjbmsJ8yPDpxmKafd5Y1bZqLgk3hqoH9GRqUTqR56soMTICMHu6mO8fM0uD80OZ5mMIjvdtlUxL5MPHfo66rEsPQ7VVLMDtfmyoT+8cFZZ4d+gMRtfbkJF4smfmDOd06MXRh6XfbIPHg66k0qYrodCZRK/1XFuYyZdWw5iUOWXsSTVn7WhrUqKQN8po8UuWle0RmycwHJCSMYSJTkrc3mipWhniVr8GyyD4eKSVII8NTTYEU7tPn/mXgZ1BRsKgJ4V+07em2UnVpWgXfyyjEUEdrABFg/I2pRKKeB7e/pOcPSk6vQuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I/FaGUwiGmt3hQmOwdKPqXovaqHoITUcjRombyJ8plo=;
 b=bVHTOxGtZDTA19tIWv0Y71L1Zr7EbisepUgTkAK+y9aqMQXR9OZRCc8gVdCRCvZ64Whb17HmVKrGq4O+B/s7HplCasN0G47GxDwWguPK8YLSzsbTep6XCGWffpIw6h1U4B6Mk33W8Th1Lubf/Lw2PGFtMtwQxWHtEtswl3DHVqYiBT6oV10+5Pl3t88ROg8NJ2Fuq196lSH9oO2Na18fMs6KC5LTwdzxXs3vrwQYL/sIacG6Ze5Qzts2rJlkP2c+EgZLupgZQVihuTJqQu8f3Mmlv9LFzshvc7HLbaWWBqz/V6wlGGYT24HdKcSh/JV4tnnko6CKGiuZkUvL4HkmUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW3PR11MB4523.namprd11.prod.outlook.com (2603:10b6:303:5b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Thu, 26 Sep
 2024 08:39:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 08:39:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/5] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
Thread-Topic: [PATCH 1/5] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
Thread-Index: AQHaLaY01RzLufcjS0uQERxHK+aKJrJrg4Xw
Date: Thu, 26 Sep 2024 08:39:29 +0000
Message-ID: <SN7PR11MB675050E950CA8EB3C68BE4A0E36A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
 <20231213091632.431557-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231213091632.431557-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW3PR11MB4523:EE_
x-ms-office365-filtering-correlation-id: 88e01118-6d14-4b6b-d770-08dcde06bc67
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2JZl6i3e9viJNjTIwK7XWJmV2ijPhN58bzKIbIRrHkoj1AVcnSEjj6OBBqm2?=
 =?us-ascii?Q?maNLTtY+0+N7ciLPAUtDQXYweB8wWHbJ+8vur2ImBmgVrkNGQHm30SdKDxl7?=
 =?us-ascii?Q?eX1uOCnyDGIdmQSq2/f/IIR6rmNszvLqElNGwzXR0whatuQiK88q0m/MhUAn?=
 =?us-ascii?Q?KQ7q+6ohFEHUcyytsiz8xIVZstBepn2zBxx2KIkswVTxI/rSk1xm798+OYs1?=
 =?us-ascii?Q?JBrOQH2aeWd4Q0Y5afeOTQAlP9ioG2iasDOJ3og1xyD8DwgiyUaa2+kjiXhH?=
 =?us-ascii?Q?XyobAR4q9duaE1hF3pe9t3VU8EDGEQ3/6LKZ6dPeVQZsjDGhd82BqP9TKpdN?=
 =?us-ascii?Q?nlFuKpk0ZRbAC8gNY10BOF+SsigKDBYfp333VbMU9pvqKbv8+gnWeuxaicaS?=
 =?us-ascii?Q?skNlwMRUm4hkr1wKOGUVauu2LwzZVJbt+6c6sHlO37UAv1Vr+cKurnRiUsra?=
 =?us-ascii?Q?o17wok3dSEBUISWeC0jyn9dcIt9gLIrcce17rwmcYtEfr37iUGLTzTZuoaRp?=
 =?us-ascii?Q?d7s075pdSLhQmOwkhCHkBGm1FghEJNB4lnAE34cG5JQB3UCdEFNGrJ19DbQ7?=
 =?us-ascii?Q?W2/8aLSsNM9BKH6wa7x1f+6DObVHJu2SWLB3DPUtrIX+OkiJVVgtOJg+Z570?=
 =?us-ascii?Q?7ro3++SqcHXiZeMhHg0cqcTOVGHQe9up6hcNGegV/vA+sjequeo/JnKxlqoX?=
 =?us-ascii?Q?5MVup8vDJGiK/Vt8vZASz9rdWhqnw9MTKeQDVfc/c2vnKUT7jdpT5fSFUeiQ?=
 =?us-ascii?Q?KdNtMZBOhQ39HUtP09HKkmmUgUdfwfeZWj1cAwH9tnZQbGaG7KIbSS3gGu0H?=
 =?us-ascii?Q?BiZzKVrFe9jOkr3FjAUt4gwZ0vEYesB81f1r8DIR9afusTs8wQnT80j4ChTl?=
 =?us-ascii?Q?S8m5y8kkPvRg0do8dtI4mpoUu3S4uaLiO2rhy0w/Sc8W/67FVwHR7Nmrqwhk?=
 =?us-ascii?Q?RmTb/O6dEXHHo/RL/MINL8gTHSV1uaCpisBqVmB2NizeyMVA2G6n/edcFqlu?=
 =?us-ascii?Q?tfZIXml5GyaseZW5nmxGQ5ZK0jRQeh7H61oS3q78lLmR1BviT8ytDZSnBCNh?=
 =?us-ascii?Q?+WYvM3+ou2e80rcsnssesGKlIZQ6Hh5jjN/AQCBUYaYSAuyvva3CbDAlAWRn?=
 =?us-ascii?Q?3LQxhd5d5CRQtek9e7tacyPY0c3E1aIpOe4oEC+DAmi5uZpu8+mRjEEubvvq?=
 =?us-ascii?Q?7cJNaBIuPGnoeZV7BU1ybqJJafekfEFjn/Y66UF1+CPYKBa6pO60Zm/nj1+j?=
 =?us-ascii?Q?KCVK2YHlg1iyCrJRcQSi+q7C7CYY56GeclAtDSliVRt6GoMO5MQy6Tdl9J8X?=
 =?us-ascii?Q?1xNr4vcXGStB6JUHry1GBwU0idmsl5z2kbfXxyeZcqdTIg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hrI7Ra/mQock/RsKnMbAOWyth8IirvZj8516eQQtAQF0FtRHtXGIY1PT7E8s?=
 =?us-ascii?Q?a4NT45C/ElCGM6qtIPLVvb4brJNIZLy/g206VctOjWE0/WsOWvrmbkPqUdVz?=
 =?us-ascii?Q?12MxpjylXBkXOhPicg/NxsPVSxdkzZmwGE1WmQfdx/8EThXMKXRvVWK3UrTK?=
 =?us-ascii?Q?MpC0ttNE9PlpBetHmJMTmNT2wfR53CvMa8x1k2FUKyOoSYrPJ/VcJCeaqvTd?=
 =?us-ascii?Q?DV1IJBB2BKTXpRs/jSRkIVGLnctUBHqNBZuzRa0A82bHOI1XmA2e6XNGnnZu?=
 =?us-ascii?Q?u5lMxEVGF3H2EIi7s7iSj7ryrvhRvCZzReFfdUWyjk9e8nCiPoiXPuPMRP3/?=
 =?us-ascii?Q?1Sd6ZShMS8TCm7hDuf0tJfnFLA6Qu/ZQP6R5XGIsDH+Yzed5S/xqVh+oH222?=
 =?us-ascii?Q?J3KTebizr50T+jNbPp8ZYD/wcDtrshjdazMsut02YjQHLihKgWgMyBgior4P?=
 =?us-ascii?Q?nXrjqSOoBb2z47fakFiGgXvcCCRpnuIvyM/lmciDPzEKpg54zw0BSUKIYuQ1?=
 =?us-ascii?Q?VKLYizQkb+9s9SzLv2JiTcollGsWKmTM7B/ABhtC50vs+Wjq0rDQgC0s8/sU?=
 =?us-ascii?Q?gOLLtgrOPxZ7gl0BNYjmAqScXAb8vMD3sZdaQMsDn5WQQlliQA5DJatHgsM+?=
 =?us-ascii?Q?o1D14CKsfx/oBYUcv3fjFRLu8qLcPN7eR9VaONlU5lhsgiv4/1HFWSNkhct5?=
 =?us-ascii?Q?8PsV2xA1vtObs9zfKBO0bY4k8NPegk6eLjDKctdKw1KpqSWZsvrad7UGYLWC?=
 =?us-ascii?Q?ZbINrADNDhDC5pshsv3NtcH8J73kKiKDtIklxfLGksaAMSoeifDPjrCoaZuP?=
 =?us-ascii?Q?OgsUJ11zRwdYWwGm7ZbnMld4TGAXhndGR27RgWuGC6XyUkrcpl3D80diolg0?=
 =?us-ascii?Q?0jU9zoVN8nFq4xqMYJZHXQO5W2/V/eYju+KPmulDtDsVYOp017R4+Hz6olZo?=
 =?us-ascii?Q?4+OS4jn7RiCaoBQgmX+zZU47ric3s+xXkcxnc4oo8hTJ3qGFuDaUwiuReHfP?=
 =?us-ascii?Q?++NjOmDmErYgU42oobH31lZmcCQy6fAOsZ4hH86NqrQ4xxT0ZsTE92AB9gvi?=
 =?us-ascii?Q?bRVZ+Q/1FvyKD/2bzME9z2WVASWGGzUVvq2NtPJqxnucTJfwvMSwsErk2gti?=
 =?us-ascii?Q?IaDqZ/TPqdzm0fLLbdmilomS1gwnDH48Wj+iuXiSKP3E1PGkd8W3H5lf3mpA?=
 =?us-ascii?Q?8Uefy6Gm2WNhdIn9ouSuSwigGFoUmy/Sd6jf1IjSyEkR4cW2uyfya8jbKZuA?=
 =?us-ascii?Q?CBLVs3+BfstDYvrdzyz8IBTHLKP81HK3NxXBj0UyrAFLWHI9zjEtMXvDZwzE?=
 =?us-ascii?Q?SJUT6xfoK367zDscBx2ePG54LAcUfgm9o4W0ajvjAUBKb7QugKbaQY82kJLF?=
 =?us-ascii?Q?7SSeW9sa9G/ErV6RHmLQEHntRRig3y5oqCvp1AbUuoXhY6R15M2/34admDht?=
 =?us-ascii?Q?qyiusUKkQVX2qSxRA0VjdLvEM8lVkK3uLBblMpJArcgG38PNuAn6VPPOV9FF?=
 =?us-ascii?Q?qOLz3IL5dImNTb0ym6dlAhcakQakP752jKLjgqFuqzF6MYIAbHz85zl3hbUV?=
 =?us-ascii?Q?3xq7O0nHcz426Bejpf6Mkhf8lE+713bqjqwdPLiX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88e01118-6d14-4b6b-d770-08dcde06bc67
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 08:39:29.1226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6iXotQVNZzsEvFRPLGsvROU2nkvOCXaWhbVF2Q+FReuKuFXRxt5k62aO2Rmdscp5hBsTcPZuvkNe+yIgG5x85w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4523
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Wednesday, December 13, 2023 2:46 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 1/5] drm/i915/dp: Simplify checks for helper
> intel_dp_dsc_max_src_input_bpc
>=20
> In helper intel_dp_dsc_max_src_input_bpc it is assumed that platforms
> earlier to ICL do not support DSC, and the function returns 0 for those
> platforms.
>=20
> Use HAS_DSC macro instead and return 0 for platforms that do not support
> DSC.
>=20
> v2: Updated commit message with clarification. (Jani)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3b2482bf683f..a8015f701626 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1629,13 +1629,14 @@ intel_dp_compute_link_config_wide(struct
> intel_dp *intel_dp,  static
>  u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)  {
> +	if (!HAS_DSC(i915))
> +		return 0;
> +
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >=3D 12)
> -		return 12;
>  	if (DISPLAY_VER(i915) =3D=3D 11)
>  		return 10;
>=20
> -	return 0;
> +	return 12;
>  }
>=20
>  int intel_dp_dsc_compute_max_bpp(const struct intel_connector
> *connector,
> --
> 2.40.1

