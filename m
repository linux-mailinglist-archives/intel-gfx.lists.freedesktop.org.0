Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29DFA17696
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 05:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2DF10E4B6;
	Tue, 21 Jan 2025 04:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="McZUNcS7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21EA310E4B5;
 Tue, 21 Jan 2025 04:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737434277; x=1768970277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kCdX27C0Kkp7EkaMoEfCXlJfJtpfifoceZOfVNQndPk=;
 b=McZUNcS7O+co+q/o8gKAoVHBPGz2pcTMZhKHLYJthrI4gepYBmoTItTM
 M95SrIfG2M0sBiqeWKqQQ7+kKN7LBRpyo3a4m2c7F+N3g2Zsy5VrBezNo
 VWtapuCn76+s24oeo54msxRwaxTWLP9RBsbKyqT+uuv3Iz7rSuyb2gjmL
 x3/ibFx0KLe7PsLJH5MhqYTVpuaa0VAtIabbYbN6reJrcGKPXU6Fz07fu
 4PZvKHZhnBhaO+k/614cBTm05RmyOTU5owRWngwyH4uEdtbl9Lo7mZB2v
 6gCvEfRcPEZ0W2VfyFLOo6tgTrEax/eNlXT84gtchuq2HvNDjysZwbUAJ g==;
X-CSE-ConnectionGUID: rZRYqRZfROy//hOslPB8sQ==
X-CSE-MsgGUID: YedYx4r5Q2WF0EvUY8Er0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25433334"
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="25433334"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 20:37:56 -0800
X-CSE-ConnectionGUID: IvVeNrPzQta/kqkG1CsY5A==
X-CSE-MsgGUID: VyQNHwjARbyHZvqSNMHBdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107124857"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 20:37:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 20:37:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 20:37:56 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 20:37:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l6GeSBBC53kPyGauZJd1Jf0mfVBdSGqTgM+xhCFPvkAl7Rb6i+BGA0DmqRZUPBdCtqP4apL71WJtxz7IxwtgYE6xGzAQvxExHQGf2cxmeF2xgnH7/5JZQMZ8i/ekEA/dg9MggqTEa7BnO5HrrJJTIs0e9H4NZyYh1JB26ecZF/AJKgMxGkPEa6RikUGOeXwToISchAhdfPjo5C8+werwi83tuvfPl9m/F+tOTrMoXGgNOOt0VYwZK9SvE25Zmqm88GOql4U4T2vNdo5j4WBK5/sWQ6lK9T7uzbUK99Khw97FSSwhugyqW+Yoj/9R7KU1rLJOap1a/0JCJz/vtSdNqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WxihL0UJdGyJzoN6eTbdiw5iPcg428v5OuEDCdnRE7c=;
 b=N/uaN5N2K7Vjg7XvnT/Pezdnu/mrENg8B3/uSlKKwzy1QVjOa+gWvX1lpOb1MhVbnxyfwgXllOWcMiuNxdRPbJkSmw1X+PbbI+5+Ld49jRPszZ6SB6m0euudcdiafENQc1JFxpqxRDwBlWxjRS1SWisP7NcJPtXQQkgVmGsOMJXW50J2Y/r8+CQWIpVWkyGVckZYu/vomv9rSUW1eWoohiEzvylL/RN6Ul+ETRgB//BlkZ57J+8KvA4MLbjVJ35dvIFJMt//Ps7FssD7eqOfBej6ZZ8gFQlBIcBUcP2MYm3sHTzALSdtodojn1Zhx7aE2GDCdrzFytGeImnv9xyU4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB5789.namprd11.prod.outlook.com (2603:10b6:a03:424::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Tue, 21 Jan
 2025 04:37:54 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 04:37:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: [PATCH] drm/xe/dp: Fix non-display builds with DP tunnelling
 incorrectly enabled
Thread-Topic: [PATCH] drm/xe/dp: Fix non-display builds with DP tunnelling
 incorrectly enabled
