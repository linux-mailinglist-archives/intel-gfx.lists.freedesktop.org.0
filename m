Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BE0942B52
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 11:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D20B410E0BE;
	Wed, 31 Jul 2024 09:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7WuwUVu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35A9910E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 09:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722419859; x=1753955859;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cXPrHl3q9vPUJtyQDhwVqY8adxWN/LWz5ggSovJ7PWU=;
 b=V7WuwUVui1a0I1ZwKUj12ILdhgsNZrLl0/VCwJ8zCQRdZAz3xNnHHEua
 UNpaYcG1MKIQH2QT7NR7XIQ6p/AbYaxhUFx+KhFrlooH0sIbcKc+FIVHG
 CTXaXVLOXXYd7Y+Ym+l9HbX0SRF/g1Hkd9BCF5Owykk4w0mZyZzRX/LDi
 NnaZwj466VDNUbBL5W+X1+q9iuZtZ+470ArAsPb7APh4fLApcoHPLCkGT
 psglQDC+W6whJfYBJphqJ442YgnEm4E/U10XW18RfNCYgFLrUy28QI29L
 XzNcDqCesNUh2T5fLx/hOtZMoebCfOPShtU/Wnh07cTxh0e+nFxh6p9yc g==;
X-CSE-ConnectionGUID: oPWGSqnXTgaymw+7lHmlDQ==
X-CSE-MsgGUID: sRP0bgo/RbCPV/B7xmpY3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20447302"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20447302"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 02:57:38 -0700
X-CSE-ConnectionGUID: ew+Wepx5SoSexGQDtGOzPg==
X-CSE-MsgGUID: ALJwWs/UShGwRIftp83FJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="55436818"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 02:57:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 02:57:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 02:57:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 02:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PLNV0BQmxhJyd673hiy4JQlgrWuIUQKbvP+TXvby1jbvDPjElh6ki++VAxbLRWX/F0SsIeX7YLGUZFAjv5+bP/ELlCoPzcVnBz4mXRjblH4/6+BTwe5y1FycLlhUWY2YYHPcDNRhJEmS5oJyewVM0IJqs82d4ZOdxJuRYDacx88YKN3o9o+2R0skOqVfUAMxEfxbsbltmvEqhxdl6IkP5nX+uA2C5fXWfL6gqTZ/QhFy1yfnN9iHmDunSBujHSEimA6JQVfTSyVhUvi6+9t2CUkpr8WDrCWpgbnHL2YbyHhBJlAkzaecoCPf+bkr1s1BVt7UML4fI3DL1iPxgUn4fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/bOrSXnSGeW8O3uJu65jC9M+U/qUjRBJ8j/6ZXFnuw=;
 b=DElGCa+wd0shx7kVeC1j0bfzYDOkAKF+pj0RkpnKdGELluin5nkgoxym+0dCYSgIhJ5x8ZYs8REi+cEXcU8fopJZbEbVK4p+KcNMjLGtBl7yXT8jApA+y6hDaRzO0SAkjv8Cj1V85Mdq1QA39wU0IAB/ua2P2k+RNJ2AGYC3ojsEGe/ugeEZSBX6bMzUgeLC6n1735VwEp6FldhAOvD0ePUewmbT9OzKT7i5OrYYUma1qVdh25fi9ywPWUqM5aaBVcGrNFAUjCqOyWSdcFR0JX2ivoB1HaOCojamjJdC3aJu+0OQrlG/zDSSrjWmgh61LhwU5A9YWZDo6Ne9BRG7hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by PH8PR11MB6705.namprd11.prod.outlook.com (2603:10b6:510:1c4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.30; Wed, 31 Jul
 2024 09:57:25 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 09:57:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 08/12] drm/i915: Implement hw state readout and checks for
 ultrajoiner
Thread-Topic: [PATCH 08/12] drm/i915: Implement hw state readout and checks
 for ultrajoiner
