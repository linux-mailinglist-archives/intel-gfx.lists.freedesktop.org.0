Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBAEB1FEB1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 07:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA4B10E272;
	Mon, 11 Aug 2025 05:38:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQ2uW0Av";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA1410E272;
 Mon, 11 Aug 2025 05:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754890711; x=1786426711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rpEqn9g+TAMaXoy9gWDl3lS1ES+6wQDGK0CDOBfyG8U=;
 b=TQ2uW0AvOVbiVGftCU41B31v6drdoKu1OccC+rpapwbNLrb5rCG50uFa
 7kijUMleXpyx/xCzXoN3uMT2Ny1XMGSTx3Fxizo6jE8D5ir7C+y9ODv/S
 8YOEW0OShnPzJ7HTLmA1FWKGAH5Lrb5Hgzra1WQIRQfCg18jFMLiD7G8h
 slKDlvthZBEoWctMn7S8TgFOKoFm1iOizFB5tSjRLYgFWgvT81PHS2Unq
 emv+C9I+YWOMx/gT8S//ubdo8jPg52Idm9JJk/mo0MdS6hLy1urXU6Klk
 44V/+3wLblKdOMAwcXi+io0Z0PtwLWkGhUm8nWOAOU8wf4twsp/ZnY+Mj A==;
X-CSE-ConnectionGUID: 3KH2y4KoQ5CooYTf1byrKA==
X-CSE-MsgGUID: MnzCZIvlRIq68M2hyAxaiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60937150"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60937150"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 22:38:30 -0700
X-CSE-ConnectionGUID: SeJu8//qTnWk5HpIIIf+Cg==
X-CSE-MsgGUID: +1+cMeA9QkSZlXhRtB5khg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="166186543"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 22:38:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 22:38:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 10 Aug 2025 22:38:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 22:38:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EJvan9JL0VV81x+htrAC2XoU/PHD7TYL1LhRZt4YCIbhOKzdVjxIOVfW2zXTjgf6aQaXvbOTdeN6mR8nWj+tB4m5ZECcYvgTobnrNxmU81NX0Ysx0jNr0r/mRn1LZ8rgPqW+2fI0cvxbYa6NyvaAgiXrVG+tvMSbjpf1zXGPjpzCBEvxO/DX3hacdL7dbCcZAi82atD20MZmyQADsDcEQ2SYNnHhMGgH+om6KKjWbhA01LvlIRrc8GmWGi0JvLBs6qk1N4HQYqgAX1rfJS/Nma3TcvVvV1tFVDr3rtT7oGKCmnyqX2ZAD8V5TFMBWgDNvF9zPv0r1gUp81n+SR/a3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iv6g5FwkIZntWPx9MXD4+LKlKGq2FCZPjacQeyDjO28=;
 b=GcztqmydaPqmJvPDC3Ejahcl/WGAlPFImMhGsfTUMfjD6a47oqkOIThrOUQV3xdL8XbvsJLE0TUc3BWQ2epe2NoSidAQ/9Oooi4SM14W4bB8sthImlZwysVR2NaCI6S8SFbVG6KW/66k6Yr3kVANnST+TAAsGleYLSU+eq752PpRzowdrbAU9BN8yz9fHWihY1K8XIZGz+R8OUY7jhiaRZAkJQpsLVAYod83QeKHA2VJmBVKDIqYPGT/Wu3y9yovZMgYZSqY/8EtTDle6pMrwbHIVfY9pCHpw9RkRPRGHkW9wU4v5NxS3VtTQosDu1wIdjaNdWLsxe1gYWarscTfkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV3PR11MB8766.namprd11.prod.outlook.com (2603:10b6:408:212::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 05:38:25 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 05:38:25 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dp: Set min_bpp limit to 30 in HDR mode
Thread-Topic: [PATCH 2/2] drm/i915/dp: Set min_bpp limit to 30 in HDR mode
Thread-Index: AQHcARkPKuvS7i+rq06L7YnyvOvjrLRdANJQ
Date: Mon, 11 Aug 2025 05:38:25 +0000
Message-ID: <DM4PR11MB63600413AC1F4B8A0CBC1F69F428A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
 <20250730055523.2214966-3-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250730055523.2214966-3-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV3PR11MB8766:EE_
x-ms-office365-filtering-correlation-id: 99834960-ce58-469b-b8a1-08ddd8994abc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?l2joBpNWljwQJLavD33ljjl3bs/8rao4LEefFJg1R4Y+k80s3/SCrWg3gVsw?=
 =?us-ascii?Q?olDaWeM047VkgdadMbJB7a25e64auJZXYoIOvhhXWziw+68hRMs/2MY5rBXW?=
 =?us-ascii?Q?0ainzCePdN/fiB1KNeukikle2h5OwJm2WxOeZTtYmozJofvH/0btMxaAyQ+v?=
 =?us-ascii?Q?gQcTVhHwW9cKO1EXC6eJ5wdNSon5KA24Kla3+ImyTr7SOtpti9eyZGYGkoA0?=
 =?us-ascii?Q?L/taJJ0alc/VX6k6jyrLJuPyyCllcOc4eOx1/KivGU5WpzH/y8yG6f515ZHP?=
 =?us-ascii?Q?OQnDh5g0BadOA67pMA8/MkMxZIrADECjO6zEC7o35KFRhWQPJ9asHMNRJ16p?=
 =?us-ascii?Q?EbnAEgjhYibRFb/NrR+66Bl7O9kS4itipgIXgBQjVG9DxaqOo61dVBZ7SB3H?=
 =?us-ascii?Q?CzXnFOqEOB9/qlWKoca0s2Kctm5LXk0kcnjqYMPYMhlztiyhpyncw7d4g/yd?=
 =?us-ascii?Q?oXnOQujpcAv/ZhnKJJJwgaDKofjXniSiiZEjdv/cgS1vHtUZaILsbTZCsgz6?=
 =?us-ascii?Q?SdTGC1Rt5jAUutlDmbUGoMR/pMYr9NEdXPygOEZe11C28GbZURWBMSLKz51X?=
 =?us-ascii?Q?EIfHaAJJhnakaMFmJRnoMauP26MGLTr3b963rI3knS1j0SYUEH8Rjl97dqw4?=
 =?us-ascii?Q?7YHR0Ce/RQdlkPZouk5jClGSQGAFd2R/NwMyYZge0lbbfdCSFShLiwaVZU7M?=
 =?us-ascii?Q?bB+i8+MbJ7NsBsVfnHsRJIrCTa6l/aT2q6Ya99V1LgwIq5OKYNkcRnAeNwbZ?=
 =?us-ascii?Q?cUKoKaqbJB8reduYo+E9+qhcku+CTwWlg/eZipEbYzqLKxNTkEftGVL6j0Nf?=
 =?us-ascii?Q?OWIq2bMdW8N76COi0r8yON/I9kKzdSLjMDSLH5mQJtafzm1Qw/1HCEoLJgqX?=
 =?us-ascii?Q?p3r7yJhJuBMS62RzKxwRUPkcoKUdyyR2l42HSbo7oM8gZY1CJhm7DaaTL/ng?=
 =?us-ascii?Q?aIiJit7573lXKoogljkvVB7f5OGf8IosUZ1Z3IdTDxAPN1HSDUooYzjloYO1?=
 =?us-ascii?Q?x8+rBercCpPLLPTQW+dtdO++gE01FoL44tw8WFZm/CtMUDRlepKiseczXN7t?=
 =?us-ascii?Q?t4gv8dlhzSIMCuqDzaYIn+dwRPhgQ6WKJILnOJlYU4ZyiGB8R4PD+QRKGMz1?=
 =?us-ascii?Q?OujvvVVIhm0mCBnnnA0Vp1iAH+IzzbYazBZQmarS5/il4YeeOIxHemevf2Dk?=
 =?us-ascii?Q?VdDPqirb9Kz6k5Hzwd7O3DAam317Dq7lXOZQ3E9dxUj6zxkxVJfmdkCuKJU/?=
 =?us-ascii?Q?QGI1qDKRr+L83WSj5qIng7iHIFZTk9HSFkrlnkDuiP0KDxUGCT6Fc3dpbEzs?=
 =?us-ascii?Q?ODbZ1QzrkRM88/9g5afcRuvQXrMoYMqphRyfcRuHJKVAeIitv8NnqX4no6qg?=
 =?us-ascii?Q?rCxTIJznAmcBjqb0av/jKrCQsSLw0+Xodeg6Hy0UIOTyfBgY55Bqd/hhCPpN?=
 =?us-ascii?Q?gpUwc/m4EdkhJw8+Qbu4a6RR4zieQdo66dKkq62tx9Qh8pd2EyGjGmhwT1vs?=
 =?us-ascii?Q?091Eajln8R8ITW0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4iiTy9D/KkA5AdQ3XSNrwiHwuRo6HUBeGJ94G6cWwDFubk5jFjg55pcmv5AP?=
 =?us-ascii?Q?vo+FCLAfzWQZoZzThbfRC5YX85qsHadjiQL4+vpkfdn9J5+CADj5RZM44juq?=
 =?us-ascii?Q?BvilZfFYYKUl8HUZWdLb6Z1gQ1x+ZQ4xOJZIrX/IMrNgshlNDGaUS2OTXrLm?=
 =?us-ascii?Q?ZojPPLZ3K9FzNZCRaZy4Ed/1yqjvm+Ku0ZB4okwKF5zrZG9J6hhbyPJjJ1rU?=
 =?us-ascii?Q?fFdzEsgoxFVuCruT4ed97yKWwpnrOCGB3DHKr15ul+41Ttacp7+F+klqUC6N?=
 =?us-ascii?Q?Gxhd9mmHh9UcNSCb1vX0NNOMiKF6xU/plbym0ggPRoLQ/yjoEg6qu9Uhg3HZ?=
 =?us-ascii?Q?GU68Xf/4ST5OncKK+li7k/KTOm2gt42qMYRDDP8Dm12DvpvV2Cxm5VGQYAf6?=
 =?us-ascii?Q?CSlsGVk34m8I6gioKByo7X2hphX9iur8iC0ZaeYUim0Nretz7cfGdzjIJR2u?=
 =?us-ascii?Q?k8Hq7fYvvuj0xv8nWCVqhqy7K+nuqzTH1of9K+3hmbF+0zOvu/Jop06Btf8l?=
 =?us-ascii?Q?+YoHqj0Vywc+AUQrBsx0PwGueskDN2ePDdvgf6v9TObm0SVwZZAPR81BnXBV?=
 =?us-ascii?Q?e6/FPUPlEDN/SjuuK5yKs9Ftlv4MDUILXkHa0dhzjUMeffuUFnrvuzsHbCtq?=
 =?us-ascii?Q?7BbycW41G7odWZRlotXNfVZZmgbpFDj0fe1/2cI30gZZKFak+zD9rL0lxvoQ?=
 =?us-ascii?Q?Y5SQzdBRCk8Ao1J4sdGdhO9O3Hz0AUsIz2fi6tAxeiFUmxZX6MP42EXmDIsa?=
 =?us-ascii?Q?ZTH4u5/KdidINUDhUrS0F0TrU3S8MbUdV2QgQ819caFGjEL9r6YC2F/pF0pz?=
 =?us-ascii?Q?v4jE752mnUVK7I2m2/uq6HmcY63nHBKad8TkumOMtmmjD+kR+5TS8iZnWAJ+?=
 =?us-ascii?Q?Gca0Xvm5omFoM//0B6TYGkCcUyZjclOljOCGCupkkrLhz/ZhlAo7yKf/v5SW?=
 =?us-ascii?Q?XExi8ZfAkpNf64B4yeeWVLfLI/5dwmdFkLdNTyr0Kt+Og6+Oru8atOgRgp06?=
 =?us-ascii?Q?sOuYVXxpDRIPMOqBfI/m5LtcavTsMMrLtMdtAty80svOpi6/vUaJiDOClEI1?=
 =?us-ascii?Q?FCGpcXQR6tSwNcDRqRoa+SqC0T/FIyllBL5ZYPAihwev/Lr1v2e2yEV+gOIM?=
 =?us-ascii?Q?3/yjKlaKAJKwzLqu7Owp20+cDdPRq+OpHNNho1/5MR2NreVQ8CzqroFRFQNc?=
 =?us-ascii?Q?/CFM8b6KNLTtBrTFG+qdrgY7kvaANjNPiVqb7MlNMpShlFvC2pjs02mTJH0b?=
 =?us-ascii?Q?r+eQt26WoDdX1MygntARYe46zxOy3FWO2vh7qAUlUfLfFYWpX5OOxeYsOA8u?=
 =?us-ascii?Q?H0RVKCjnoLBfBfVOBVXergN512SaqpEDwAHKWmCChiGShIe4WLOYyO2JBW2P?=
 =?us-ascii?Q?tWvAW03qqrxSQzK/lDF2lR/KE8vVIE4Idj0cbCWDjMNVHT5spTs0WGQ47a1B?=
 =?us-ascii?Q?NoU9uoQ5sFzdN06OKJzt2xznsF2i/UdvUV469bkFHTerkWayPUzB/fQKtapI?=
 =?us-ascii?Q?PXWHNsilDJnjv3iMMTXvTjSimg57hAp1sxW+AwSLQ2XMoNgBBI3IBx0HESuk?=
 =?us-ascii?Q?4EXdYNj99V2XgQtf09Hrki3NS2yusunH9sU1+pF3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99834960-ce58-469b-b8a1-08ddd8994abc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 05:38:25.1720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9yYGfqUxR47e8t2yFFkdY9LPF9P1RwktntfXRDDerfGBsGuUVns4PXTjeuTnvcO/FUmMb67X8ZwxM4AArKzCcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8766
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, July 30, 2025 11:25 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; ville.syrjala@linux.intel.com; Shan=
kar,
> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH 2/2] drm/i915/dp: Set min_bpp limit to 30 in HDR mode
>=20
> Update intel_dp_compute_config_limits() to use a minimum of
> 30 bits per pixel when the connector is in HDR mode (specifically, when E=
OTF is
> SMPTE ST2084), aligning with HDR display requirements.
>=20
> To support this, the function now takes a drm_connector_state instead of =
an
> intel_connector, and the required updates are made in all call sites, inc=
luding MST
> handling.
>=20
> This ensures sufficient bitdepth for HDR content to avoid banding.
>=20
> If the required bandwidth for 30 bpp cannot be supported, the driver will=
 either fall