Thread-Index: AQHbaPXJT2IbGRntrku1wBlqDt85j7Mgqmtg
Date: Tue, 21 Jan 2025 04:37:54 +0000
Message-ID: <SN7PR11MB6750D685E73BDAFC75FE733EE3E62@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250117153843.1312303-1-imre.deak@intel.com>
In-Reply-To: <20250117153843.1312303-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB5789:EE_
x-ms-office365-filtering-correlation-id: 84d43088-891a-4ec5-3853-08dd39d55f29
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OJjiStLRsAh4C3wloExGZTuu6Adv9JstNXK9K5/c74Iq68g40OMKgfuFMooE?=
 =?us-ascii?Q?JRSYvKLHEmjLcrZD9K9wjv27aDOhXOL/z3UBn7jqfvr1Br1nFJ0dpTrrcnrX?=
 =?us-ascii?Q?n9tJUvGQ8deuxTQtbjafJli2CaHXnDLp40ThyeTwg/S6HZCBteAdNjiYWVlE?=
 =?us-ascii?Q?z2VSz6U+OBFr6N3qqUOcprnlPrA+kF0VWkTdgVKa8pwo49vzKepx0hCRLgIl?=
 =?us-ascii?Q?XER9YuMSDQ46TbZtM9IV1CIZpOeZZt9YL3md5GytVJAPrz5rU1joVfSgem2f?=
 =?us-ascii?Q?oxCDL8vtFey2UVBhHasvmM2Vbwg5sE3mYbQUGOJAqY7RzRcAxfYzaP+pCzvS?=
 =?us-ascii?Q?ICa2dFOG38Wq22waok+46nnbve7/MVX2OYtY6d0NrusDLduDo6db5Qw2TlYM?=
 =?us-ascii?Q?BHMGWJBFxAnWLOKGouj+gCiOknsgC1+S2O7eup7eDV9/rQ3OF0FuFftSCVtD?=
 =?us-ascii?Q?VZUJPwZCol5sTHDGZS4+dyaT61oAzvnhpXUaYlfXpvrGNRehQYL9jD4q3oRJ?=
 =?us-ascii?Q?/Yk6VI77qgEGLyrPGRZH5T9c2NQ7kkRCozPKVt2vjSu+8zBpo5NpuwEzH5nQ?=
 =?us-ascii?Q?zctLy2cD137werJgLvAhi876P8rR4vhpxQb/7SQzgG6RYjSg3hbE0s5dHKrW?=
 =?us-ascii?Q?7D3FPU8RVnfamYArAYZqe8zJ3ui6H48C7c0JaxkfwF/MNBmwvbVMHgxi9urj?=
 =?us-ascii?Q?jpNUL3I+1bxhLqwjV1/LGUJd6vpScxKqfySdwQOWH9oS09qplq4TjFFa/E6J?=
 =?us-ascii?Q?NHaDWDe/NRLv86gOoyktSYCDbAfL3jhRzgD4zW+6Wfh4VZTl4GwfNnCd1wg2?=
 =?us-ascii?Q?+PTDCa7G9avx+DG6WAKJSJzMb04kigW1lMdNhreQwyL/LXGUryxJc/pKchaa?=
 =?us-ascii?Q?9cwJZJl6NH8SosZtpc34svC99nZCeoHXsjGznxtzteJh2VdmUEnbiHkzWocD?=
 =?us-ascii?Q?JNvaPiQC2tzYgpFm+sx83PKWzZQagLRU6Ai5z08ABOy2VA9tkGv4qzfxgof0?=
 =?us-ascii?Q?m0KAUZHsTcF8/BLhBIm0PHdRXiAMUqEkMCYmhXs0taIQuHQ9+lfVZRSF1/qO?=
 =?us-ascii?Q?Rs2mBZzWIUPxOWlnwJklQmJANx4dqMPuK9DqdFboUN2EEIMaXF326v3XOroW?=
 =?us-ascii?Q?DOXc18O2pfr9LUd6G9UGJhgtTUN/VFgjsmtts+ZdPUxMXALUoPeMGVgIXXjt?=
 =?us-ascii?Q?20BzVN95ueia0fm+OhtzODXIL+FPSqQoKJrEs/pJOLE9nyjzOjh0l9q3rGSB?=
 =?us-ascii?Q?2er2jd3qVDrd2+/mketvDhzhldFUEqTC9bxzj9ncgY2QZKxFE6lapVFRF1Bm?=
 =?us-ascii?Q?y0zKJ4ccYriZ8K9KAAcvrUiD6aj600tnAFOtxnTG+TC+QeQ93a7dDuN1RXKw?=
 =?us-ascii?Q?LaSYoIJ/oVt0VasZ/fJFTI+6RdwmexZTwQB0jrcfiJs/Foh0qqEz/UDHu40h?=
 =?us-ascii?Q?qlx7Yb/t4z6sBWSF2f4wIIbHETxdsPvc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tY2sg7ewEtSDM7OeH/gUWAlv5EfrNLr3CxbXJiuas907UWmILwQS576v+JHd?=
 =?us-ascii?Q?mG2UDdcinxw7H3pe6rI096dexpQRESHFfiHUMNJxDqOcNoyMJyrZYyBXFkS0?=
 =?us-ascii?Q?2tbf3yhe3nkgypMsu8s0Efp6HkSDSzQRHY/Q+zRZ4OusHdIh1blQydkRo41v?=
 =?us-ascii?Q?bwlrC0T/+ZispS6nD3GbPGOLEnavi1PRNf+yRdrkpeZRtJGSCwabVaIbWvi6?=
 =?us-ascii?Q?rUxP6KP2vF36XQO2xh4ovNUB0ZJrq1Z2IKhz1uWhI2pPinwhWlZaOg4Euucb?=
 =?us-ascii?Q?KCiWEm+imAt7zdOM//5GZRBwtslJWHN8EAeL2LtJjSndZ1seygqLQU47gMn5?=
 =?us-ascii?Q?1jNrfcwedtZXSEp5zmA9KtrXLtDpHmnczNX+Ez5MfdWlYP15ielZoHYUDeKS?=
 =?us-ascii?Q?z3Fg4QGKrQnmQuSsNKop6t9DtRFKMm5blFy2ie8NtB8GBX7jKs3OvCC3cYI1?=
 =?us-ascii?Q?MxDqv6PRzPXnrHQc9/G5d7nxtoii3IK7bOsOHNum/gDf8VuVLVOtqhlmwabe?=
 =?us-ascii?Q?Et8tizbwt0S73jklkXDylnMk/Afp0nnnZXk3xS6EfA59rtrDUX/Mjk5IY9/b?=
 =?us-ascii?Q?Ur9IBWnvDWzl0uaRJABFcFTlYnvI8udK0bwdZZifrpJS2uQq5gHDdDneMieY?=
 =?us-ascii?Q?uC55EcfP1Gdy1nnH7GXDNNTvdiNiKJgza8Nf01IiOtr99leGfRa+cnJbQ/PM?=
 =?us-ascii?Q?5H3p7vWEOBMD46QSXIE6N/iAj2uQYLbe6dDPDu/8QTjxFE5cRkRUy5QV+b3Z?=
 =?us-ascii?Q?eYK5IrEmTyHB2xlayiSx8RCpRLrV2aNI+LijUlFjq87apPMQNVlR05F3rTZy?=
 =?us-ascii?Q?3CcXz1WiUppD516BiSrLNIPPuwqtmmFAEBvPm7t10unwXpUglSy3WDZw/A3C?=
 =?us-ascii?Q?0UvD618cjBGvAn6yC4kspGiVdFj+EyKA+r6tOFu+T3vuyAHyKMHcRNmZH/yx?=
 =?us-ascii?Q?k2jLlWci3HzR7CS829zP7tNa44Nw6uA5HC4PGksjZyxuO2efsr4idQNecuys?=
 =?us-ascii?Q?BUt1nm0cUUn+4MsVrtdT2i8Lqw2LWzaGCEbLu3QijYxW2uGKRvZq2xW+xf3p?=
 =?us-ascii?Q?S2gYvFNE9JIEevAebT/5nWhNgbxFI4CUglG6TdOjxxOuETk0KiKHvrAYDZ2C?=
 =?us-ascii?Q?p5kFvJYmAbXGdPNZHISu5e1CE47pQWC+SePP1/ViRrTu7dZGguCpjW28rE0H?=
 =?us-ascii?Q?IKN+jK+J1SVkdxJNa+NE99rT+1Nhx+NUVEshRZ5jQw8QF+qh6GSdkeMuBcgU?=
 =?us-ascii?Q?/pxiXNfLPqDsxFah1Y7mR3uN/EQ9Gc3mpfe8JAF7s9EFpPE8RRJ4YPGisYH9?=
 =?us-ascii?Q?oX943TW/Lwjx6yd5iMJCpdg38ZwnTygyoX1OhrH7zJmvGmmgwbY+EBIf+3Ic?=
 =?us-ascii?Q?2jQHJqoVKpYxmalIaRDt03EkqUlvjKOv933a2CW79BYTuLoSxvJe4JKb6Or6?=
 =?us-ascii?Q?/SFQe1H8etSXpu+98c3zpmwqo9PndS8FXzBPjIpAPZ6X6fPbVH4jNifFz9lq?=
 =?us-ascii?Q?LlubYgRfddLopoPcF0pG4Ety0YgAcSRhSaO3xX2y/a6V+CCBX7k99oOfTmOk?=
 =?us-ascii?Q?maMspeBn/D1hNrhkz1JpoCQP4o6c+d3Hs0Xc0NqV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84d43088-891a-4ec5-3853-08dd39d55f29
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 04:37:54.3458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /WZcmAcax9KGHzRkqZsQsIkW28kRoPfbO4DiaXIZfugMOvjKVKcdDWL+nvH6Of7p/S7KttDj9t/n6mHSym5zsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5789
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Friday, January 17, 2025 9:09 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [PATCH] drm/xe/dp: Fix non-display builds with DP tunnelling
> incorrectly enabled
>=20
> Code for the DP tunnelling functionality in the xe driver can be built on=
ly if
> the display code is also built, adjust the kconfig dependency accordingly=
.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Fixes: 73900dce57e4 ("drm/xe/dp: Enable DP tunneling")
> Reported-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/xe/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig inde=
x
> 50cf80df51900..99219c16e8aac 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -61,7 +61,7 @@ config DRM_XE_DISPLAY
>=20
>  config DRM_XE_DP_TUNNEL
>  	bool "Enable DP tunnel support"
> -	depends on DRM_XE
> +	depends on DRM_XE_DISPLAY
>  	depends on USB4
>  	select DRM_DISPLAY_DP_TUNNEL
>  	default y
> --
> 2.44.2

