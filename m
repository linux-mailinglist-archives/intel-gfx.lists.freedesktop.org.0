Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842F4C50997
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:19:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BC410E0F3;
	Wed, 12 Nov 2025 05:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYA+oGsD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EBE610E064;
 Wed, 12 Nov 2025 05:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762924765; x=1794460765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lSHMQ8qwHi86fTbPakptiq4dUJi6YzWIpkOZvGAXkhU=;
 b=YYA+oGsDSwWnllAREIgkfeYoZmkLpIv08euWuFUJY6v6etH8Z06MbaZK
 m8vrFcvIIkMfOBhU/7z862LOr2XaS6h8hQv3UT2Ni6w+EQQUjeoGD1kKl
 Ssv8V94XUTN8x6hWaZgj3wk5aqikLPin5SvskWgsRD6GPoc/Y8k3Gh2yA
 uOjYKg6RTSnvYytCTlcQS1A0he7DaSLW3nHK0Y5uN7NZGhi1ItdOPPg65
 7xkSHarzQ38Ue189TMj+/z/RtukScMldY8u7WBxTYXzQ69nc66bcvKsbU
 LZHXk+UoDifJ8GiDijtI00NUE+ycuPsLlW0o/HtrX6lAwaj/UjjdfSZBY g==;
X-CSE-ConnectionGUID: sd78fuBhQq2a3xKoSjvSQA==
X-CSE-MsgGUID: NZ4D5CH3Q8CEIBWPRBoWPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="75663416"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="75663416"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:19:25 -0800
X-CSE-ConnectionGUID: 6uqiATA3QzKq9775rrPwHQ==
X-CSE-MsgGUID: feZFkvgVQc2pBtJAC2H1cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="189853553"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:19:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:19:24 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:19:24 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:19:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A7ikKxPcGI143Y1c521QNgFh0aH8H5cfqBJTdizvRgp1SyHROJECUNhqNJSHsEU3MNKxQdmiO7oYphxljuL2VvCcakTiLnq9ZerCE6KSvWoB/LZmlF+sCNhYEW46mpZUx3P/pWb1dux3qeZ85/Bbjn+wVBu/Z+vuMgZ5unhtQjAeeEuyj9feQSCD4mal9zATCMQUqH838qzrJV39x2lYpGzrEs3FuLqAuj6kg1zHFsbZv24AYo2g4hbn7to5JxH1kof1nrI9S/0s2riqOmHkNAaBNDbJNJoP/vasJuXqvfQ2BPsTNx1Gt8WRBEcHu2aHIoPgMAMcQ1mdHpS7h/y/og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3V5oGg8uGGEQ2pMiXl9a3OpCn1+BiPmnkG4opR0HW3w=;
 b=ZzwT1+RqItLdTO+ABYAm6yM9Cs7ihl2cNVAIxtV+nu0l+8KQ+25bpprSLcOCpuPz5MCkVeNLNDKoPhV7sc4GkAC6mN6f/wpGUpj1UT1vqSXJ/hcC7Ck4JYHfj+zX0mfFtYaVBv93ZVJNxcwdwbpaHj1e3U1zM8dm8QfQCdBKm3uRxE6FtkhA73hHvmKDQeXNsgwOrx+4x+taHkLvKHj7slnKk7B62jc8Nu7R/kRNsYSV7JFqHneLE4S1JJ+yD9pQZfXR7aJnxeLjkF89dmDAT8OMdrCSaGka9FTy/pAsP3dUYOK3JCXGLPU6RJFx8Iways8BRPFgaLLoRKtfLiBwmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB4789.namprd11.prod.outlook.com
 (2603:10b6:510:38::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Wed, 12 Nov
 2025 05:19:22 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:19:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 26/32] drm/i915/display: Add .get_freq to MTL+ platforms