> back to DSC or reject the mode during atomic check if DSC is not supporte=
d.

There will be some case where sink supports HDR but at a lower clock with s=
ame mode
and lower refresh rate. After driver rejects, since there is no reason for =
userspace to know,
it may end up not enabling HDR at all. Not sure, how many such real world s=
inks we have though.
This can be taken up later if something comes along like above.

For now, this Change Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 11 +++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++----
>  3 files changed, 15 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 59d814abd3a9..49a3ff414dc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2536,13 +2536,15 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct
> intel_dp *intel_dp,
>=20
>  bool
>  intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> -			       struct intel_connector *connector,
> +			       struct drm_connector_state *conn_state,
>  			       struct intel_crtc_state *crtc_state,
>  			       bool respect_downstream_limits,
>  			       bool dsc,
>  			       struct link_config_limits *limits)  {
>  	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	struct intel_connector *connector =3D
> +		to_intel_connector(conn_state->connector);
>=20
>  	limits->min_rate =3D intel_dp_min_link_rate(intel_dp);
>  	limits->max_rate =3D intel_dp_max_link_rate(intel_dp); @@ -2552,7
> +2554,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  	limits->min_lane_count =3D intel_dp_min_lane_count(intel_dp);
>  	limits->max_lane_count =3D intel_dp_max_lane_count(intel_dp);
>=20
> -	limits->pipe.min_bpp =3D intel_dp_min_bpp(crtc_state->output_format);
> +	limits->pipe.min_bpp =3D intel_dp_in_hdr_mode(conn_state) ? 30 :
> +				intel_dp_min_bpp(crtc_state->output_format);
>  	if (is_mst) {
>  		/*
>  		 * FIXME: If all the streams can't fit into the link with their @@ -
> 2651,7 +2654,7 @@ intel_dp_compute_link_config(struct intel_encoder *enco=
der,
>  	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(display,
> num_joined_pipes);
>=20
>  	dsc_needed =3D joiner_needs_dsc || intel_dp->force_dsc_en ||
> -		     !intel_dp_compute_config_limits(intel_dp, connector,
> pipe_config,
> +		     !intel_dp_compute_config_limits(intel_dp, conn_state,
> +pipe_config,
>  						     respect_downstream_limits,
>  						     false,
>  						     &limits);
> @@ -2685,7 +2688,7 @@ intel_dp_compute_link_config(struct intel_encoder
> *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>=20
> -		if (!intel_dp_compute_config_limits(intel_dp, connector,
> pipe_config,
> +		if (!intel_dp_compute_config_limits(intel_dp, conn_state,
> +pipe_config,
>  						    respect_downstream_limits,
>  						    true,
>  						    &limits))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 5def589e3c0e..f90cfd1dbbd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -193,7 +193,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_=
dp);
> int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
>=20
>  bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> -				    struct intel_connector *connector,
> +				    struct drm_connector_state *conn_state,
>  				    struct intel_crtc_state *crtc_state,
>  				    bool respect_downstream_limits,
>  				    bool dsc,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 74497c9a0554..352f7ef29c28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -611,12 +611,15 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct
> intel_dp *intel_dp,
>=20
>  static bool
>  mst_stream_compute_config_limits(struct intel_dp *intel_dp,
> -				 struct intel_connector *connector,
> +				 struct drm_connector_state *conn_state,
>  				 struct intel_crtc_state *crtc_state,
>  				 bool dsc,
>  				 struct link_config_limits *limits)  {
> -	if (!intel_dp_compute_config_limits(intel_dp, connector,
> +	struct intel_connector *connector =3D
> +		to_intel_connector(conn_state->connector);
> +
> +	if (!intel_dp_compute_config_limits(intel_dp, conn_state,
>  					    crtc_state, false, dsc,
>  					    limits))
>  		return false;
> @@ -665,7 +668,7 @@ static int mst_stream_compute_config(struct
> intel_encoder *encoder,
>  	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(display,
> num_joined_pipes);
>=20
>  	dsc_needed =3D joiner_needs_dsc || intel_dp->force_dsc_en ||
> -		!mst_stream_compute_config_limits(intel_dp, connector,
> +		!mst_stream_compute_config_limits(intel_dp, conn_state,
>  						  pipe_config, false, &limits);
>=20
>  	if (!dsc_needed) {
> @@ -691,7 +694,7 @@ static int mst_stream_compute_config(struct
> intel_encoder *encoder,
>  			    str_yes_no(intel_dp->force_dsc_en));
>=20
>=20
> -		if (!mst_stream_compute_config_limits(intel_dp, connector,
> +		if (!mst_stream_compute_config_limits(intel_dp, conn_state,
>  						      pipe_config, true,
>  						      &limits))
>  			return -EINVAL;
> --
> 2.25.1

