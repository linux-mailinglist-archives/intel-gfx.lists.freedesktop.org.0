Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7449C90E9E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 06:58:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF26210E11E;
	Fri, 28 Nov 2025 05:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWKsRLg2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A19810E10C;
 Fri, 28 Nov 2025 05:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764309536; x=1795845536;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GbwNbosCI+T5JWpYqOaQuguGhu/qAjSxJq7Hbzc5E28=;
 b=AWKsRLg2/J3QO6Waj6ia/8QuSur57MIEbqIqLqj22PBISdp+12GzHaDS
 jQD2loJM+2R2M/9XEv1N/yQ9lXoXcJ+mHqPp99K2rDdk91zSGIltrdpo3
 sb7tYetHxv58MDHMK9PC30hPPQ33E4hKg8fDeo+dnOMuLFY81J1ZmaEpI
 fQVdFFC1UK+z7FBtJyRx+o+sbGaL2Ve1U4b/4FkLz2+lhlZX/0poZzggO
 Hgk/OZTOS7WxClOqHrIiGJg+E/mtt47f/P2QqexEXEejeGFjss17j1Bzf
 Y6OJ2gFKe6EbJPcK7pjn/WbkTAFCUBmTy8vR8onZouUxhROeP79IPFJP+ g==;
X-CSE-ConnectionGUID: 7W3aL61qTaWmg3cr7pp6TA==
X-CSE-MsgGUID: BOVZduiATuuuJA1tzAgltA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66380502"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66380502"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 21:58:56 -0800
X-CSE-ConnectionGUID: XQ3GPyClTSWNc2Hp21bXUQ==
X-CSE-MsgGUID: XThfCmloRoKbVCYUxl0PVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193832848"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 21:58:56 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 21:58:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 21:58:55 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 21:58:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rMtf0kPikIY9/Ys8CvWks78Q3F5SLt4q9NSkhJLQ1MenINfCdreJ/fB4rzrB82m46JvnGUEOY7yoHGA0vKWt7TbiQNsKtoGrJmrnXT4yE0NsOXmZd9wZonyt2iE9CIx52BziKVVU76roj/N3O67QiHHeFHd4s/vDuLbnx7vmgINE+wPmVnpyIvL40t/ctcDP61IXu+nLfEkMnQszLBrrd8SOHfF5Y0CuSFye1K/vocDHmamwHyTQ+kj8fN1svrVUIKCOuU7lJyibSucL/o59I7wOITB4qwr0W5IwVx3FDb/Yy3Smle3Cvo2Svs5CbnVTYSthtlk8OU0b6k8btHaTCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rbBYdFY3BbeKhps+BAdalG36jWPwv3HD+jr4b1pJMxs=;
 b=l+c7m0CKPfIwdzftkCo9f3yrr7dUe5b9pyNBQRQTR2Na20oKf1WrL5WRe79GCyZGAKIaS0EqF9xEYHR2JjAhK5teHUT4FaX/MjewVjNKsRrL6rwnsPlxgdDjCQASLIsZv4jqEZgioaoh/Yo+QoJXM4QIfSUDeIwmnsh8RqjCJAOzaStKSWMaH9yR95Z9MBGB1G+ICPEVRSyWvfkrYIjexoNsbeek1cjog3NvjJi5FOaY2dcFa/bO9PX9ucQO0yLFxgIURvI7NiBrPY20oWYznMYywhWgMOFmRkAD/HXdDeJB4N2hXqjIcUK6lVuA+072lEGM0lmFP+qRX+GPveS7SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB7015.namprd11.prod.outlook.com
 (2603:10b6:806:2b8::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Fri, 28 Nov
 2025 05:57:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 05:57:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/hdcp: move i915 specific HDCP GSC
 implementation to i915
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: move i915 specific HDCP GSC
 implementation to i915
Thread-Index: AQHcXi945KW1d7NeXE2q6u2b5qesubUHmzuA
Date: Fri, 28 Nov 2025 05:57:30 +0000
Message-ID: <DM3PPF208195D8D6748F2A492BB93672716E3DCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1764090990.git.jani.nikula@intel.com>
 <d362b256934c6c739d9decda717df2dbc3752481.1764090990.git.jani.nikula@intel.com>
In-Reply-To: <d362b256934c6c739d9decda717df2dbc3752481.1764090990.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB7015:EE_
x-ms-office365-filtering-correlation-id: e9119758-0743-4f8d-2930-08de2e4304c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZFD0wFgL0AKOskjMtv8olrATidvmJeEawhD0dZ0hWoXik6UU3HRGS438Hc67?=
 =?us-ascii?Q?gHQX5XAH0HLEo/3gcKBkGTk4i5/3penIJ3qxEa0anRmZbuyQAsRT80m/UH4A?=
 =?us-ascii?Q?z0pUa1DxxTY+QIpqLjjVkgrsx4dGXykj1XeE1ILils/hohUanneAAlB5mlUm?=
 =?us-ascii?Q?Fz3rxpo9VCrQyDhJnn9CdJvDpt+7QHh9ZNy7s+/wykP3tHZXIfKFazP7uH5K?=
 =?us-ascii?Q?yA41WLEQidwqrLbgASbeXNUIpcKDNR0WQp2KMcYQj8hu/4irNO7WPrgmxtNm?=
 =?us-ascii?Q?c16ZVQd1rrqxpHziVKp0lw3FwFx8wIhK3ZU/z0CbMDEIoQ8lEPGSooWBd5rW?=
 =?us-ascii?Q?B2C9bAp0s9/O+mFL9bsjIrxVXmqFWkoCHEblpc3LIHRlEOWfiEPdQBI5/kZF?=
 =?us-ascii?Q?aF8O/r44MhjntBtNdTgDTd0dOvNdqwY1t0dE6a7dwkJ/D6dYDM07qp+eLUQF?=
 =?us-ascii?Q?7sVfJ2ZnF5LosdwDlVpMoChOBERsN7hJataySTXl5WY3of6W4AEMJK1szaVc?=
 =?us-ascii?Q?tn/ZnZNUDRXXXr6rtq77q5Bb7WFJ+KzclnJtJN6G6xveVkjEw9jGLL1Bbee7?=
 =?us-ascii?Q?tXV7xtub6GFtEY6mTPOXTujgja0UGnoOZ8Usw3LJeSkTawBO2aC8KGPHnQb8?=
 =?us-ascii?Q?6qjJ8mafDteELHN3ENuPeKBW1XLPObpoCIjarTrPW1etqPJ+kkaoqyCvqWkF?=
 =?us-ascii?Q?cgnZ2cue3bXIJ64zhR2f43Mwa3JUyszIzpKoaEyJHoDdLXEP4VsezZphTg/g?=
 =?us-ascii?Q?AOPNlzpmbxuxShgwZ641Soh4Rmyx+Y4o2/7zmS5FSt7ZJhSyjb2YE13QaHnA?=
 =?us-ascii?Q?Kd/XiYSFiNzC7FuTcUW0PnbBEQX+Xhs5y4jCr2ghLMBAALXTrG2S72tgYdws?=
 =?us-ascii?Q?TbRtaDsswU7shjzcS2KB3MJBm2BI8OM3o81cIYbDmBt6mjotizpVN/sHHizP?=
 =?us-ascii?Q?CixdCkQk8XcBb1Uk65o3trdxXgDffw9Sh/ZH4sCAZ8FoNkvlQR4nPLEVoh0e?=
 =?us-ascii?Q?V97p76uq3XdWWzgkYka8dlyRcNPWY8oS7GjUocP6ouenuedvTt8cA4reo2ha?=
 =?us-ascii?Q?AFE+cNny4aGmaYvLMtl3Xo5nHzPfERl544SjBKZdP4VK0r9ljmUKP8Akycbr?=
 =?us-ascii?Q?f4eoVrXPStwwKj0sbRoVMPhXvOuDRigEu482qBraO9MPNy0YluWV6685t0z6?=
 =?us-ascii?Q?SB5V8rnVVq2omM6yAfzvdTQoa9fLgPlm7DXVg+OG/gmkxtE/I2qXJx6jL9gy?=
 =?us-ascii?Q?GAMkKEiVi4M+sh0igAZSP8QOT7PjjHbKtFM28UwghqKVnicKffrEeM929Y8a?=
 =?us-ascii?Q?O/vdEVzNbMqEChA5LHBy0F+v2CFRSh5tSiTBM7U+l9R5XqZ9b3M28qoJaVAO?=
 =?us-ascii?Q?/AWiyzTE1P3Ssa2rrFNN9PtYFq53vYLCDt+UjIBnxjJpVMO8ozX9KsLmXMIk?=
 =?us-ascii?Q?+C3l1kcGCoZQGyv/sRPKTAUU6/+czaMjdric0mUxekeukZa1yCMytbZsUC3j?=
 =?us-ascii?Q?f0mzS0XlsjgGLa0dBJjf1ds7EHL6HftXd6R+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?756yzYlMrZq0Ha8wI4B4Z9atD34uxt3k7AvNlTkc60Vg1evHJnwjjmJ4EMsV?=
 =?us-ascii?Q?Q+FPt3nmhonNji95MD+N2Fpl5MZc3EKCGBcBj+Pik8OZ6Y08W+nkr7NkjeFU?=
 =?us-ascii?Q?220otRtim5EPeFi0x268gc6677TrRSU6qt5WDoG/rKGKorie2jtCh19mlBJy?=
 =?us-ascii?Q?NYNkSTFmBWf6Hc1PNn01NwslWkwZmmzSl48ItnouurZF0HVtBZbAld6I4js5?=
 =?us-ascii?Q?lOoRC3DgyhQuW6INN2MxYJVSZ5IoiIyHdPyvD486WZHRJUSEQryTm9zAu86y?=
 =?us-ascii?Q?/MSrutnTnoCdyDszUi3T6X087uzXWfCd8U7yHAfYbgNEXbtZq2Wf1oPU+WYM?=
 =?us-ascii?Q?kzeaw61mQXRemysc1tM5CvXVxEJJYG2CrkIi3EjME4Awp604UA+GunUdIqEU?=
 =?us-ascii?Q?NbDms3Yy0EExj0J5zrCL2ejjh/VENVgu8Wk1U32WFYIk4pIqI06Z4Dx6U4vH?=
 =?us-ascii?Q?Be1Z1v3dAfnR4VXomhNDdHd0JUyvCxdmv2xKc6ne+LIT0vSFfJMsemaq7q1+?=
 =?us-ascii?Q?GoGC7Pwl2qpesA9kNSd5aYbk495hzaAjplFVfZT376wdl5y6fSKtE8U1HtLK?=
 =?us-ascii?Q?bXnQLmmN9ucO8uGHoKWVwv5JwhlgjFVfnRCWamYju9V0j7p09hxNvB9Pk+hC?=
 =?us-ascii?Q?XtQ0Iu7ESfKmzrDu4b9pL6/+PdeDzfzmV/3YMcfsNvkgBP0z/sWdhlk7L9DG?=
 =?us-ascii?Q?9Bq2NsT99K8cmLW11lkttk1IgbZ48vvaE4vD3ypbQ8YPtb/ADUTGGH2gGZ8x?=
 =?us-ascii?Q?yQZCK3CNX84lkRXs/3lnKMcGgLRMXG6JsXXP2d4Suk+FgZqzwkUN2hpgqH2B?=
 =?us-ascii?Q?zR6DekH1F81v5FcR6Ui+YnAA7INPsFK7LpwR4ON1ZvLQU5QA7oS4KcLCAfAH?=
 =?us-ascii?Q?zRrN3FbRMombZly7vHVSQSzG3/MdGiiZSlYBMlwzUXjFJdnMsWtUCowHuGDu?=
 =?us-ascii?Q?OThXbfKzo+vj9IA7DVFom7XhT5snW5FkbBCG+id2v0cCdaRcpHT04MRIQxtF?=
 =?us-ascii?Q?X+fhIPVkRdcKaItIzI+5+PXeDHIvXi00C1OFpl5kq2JIfvhZ2xN09heVmO2A?=
 =?us-ascii?Q?XlLasalsqjpSQSHir0wt7OOY9AftJNpB4sCU/u06TTxT1RMdj2dmnqDasTPj?=
 =?us-ascii?Q?D+8J9e+gFT64GzAhwpVpLrAPDDfCLhMmItZhfKsBKBAiabl8nQ/3TARID3o2?=
 =?us-ascii?Q?XSBa/WtpxVYg/anF5QHMD4A0TorVMkUmnS0CyVaesMH3nidnOMD5ktToYeYl?=
 =?us-ascii?Q?jLIsyet3D9GeRAuc9KQ0OVx9sNd6O2qI/KSwFfnUPf9WbHJG80yOL/NgKSML?=
 =?us-ascii?Q?8RWWqKfOTqUj5dMD7xv1iVdBbNhUJNJWEV39hIKO9BAaDgYyjUCHzLeahIiI?=
 =?us-ascii?Q?27xDLfm/13ThseaB9ojYi2y/tttle3S8vrKZ83U9hJ2KLFHZ7CG+vflrBnxD?=
 =?us-ascii?Q?wDPGd7NPS9ImXuOHsXStWsi9AuFyR724Nb2KcEdLwmN9xtRAWVmHM/5TamLi?=
 =?us-ascii?Q?McFCbOS/X1v9LwfRk/WcgdnKKR9y1pcYjV1vljwGcaUtIG+XJ1ptW9xSqKrX?=
 =?us-ascii?Q?DW2QHpGBiFrb+lOOZBqv9lcol/7r0gtxCxf3kzkU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9119758-0743-4f8d-2930-08de2e4304c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2025 05:57:31.0723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ilh7yLxn4oFBFK2usn4ufggoIT3Y/CU21pdtK5JAd1MF14uVva9x2tVUWr8rqpst5x6rIOFrmENNreXAegKJ9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7015
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

> Subject: [PATCH 1/2] drm/i915/hdcp: move i915 specific HDCP GSC
> implementation to i915
>=20
> The HDCP GSC implementation is different for both i915 and xe. Move the
> i915 specific implementation from display to i915 core.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                                | 5 ++++-
>  .../drm/i915/{display/intel_hdcp_gsc.c =3D> i915_hdcp_gsc.c}   | 2 +-
>  2 files changed, 5 insertions(+), 2 deletions(-)  rename
> drivers/gpu/drm/i915/{display/intel_hdcp_gsc.c =3D> i915_hdcp_gsc.c} (99%=
)
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 2ff8938b3a7c..b2250432ae98 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -74,6 +74,10 @@ i915-$(CONFIG_DEBUG_FS) +=3D \
>  i915-$(CONFIG_PERF_EVENTS) +=3D \
>  	i915_pmu.o
>=20
> +# core display adaptation
> +i915-y +=3D \
> +	i915_hdcp_gsc.o
> +
>  # "Graphics Technology" (aka we talk to the gpu)  gt-y +=3D \
>  	gt/gen2_engine_cs.o \
> @@ -277,7 +281,6 @@ i915-y +=3D \
>  	display/intel_frontbuffer.o \
>  	display/intel_global_state.o \
>  	display/intel_hdcp.o \
> -	display/intel_hdcp_gsc.o \
>  	display/intel_hdcp_gsc_message.o \
>  	display/intel_hotplug.o \
>  	display/intel_hotplug_irq.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
> similarity index 99%
> rename from drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> rename to drivers/gpu/drm/i915/i915_hdcp_gsc.c
> index 3e7b480ee9f1..38df5318e13a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
> @@ -6,11 +6,11 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/i915_hdcp_interface.h>
>=20
> +#include "display/intel_hdcp_gsc.h"
>  #include "gem/i915_gem_region.h"
>  #include "gt/intel_gt.h"
>  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>  #include "i915_drv.h"
> -#include "intel_hdcp_gsc.h"
>=20
>  struct intel_hdcp_gsc_context {
>  	struct drm_i915_private *i915;
> --
> 2.47.3

