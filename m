Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EF4769B5E
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E9D10E2B4;
	Mon, 31 Jul 2023 15:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834D910E2B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690818823; x=1722354823;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9JYksbD8vlFG0yySQaIgfiWM1pZnnnHzkQBmfwD1/0Y=;
 b=VlEa5TuHGoKhKSlJqUOj8JYuq5uRpHhSVB3/rMWj9+yu7UZ/MIOWueFA
 UHOdtvKEIpl861hsp9d5OvyknXpGUmdN55xF2f9cBS3W42+QjMZVswWKQ
 pKYL9oSwa5r+X6qWvChfH5rjXDQRupA/1IjgLy9JDR/p+E6IDXIQBHopA
 GPa1onNhIpgG8EAaxN9xEapLaXKme35zcxrP6fNa82NGsQAq4+ltRpVCO
 eGzOlnsflts5MKu8N+EJOeYVYL7tJ7nVIXqihuB8VkKICdOaYJOwSHXg/
 QM/a0kl1fv02St6CdffpcI+bMxJ0cubBnweghW3yyU77P8RT8eSrBc3AS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="367954985"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="367954985"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="731635190"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="731635190"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 31 Jul 2023 08:53:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:53:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:53:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:53:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:53:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgbHaBzvkXAHV8RTA6JZch0pIa+DSsVu2IkasX1x1KUWke87vIVfhPovWJ6WIhS1KQHgDryYbqNSrx1/L8nlz9+0axjeg6vAqgYIlPScwTaH5BMvjEcnjTF0DoMZ87PGWkoSFOUbkiLR0NY7HmawJP135q4Zx82EdDpelBclFYo62LR3QXhfkpKprlzmm9BJYXK9dk1/QKBR5fU0DKYCY/z7+JJeVPNaHMgP7i5batnjfzndz+D6oaqa5YFb2qXXN1RkzTEu+MzjtAueHwwmpcUEXYelfsx5eMPYflh+6WgbmLrWIqJr0w+LcvSl0muRvDoP+9696KzTj5/1I1EKEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8wZAPyYZe3JyBm52YKSYU4JlWg90hNCh23CLYYd56Zo=;
 b=B/lm5aetGuDq5elTvn8Gt9IIU4gBKcHMbDM6sjXvce0S4hkj4SUdpzbXgNB3a8FnFbOr1DmwvqKKMOHDKB4sx+xhytmOMZF6GYL7jOGPOyY4IgI3mLkNpi548HwtuJlcQdBadSPkTSFSlT2DoKkKwFtI5rkehCMm4kZUNuQd9LOzlIVJkaIkmRulWm8dn899L5S89HuzAZMjJeUHgoKvayRHg67JqWRfuu/SuQilUay2ge8tG4xaCXb0oluhHfknl2OKihDlpZmDUFRTz2Bt6rp6BDCdf2a3G39Zc9da1hVm77tpQ4+ObzwtynXzZ6CM2t6QMuU/pOBd4E+JoC4Mww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SA1PR11MB8256.namprd11.prod.outlook.com (2603:10b6:806:253::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Mon, 31 Jul
 2023 15:53:39 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:53:39 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 14/14] drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in
 platform and subplatform defines
