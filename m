Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAD39C179C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 09:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9091010E923;
	Fri,  8 Nov 2024 08:16:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGkYiqE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4353E10E1A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 08:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731053801; x=1762589801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nHtJ557I2r2d1prnqKdNTXoOSFdWF4g3t7qQAy0zKOI=;
 b=EGkYiqE75I8n5HGLOSwY/mJMs7/MbvDbvkWjHvUbHGxtDnK8Z8gQjSYl
 T55tgkhbXIB4fUy7yt9jgnnwvBJtZc7/nJtiHHYDTaaSal4XAPIDWEPmE
 AVCTLewQTP++mAA7hlwrH3L4W/A/Lx1dTuGlKLzZIA+93RpXC1/igmtfU
 gpFN1EGRUENxVBiqO/BdNx4/jqnkt7T6xZOYja982FNG7YrGHPPwiOLci
 AuStLSKjIoec5poc5cIm1BiAuq/0xHTxwYF/Zey/m/Wrl0ZVBy3m04ABK
 5PS59o1tOZ0WGZbB7qKfdbVcFn5R5zWA9S0+f8bKw3p7xSq7FAuePTj6j w==;
X-CSE-ConnectionGUID: +l6awV1dSfmwL8H+HcG5ow==
X-CSE-MsgGUID: Fj8ksh/JSZGdDscjpBNcfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="30328557"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="30328557"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 00:16:41 -0800
X-CSE-ConnectionGUID: W9eyjtFCQzikJHaXlV4xjA==
X-CSE-MsgGUID: +LD5/L7XRyWO9JOej042QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="122968274"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 00:16:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 00:16:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 00:16:40 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 00:16:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jlLaz6CV+tJUgfIOnC1NjL3bnKHQ2ROCDUNjZ+0D9ZxfviyX2CuaEhyxhrjaD2bc6gJHtWCYUUwyBjtzSE7DMAagBb9Wpb2ypCqJ6KeaiA532hwIdZmzN8OH3VqVJ/Ym/bKwuDpUyldRrQrECzsf8dISXeZOZ6ppTVT2zvpkH2oYE2LNM7ezK96PeT1wArU6iJIwI6fefj7OjF9ejjMqfwObddm3kb1JpXc4afu7MSduyRORgXNWqjAlH2vaDwV3p2NraSgAEBGxCt4u50HUa1QOmnUdaBnZG06WqVZh5a/nBv7KZ8Nnwp0oL1g3ECSU50AyoXupyu0C+ZhekhggAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AepquT8gPMeuGbXu70FmuTu3zDoZ8twX1aeiqYzKpK4=;
 b=xDDgObp6wSxGeYRt+YKs8vKdE41Pp/24WyCG0iFGYcmRYn+GBgJ7EUUKLOSra78V5mdfz17rzYByaDPeMEeByOeaTqCUtipF3+eXMllhIpdmbL5i2laP1Lm1FIaAM92qYZPI1SM/W30DNIbIHN/vsqWoE4SU/ZV/oH1+XLz8uMER999xqCWr02hS3jvgNyG3rQHZmd/8Wv2buKr8bzXqnG+1esjG6TJRw96QyQMRC2uyWrBwD74eZOlNCjWWo2JwvWoHr7OUf+gif/3iW9618CYO2j4grVND7C7D0mzAO2iCUE0dQaslqyUfV0+fvraiq5M3RWlwx3iQz9dBDTzxtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by CH3PR11MB8706.namprd11.prod.outlook.com (2603:10b6:610:1d1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Fri, 8 Nov
 2024 08:16:35 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%7]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 08:16:35 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, "Kulkarni@freedesktop.org"
 <Kulkarni@freedesktop.org>, "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Topic: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Index: AQHbMbRdRAvnJSNZjUq2IBM+oiFaErKtB+GQ
