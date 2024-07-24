Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F2693B678
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 20:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E934B10E78D;
	Wed, 24 Jul 2024 18:11:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P60eMvpK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52DC10E78D;
 Wed, 24 Jul 2024 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721844686; x=1753380686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XcbnpFE2IRdpBMw5+r6OTMLID45jPmq3UuQkGngtc2Y=;
 b=P60eMvpKS+XgRTGphz9G5vrfvUQcxZ2rxNtYe0d65MHEFAUoBM7XBiv+
 l0txscdw2ol0s1y+qi7793qWWrr4mmyRxR2N6S7Tj3edeyrurkWmuQNNH
 z6XDPsDr4066pYLLQ0+m/l4mLhk4JaeA8yhepEvOIcRUWj1FxaC8Oiepm
 nxNCTQq3pjoKDk6lgfxOTRHnWm0+EHIATQDOBnWUpTjFyubC3S5rDnrww
 0gfJeRn5nI9wGf3P7amQTXa2KGeVrpSXM7Wdtj5mEn+tTQxbAwNEeVuht
 yIfySVbwLuKYy7FtRwmhqi36Jo3MK817tKUPLZR7BtB7GfnSf+gW23t3s Q==;
X-CSE-ConnectionGUID: G3hYSwdETrKTYwbLFm/zlw==
X-CSE-MsgGUID: Gve9sEnZTgWJv6JP5jU1mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19422045"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19422045"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:11:16 -0700
X-CSE-ConnectionGUID: CGvQtFlwQxaKjWNR5KyfEw==
X-CSE-MsgGUID: /5D+iwakRoyQg1J2bdOa6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56977196"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 11:11:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:11:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 11:11:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 11:11:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wXMvlrv4HFZd7lAWDJqfdMNytBL9K1G+HDWBooD28KjpPH7XH/AMTXLoxIcCuC4SsX+HsGVoA9cSMOjmxyQc05cRlB/O1c9Mp8/w2EI0k7BJgQ1mJBMBg6cDI2t/sKyG500CfxIi+eeJPdK2gosBZ32MkL44d+sH3e0tmyn5dpImDE4gOLs18iaC+M0vR+5r6+QYgCU2beHbLiSPqbPpxYOVH9cQLbr9S4oRFQpKn5GWMyy4hrEnoLSbeO9+xF0iSiVTksgOjmuNrrllZTFnfwb0/6TFYMhB4K8OO/LxRtJj1qaR0fz4Hr6PJ9Flwt34RPvDmLlKoVFiYc9vdkZvig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgSgnhqLukCJy8ONsDIkYhmZLCo7+OsKxVDLh6sPxuc=;
 b=xYavkPb/8jIV0W3z0t8fl4n75+fnDDn8lvxSOIdD5d8oAGHR7OA2MagAd9AlGasjqvXfLFN1bWZtO8o+ezc6JWMMK7clUeNEeqvxlC/ZnUncv5LYq1Ms/w+GwSrC+vZ/UtdyycKM+oxDj2WrburPXlIQJGYOs39/8YvgnsO0/2k5khZv2z18wE4It5xxvUJjehdeeLmsenyrwvCD23II4vz9KAU8aDRpLLzKA7BHiRoSjbJwjEi2wByQ3bgenxj3tVVxURLKqddkIk8/c9fAWLvH3ygMMU8xzpmENm/dmZhnwo9Lggm+V8eNwbW/EYnaNKvBi6Nc/snx1/YLkCcZtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA1PR11MB7174.namprd11.prod.outlook.com (2603:10b6:208:41a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Wed, 24 Jul
 2024 18:11:14 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 18:11:14 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH 3/3] drm/xe/hdcp: Check GSC structure validity
Thread-Topic: [PATCH 3/3] drm/xe/hdcp: Check GSC structure validity
Thread-Index: AQHa3AMIr22GA3muXkWHQp6WFiyZrLIGMOXA
Date: Wed, 24 Jul 2024 18:11:13 +0000
Message-ID: <IA1PR11MB626667726C7C3D19018001F6E2AA2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
 <20240722064451.3610512-4-suraj.kandpal@intel.com>