Thread-Index: AQHZv/zk7RPMDhsWI0eYeAchRgvf6a/UDhIw
Date: Mon, 31 Jul 2023 15:53:39 +0000
Message-ID: <SJ2PR11MB77151378689D72DD37A36CBDF805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-15-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-15-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SA1PR11MB8256:EE_
x-ms-office365-filtering-correlation-id: bfdd735d-1b1e-451d-a543-08db91de4eb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZRxK4APXuY8QKP2TrRevk7ZbqoLE8S2pqfVfCMyr6AwvhXzbEY9knOix82ab7kqOKvSxU1/xRvre7aQ6eVakLzrk6iF8Zkn2wHDBjroQglatTywnkCXPGGMFvSChM9tGAMA6lwbcnroBKZZBdrHkOa3+rq1nZOSpdS32/pOs9i9ms7UiTeSyZLQkKp/EeY7CmSRDkVgUrJHmGMQhkd0bfM4+juaRBAe7AWvM1TyLs8XhCvs5TYyEdd3aFd/yu5uVE+fPSSPPpgTUUwqw97hMob/tcMPvV9iLUmDsmV9i9uq9+tql19IMiTnwl6FweWjbZnyhcAJLmX3bqq75x4OYsJY492MJIrbs/7aeOJSC7/70VuHh5zYJ20R85SIc6C6xZu1mE6toZPFhbe6fOJV//x09dZLkzQ8iKQQ7+2dhHI+1ry1+CovausGsjH00CXIN6tbaSAOHDrl2a0XL9ACXz6L4Bb3kgW5Rs14KmBDY0wii2RPGV6+iuHrVD3I7kv36vMmBR9YBtiUArvKjGnau1fFdYQzKJQI448VK2xQrhosTj/2+L2EHC1gBsy+avzGm00l+3ImbdVUrgKy23AD3G7JYTj0+c2Ibbfy7t+i4lpDRlnZpcqfLXY7FvoaNNleb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(346002)(136003)(396003)(451199021)(316002)(6506007)(41300700001)(8936002)(66476007)(33656002)(26005)(8676002)(53546011)(55016003)(54906003)(110136005)(122000001)(82960400001)(4326008)(66446008)(478600001)(64756008)(66556008)(76116006)(9686003)(66946007)(71200400001)(38100700002)(7696005)(2906002)(83380400001)(38070700005)(86362001)(186003)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ihtmo/dE7VzABb1BTNmmOf5pALR62yiFow9YMLiEmqdyTWg+6QQmFywRKIJV?=
 =?us-ascii?Q?9zUJooq9ldNWGHG2QULebdoViYbKsNCOzuQM5GOaJm676aa5yNxq5EcJ/Pzm?=
 =?us-ascii?Q?0KD3BJWDAkAq/ZZpPUNo1qa5TueozEj8bPSVUPy0E28nkevS0U2WzH0Mz7rk?=
 =?us-ascii?Q?e1jXgaB/J6XGL4u90J9rMpxRPP2s71Fz23BBe7/AsredCIkm14jxsC76R/rZ?=
 =?us-ascii?Q?9+vBMLbZ0pbax9jfc8YYv4KdanD+wJc2wolZjaDgb7OIqdhy9Dh+HmLoli1q?=
 =?us-ascii?Q?iEeHnQgUmpL4uVuhWMITcTgipTwW0cEGYlBW7E7eaFQqW0vua5mx5ZTSSyis?=
 =?us-ascii?Q?MNLlS17sVsX2BEK6ZuJN1GzBW5x18Il7FLV+uCUKRdKSOoMQGFHWqX+JYO1I?=
 =?us-ascii?Q?lr6RTEoPhoawFuNXz4rDCPLGiNajgUstWixF9ZujbnzGEMyNayjGG/zoGwOD?=
 =?us-ascii?Q?G8f2B+osUnTdhE7EKg14DpGcLEeK7taEhpjdNhmtwfuLGatcr7gnwvnHFANK?=
 =?us-ascii?Q?BDP+t2twoXuPGmIseUBIckaIFET4Rl0LMgVHCbron8rQs4TTa0qORiPSxVCI?=
 =?us-ascii?Q?+u9rhW5QUi7g4TDPDIoQLkiOw+Gmkdoma1wiqnu4eHo/gRrfnnPozszDkbNE?=
 =?us-ascii?Q?pPoD5vn9NLDRzX0F8JPux+zpWAg67lCI/XvUc1OqsEYfDKShyQclDURNtyad?=
 =?us-ascii?Q?sjEM92kQNaA2q0cEld+mU5Y+CpO0eSD6nTDjCu/x/5qfbdGKvNSkm5XZqfXb?=
 =?us-ascii?Q?5eUvMOrk+GGJIXt1VZB+/VQB1WQyUEKhNlJyq09jwLSIMYxQRUmqQ8FHiITe?=
 =?us-ascii?Q?QQbn5ie4oKV4+2TS6fq+DbQ38sz4E/jDr9AVzh22EBFTlzMLNJcru2S3GpYI?=
 =?us-ascii?Q?BD/7bB7rG9CrtgOJOkKw7Jpm4NwOxZ5R8o4eUJB3pj8nm76eeIUyA776Kinr?=
 =?us-ascii?Q?3Y3rC6jQmmBlQcJs0DVFDlwP5ySa60lQY5D2dExhJ6eguJOFCWVzllxmR4IN?=
 =?us-ascii?Q?nygxxIErY6vVaHBQt7Wl7/2rk+KHvZWlydjeFJg5jMZJgTWWFMrB26kfXWUs?=
 =?us-ascii?Q?tSXuCSXBHWyLAQr2NHNRPLuu118O+5x+VZJUFzOBYHfQ+QOMaBo0MW6PBA0s?=
 =?us-ascii?Q?ecSH/Cg6FIt/Jv1EoYfKP8iOBkRtnCMl44I9sbgesecsM1v1NAUWhz/mVJ72?=
 =?us-ascii?Q?w9SAfCzVbrs2CujyOW1fhCPHxtgEU2gbyY6AJrQA8gUM2QwUemf7oL4cNUOW?=
 =?us-ascii?Q?06szmv+oodptMhp26iAI9hhXSrHv4qbhEnDbsuwrKasffzQ9nx2QK1B9eVxP?=
 =?us-ascii?Q?/KMC/G7Xa/qvCak808OeGDBdSsrYYNKcNv4u788zKjgqEVziDW7Skeofxe7B?=
 =?us-ascii?Q?QcUFTnz8lljopfctvSmOaspZreJDIFQVoxJAxB3miRbJOGOU+jOvImqlLFck?=
 =?us-ascii?Q?xVQ6KQgf1s7irvaBtKKUzXlP9vvXvfskxW3XpVf/+crM7hwaMT1f2PyH+o50?=
 =?us-ascii?Q?2wgA1CHE8RYcgEiiqKgRqe5C16O0VX3yizGPQsiq6iM0Wi/QEdqW+R2/rgvn?=
 =?us-ascii?Q?yLBbasOG8fY0pE5ySr0M1ZVQUg7adI415UsOcyzi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfdd735d-1b1e-451d-a543-08db91de4eb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:53:39.1854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7bn0jTMoUWFxzHcr5PtE+8R8o0YrdDO90xtwoN41pm3yl3R1OlBlzvrxyzOtjDNQdKSmmUQaNFvzuyFUXID4e1Ox0J50ZgXX7Y1kR8bco14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8256
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 14/14] drm/i915/adls:
 s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v3 14/14] drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in