Thread-Index: AQHa2Or38UbkzeL8MEO0QMMd9olwuLIQrdDw
Date: Wed, 31 Jul 2024 09:57:25 +0000
Message-ID: <MW4PR11MB6761A141CD5FC7217FED66CFE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|PH8PR11MB6705:EE_
x-ms-office365-filtering-correlation-id: 005f5024-1b46-45b9-6b72-08dcb1472e17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7MDe0miygCWFulNvbBLZxc3z0CesY53P6fe3MtUGAS22SPd8MktX0fzMTzX5?=
 =?us-ascii?Q?H+sjCgyrEzKIoS4Wdjoa9PNX1ujAOLuTp58zcea8VP75zGDxZIniDmCR1vO+?=
 =?us-ascii?Q?1x+oVKQwhXSWqVjPE3P3CrDCpPIscMyG4hOZZTDYyUKG0v6OLgqCKJWlJW8r?=
 =?us-ascii?Q?bYO0qKE/8RbVlcND+8YN8KNx52bnD0Qizz0HYn61LV2O2CxohEs3zSa4TBIs?=
 =?us-ascii?Q?gJl3E9VQtZRgCw5XW1YaYDl/x2Z2x+Nnkckn/W8Rlu4e6RDvVAvPiXVwVjcd?=
 =?us-ascii?Q?RcNdcxZNS1WYeES1+7GfAbwkKlFQnJF+wwXExLPspzevl2SgXmzz6oNtaRmy?=
 =?us-ascii?Q?RnEmQqq9rbuE5MsdovSO4F5qdsoO4Ha8Pt29bj9S3NQLrYwC+mtmsSpDD3mG?=
 =?us-ascii?Q?Cy3XSaBmlxIeGSnZZ8QaSK4+6g0ethHTFmuyec3hmb1hzrhqYaM1hwLooUiH?=
 =?us-ascii?Q?GqpQ/qLPpZ1mKQ8gjYNgSA6ESyNviJlgV73XSo+yutb208gbbvcFusugLSeV?=
 =?us-ascii?Q?6aC8y5/RNo9L+t+bRMDt1uhU4r8jclKgQ3osfDbZ5y7xOTSKS+wOyw6awyXR?=
 =?us-ascii?Q?GV/n66JvdSDWeM1sohnpq5eeZMWjMh+bjbl/tmpTrVvMDBogtMAm0bVgrQFf?=
 =?us-ascii?Q?ola6h6GP9oHco6AKCmuHEqSRYnQ9rJ7mmRSTbRvjkY7jhXLAsOaHC2zpLiqn?=
 =?us-ascii?Q?6+tb2xeFq0X7ug2isRZnLKxc65dVFTwNY3pDZy9nD1n5TqoQxUIGaGgVqhxS?=
 =?us-ascii?Q?58ttMOOxUisre8buCNUQBHMJiJr1pubmRSuqzRz4+UUbphp0PR0bkdt/GqvA?=
 =?us-ascii?Q?dMxKb1LWN00nRzAVyQNUMWMrcwcb1kdyvkbHewhl46OU0qFdIr/ZIXQqO/gL?=
 =?us-ascii?Q?AZRPyEU2XhbCTJ5FRlOULa8L6QBJTyj8hl2p0r1py2rHHpL+n49NH/ie9CEc?=
 =?us-ascii?Q?r8KTpLRk0FVUdkIRs1oKorkTL3Z5a31RECwSyei2mbtZAYhBanICaAaFEzaq?=
 =?us-ascii?Q?HVWnBtL3AjM9n9pAVh8TDQd5KmemYttQ/kuztI8ptvcomTtnyBy4P3+dXwfS?=
 =?us-ascii?Q?fMuVVG0jcv0V75dIyAmecuZ669s/WACIN16TiWsEbkDj5qNwPXQOrX/mvHYN?=
 =?us-ascii?Q?SNMcD3hV66AvPwlIgXfpAZYSd+XlXopVgeUd0Xug8NPRBAd4Xw5DnOHjBxLK?=
 =?us-ascii?Q?RiDFN59VszyczNLo6n0XopuMc6mY8Z/k8/ENLkI0D+5DyODFUq0Qm7Gn4p/9?=
 =?us-ascii?Q?YplCz1GGjbHYp/ZwFyhEASwJwYZVs6LHtcKqWXXCtCb12+priompYb5VjLdJ?=
 =?us-ascii?Q?XU5QrRJQl5ICcN7GP8UUhOPmtGLnwKa0VbphmhIp2EgmlQ0+sL5Thw5nCsbb?=
 =?us-ascii?Q?xgIp2HnjDlovDczhNlasQ4mlRAojQrgvNvu8jyHDU/czxF+UbQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5rRxvBfiYSZh0jgCbNLmjFK111/A28YzhW/Ze5yJZPAI0Rb4FXAzQt5mniM6?=
 =?us-ascii?Q?KbIL3buvRYrmhbPguaI2WoryvAEWmI/cmL0hfs+GDY9S7zT2/kdJrlGQMDmo?=
 =?us-ascii?Q?HcWG04NPeq64nP5Uw5P9k9sefnojQDJOmzCn6YwHC4UwUYsyxl3B8yN3Qljy?=
 =?us-ascii?Q?VpgffvRDVa6gmq7FDpB4Ll1xa+qg1KY/VJer7nQIIxqa3WG+fC8OZDLeCfYK?=
 =?us-ascii?Q?BvKZhOqcFHpNuuaPUQwDGqYI/S9jYLIKmoPPVNayo9j54R1oKJt6OJmToCcO?=
 =?us-ascii?Q?zeOu8MoH+IOVQzDnqlNxv37cRxG03LzjhHr/JBah+TbLNmk9XlL3SkTrgnIa?=
 =?us-ascii?Q?x4yfdiCIHLRwWh36pgPkRU34fyonuuHBqs4JhBng4Z/sOftvy1yRakurS/oj?=
 =?us-ascii?Q?hR65w3MZWiJxqgvAxJhCUv6ir9WtYWOhBzCesCIriinIHJEPuqgk4v1J6L7R?=
 =?us-ascii?Q?lPapFA3eYe6ZO8TkghiSxVtkZT908C74cRhcdIlP9bAiW4WCAS1N05U7B610?=
 =?us-ascii?Q?46+s0gdqpUZbwFxFtYLr9Ne6my+v4cU7l7JSxmoQ/66FTwHFiSewZzGAtRs8?=
 =?us-ascii?Q?Srhk/NoLlO8EDCUqZNnII+mibiocNv6l+rtWNoDKvdjTkE75qR3PXuLAdg7T?=
 =?us-ascii?Q?3jBVreQCf8Zk5eFT7onStldkpXtqq64jDQOpUmxyEq1y42Mt4wwacZ87hAnF?=
 =?us-ascii?Q?VWCd23R1jvgrI8T/Z/IkvQ1Tmm8e8A6nOvgK6bWSCzwy/naQ5HN61B85BLfM?=
 =?us-ascii?Q?Sbk+09thLFot2iAd89XZuyCM9H3bZyDO+zPrxff4E6L2mdkaplXwIC1Bd+0c?=
 =?us-ascii?Q?bNXIT6EMQNAtTAluY+s3WoC29luBSNbqvCWd5Pl7DbjkzXgneT4x6nQEWKOB?=
 =?us-ascii?Q?H+qCXGrFV5eOokBB5chlzC9pn31agPoBTcL2M8hBFXQCzndzMtkrwqEAfJ6x?=
 =?us-ascii?Q?x5djYwMpIR0tOqrHlkckCOFxJ7/k8noZxTxrkgEiHwYevzuKOWgd2t4PK75f?=
 =?us-ascii?Q?KufLO1NQ3N2kvwp/yNnHTfcVS+rdvD/dxQun5AThIxzUnWupwb3Nwq2htJrY?=
 =?us-ascii?Q?w9JXuL990CVL2VUi6N+RxCuCn4II6YsRaV9DWxgDLBmf2Zob2pLWer9IgBpn?=
 =?us-ascii?Q?sd8AGnkK9jah8syXJkXWUlTg7VUuDJQuS6ogNbMCt1V/IgQA/pi/FWY8Wpmd?=
 =?us-ascii?Q?mCNf/gVKUiG10E9fiQuRVpMaFLAG9vpskAWz2t5djuUMU5qL8/gytn6/QgD8?=
 =?us-ascii?Q?t+fG6303s/gjUAFelw3RvWM4nMqgiSjpn8FiaNeyHEZuME29Kk4AfNk+Z1td?=
 =?us-ascii?Q?olK0RSOC6cvUD/7MG4wsh3lbTu4wGIB5WQE4Gs9qg1EfBvP7Uo0Wlp3ku0NI?=
 =?us-ascii?Q?+LrFhx3SAWRoh71EIewH+2k440GvjzgQkfl0hdK+IUlw5zCim90CDi4m+FPr?=
 =?us-ascii?Q?jF2KvNPgV54Ebo/j4oNo4LzcCgBE9N1vJgnNR0iA2yO/pS4U5VkOZQ1MUZST?=
 =?us-ascii?Q?pK/Jx12qeXe7yON30ntb+HZrc5CtsHYJbZxcyQdaYVQ4Od1Ooz7+4WS8cuik?=
 =?us-ascii?Q?ufHgmATHg0figdmzNLg/WdcZSqwADi4JF3Onac5a?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 005f5024-1b46-45b9-6b72-08dcb1472e17
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 09:57:25.3483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qKq3dTuhSILoV5x7Ba1xCbckBX8GG1YqlLMANOMNnMjmu67KdN+XRmfTBVklN2mrJFX/3PyXjDh+PikuZfe7bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6705
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
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 08/12] drm/i915: Implement hw state readout and checks
> for ultrajoiner
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Ultrajoiner mode has some new bits and states to be read out from the hw.
> Lets make changes accordingly.
>=20
> v2: Fix checkpatch warnings. (Ankit)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 127 ++++++++++++++----
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
>  2 files changed, 101 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 59cb0d2f773b..d032fd8011d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3648,17 +3648,55 @@ static void enabled_bigjoiner_pipes(struct
> drm_i915_private *dev_priv,
>  	}
>  }
>=20
> -static u8 expected_secondary_pipes(u8 primary_pipes)
> +static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
> +				      u8 *primary_pipes, u8
> *secondary_pipes)
>  {
> -	return primary_pipes << 1;
> +	struct intel_crtc *crtc;
> +
> +	*primary_pipes =3D 0;
> +	*secondary_pipes =3D 0;
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		return;
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> +					 joiner_pipes(i915)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe =3D crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		power_domain =3D intel_dsc_power_domain(crtc, (enum
> transcoder)pipe);
> +		with_intel_display_power_if_enabled(i915, power_domain,
> wakeref) {
> +			u32 tmp =3D intel_de_read(i915,
> ICL_PIPE_DSS_CTL1(pipe));
> +
> +			if (!(tmp & ULTRA_JOINER_ENABLE))
> +				continue;
> +
> +			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
> +				*primary_pipes |=3D BIT(pipe);
> +			else
> +				*secondary_pipes |=3D BIT(pipe);
> +		}
> +	}
> +}
> +
> +static u8 expected_secondary_pipes(u8 primary_pipes, bool
> +ultrajoiner_used) {
> +	if (!ultrajoiner_used)
> +		return primary_pipes << 1;
> +	else
> +		return GENMASK(3, primary_pipes + 1);
>  }
>=20
>  static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +				 u8 *primary_pipes, u8 *secondary_pipes,
> +				 bool *ultrajoiner_used)
>  {
>  	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 primary_ultrajoiner_pipes;
>  	u8 secondary_uncompressed_joiner_pipes,
> secondary_bigjoiner_pipes;
> -	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
> +	u8 secondary_ultrajoiner_pipes;
> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes, ultrajoiner_pipes;
>=20
>  	enabled_uncompressed_joiner_pipes(dev_priv,
> &primary_uncompressed_joiner_pipes,
>=20
> &secondary_uncompressed_joiner_pipes);
> @@ -3666,32 +3704,49 @@ static void enabled_joiner_pipes(struct
> drm_i915_private *dev_priv,
>  	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>  				&secondary_bigjoiner_pipes);
>=20
> +	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
> +				  &secondary_ultrajoiner_pipes);
> +
>  	uncompressed_joiner_pipes =3D primary_uncompressed_joiner_pipes
> |
>  				    secondary_uncompressed_joiner_pipes;
>  	bigjoiner_pipes =3D primary_bigjoiner_pipes |
> secondary_bigjoiner_pipes;
> +	ultrajoiner_pipes =3D primary_ultrajoiner_pipes |
> secondary_ultrajoiner_pipes;
> +	*ultrajoiner_used =3D ultrajoiner_pipes !=3D 0;
>=20
>  	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes &
> bigjoiner_pipes) !=3D 0,
>  		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x)
> can't intersect\n",
>  		 uncompressed_joiner_pipes, bigjoiner_pipes);
> +	drm_WARN(&dev_priv->drm, (ultrajoiner_pipes & bigjoiner_pipes)
> !=3D ultrajoiner_pipes,
> +		 "Ultrajoiner pipes(%x) should be bigjoiner pipes(%x)\n",
> +		 ultrajoiner_pipes, bigjoiner_pipes);
> +
>  	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=3D
> -		 expected_secondary_pipes(primary_bigjoiner_pipes),
> +		 expected_secondary_pipes(primary_bigjoiner_pipes,
> +*ultrajoiner_used),
>  		 "Wrong secondary bigjoiner pipes(expected %x, current
> %x)\n",
> -		 expected_secondary_pipes(primary_bigjoiner_pipes),
> +		 expected_secondary_pipes(primary_bigjoiner_pipes,
> +*ultrajoiner_used),
>  		 secondary_bigjoiner_pipes);
>  	drm_WARN(&dev_priv->drm,
> secondary_uncompressed_joiner_pipes !=3D
> -
> expected_secondary_pipes(primary_uncompressed_joiner_pipes),
> +
> expected_secondary_pipes(primary_uncompressed_joiner_pipes,
> +*ultrajoiner_used),
>  		 "Wrong secondary uncompressed joiner pipes(expected %x,
> current %x)\n",
> -
> expected_secondary_pipes(primary_uncompressed_joiner_pipes),
> +
> expected_secondary_pipes(primary_uncompressed_joiner_pipes,
> +*ultrajoiner_used),
>  		 secondary_uncompressed_joiner_pipes);
> +	drm_WARN(&dev_priv->drm, secondary_ultrajoiner_pipes !=3D
> +		 expected_secondary_pipes(primary_ultrajoiner_pipes,
> *ultrajoiner_used),
> +		 "Wrong secondary ultrajoiner pipes(expected %x, current
> %x)\n",
> +		 expected_secondary_pipes(primary_ultrajoiner_pipes,
> *ultrajoiner_used),
> +		 secondary_ultrajoiner_pipes);
>=20
>  	*primary_pipes =3D 0;
>  	*secondary_pipes =3D 0;
>=20
> -	*primary_pipes =3D primary_uncompressed_joiner_pipes |
> primary_bigjoiner_pipes;
> -	*secondary_pipes =3D secondary_uncompressed_joiner_pipes |
> secondary_bigjoiner_pipes;
> +	*primary_pipes =3D primary_uncompressed_joiner_pipes |
> primary_bigjoiner_pipes |
> +			 primary_ultrajoiner_pipes;
> +	*secondary_pipes =3D secondary_uncompressed_joiner_pipes |
> secondary_bigjoiner_pipes |
> +			 secondary_ultrajoiner_pipes;
>  }
>=20
> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8
> primary_pipes, u8 secondary_pipes)
> +static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8
> primary_pipes,
> +					 u8 secondary_pipes, bool
> ultrajoiner_used)
>  {
>  	if ((secondary_pipes & BIT(pipe)) =3D=3D 0)
>  		return pipe;
> @@ -3699,27 +3754,37 @@ static enum pipe
> get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
>  	/* ignore everything above our pipe */
>  	primary_pipes &=3D ~GENMASK(7, pipe);
>=20
> -	/* highest remaining bit should be our primary pipe */
> -	return fls(primary_pipes) - 1;
> +	if (!ultrajoiner_used)
> +		/* highest remaining bit should be our master pipe */
> +		return fls(primary_pipes) - 1;
> +
> +	/* lowest remaining bit should be our primary master pipe */
> +	return ffs(primary_pipes) - 1;
>  }
>=20
> -static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes,
> u8 secondary_pipes)
> +static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes,
> +				     u8 secondary_pipes, bool
> ultrajoiner_used)
>  {
>  	enum pipe primary_pipe, next_primary_pipe;
>=20
> -	primary_pipe =3D get_joiner_primary_pipe(pipe, primary_pipes,
> secondary_pipes);
> +	primary_pipe =3D get_joiner_primary_pipe(pipe, primary_pipes,
> +					       secondary_pipes,
> ultrajoiner_used);
>=20
>  	if ((primary_pipes & BIT(primary_pipe)) =3D=3D 0)
>  		return 0;
>=20
> -	/* ignore our primary pipe and everything below it */
> -	primary_pipes &=3D ~GENMASK(primary_pipe, 0);
> -	/* make sure a high bit is set for the ffs() */
> -	primary_pipes |=3D BIT(7);
> -	/* lowest remaining bit should be the next primary pipe */
> -	next_primary_pipe =3D ffs(primary_pipes) - 1;
> +	if (!ultrajoiner_used) {
> +		/* ignore our primary pipe and everything below it */
> +		primary_pipes &=3D ~GENMASK(primary_pipe, 0);
> +		/* make sure a high bit is set for the ffs() */
> +		primary_pipes |=3D BIT(7);
> +		/* lowest remaining bit should be the next primary pipe */
> +		next_primary_pipe =3D ffs(primary_pipes) - 1;
>=20
> -	return secondary_pipes & GENMASK(next_primary_pipe - 1,
> primary_pipe);
> +		return secondary_pipes & GENMASK(next_primary_pipe - 1,
> primary_pipe);
> +	} else {
> +		return (secondary_pipes | primary_pipes) &
> ~BIT(primary_pipe);
> +	}
>  }
>=20
>  static u8 hsw_panel_transcoders(struct drm_i915_private *i915) @@ -
> 3740,6 +3805,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc
> *crtc)
>  	enum transcoder cpu_transcoder;
>  	u8 primary_pipes, secondary_pipes;
>  	u8 enabled_transcoders =3D 0;
> +	bool ultrajoiner_used;
>=20
>  	/*
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this
> (for @@ -3790,11 +3856,12 @@ static u8 hsw_enabled_transcoders(struct
> intel_crtc *crtc)
>  	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  		enabled_transcoders |=3D BIT(cpu_transcoder);
>=20
> -	/* joiner secondary -> consider the primary pipe's transcoder as
> well */
> -	enabled_joiner_pipes(dev_priv, &primary_pipes,
> &secondary_pipes);
> +	/* joiner slave -> consider the master pipe's transcoder as well */