Date: Fri, 8 Nov 2024 08:16:35 +0000
Message-ID: <CY5PR11MB6344E6FFAF5D2A2085CCFEC7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20241108080109.3049672-1-nemesa.garg@intel.com>
In-Reply-To: <20241108080109.3049672-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|CH3PR11MB8706:EE_
x-ms-office365-filtering-correlation-id: 07ad8824-a64a-450b-c8ab-08dcffcda945
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NlIxl2+Etc3GB/sMBARcge+sxDa+ACW6r6sKz5gTxxISuV+Wdvo/6+Il8dgT?=
 =?us-ascii?Q?x4YShAoC+druMF70EuOAuLn4HeLpWPYkPJxLu3ZVN1Sky2MNw72RrEbltjXy?=
 =?us-ascii?Q?3Wg4FsAFNzm91oxZlI38/oR01/wmPtRZ9IV2TutCSSQINBxbPn6ZyeqOhkW/?=
 =?us-ascii?Q?EnMmB65KtQZEwtMjDsT88zc3Y1tMkd+ZrohAchMbT74geFtdV6o7IAqph953?=
 =?us-ascii?Q?FQOR2OU9K5BseqiCAAs9BQd86l/IfopRlCOpXDr0rB9Png3yKfJvDcRuIcUj?=
 =?us-ascii?Q?liEcRSgaa4sksNAhX/eThi5yBvHkGTdtHgWc/MngXhfW+ov4QdYw65LHsefU?=
 =?us-ascii?Q?dTO3eMRaY1iQOq2MBzSHbN12njiU+mi+BlQTgQruFOcDv3r17M8/jHy45r/Z?=
 =?us-ascii?Q?FgFccz21p2O0nWQOhSczotVeEU1lfvGfIHWG2rqwEqYQlysCqcXVBNn0GLmF?=
 =?us-ascii?Q?+SMtojkifiByJzZqjZOswmg19Xcp8H3Asc09SCpaHh1eL7k8eiylEtpAvFua?=
 =?us-ascii?Q?Fjrzy3O4reJex/FrH5VoDAiIzfJDzJOgFHXS8gTCyqXARMoa/KW8uMt9bZhi?=
 =?us-ascii?Q?o/L/vPdnes4vkoO8OhiZGyC1YofgIC5BMM5ngsp/Rz6a0BGXIfNizUUIWmXI?=
 =?us-ascii?Q?aXcsHBscQ83Ax3lw45PSeKzvQ9nVzOas6AFpgkJU1wLkVgdwNE1bEkTU5ApU?=
 =?us-ascii?Q?A0Xrx37mqbOsozOJWeCU8pG4yXC6n/lh3GaNTrQpP3kVqCijLPZ+OxRkSCYH?=
 =?us-ascii?Q?G+6QQc97GnXZY4fAxOlv6YjCIbOfc9dC1Nm9DW6ZM5AKSbgrlPLOeTA6xH11?=
 =?us-ascii?Q?mmgfdaU1Qj46inbvuJVxLf/jbKCEgHZgrXjd2LZdtfHmRHlVsb8iJHsvnl/9?=
 =?us-ascii?Q?IVW70Al194uDMycVegpUgb8kyvQkeEutmpsBkp0UpJGNrkfOf2iUc7RkcSHN?=
 =?us-ascii?Q?FI4QcltTzZVvo0Uk5r0jsWHm1GGUlUq/k4tGqHvdZUyNGAIKSQtWTZ/9Pgv9?=
 =?us-ascii?Q?ZFI5grxrY6A/T+qWRiukEwnBlBZwNRLbWJFeRQgGTDu7/Tef+mymncmUbDf9?=
 =?us-ascii?Q?fvvZieqdyjUkyzutTHflc2Rb/005iu8iG5IweSepryxywcRZalLHjtLmb3ke?=
 =?us-ascii?Q?qBZO720PFlNLWI48Q5bkfVC2xlr+C+r5a+aIp1G2K8dn7qTxxmj4zPuFJ9nH?=
 =?us-ascii?Q?bXWHWIdDc2ZtGoDbmk7W2c3bj2L+QFvve5B69+qYSisx8eeoG8hcSykSyl4p?=
 =?us-ascii?Q?Gx2iVpAfqjyOqNTE9na1fKj4JHaFA/KR5qSfVNSnBAOKBS7SUgHw1kTf5ist?=
 =?us-ascii?Q?NS3ZyShupQ5XRtuviWwxZMWtxJAR8XviCuqVY9pkDToIFiywmmgMzQG/dI7y?=
 =?us-ascii?Q?3ZCarNI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uzbBsowmcdcY78LY7PJoG0MDc0rzU/JTgRO27UgRvTHa2/UsftmY1+c7DZoc?=
 =?us-ascii?Q?iYXY/bU408y9b0a6W9v7NtpVZ2+2yZ+VJ6BiQ2OTaljzQvdrIq5XM1+mZGlM?=
 =?us-ascii?Q?8VchAUA6ymm17sUOE/lja3APNK87cL4ctBbB3pPRbUedlhISGo1jdzU2cDNh?=
 =?us-ascii?Q?zr45/hbGzQtHcS/YG1Z+UCoXUDzptI3FAWOWXolCl+/fLtab/BklAqoTzIeD?=
 =?us-ascii?Q?416BXVE0tV++fbGg/gspwTkST5MnrCa31gXayZMfpFeHcMg2OBnrVXxiLEnR?=
 =?us-ascii?Q?YuHHARBpOz30dZk0k+cimTH4hYZn+WkarvJ2gMpYEJZQk/1BSqNxyW59lQ53?=
 =?us-ascii?Q?UjIO+AKMzihhzZv4e/1RYeFMGb5LhaEeo2aOj74ZQqisx0EXnMX/kzKshfVw?=
 =?us-ascii?Q?MT5DqS1gzGP7aYe/ub7NbiNGKCV/DCqTX1cx/h67iGQw2+XeU2uBnb3n3yVp?=
 =?us-ascii?Q?lAe54A7XeYmnjXOWjkoqkB+MtGyS4ZVGh1v9ecZxT3G8ZMmKS3TwvtrP2cOe?=
 =?us-ascii?Q?K1Ot0zeXvlWGOxOBLO6POqjR95joA4d9KmRFvUElIhFmdFTbCB1NTc9/8LwE?=
 =?us-ascii?Q?86lMGcn5WgjX2y+uWMl6M4Pd80a/+o9IfrjlzPNm6o+Y2mgk9HXIIyf2bg8k?=
 =?us-ascii?Q?1dUuCdcj3koEugoDhm1hyWVU+u+tRkaCnCYLxUmDE2i+EM1BHDgjy9/b6/Zy?=
 =?us-ascii?Q?a6NP2yPcIRYnlW7eelsnQ6whSZlZWqirc41SdFbs6SEgNmOvWxaZZ9uKvKE/?=
 =?us-ascii?Q?O28JF92hh2b/R5/sVU6gdhOKsEksUb1nciJVWyx4aMAsgIyTUfzRKQ4UoMOU?=
 =?us-ascii?Q?PVjzR3rQHOU9Rca4ROKliFqWFlaPzkJQNo3Oq6gwXdC+ZRvR2D0ay1P7mr91?=
 =?us-ascii?Q?X6+Tsiol7CGNxR++xJ58g/WsduPA14CrfaD9pk8hcawjnAJ0B65KeFnJoqvu?=
 =?us-ascii?Q?1ygdL4ccaM5x4jH+MzcL2kK5Y6YesSf3Rh5rJuO37mtN8xveGnpAKOc+gSEz?=
 =?us-ascii?Q?O7whMQy84pa24LOWFnI3QhHF4oVtWw+kWJf3K7fm/N2qtAVCJcMH4OuinHPy?=
 =?us-ascii?Q?5V/q0piwDjpYh9/1Qo7akQjlSCuSFnAp3AaLqb2UKyqeRG8xszsnl/xahSQ0?=
 =?us-ascii?Q?3vNgOYgFVNh3+Oy1/6DmvNrrKPBE18GC84b0j2JpE2+a+b8f4LGlN/sDfwes?=
 =?us-ascii?Q?lL9naAkktAm4OR4CVDoSGOPR5PMHTRidBZqEtPcpQ1m9rdUB5IIcWVYp3COc?=
 =?us-ascii?Q?yO+8xaqX2OZZO7mBvSfBjtQ3dNAgGR0+ecjXzIqZOEHSYOo4Sdf/g7lc5XrJ?=
 =?us-ascii?Q?o4bHtoAmDQpx9eQPd1kGmTxII0Hl53L3AKvYjG6j+4Xkm+NMj+2z3Wpodxr5?=
 =?us-ascii?Q?JjGJnOK5z6vQuCxQGVVxS76qb7CmpUs07HOky69c5lfu8XizAjsX1+ZpFA6f?=
 =?us-ascii?Q?0/m/GpPHoZTB7j41UEP1vqOjBXUPBNPpp2BqRrOR+iYHMy/ylhJA4owno4Zi?=
 =?us-ascii?Q?DbQyYmrGzuVKUBsAvFyWOq2l5L+4zA/Ol3VtsnnleESczQh2JGIy8XxR2SyP?=
 =?us-ascii?Q?l2PW1euI+VlVcO+EZt+azfXvV355yifyB/tV+FQ5pEYo24p6o68NMHq3GjAf?=
 =?us-ascii?Q?ShmoL0ADIlF3oUNBR/+K8gw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ad8824-a64a-450b-c8ab-08dcffcda945
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2024 08:16:35.2443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /WS3tWBMOa3l3n4wOs0/Dl0gzHpn59/NTCIFwn/6cmGfn3ORt14NJR7/OE1/xXFhERSa1aPbsrN097pMK+JUfguFKCeRO8qaoJirc4o7tvlMrmb0AUWEiMEobbuvmDka
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8706
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: 08 November 2024 13:31
> To: intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kulkarni@freedesktop.org;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: [PATCH] drm/i915/display: Add WA_14018221282
>=20
> It was observed that the first write to DKL DP Mode register was not taki=
ng
> effect, hence rewrite this register.
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 769bd1f26db2..16a1d18f3aa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2104,6 +2104,16 @@ void
> intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  	encoder->disable_clock(encoder);
>  }
>=20
> +static void
> +tgl_wa_14018221282(struct drm_i915_private *dev_priv, enum tc_port
> tc_port,

1. I recommend, Need to think on naming here, as doesn't clarify on anythin=
g.
2. Also adding on thought to have pre-check of return if values are already=
 updated.

> +		   u32 ln0, u32 ln1)
> +{
> +	if (ln0 !=3D intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0),
> ln0);
> +	if (ln1 !=3D intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1),
> ln1); }
> +
>  static void
>  icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>  		       const struct intel_crtc_state *crtc_state) @@ -2185,6
> +2195,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>  	if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0),
> ln0);
>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1),
> ln1);
> +		 /* WA_14018221282 */
> +		if (DISPLAY_VER(dev_priv) =3D=3D 12)
> +			tgl_wa_14018221282(dev_priv, tc_port, ln0, ln1);

Always use the display local var when possible. DISPLAY_VER(display)

> +
>  	} else {
>  		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
>  		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
> --
> 2.25.1

