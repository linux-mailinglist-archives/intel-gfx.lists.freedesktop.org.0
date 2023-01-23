Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2300B6785E3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 20:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DAC10E070;
	Mon, 23 Jan 2023 19:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6623810E05E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 19:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674501182; x=1706037182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FtMytEDZXMQ0seFF2uxnD4PWRcZeCY7WJdnn/CCNv5I=;
 b=HNanV5DOZMAYVDagH8KXB4RA6ctAUDZESX024efbj6lpErMwAP9SoMOk
 jMTmiSzlQvLIZBFf+BUDcjsJRwlvrGB2dNRBdRzNuNQjYV+L5fQKnyEgu
 w3U+15ZQyzyL4wRLIPWsnSbnuv+N2jtHGAzWzQKjxzH5txdQjLpEtVNeq
 Nar5xtOHRmXRnAi02SCprs9LSmYyvdy4V2v9eTdXghx62uSx5fRUgYRFg
 gOWlqa7KpD1ScKvzDpya0Sst/jFq3nQuoC3jEX8ftRY8ZkAc0y3LMAOXi
 Lm73eNNz0Rs/qQhatWRDuWLNvVooi7RN739lUf1g0yTdCazeFqBXpwUWz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="388476038"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="388476038"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 11:13:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="663787673"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="663787673"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jan 2023 11:13:01 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 11:13:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 11:13:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 11:13:00 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 11:12:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9ngwd02rjXPRWbwrwn5TbbtnUdLSvYmPjFP62YiRSM3vWLkvYwa/QPYPawLgFQogOty5b20XCDgo9WYdDhJHWdTFPy7TjucfkR3by9HnjUv3D8Yh4Zjz3VVVhUMsj3AhVjnGcrRGSa0d3B66Xg4+if0dnwNaAc4Mq7YU1XJL05Ti9j+pSOkU8jCFkWZiLset98Z1TdqUE11v/LnoGQPlBlbDBZRuZTlRxRRKU9Ke6KaQQcqqLUvw0v9iiKPHMZfhoLkHSf/GlcX+MdzLklCtBEmOvfVoujZQehfVhG8BcvRXUerI9zQ7I4ScrLlEsvXi+S9rMVM7UOygcwHlJb+FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WjJdOGwH1IVtfXo83tS7hRHXHciuz2qPgZ8JqGKSU5E=;
 b=ns3YusopuQlcegYC8OaJQplTz/bcl3TCEqebLePFnrOsqbuBWDJ5OjGrabe55Qb1uA8K2iSZ6IiHMZYnkG5CvTJabLsf/sjHb3Xrp9//8xJuUFjturBSvJYKL+BTb2NmHYos11V1X01So9kBS+xTTtTnoiNFo/eRvP9bxXk9GhdXVwTbJIeY9YSYWlWcLy4jGUI9AMsruTJ6zQUuPb9Ga2YhYeapSY85Wt5yMGgjsr3qLdJngR+eb+fJpWAKgVvdm78eYuziKTNesb/za86nM3PZmIqEN/Q/7sQzSl7lzdtQlPqALVOtT8FFTPTwo80rQkS2XzhQmllgz2Uw1sbiUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 19:12:52 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%7]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 19:12:51 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/8] drm/i915: Convert pll macros to
 _PICK_EVEN_2RANGES
Thread-Index: AQHZLQZ1g+773JD2N0+hEBIOAYFzvq6sYzeQ
Date: Mon, 23 Jan 2023 19:12:51 +0000
Message-ID: <SJ2PR11MB7715BBF78424571CD515F000F8C89@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230120193457.3295977-1-lucas.demarchi@intel.com>
 <20230120193457.3295977-4-lucas.demarchi@intel.com>