Thread-Topic: [CI 26/32] drm/i915/display: Add .get_freq to MTL+ platforms
Thread-Index: AQHcSlaJBZc7ACzCL0CznMXxwakribTukwPA
Date: Wed, 12 Nov 2025 05:19:21 +0000
Message-ID: <DM3PPF208195D8D585CCADE0F3A705A819DE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-27-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-27-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB4789:EE_
x-ms-office365-filtering-correlation-id: d08aee47-57b8-4ce3-3ce0-08de21ab09b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?NTpmx6tBAdTV9fpTEMmH/K/tleBMuG6I85M2y5rxKKZVtFrYqnSUdqE99l8D?=
 =?us-ascii?Q?BTqND2ty681spEsN8aWldoFw6/TF/6AwcqWB2+9DKr8f7rdlvVwoxxD6tBhi?=
 =?us-ascii?Q?AX5LpOobCVqXRcpXhG2IYveEi4qq5CZETwiSvrEdC2Vbrb20SQofSBXMGUN8?=
 =?us-ascii?Q?/v9mdqud4yxZFikoDskaKAZgUXguNbVlMQhpiBF2dYkLRIDEnh0GLrbokgXF?=
 =?us-ascii?Q?JwzzUQt71Jg+sNg2RYFEnaSyfGL3ai8nB6luwsXR/nfSiB4emWqssT9pGTU8?=
 =?us-ascii?Q?/dOZ+fmkgZILPGPy3PJagrYH3RbgFgqjTBogOCW0T2mh1pMXAT8yklBH/E/y?=
 =?us-ascii?Q?m4qgSpzy59YdH5jwcTJqfi9LjsrgdbF8v03pWM5eCDoXcM+jCZ5G3wsqEZVY?=
 =?us-ascii?Q?XaSOUV7UUClYiMoCZdQ2Fou7KD+f0fsuXgb45Rj/QslTIJbT0dTtfTodCG9f?=
 =?us-ascii?Q?55CAqpyHFbOStMgp8oLMsuqKAb0qGWkF3A34l51otGy2ONEwqO/O5FzTVoMN?=
 =?us-ascii?Q?9/78dQa4+/hRHkdItk2wc8RxTaef1XMovgca6RqiXdwtLIFbovp7loHqOXsC?=
 =?us-ascii?Q?r3zmQw+gOPcKIijD8PN6mlAWqUKloKlkdY4+VxqDUUBkqT4IQ3fbWZgT4+Ye?=
 =?us-ascii?Q?aAL3cAlkWeBUew43+cJLBGkihDXgDYYXLncD95gG8ODDVuwEHOT7gP+XKLXc?=
 =?us-ascii?Q?Z3Z7nQFtiP0hrxDlgIbsLu7xP6eoMgYfcHWqOEueHkr5MkI2LApCdLmGXvDj?=
 =?us-ascii?Q?DJEUowG2UvX+pEsTkrmsXvdmoTj/1m27Hpxp7HgqC2nC0zO6JxRnXO1SeKKC?=
 =?us-ascii?Q?9PlLNr8gBAr6Q5BwINEyiSik1YKl8lI+KwoMsC0ouTGi0NcVz8Eu91aVjovE?=
 =?us-ascii?Q?Ua+pMuUe8dKSnYB0Wfe2AETa72jrDQkpWIflNK6ZeJiHcpopVtwaDGl6pHNu?=
 =?us-ascii?Q?v74eHkMk4Zmv1zpoaKKSz9a9CvxJ9tQvtgRrxLUkMIdet0Aid0rjS8MhEbMI?=
 =?us-ascii?Q?ZNa4F2EMYk7vmCbx1quz390NpMda3CAZdqxrkcSu/I0fzQ8vDUYxuMIhZDBF?=
 =?us-ascii?Q?yYVTRjBv1KtcTgpLWFObrZ2qanmpEA3qHFzPUcbCnO4FO6NYXKPmHa90CfMi?=
 =?us-ascii?Q?lFJwowpgaLqj0QFY4jH0Ep2aydt17+BoxPi3NXqtBvmHMN2g+Fd2uGQhz84I?=
 =?us-ascii?Q?HyOvpd2dybzyUZlNYh8HPZUnn7I+Cp6Lz1ws+WTUGHBVXSvvR54pNcQVWBhi?=
 =?us-ascii?Q?zXv9gy8+IrWWqMgL0enhc4hs+nMoUXAXa7Ez0smNjQudBI9NYURnd4hkxtvq?=
 =?us-ascii?Q?dcNiEFC2ZLnty4VbDU7KYSc158laOFp1Sfm7hOKGcqwNfu4J0/Cbt/rDlNRr?=
 =?us-ascii?Q?26NSP/d1XK819ublGEQynUKFO+rWj5ewsWhj5ssAmt2DtZRrguYbz9SA9bO1?=
 =?us-ascii?Q?ly/su8xrJZqJeuljYvasVYfPlFAAR+6xgAwB/kEYxXYgFNafxIXiRgRdHmyD?=
 =?us-ascii?Q?89it7vMmVYirymiHD2oZor/AnbrFeKH9sEVp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AB52dVN9fEVZZTWVDHLoZNL9z3xTFWQVAU5HUR8Zqdrg8MleUtu7S58d7Drp?=
 =?us-ascii?Q?zpsKmptTRFV8X+QFJO6Boi6fZbZlZowdV2ScGwt5ULb2Pn+U4stNxqdbLkhe?=
 =?us-ascii?Q?DuZTVcydJsH/dK3vQN/sTLt6BhlRRrv+pJSp6Hx23uO9eyp+xgEceV4cBuhQ?=
 =?us-ascii?Q?msuFDR6ts5bBCEiK3aS8yz1Bp4HEejCuE432idSTQAFdIk6/jFixHnAbJAS2?=
 =?us-ascii?Q?ZqiT1HEuv0ddirKUg+m2UVuW9v0pLJaOwoaKr3PwQxr+BHm/VSiPuiS15Itw?=
 =?us-ascii?Q?q+UQkS/ObxeskIJWhWqinCCsSPPGQV0fJTA7/rJRPolsQonlI7fe2/4r6DQx?=
 =?us-ascii?Q?NCSZSg5n4yikyvxy5hUDeEslWh4GqETSSJm0g1Eaz9DW5Ah1j/ROAJmJyHTA?=
 =?us-ascii?Q?GxGPOloy6HCdCQyI1AszxmNFfNHX0qB/oRswMGPDD0WIEguqw9FkTtWCsDa6?=
 =?us-ascii?Q?jcXkQ7G/Nmyg3sT3W/vmU5Hmw2Fs+I58+w4C3t028d/iFRlh4KFpUVO0tsWw?=
 =?us-ascii?Q?iGKcYfRJI+XYzKNs+/V1I89qKcZGX8smCEdnQF5x3rUuBIH/LzF98uWXaShJ?=
 =?us-ascii?Q?MA/me954inFMS3Dk0TY9ykXl+qhNMc1tigjM+DnRpu4gOTDHw2mbN/FWmo5A?=
 =?us-ascii?Q?+eucS5oXVgoCyYTo/sYnUE94bwJM4VXwvnl6/IdEDezObszUatsXJcnduyvg?=
 =?us-ascii?Q?hB6I930rutsHV4lEaFvwBR+bWzLRC8moM82fRrQ/1jGbeid9Xva8fpITqfgW?=
 =?us-ascii?Q?01xzxOcjAnL43Y5qh72htu7Pv+Ktx4FFwHpfyWzUQqHtSMhNpgOszb10xiIZ?=
 =?us-ascii?Q?RMyeSVZGkvF7ayBf3p1IleKsFpspDcppVN0s3vKJhs7u1h45dWvPSw6gt4pA?=
 =?us-ascii?Q?XhGJbjdrXzY2F2bThpkhFNJE08Iz6jOVK1oFwlJ1PnlnIML6ZPYgxFv4Zews?=
 =?us-ascii?Q?resigHEPmyA2dK0IoC1j5Ip4MQWeR8vC0A9ddogFXfF2DbPGJGdKzLloYPxd?=
 =?us-ascii?Q?VYLKiXXhygr7pmwvi8PpeV2kLq3GrxRyXhjhkHMwI/7RNhjWN51kyJBBDGFa?=
 =?us-ascii?Q?wJdVQk9bDW3UqqOZIsoxHezGP0uFV9U0Gksrn07FOqse254vOu6vz+dRfDBp?=
 =?us-ascii?Q?dmLj0FiOcGQUN3KEUgtLTKCG4j3XTdb5tSq7+7uc35Oxl63/8gxQ4RHg/wvc?=
 =?us-ascii?Q?1vTVyyLRMChBPfCgi8XW7+RiOxtC/psFYHsZqhnZMOZJ1LRprIzmSkkWiZ/c?=
 =?us-ascii?Q?0a391Sr4jJkISw6J6Ly8GcoCpH1wXL/nYKrOPyLRarDPdvNzYl/3JZ2vuwrU?=
 =?us-ascii?Q?eBimwn2hWtBgH6ctLV9qbWqVrr1P6Z6dB83qa3tJX1sLTctA0ShHvmyxBYiB?=
 =?us-ascii?Q?HmmJnJyZuwQoRyuB+BMg+xqQ+/osuvM/os4/UBp/sTnFlgkqjSBCmHqB6gF8?=
 =?us-ascii?Q?iEeMsnSIUYsARE0irgIm+51JeWSB2Oh0w18hJajabUYHNh5IcoXLQMhJah6A?=
 =?us-ascii?Q?r3LW7EhaAGtGbxDq/++YXErI6ZZiZqcFvYFUqOPPCKgnRhYkOvHcjhVwQvQZ?=
 =?us-ascii?Q?EqeWTGe3OkhmvCrnNg1BSUimis9NVcHHRk39lJrA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d08aee47-57b8-4ce3-3ce0-08de21ab09b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:19:21.9099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UEfWNRBBTzyGJFsvp5/OEjCsqjHOLTDBdJLd3k4mpjYxHx0P4VSPlwCEFXObUV90Ex4XQnJiB+KUC1vFOzdQVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
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


> Subject: [CI 26/32] drm/i915/display: Add .get_freq to MTL+ platforms
>=20
> Add .get_freq hook to support dpll framework for MTL+ platforms.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index db6ae7bc63d6..07bc99ae689c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4379,8 +4379,21 @@ static bool mtl_pll_get_hw_state(struct
> intel_display *display,
>  	return intel_cx0pll_readout_hw_state(encoder, &dpll_hw_state-
> >cx0pll);  }
>=20
> +static int mtl_pll_get_freq(struct intel_display *display,
> +			    const struct intel_dpll *pll,
> +			    const struct intel_dpll_hw_state *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return -EINVAL;
> +
> +	return intel_cx0pll_calc_port_clock(encoder, &dpll_hw_state-
> >cx0pll);
> +}
> +
>  static const struct intel_dpll_funcs mtl_pll_funcs =3D {
>  	.get_hw_state =3D mtl_pll_get_hw_state,
> +	.get_freq =3D mtl_pll_get_freq,
>  };
>=20
>  static const struct dpll_info mtl_plls[] =3D {
> --
> 2.34.1