In-Reply-To: <20240722064451.3610512-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA1PR11MB7174:EE_
x-ms-office365-filtering-correlation-id: 18f0b522-93bd-4893-b564-08dcac0c013f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/MrjvT0hIcTD0QnCSSdnggghFiBdqDdSzZ8rtZiF739JC6JJ20S/HZtJXS+3?=
 =?us-ascii?Q?Pp264BFgwoRJIBh6I2giRmKH0SUbJw83+sra6MNGtgcsTCUgQJBHGvnSscRZ?=
 =?us-ascii?Q?6HbCBAlkV3uNackHY4zwjzlizjGI1kuDWGToNL5mfbcPuOToBTc6d3kgvY4S?=
 =?us-ascii?Q?URe6R0DVkGWAyRP2RdRf9QTVhGx7fiOn4j+I10THLOTGAAOo8HFt9uTQGy7Z?=
 =?us-ascii?Q?T1myo2HlwqLXWq1+trAqZQskGex0wIQlZRtMGD2IEs+6HsQclTPgGn7Y1uTJ?=
 =?us-ascii?Q?ud2KVV87HuiWXb0Aq/paH6ko2DPUkccsP1HAS0GM278k0Gsc5wYYpW3GnIPH?=
 =?us-ascii?Q?rX3watQDkfOQhKp/Ex3Cr821nCd16510/zDk8cGaPQBNFMuMj2516nGMtUWI?=
 =?us-ascii?Q?bmGbHcHaZK3eERywFcSEzBfGEun1X3/5NLRBUMiq3O7xDccWPlxF8m6M2zIv?=
 =?us-ascii?Q?8QVqAndLlaF0znRrIVbG6AvqX6CmdcTXQh6Jc/MuDKRdS6wAhpRiBub7MRIX?=
 =?us-ascii?Q?0IFIAQc4jD++N0n593wG2q3DW7R9DqkICzNSh/CT0vy39aQ//ToGf4td0G6y?=
 =?us-ascii?Q?Fh/DAK0TxDwiBmOZiXXSa6/tfZL19MsVniElho9TkF2YSx9tprPHBuftlSGD?=
 =?us-ascii?Q?EeN5NhWnQBxV9De/+WmoQUuKXO9uvqpGCFSurLl3dudgbQESDai5/HDHtOkW?=
 =?us-ascii?Q?8Nlxbd/gRQM36NIzetelbowfDyROmArm/kCuJVDKbdp/vLwZMn0F81pr7v+f?=
 =?us-ascii?Q?Z9WphRsjvq/vafaMn7ZpwI94J8QGWdEVd+Vs352q4kNiAvO0O7vtoe8G6oEt?=
 =?us-ascii?Q?WQp+SJdEcgujmiYkHCkodCF+pozRrgMNISan9lM0+vG959iHQxU5pue2f9bU?=
 =?us-ascii?Q?ek+yPof1a7GoFLsab8J49WRkaBS6QQeLdrVv8ghUYA+CqtgAsDDra/Fbhzkf?=
 =?us-ascii?Q?QcpkJ0AgbUWsEGqIGvfqeDbwABKTvVTN4cq22N6V7YsBcFHfv3Ojc9+znag1?=
 =?us-ascii?Q?jigQrwcMWUxwfN0zvbWx2OWgPlB93LuDbvbz8yWaz3pACkjk51pcV3T0CHUO?=
 =?us-ascii?Q?SeyZaGMhT9M3mNFpVzGAWX5y/+Yk1Yq0OuHx4drTOVt9F9Y4J728CmF2/7u3?=
 =?us-ascii?Q?KvjOgf/E7U2q+nuRBAc4pDFGlkVB0xenQ2bjbqECQm/ugZbSLRMbxr3KLlrB?=
 =?us-ascii?Q?sHNmQV6ZhXJRaISR8zG2gftRm933m1HX6/YPQAziLkkw7k8f8bNNUB6quAPG?=
 =?us-ascii?Q?oBkwcKg0BOlirqDRsrJ5eCvosaEGLFs2d3PY9idH5kjvEvFlnL0lSBcM8ZPN?=
 =?us-ascii?Q?IKvRDjWyGurxvYawNe1jTgpGLB5OF2hqzW/fKB4zXvE/XZQlEiZNa410pLkp?=
 =?us-ascii?Q?RnzKGd7LkPom2Wbqw1Z1Icr0j89g1CRVekhgjeP3GGkSCOb8rQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NyOiL6cKoorcbF8l5OewaAmBQ/bV08RLWePMAXUOzHEB41Vq3YRiRaIeWNcf?=
 =?us-ascii?Q?5PbF0IEAoGtGdSYkfdubR8MY6Ku3WivufMJCAur3Or9AGsK/T6rxtfFkijVW?=
 =?us-ascii?Q?R1WH1L9jCG/ir+smYZ+/kAIwj7xjtOwOtnPciaazj1gk+yzZWAbbtn1+Akxr?=
 =?us-ascii?Q?bNsV2D/jmfFLISZK1L7NCE0jZHvSOS6VmBR9DBaxkRbLZGIIb/9Ih88weKu/?=
 =?us-ascii?Q?kpAzxv8gDQn2zhrQ9/pj4IZTNiXyJu9WgVVXpRFER/+fQCP5nXaSDgjye2Ku?=
 =?us-ascii?Q?ZSbnS7kiqWdcZkrB1XB5sBnSKB3AihC6HO72WxJkXX39p9XHS09VlYTmDWT/?=
 =?us-ascii?Q?fyD22Lo26CtmF2eXQheYHRZZ9QJ4kxA+VCJ0S/Biwd2gofeVhvmjCL8PFPZd?=
 =?us-ascii?Q?6p3aS5eo6cZgOThOKXA31erQ/K36hKA8/NFXK2Vow1TxpD7eZ37FH/1ps/fY?=
 =?us-ascii?Q?LqFbAWYGFnCkHiZXpYsH+9h0fTs5aW+uDtbQp83dL5OJRHFRSf9xyliEyWLW?=
 =?us-ascii?Q?IsXt6eg4AD71pG8Pj0D5YqiGHjhj6FxZjnjt2ZckaPnZMq3MYuZffeLiq10W?=
 =?us-ascii?Q?1L2VSPUJ1R0+geFwiCMIzENtwj6UdFvSdJUl/lxwt7wdPLXsbdRAcIFi4t4G?=
 =?us-ascii?Q?xzzE2Ix0y8MGBaxVKQ+Z32qzG0p/IAyOoMFbQ5s2jo6mXSRvxSgCkN+84dnr?=
 =?us-ascii?Q?dGWDFMtV12TqmlO7S7hnTQEi3li4Tyh0OBOJ/S4w9MKeuTkCK4kj0BlE2I+E?=
 =?us-ascii?Q?DiNU7nQ7FHtnRdVXC6XC/VZ3NsLJcRSPGULumxKgD1+Ds+LyJ0kWViIK/0o4?=
 =?us-ascii?Q?jMTzBH1wLHWHI67Ly1LooSJCj+Q70i+ncwM5IuhLf9MyoOz3MPfqhBaCQdwO?=
 =?us-ascii?Q?v84LUMjIquQQuZmSWjhHex4O/lYn5Wfg6k0yimpSCwtvmGkqCrMzt26SSm1e?=
 =?us-ascii?Q?U68HvwuFKPal1yQRaeZZu+KZbaDOrudrHME9SRRLAdAjwSGlx3651KJDLWlU?=
 =?us-ascii?Q?EMOjiUurxhDP79aiqRoipwPUjZqvb63YIWHk+V24YTKb5zIH59a8UA3twGLe?=
 =?us-ascii?Q?cpWwi4nZh2MLYjaQ0/VgwrQDRmXSX8IPH4D+eyQcaS0AYYEK79AsHsTrr11p?=
 =?us-ascii?Q?8m0c3+9iaM9r0BqTMCUajHmALvSVdX3oDrOMK6mt31YngGE6OihIX/0Avsyg?=
 =?us-ascii?Q?qHP8rBc4Nljfpc+G3MqYJdobMx+qR+Xcc5otYe0T7i4VIKc+6XaetndMJcHc?=
 =?us-ascii?Q?yKqruTPX/RWTjMAPoTQPLYTQCH+xVwXzffHIX38+lP97qgsMjJ9WHTOBPmJ6?=
 =?us-ascii?Q?+2jyH5XdwMo2LTktRMIGYQGSkM9fUsJ+CFhqlCR3rYtNLcLj+IUeciUwVeGe?=
 =?us-ascii?Q?3He8FQkqn6o9T2MzuqVItoIrKDDCh9dgt5/bQgHnI9RXCUXhSvA4TLowbmH5?=
 =?us-ascii?Q?3vBrAK85a3DEevdNkBjOGVyfKyNvimt/QXuYDs86zypXq3oiENNiZv0mAbpX?=
 =?us-ascii?Q?ngRM8mdRhB/G4MG4v14I/h9KBCGqsW7kGe4J5MVCv/fQos7I+5zX5nUdnBfs?=
 =?us-ascii?Q?xcVbOBg7PaZwNVT6Y14My7cAa1T4+pXmKNDrdyzl/k11GxOWVYm9Nl6fBLMD?=
 =?us-ascii?Q?Fg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18f0b522-93bd-4893-b564-08dcac0c013f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 18:11:13.9681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DZRM+gDRrAmGfxJ2QIQsyfy70QuhnBi9G1aSCC17BvBbcCgyzRJzoN5UizbLPDIZp9G3/RFobM3KymfSPXbVlOdaRvpEwETu38MhMh1ruuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7174
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Sura=
j
> Kandpal
> Sent: Monday, July 22, 2024 12:15 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 3/3] drm/xe/hdcp: Check GSC structure validity
>=20
> Sometimes xe_gsc is not initialized when checked at HDCP capability check=
.
> Add gsc structure check to avoid null pointer error.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM. Thanks.
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 990285aa9b26..0af667ebebf9 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -40,10 +40,14 @@ bool intel_hdcp_gsc_check_status(struct xe_device
> *xe)  {
>  	struct xe_tile *tile =3D xe_device_get_root_tile(xe);
>  	struct xe_gt *gt =3D tile->media_gt;
> +	struct xe_gsc *gsc =3D &gt->uc.gsc;
>  	bool ret =3D true;
>=20
> -	if (!xe_uc_fw_is_enabled(&gt->uc.gsc.fw))
> +	if (!gsc && !xe_uc_fw_is_enabled(&gsc->fw)) {
> +		drm_dbg_kms(&xe->drm,
> +			    "GSC Components not ready for HDCP2.x\n");
>  		return false;
> +	}
>=20
>  	xe_pm_runtime_get(xe);
>  	if (xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC)) { @@ -53,7 +57,7
> @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
>  		goto out;
>  	}
>=20
> -	if (!xe_gsc_proxy_init_done(&gt->uc.gsc))
> +	if (!xe_gsc_proxy_init_done(gsc))
>  		ret =3D false;
>=20
>  	xe_force_wake_put(gt_to_fw(gt), XE_FW_GSC);
> --
> 2.43.2