In-Reply-To: <20230120193457.3295977-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS0PR11MB7408:EE_
x-ms-office365-filtering-correlation-id: 5ba47900-d925-43b8-2a09-08dafd75d2f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WFwKXjdkxhMEp3PCJKIW9KelcsJr3bbO4WvG1BEO5qfXpkAif1gloP749EhD1xWMOan+hQaAQLcQFoybCfgBMtvaphvh5Pb0Apm84vRSyOxX+X+CJ3oe4OLiTsmJey3Y8Kqj7iQ0CjKZlffMdzt3IOM8HmpYA8uLjk6XNMVjgG3UbTpx7eZkX4FdYoPp5luCAiq27knYkZsvk++qYtXCIyjcVs5Fk80uRf/smEA8XrZPWsvq9AyUKHA1hy1LT3eXhqSfTdAqR6L2iUUuok4d7ZDwPddTI0FU86s5paG+rCw/w6+A1vEztbLVesUjC4BCzpytjGuA0l9S4te0qDwEDtd8nbdPxnerTXlBxvP0qylZcLxg1XXKGOiohXQQ/vzKkibpGnkePSrfI3w8dUDhiNFYYkU30O9wKl4mRuyEQ32dJqBsW0lzAkwvVG9o7ktlnFGfp3Ua1nE5rECSgFb4k37hwvdhJEw+OHKm8vgX02VvjfPSBGVmsalktNf9mw/DzLz2pSjwYIsb7AhAD6wLxoH5ycXptvgsnGx2baz/2hNYdz+BOWHcw6oT7Y4t5JvQoYZ4ZAMAcSBVZkW15bcECR8RRBwuyLSitSzt+m6MTIAMNiO70TfFy7lek8P8W3GibMKo+XeCzMSprogGvAHIdTurbGx7mB7LPZ2fdKt5xMDNt08D9h92IbMsmh29fm+DwA63Gqz3KbaWK37VwcdSaA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(396003)(136003)(39860400002)(451199015)(316002)(41300700001)(110136005)(54906003)(76116006)(66946007)(66446008)(4326008)(64756008)(66556008)(66476007)(8676002)(86362001)(450100002)(6506007)(478600001)(83380400001)(55016003)(9686003)(26005)(53546011)(186003)(71200400001)(7696005)(33656002)(38070700005)(8936002)(52536014)(122000001)(5660300002)(82960400001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l0U1lhWvl+HikduwjaqyCxS+E9F6D1rPPe+YdxhGm+iY98poiO/F7yaNInBT?=
 =?us-ascii?Q?Gmxyq1bMBpvjI/qNsqDsh08Ed1ZgS3D8mOaLGxx0Z5dvdULpXJEptivFng0i?=
 =?us-ascii?Q?cKPT3ZR/S65HcXTGLBATVC1qnbMK1EEJL3zLxaghgqqm+JaHyqfCTfh7uvI5?=
 =?us-ascii?Q?T9OsxV3nwHtdZxsJkqZQAX7ad6JV8ZC0w4UPMUIpGo7qBr9xnsjCkAIGBQM1?=
 =?us-ascii?Q?YzCIFDbkb3hTmS3lkyWO4qqR7MN5QyqgzGDiNgHgP4W2MJ/rLle0EQ9umUyL?=
 =?us-ascii?Q?p42dwSKMr56vnXRX8kP/Cq1PG1kHBnv31qPh7GqsM2GeEElY13YAxFYzW8s3?=
 =?us-ascii?Q?9kbJLgs1E/CzaXRnM/iY4PDGL+kjoKnbEfsb8CwKZVJ0ZpgERAQF7jnZvRLO?=
 =?us-ascii?Q?vLkMm7n2kPeBTiPTLVq732+KNETGLME3HtfBXSLnyOztsCVxEyHY/E2QAdTd?=
 =?us-ascii?Q?iBiWjmg3XkONH/YTgC2wP/uIC+pLh0+0VygxaHFE6vl/fpjdmBxJzeijXu4T?=
 =?us-ascii?Q?Q3xrUBc681vDmHhoUo+PR30lryppdENSTW2VTozVaIQL4zh1ufKNwlI2YPyF?=
 =?us-ascii?Q?BGu2CEBwF2KKMa/YjQyRoLfZOoLt+ekMGJJjEhbrXkUWVb8usGyglFRQ2gnm?=
 =?us-ascii?Q?Hg4WDUXcSBYfAskzgQOgz5gMmHrlMv70+IH9nqJ86c9p8IyDCAJtcY2Sf9om?=
 =?us-ascii?Q?Rs5G0gAIvJMw13yhHleXAtb7opkYeRDzvVFeSKW/dLXRJa5cC2W5G7pLoiFk?=
 =?us-ascii?Q?7RlQHnMj7A1McMVjuFf1oflpBZX8s9pxDc6pNGAOiCFcm9LOYexg2rvTIJtV?=
 =?us-ascii?Q?fvS/v7Q1LlEsI3iEjStNJ5auiCfqTdm/2CDyrjaAlqAmNqP0kEHP2YgqCfzA?=
 =?us-ascii?Q?IY6XdiRCsw9yQDpjgqSXE1zYKu8FLYEhG/vC9mR4QaZaBaXJXiVVaQgvfCdw?=
 =?us-ascii?Q?6JytXZtdwNNAwmIKaTaQ2PvcG0H+9sG4/N0nZ3nltFzx04uPclR58izYm0vd?=
 =?us-ascii?Q?4QtWvF+6o+9xH8ZAO3ojYRSaGt/8uKwmVJIsubfdyI+LV51Dl5TCnrBG9vwp?=
 =?us-ascii?Q?f52FWItJhQ87R8/ReLM3dnxQ10jIPPzZNspD3SYyJK0LxbFGYMFUmQbO04Nc?=
 =?us-ascii?Q?VJiODr2Sa3buLDD7IYhqMfF70fC8NmR38B2aIwybpuPN7EJn5jTHBpPvGxBy?=
 =?us-ascii?Q?usU4PmEjQr7+XA5x8lypsrLXSckL6m6PvPeRX0itTum2ufTZyVIvuUTCbryB?=
 =?us-ascii?Q?cdgNulg5xhkVd6DrwwmWw6eZ5x0k/XQr6rigBnSm8vPRUxYqrlN/e64jWrr0?=
 =?us-ascii?Q?hZSxjmRcjcUXMIgWU4ouz7wW1sih7KAbd9kfbL9xKlXPP39VJu8zKu1cZMvC?=
 =?us-ascii?Q?l/IbiRcUeG/+j8itKo76AefH61llV2d7mZKLWBYjvIV5KfIYRNt0GxjQnSJm?=
 =?us-ascii?Q?XxvfK5KcwZkM6zeL9jQNN4elKD2OExFyVSuxfZokLi8Saz9n7j5nj+VgiroD?=
 =?us-ascii?Q?8h0RDkmk/T0EV9hLPq6R3vjLRpn9s+X7F/DnhvNKWH9DMVy/PRiLqqMw2mMS?=
 =?us-ascii?Q?/btZyK0mrzjQpng+VHbndrk4Ynf1nQh2IBwa5MGfbkds/2ZNGQgTCzCxZsbL?=
 =?us-ascii?Q?Zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba47900-d925-43b8-2a09-08dafd75d2f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 19:12:51.8514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: emdLsoNZFcWC5R2lAx1X/WUg3DINlElhIPtnkm8kDC/ECuevhYwRbQyWw3OhHKnyZFweeo4NK569K7QQ8ZxCheIctyr//UxZEmQIRDAvmT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7408
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/8] drm/i915: Convert pll macros to
 _PICK_EVEN_2RANGES
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
cas
> De Marchi
> Sent: Friday, January 20, 2023 11:35 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; dri-
> devel@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 3/8] drm/i915: Convert pll macros to
> _PICK_EVEN_2RANGES
>=20
> Avoid the array lookup, converting the PLL macros after ICL to
> _PICK_EVEN_RANGES. This provides the following reduction in code size:
>=20
> 	$ size build64/drivers/gpu/drm/i915/i915.o{.old,.new}
> 	   text    data     bss     dec     hex filename
> 	4027456  185703    6984 4220143  4064ef
> build64/drivers/gpu/drm/i915/i915.o.old
> 	4026997  185703    6984 4219684  406324
> build64/drivers/gpu/drm/i915/i915.o.new
>=20
> At the same time it's safer, avoiding out-of-bounds array access.  This a=
llows to
> remove _MMIO_PLL3() that is now unused.
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  .../drm/i915/display/intel_display_reg_defs.h |  1 -
>  drivers/gpu/drm/i915/i915_reg.h               | 59 +++++++++----------
>  2 files changed, 29 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> index 02605418ff08..a4ed1c530799 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> @@ -34,7 +34,6 @@
>  #define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
>  #define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
>  #define _MMIO_PHY3(phy, a, b, c)	_MMIO(_PHY3(phy, a, b, c))
> -#define _MMIO_PLL3(pll, ...)		_MMIO(_PICK(pll, __VA_ARGS__))
>=20
>  /*
>   * Device info offset array based helpers for groups of registers with u=
nevenly
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8da3546d82fb..dd1eb8b10e0e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7232,13 +7232,15 @@ enum skl_power_gate {
>  #define   PLL_LOCK		REG_BIT(30)
>  #define   PLL_POWER_ENABLE	REG_BIT(27)
>  #define   PLL_POWER_STATE	REG_BIT(26)
> -#define ICL_DPLL_ENABLE(pll)	_MMIO_PLL3(pll, _DPLL0_ENABLE,
> _DPLL1_ENABLE, \
> -					   _ADLS_DPLL2_ENABLE,
> _ADLS_DPLL3_ENABLE)
> +#define ICL_DPLL_ENABLE(pll)	_MMIO(_PICK_EVEN_2RANGES(pll, 3,
> 		\
> +							_DPLL0_ENABLE,
> _DPLL1_ENABLE,	\
> +
> 	_ADLS_DPLL3_ENABLE, _ADLS_DPLL3_ENABLE))
>=20
>  #define _DG2_PLL3_ENABLE	0x4601C
>=20
> -#define DG2_PLL_ENABLE(pll) _MMIO_PLL3(pll, _DPLL0_ENABLE,
> _DPLL1_ENABLE, \
> -				       _ADLS_DPLL2_ENABLE,
> _DG2_PLL3_ENABLE)
> +#define DG2_PLL_ENABLE(pll)	_MMIO(_PICK_EVEN_2RANGES(pll, 3,
> 		\
> +							_DPLL0_ENABLE,
> _DPLL1_ENABLE,	\
> +							_DG2_PLL3_ENABLE,
> _DG2_PLL3_ENABLE))
>=20
>  #define TBT_PLL_ENABLE		_MMIO(0x46020)
>=20
> @@ -7251,8 +7253,9 @@ enum skl_power_gate {
>  					   _MG_PLL2_ENABLE)
>=20
>  /* DG1 PLL */
> -#define DG1_DPLL_ENABLE(pll)    _MMIO_PLL3(pll, _DPLL0_ENABLE,
> _DPLL1_ENABLE, \
> -					   _MG_PLL1_ENABLE,
> _MG_PLL2_ENABLE)
> +#define DG1_DPLL_ENABLE(pll)    _MMIO(_PICK_EVEN_2RANGES(pll, 2,
> 		\
> +							_DPLL0_ENABLE,
> _DPLL1_ENABLE,	\
> +							_MG_PLL1_ENABLE,
> _MG_PLL2_ENABLE))
>=20
>  /* ADL-P Type C PLL */
>  #define PORTTC1_PLL_ENABLE	0x46038
> @@ -7312,9 +7315,9 @@ enum skl_power_gate {
>  #define _TGL_DPLL0_CFGCR0		0x164284
>  #define _TGL_DPLL1_CFGCR0		0x16428C
>  #define _TGL_TBTPLL_CFGCR0		0x16429C
> -#define TGL_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll,
> _TGL_DPLL0_CFGCR0, \
> -						  _TGL_DPLL1_CFGCR0, \
> -						  _TGL_TBTPLL_CFGCR0)
> +#define TGL_DPLL_CFGCR0(pll)		_MMIO(_PICK_EVEN_2RANGES(pll, 2,
> 		\
> +					      _TGL_DPLL0_CFGCR0,
> _TGL_DPLL1_CFGCR0,	\
> +					      _TGL_TBTPLL_CFGCR0,
> _TGL_TBTPLL_CFGCR0))
>  #define RKL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR0,
> \
>  						  _TGL_DPLL1_CFGCR0)
>=20
> @@ -7327,40 +7330,36 @@ enum skl_power_gate {
>  #define _TGL_DPLL0_CFGCR1		0x164288
>  #define _TGL_DPLL1_CFGCR1		0x164290
>  #define _TGL_TBTPLL_CFGCR1		0x1642A0
> -#define TGL_DPLL_CFGCR1(pll)		_MMIO_PLL3(pll,
> _TGL_DPLL0_CFGCR1, \
> -						   _TGL_DPLL1_CFGCR1, \
> -						   _TGL_TBTPLL_CFGCR1)
> +#define TGL_DPLL_CFGCR1(pll)		_MMIO(_PICK_EVEN_2RANGES(pll, 2,
> 		\
> +					      _TGL_DPLL0_CFGCR1,
> _TGL_DPLL1_CFGCR1,	\
> +					      _TGL_TBTPLL_CFGCR1,
> _TGL_TBTPLL_CFGCR1))
>  #define RKL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR1,
> \
>  						  _TGL_DPLL1_CFGCR1)
>=20
>  #define _DG1_DPLL2_CFGCR0		0x16C284
>  #define _DG1_DPLL3_CFGCR0		0x16C28C
> -#define DG1_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll,
> _TGL_DPLL0_CFGCR0, \
> -						   _TGL_DPLL1_CFGCR0, \
> -						   _DG1_DPLL2_CFGCR0, \
> -						   _DG1_DPLL3_CFGCR0)
> +#define DG1_DPLL_CFGCR0(pll)		_MMIO(_PICK_EVEN_2RANGES(pll, 2,
> 		\
> +					      _TGL_DPLL0_CFGCR0,
> _TGL_DPLL1_CFGCR0,	\
> +					      _DG1_DPLL2_CFGCR0,
> _DG1_DPLL3_CFGCR0))
>=20
>  #define _DG1_DPLL2_CFGCR1               0x16C288
>  #define _DG1_DPLL3_CFGCR1               0x16C290
> -#define DG1_DPLL_CFGCR1(pll)            _MMIO_PLL3(pll, _TGL_DPLL0_CFGCR=
1, \
> -						   _TGL_DPLL1_CFGCR1, \
> -						   _DG1_DPLL2_CFGCR1, \
> -						   _DG1_DPLL3_CFGCR1)
> +#define DG1_DPLL_CFGCR1(pll)            _MMIO(_PICK_EVEN_2RANGES(pll, 2,
> 		\
> +					      _TGL_DPLL0_CFGCR1,
> _TGL_DPLL1_CFGCR1,	\
> +					      _DG1_DPLL2_CFGCR1,
> _DG1_DPLL3_CFGCR1))
>=20
>  /* For ADL-S DPLL4_CFGCR0/1 are used to control DPLL2 */
> -#define _ADLS_DPLL3_CFGCR0		0x1642C0
>  #define _ADLS_DPLL4_CFGCR0		0x164294
> -#define ADLS_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll,
> _TGL_DPLL0_CFGCR0, \
> -						   _TGL_DPLL1_CFGCR0, \
> -						   _ADLS_DPLL4_CFGCR0, \
> -						   _ADLS_DPLL3_CFGCR0)
> +#define _ADLS_DPLL3_CFGCR0		0x1642C0
> +#define ADLS_DPLL_CFGCR0(pll)
> 	_MMIO(_PICK_EVEN_2RANGES(pll, 2,		\
> +					      _TGL_DPLL0_CFGCR0,
> _TGL_DPLL1_CFGCR0,	\
> +					      _ADLS_DPLL4_CFGCR0,
> _ADLS_DPLL3_CFGCR0))
>=20
> -#define _ADLS_DPLL3_CFGCR1		0x1642C4
>  #define _ADLS_DPLL4_CFGCR1		0x164298
> -#define ADLS_DPLL_CFGCR1(pll)		_MMIO_PLL3(pll,
> _TGL_DPLL0_CFGCR1, \
> -						   _TGL_DPLL1_CFGCR1, \
> -						   _ADLS_DPLL4_CFGCR1, \
> -						   _ADLS_DPLL3_CFGCR1)
> +#define _ADLS_DPLL3_CFGCR1		0x1642C4
> +#define ADLS_DPLL_CFGCR1(pll)
> 	_MMIO(_PICK_EVEN_2RANGES(pll, 2,		\
> +					      _TGL_DPLL0_CFGCR1,
> _TGL_DPLL1_CFGCR1,	\
> +					      _ADLS_DPLL4_CFGCR1,
> _ADLS_DPLL3_CFGCR1))
>=20
>  /* BXT display engine PLL */
>  #define BXT_DE_PLL_CTL			_MMIO(0x6d000)
> --
> 2.39.0