> platform and subplatform defines
>=20
> Driver refers to the platform Alderlake S as ADLS_RPLS in places and
> RAPTORLAKE_S in some.
>=20
> v2:
> - Unrolled wrapper IS_ADLS_GRAPHICS_STEP
>=20
> v3:
> - Replace IS_RAPTORLAKE_S instead of IS_ADLS_RPLS. (Tvrtko/Lucas).
> - Remove unused macro IS_ADLS_GRAPHICS/DISPLAY_STEP
> - Change the subject
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c               | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                     | 9 +--------
>  drivers/gpu/drm/i915/intel_step.c                   | 2 +-
>  4 files changed, 4 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 8286e79522d1..dcb272327281 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -858,7 +858,7 @@ void intel_display_device_info_runtime_init(struct
> drm_i915_private *i915)
>  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) <
> I915_MAX_PORTS);
>=20
>  	/* Wa_14011765242: adl-s A0,A1 */
> -	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
> +	if (IS_ALDERLAKE_S(i915) && IS_DISPLAY_STEP(i915, STEP_A0,
> STEP_A2))
>  		for_each_pipe(i915, pipe)
>  			display_runtime->num_scalers[pipe] =3D 0;
>  	else if (DISPLAY_VER(i915) >=3D 11) {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 18250fb64bd8..98b103375b7a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -43,7 +43,7 @@ static void uc_expand_default_options(struct intel_uc *=
uc)
>  	}
>=20
>  	/* Intermediate platforms are HuC authentication only */
> -	if (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915)) {
> +	if (IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915)) {
>  		i915->params.enable_guc =3D ENABLE_GUC_LOAD_HUC;
>  		return;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 853687d9e3f8..9ddba8a8ab1a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -584,7 +584,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> #define IS_DG2_G12(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12) -
> #define IS_ADLS_RPLS(i915) \
> +#define IS_RAPTORLAKE_S(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL)  #define IS_ALDERLAKE_P_N(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N) @@ -654,13 +654,6 @@ IS_SUBPLATFORM(const
> struct drm_i915_private *i915,
>=20
>=20
>=20
> -#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> -	(IS_ALDERLAKE_S(__i915) && \
> -	 IS_DISPLAY_STEP(__i915, since, until))
> -
> -#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
> -	(IS_ALDERLAKE_S(__i915) && \
> -	 IS_GRAPHICS_STEP(__i915, since, until))
>=20
>=20
>  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \ diff --git
> a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 5553de469fa0..c02a6f156a00 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -201,7 +201,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids =3D adlp_revids;
>  		size =3D ARRAY_SIZE(adlp_revids);
> -	} else if (IS_ADLS_RPLS(i915)) {
> +	} else if (IS_RAPTORLAKE_S(i915)) {
>  		revids =3D adls_rpls_revids;
>  		size =3D ARRAY_SIZE(adls_rpls_revids);
>  	} else if (IS_ALDERLAKE_S(i915)) {
> --
> 2.34.1