Why is the master slave terminology coming here when we have consistently u=
sing
Primary secondary terminology

Regards,
Suraj Kandpal
> +	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes,
> +&ultrajoiner_used);
>  	if (secondary_pipes & BIT(crtc->pipe)) {
>  		cpu_transcoder =3D (enum transcoder)
> -			get_joiner_primary_pipe(crtc->pipe, primary_pipes,
> secondary_pipes);
> +			get_joiner_primary_pipe(crtc->pipe, primary_pipes,
> +						secondary_pipes,
> ultrajoiner_used);
>  		if (transcoder_ddi_func_is_enabled(dev_priv,
> cpu_transcoder))
>  			enabled_transcoders |=3D BIT(cpu_transcoder);
>  	}
> @@ -3926,16 +3993,18 @@ static void intel_joiner_get_config(struct
> intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	u8 primary_pipes, secondary_pipes;
> +	bool ultrajoiner_used;
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes,
> +&ultrajoiner_used);
>=20
>  	if (((primary_pipes | secondary_pipes) & BIT(pipe)) =3D=3D 0)
>  		return;
>=20
> -	crtc_state->joiner_pipes =3D
> -		BIT(get_joiner_primary_pipe(pipe, primary_pipes,
> secondary_pipes)) |
> -		get_joiner_secondary_pipes(pipe, primary_pipes,
> secondary_pipes);
> +	crtc_state->joiner_pipes =3D BIT(get_joiner_primary_pipe(pipe,
> primary_pipes,
> +							       secondary_pipes,
> ultrajoiner_used)) |
> +				   get_joiner_secondary_pipes(pipe,
> primary_pipes,
> +							      secondary_pipes,
> ultrajoiner_used);
>  }
>=20
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc, diff --git
> a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index f921ad67b587..db07c9775892 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -37,6 +37,9 @@
>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26,
> 25)
>  #define  SPLITTER_CONFIGURATION_2_SEGMENT
> 	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>  #define  SPLITTER_CONFIGURATION_4_SEGMENT
> 	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> +
> +#define  ULTRA_JOINER_ENABLE			REG_BIT(23)
> +#define  PRIMARY_ULTRA_JOINER_ENABLE		REG_BIT(22)
>  #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>  #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>=20
> --
> 2.45.2

