Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671F19FE59C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 12:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED4210E4A0;
	Mon, 30 Dec 2024 11:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eEdfHBii";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074B010E230;
 Mon, 30 Dec 2024 11:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735557933; x=1767093933;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sRTit6TvXlMtTgC64JOyjYbuQmNXjtfghwDa1R4C49Y=;
 b=eEdfHBiifpcxnDIfv4jtCchn0ty9oGGhleDU5F12Vkqfw6PqPmOgRN3/
 1Zs3Eu3Nd8iefRLOfXR3eb4fDdrwRMs+UG3ttSjDTbPBlocDcVbGCXacX
 h6aH/AzVrVMo27usMElB9varJuUVKasNG4gseqmmAvJNpszg/LS5hn3vX
 y5sjcUtq55ygJuBBmAwrKir/RKN7K8OZej9jAd5XkkkMBU9m3GRFWu85H
 kC3yszRg7Vsw8gbKbtJ/bq9v+FTxIK0GlqlNCHohTaxDmw7cuk0dUphd8
 gd8N9d95lvM01KrH2lpnfRFRkeBW2vfe2uazbtTOvB0IAH63Srpn4gKTt w==;
X-CSE-ConnectionGUID: 4PZzOlvIRhmzW1Esb6d1kA==
X-CSE-MsgGUID: Zq1g4KeES9yVvKnlkM9O+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39774485"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39774485"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 03:25:31 -0800
X-CSE-ConnectionGUID: RgEazcCATbKPcu6ST+mAWg==
X-CSE-MsgGUID: Tl2OJ5b3R9GFmNc3MQLjVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="131721518"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 03:25:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 03:25:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OcYmmxxzMIVKrpmV6wZaPsZQy8r/q2YfAQB77PHxPssn3IitSoUtwsbcp4PMdf3Qf+JGat750ipff9iWoPYXg+qp9wX3QrOTZUKQaVEPd2vct0WCBA9Y9mZzcT+hxktS0wvkLV0DKviRj1AnpeIE3ubo31JBmUz/qCCMGjCX8CCFdt4bX0EgNvAeh0UOjF2BseFGhGeFiMfs7QUzh5Ot/VnMF2vvf5Dc1bpz8XPvtPpiwiOFZl6sZGAJVd778pxZ57m4Je29EEZfqrvFlPD0nvxdtFPgNdq0bKpcA5LezjWdlnVKOgZacIuiaMhDnO/Q2WiVCbJPBB5/cJU3iL84Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cuDWQIkkYkgfsaL1blxQdgmvtzSrJwgRzFq8e1+lz/Q=;
 b=bHtn746r+KlcoHwlJOA/ixMQbWfUAavOglMhdtUSVg0FlxJLc6wm3deOR33pl3SaQwURaAUP0EEBVjC7uz4WmV3Gz0PY9iVjLJc4gzwtzMqMNcZuU68ASwwh+a/edrSbMJmIsnPmiPyEIUKf4/7Fm1Ik7uOOHItg8RvaiNSrw31JoH0iFVBLgUy7/3q3M4irLFANAAj1pYD3eMpLlGkBdyQoW7oXsTob+lE3N4YRBm40lnjMmgIW8edFE+2tiL4cfMfU7j6BA3+CyByZrL1vQKWCmdhxdBkgOfBflq3saVCawhqDut0gk4TQ3EA+18rFl3TmcjHehZcSWg76R3nk4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA1PR11MB8173.namprd11.prod.outlook.com (2603:10b6:208:44e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.18; Mon, 30 Dec
 2024 11:25:15 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 11:25:15 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/4] drm/i915/dmc_wl: Show description string for
 enable_dmc_wl
Thread-Topic: [PATCH 2/4] drm/i915/dmc_wl: Show description string for
 enable_dmc_wl
Thread-Index: AQHbUmOEz5cx1o/YdUSVui2tv0Sq67L+r47w
Date: Mon, 30 Dec 2024 11:25:15 +0000
Message-ID: <IA1PR11MB6266A7F5539F3AD2C52E6033E2092@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
 <20241219221429.109668-3-gustavo.sousa@intel.com>
In-Reply-To: <20241219221429.109668-3-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA1PR11MB8173:EE_
x-ms-office365-filtering-correlation-id: ec33b6a5-ed54-4c62-361d-08dd28c4a246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?46KLxnP5N0SN1hKaqXIUVHWrglIGf4zAOgVnXWdvH9SoO88HCsxDuUu2lvzq?=
 =?us-ascii?Q?ecG6jSYwKHudxxv3iusZi9OPSlznJrcyudNl+bX6VlsvhLtM0+urenxtmX5N?=
 =?us-ascii?Q?Ytw39vAfC/ApK/LQdQc2/b/2Sy2SuF2tIlWdsGabz85NzSDClB8yIggbeepI?=
 =?us-ascii?Q?czdSASOkhZVlU4ROtxvTWUgsBOiR8qZhdpTm17zTuqAQdA+tqF7ffiu7N1JR?=
 =?us-ascii?Q?zRJJAPdpd+ssWGxW6+Yk29YvAvjMzneKEVd9yP/2tVGAdXjAXjapLS77iyIq?=
 =?us-ascii?Q?zUe2MbouWr/oy9EWFk93jMRc3u+ZGZLkJoh8lkHifB76ZlYjJT7kv2rZXwZz?=
 =?us-ascii?Q?ZkxAP76zS5jnsi/lwor48a9MeCjB8ZYRpxW0jFkTyoICBrBhhKygL25DEAs+?=
 =?us-ascii?Q?/V2IwzNVm21LEg+PyUj7m6N+8SAsgjI9Mq4qAiy1oh5cVrfJqiOEDm0wZn6d?=
 =?us-ascii?Q?nkU+I4oDnLBzMNqNKpsDwm2NY29SbrpCi7rrfEE3hwjKDj3flI0KewgiHhQK?=
 =?us-ascii?Q?j8BhnKXbvucCINU6PUpYGj45NrxetxbP1ubnR+X02lJ+DGmzPJsmSZc7V7jf?=
 =?us-ascii?Q?7TfpIQH0anaqJzqHNyz9TDZogdhmhpl/RUO62AZYxdQztmkeEy4XDbKug5ZI?=
 =?us-ascii?Q?Gb1dVndl7L1nq2lH5QalvBWOHRbCsRpDJeekqLhyPFT4WOnWuvH8Og0KwVxm?=
 =?us-ascii?Q?8J02upBk5ju9uTQQcjpn7bLBm9nG7sw2VJGDLQVgdSl55EQBsFMnXYMWOs9H?=
 =?us-ascii?Q?K0n5tnseNUZ2iue6n7LWctIlv2DLI59pTzDytDSLhp2wIZkvGOO/UrPuMDX+?=
 =?us-ascii?Q?cBsi12pt49XCz8ri8S8SiLRL0ntvtvagl/yxKDW9GYd4kv54vay4PnpiEG70?=
 =?us-ascii?Q?EVSYrlzYcbs6WEXXk5SjKu5r/NcX92NuR8yWuwbY3iujY3Rg/N4w0mqU9Ywt?=
 =?us-ascii?Q?DkFTNA+CrFUAUtgKe5e45Joi7oBNe4SGmeGE6SP4Pr8rWA8FLiuX9DwonAwN?=
 =?us-ascii?Q?SAsHEGXNSTE273+yscQ9X5NS8ndlnG9SlIfL9K1SKg1d8A1gPXOYpzMUlgXp?=
 =?us-ascii?Q?M28mDq4DEhnPez2ZNiqzZmPqu3rMVbeySuRkGFXenziunx9NnL0XvMkDod5t?=
 =?us-ascii?Q?OP6ve1yl2vsVNS6pqiLsW//VsvpqoChQJCn5VFpIN0XkqhuKIVat2OmJLxE7?=
 =?us-ascii?Q?0IHIBR1lpyFCFKADexpoMM88C30+xBi0QRPzSIm9ZdgZprFW5iubUljIZkUw?=
 =?us-ascii?Q?dDe52UXhJCz0MxVIH6RxDRw/svZ+QdIW2+Bqelq/zOuK8C/2J/G3R2n1P8z8?=
 =?us-ascii?Q?cavvtSAEa3pHpY3MBuXoOhmotZi4nsxP8YEfJI/co85/WNdrwAbHVB2bb8gv?=
 =?us-ascii?Q?mNmJjts5FuzNCC2h73GUoJ/Mx1a2bkJA7jSfvlmtHhtmdhBNqpSEeWYDsVkv?=
 =?us-ascii?Q?xqy5jWzm8Op2z4xuQ7TU3PCZYB/KP7/B?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8jb/RhLEwalelxHwY7p8r5KnZu7dheHpYJ5LdCvZq/4KfWTpdKdpPYJiPzL1?=
 =?us-ascii?Q?So64Qkx3oAdQvB4Geoc5VTBbSY6JtvhQQiYz6PnAcXR+1ECwJxDqgHJKYK7M?=
 =?us-ascii?Q?wnnzXzMuiN+HFiiC7oPkXrKyW64aDKb77YqxSFT+OEizKtmSqkmGAI2KT74U?=
 =?us-ascii?Q?EmipHJfdMFZ7Y8zKeZ6KDvfcHj/zjVgOuQdkLyjQYi76yz6i2V3GLi7Ha2ZY?=
 =?us-ascii?Q?uYgUsokUckigHkp37IZIFApTyydUJg1T3ugG5jvLt2dFFS3syfmMlMefh3Hz?=
 =?us-ascii?Q?nt3jmgupKW/4B3wfQWaXYd9bvYRTWlly7BAc61Cc1XEJUcyUUgnEeShssoSm?=
 =?us-ascii?Q?21oHLtnGGQhBUi/p7yLbYfnhruFOHINFEoTLYpMEq2CdGcgLQnOE6g5vsBPO?=
 =?us-ascii?Q?rW1odQKebE+v4TCM93lyLeIQYZpdJwmRWNT4wxlX+WxJwJO3diayhO/qJn3/?=
 =?us-ascii?Q?VWHHLGY2F/f4TtX2j8+hKvt7S6OoX3g/78aTWM7QDzxniTFl465O5nJqbEeq?=
 =?us-ascii?Q?l7JX5pY8qW4GjLiQ8uJGf5nvVVjewIHWY5qrQYllogUAkg9B7/XbjpB7tnzo?=
 =?us-ascii?Q?XOiS9r3yzphXVMRKTF42NPhfykNlqIx2mPLEcTHeqaEM1Z/8taHXHLe0mVkZ?=
 =?us-ascii?Q?nMNX4jXTTBj+m5+JJV87Bxr111y0EcnBpSvn/dWxIgb6TcLjK4yqVNCwT+bq?=
 =?us-ascii?Q?RB4wTkfX/yi8zC1qk62VfiT5gOZVYTnEpAFY7l/Ru5FtkG09tdRxN1JKSAsj?=
 =?us-ascii?Q?QMvkKCChfMwNzqSDUWLsciWoFjYqxBRPxUOLcqpPDleqqI/yv2NCizabKmQJ?=
 =?us-ascii?Q?IUAkB6AYhW3zCOLyyWzDtDGslY0QdaretGNlAKbt46jyQswAAsFYgQyZbKhq?=
 =?us-ascii?Q?FWUackh70HLw0y9O+Rfqc46/v9Q92dwsJpH6N/3G28hMKDED6FNgYLNTiQM+?=
 =?us-ascii?Q?IjeIK79jtni+3EYZ30929QyGW8wP4pOweadeT7JtfZIksmKIzzGeN/yr1xcO?=
 =?us-ascii?Q?QbY+bze/R/tyWqYAu25Ck56IeiJLA940xVxcCCjwIZWYsLjjEf5Jm80OZIGm?=
 =?us-ascii?Q?HblIRti9fI0+TH4LMvCx4EcDK9usuSiYbTQz/FiRt6uwohyJCUuBZfo5jDib?=
 =?us-ascii?Q?+WPM6tVwTOmRsec2iNBvQJqCkytjYbEaSUVfNsEZHODrIceLAP+dI5YRj/mE?=
 =?us-ascii?Q?AsHtOG7CZGTNLjaW8oRRgwy8mWU0Yx6Y0Ls0F1/sDXNT/L2JUgRp6UrFaozb?=
 =?us-ascii?Q?hljaBlkjmk39vDHN/FWU3IbDI9H+k7urqS86jOOiXnzvxmM74mFllrEJ2fCZ?=
 =?us-ascii?Q?EEu8m9HOashkFmc6VqYGKWMQ+E5FIf5UaCE5BQOnLGuB/RTSO4AQ3s9WW3d1?=
 =?us-ascii?Q?jr5YoAaCImE15yjwOOjnnsW4uZEUDcUUeS1eBtUG5U0J0QgZpNi1KOvmCP9G?=
 =?us-ascii?Q?XLZ+hcOOlGq3CgYjC85vPuxcfr62Ct6Lgb4Wf2mqVRqdLK6+u++UnbkwuuBC?=
 =?us-ascii?Q?CJn9hgEQAp3lohyirf/9x6TixCdkTYVZQLDaDeh/nxgtNCkZ6Ue89Yo2cjPL?=
 =?us-ascii?Q?tl08UW2C3OrkqMJN2YYazN943/+Lq8DEyL+EgVm/EjVHIjPhDD1by6mMRy3l?=
 =?us-ascii?Q?YA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec33b6a5-ed54-4c62-361d-08dd28c4a246
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2024 11:25:15.7560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S558cg7FNKnAyzn6Q7jqQ1G5EjsyxwAsXGQDckZoo3ejyPq5ushEZOkPGevGu7moCk9QVERrVGebJjsbBxAvst0bsz+QvSWlrf/USAPFO4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8173
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Gu=
stavo
> Sousa
> Sent: Friday, December 20, 2024 3:44 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 2/4] drm/i915/dmc_wl: Show description string for
> enable_dmc_wl
>=20
> We already provide the value resulting from sanitization of enable_dmc_wl=
 in
> dmesg, however the reader will need to either have the meanings memorized=
 or
> look them up in the parameter's documentation.
> Let's make things easier by providing a short human-readable name for the
> parameter in dmesg.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Dnyaneshwar
> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index cff841521ca0..2315c6318b51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -279,6 +279,8 @@ static bool __intel_dmc_wl_supported(struct
> intel_display *display)
>=20
>  static void intel_dmc_wl_sanitize_param(struct intel_display *display)  =
{
> +	const char *desc;
> +
>  	if (!HAS_DMC_WAKELOCK(display)) {
>  		display->params.enable_dmc_wl =3D
> ENABLE_DMC_WL_DISABLED;
>  	} else if (display->params.enable_dmc_wl < 0) { @@ -294,8 +296,20 @@
> static void intel_dmc_wl_sanitize_param(struct intel_display *display)
>  		    display->params.enable_dmc_wl < 0 ||
>  		    display->params.enable_dmc_wl >=3D
> ENABLE_DMC_WL_MAX);
>=20
> -	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d\n",
> -		    display->params.enable_dmc_wl);
> +	switch (display->params.enable_dmc_wl) {
> +	case ENABLE_DMC_WL_DISABLED:
> +		desc =3D "disabled";
> +		break;
> +	case ENABLE_DMC_WL_ENABLED:
> +		desc =3D "enabled";
> +		break;
> +	default:
> +		desc =3D "unknown";
> +		break;
> +	}
> +
> +	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d
> (%s)\n",
> +		    display->params.enable_dmc_wl, desc);
>  }
>=20
>  void intel_dmc_wl_init(struct intel_display *display)
> --
> 2.47.1

