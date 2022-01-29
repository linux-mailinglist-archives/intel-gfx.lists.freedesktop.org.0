Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4754A2C72
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jan 2022 08:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B311310F4E7;
	Sat, 29 Jan 2022 07:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0BC10F4E7
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jan 2022 07:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643441022; x=1674977022;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eCKRLBJ2aA6yKRtk3PiscgFbAKD0eLdnboKGqR+WeyQ=;
 b=dhmQoFWFuPXj8adiYQYHdm1LjHlQZqtjZqYLDt4bZc2kkiRtPJ/RM9YV
 IEW2JML5d2kqAxGFq9MXZTKig3b43u83bxOecZzCQxOhapxwKyq/1a03o
 FSlrMg0pRpfransIFzscTPq7GNT90MUOMSpSblaaBjkCUW/Vc9QpV99mN
 6g5YqalRgwShoozu8d35/6VGWgaQCskRH5fjlJ9vWlg219IlFJtz82Qf5
 tJu7Z5MP402w2ZM8DEvn95LnvBD3PFBIsFY6IiAlLexgf5mLoI24Wrzlm
 ROpV3epVsHLmCX2szquWbLEIJCNG68YF1rS+xyS/wxwYCNubDhysxs5nR g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="244850648"
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="244850648"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 23:23:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="598413598"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jan 2022 23:23:41 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:23:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 23:23:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 23:23:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J7Ie+Im+68P6pI8ZEpIH8p9nvYQFmONQdzFDm5Xy8VALfeHeU0dxrWt0Azz8b3qAuRzvJQLQWZX6g8qtw0IMZXtNh5yzYbUVde4dQLxUSsy+hzVWFtX8A5qnHwW+nyHOU+Qf45bMvxea25VbLO/OJM5TUV5nszTf8l/vTGEatq/oFkoZqFqv9b5dzE+7yodrvKspPgXf0TAGf1/E+6Uw7Dp7zwo01i1rGRWhMCA9Y/qP2m8lbHZOGU0jpZg9OIv3fiYIAvRjCZ7m8gyvUWbEmYMFuSTdB8fmMpWycJfyO//6zC3fFEdDmLNE+aA39Cbsmm89oAo7jjjEZ7menATQaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8eO9MYRZhZBDQoK+we7zwwkoaZb9z1X6QsCCiaF3N1o=;
 b=dQnNkAiBt/QVoQjLVbMHlplJvOETmtw8RaL5vJz+JLn1CiCHzgg9sW7Y37KTs5P5ZWJLiy2QkPI7oIG9hxa0lr59L4aNeKoVErpXM+hOPm2Y7gEb4Ex5jwxf/z/TWE3tuR8G/NkLsTQNqiMFuz8Dccslcth4SptLctX1J47fvf9CyeKVd3o5bzcnFkTlJAgUKXOHfFdW18Tucy5+zOrF3e5IWgdq3w6WRy47axkK/lthMCKh4vFHq6oEChc6NNbf4aCEoJbZCQqRwUZZD7vhLiiJhjUFGwM7LrV41YW4LTz8lCbfXCGpVw/HsivFPyoAHwclO0zSMkXy/FJl5bLQng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MN2PR11MB3776.namprd11.prod.outlook.com (2603:10b6:208:ee::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Sat, 29 Jan
 2022 07:23:38 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e%6]) with mapi id 15.20.4909.017; Sat, 29 Jan 2022
 07:23:38 +0000
From: "Bowman, Casey G" <casey.g.bowman@intel.com>
To: "Cheng, Michael" <michael.cheng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 3/4] drm/i915/gt: Re-work reset_csb
Thread-Index: AQHYFJPkUcBAeJfCokaWftOSD/oJ1ax5mMFA
Date: Sat, 29 Jan 2022 07:23:38 +0000
Message-ID: <BYAPR11MB2936420A5EC28E91857B40DBDD239@BYAPR11MB2936.namprd11.prod.outlook.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-4-michael.cheng@intel.com>
In-Reply-To: <20220128221020.188253-4-michael.cheng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76676b88-7d02-435d-5ae3-08d9e2f844c4
x-ms-traffictypediagnostic: MN2PR11MB3776:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB3776B82FB109E832F9EF5137DD239@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:419;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ovI2gZJycLnHMfjcax/g5GHjoECxoWjVPJyll3b7acihgix6DUTb9LidtRyKm3dQZXqKPjwwHv/Aaeu6cf87SatlYD5rP7zJfwm+tid2Fe48hZTehWqE0UivjqcY/pOAfoyTIYtK+kbrSJrIVqHROU0fnjZlivcNVy9oyhIfaExDEBG99RVOTL1CaTdQzVzYj6q8sqA9Y5qyrziwS8lbYBbKWnYrCWUQDtoa0bB6HkcKQs84I2V6ayxvIb8upxoTUhHm2PHlAIM0eddHans0yH6lXSwjSBiMdxYBgLATGuAju+0mj10s2JLOC4bMwV9xXP1IY3Jvy4UC1rSk+NCU4P7bmWQX3hWtaxmwUAxm8xcB2Oq1S+2eCMdSUbVEziVsAdLbiO0RKvCTmaDXePMca8EUHciTaKvUjnrkbfx9M9udMFz0o1NdCnymrNWiCVIEGFaDuZX7PiyMtGZfYAB4E29dLDJHYqUp8wOXVrCtGY769AExbFvwTMQqbbciKbER8IN8GmFbTDYlk7WcWi8RqroqE/DZRFxQHx6rpbX2lwjE1WwL9mSME892VJ6i5rDa6XXKwEib+rSHQRGCnU99ZQgoU70Bd+GIfvcO7jazLc14YXZaCIc1/us+IIYQAYjaVXREh9VkOOS2FVGfn+a5WHynShGW7PqhPrRD7lTbzeMrCoh8WPIosv357BDqaAkpYAJc875vGLTt0KPsUBjMbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(86362001)(38070700005)(38100700002)(122000001)(66946007)(76116006)(66556008)(66476007)(4326008)(8676002)(66446008)(64756008)(8936002)(110136005)(54906003)(316002)(55016003)(2906002)(52536014)(5660300002)(71200400001)(186003)(26005)(83380400001)(508600001)(53546011)(9686003)(7696005)(6506007)(33656002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yPWQASgpf6YIiG5KkCWtutgCpIV8KkxHIj9sZkSy9vBSVZIYj7jm9qxI4vSJ?=
 =?us-ascii?Q?fyziYSEbbdIFD2rhb5PKOGM0WaMNM0M3m38q34iYofypkubltCfkse/2Adbj?=
 =?us-ascii?Q?NYj6ANjuwaB49jeGNTTqSxus4A5lbCR2xkRJhLBeo16iWTGXYEQ3tKmZGQeB?=
 =?us-ascii?Q?QQ4D91N4eLhRiltH91PGf3tRFaY00xXBrOpjfU2rKbum01bZ6d9/hxxOi1sI?=
 =?us-ascii?Q?dx8ibsF6ZDPElNi0H8bJCtlqYYSDALxhUM3hLG7Cv8nroQlL5DTGtvb3uOzb?=
 =?us-ascii?Q?HLZKIo32X6ATkN0XBV8o8hTvz0rr8y6HseusTm/uhDUvgKnN+cgrR1t7/enU?=
 =?us-ascii?Q?u8q0R3AHMfGYs4xs7oTsmVcTvAM+our1zHI5MOu+cEXBLWA2jQDUHux1wlKq?=
 =?us-ascii?Q?vfo/MufYNXtKhlZ6ER+OXNeFiwy+jMAJsmXD7mMMPJ8cJEwZs3931qMEg/PC?=
 =?us-ascii?Q?VTJscBV/W+z4hzlIula98wucE7gCa1kSOotlUqVJF9BhH6UnaTWakY5UaESM?=
 =?us-ascii?Q?5cYFK7n0wWKV5HZDBCEmNzFeo7MDI9HRKCD5ex5jBYZtwlX5T7N4Mc+rDWt4?=
 =?us-ascii?Q?ksLfBFc7FC1lmQ7SYGuJE04NQa8L/NT5WKqmU9AGvG33yu/HBXurk6RQ2Ts7?=
 =?us-ascii?Q?AWBAB3Vq/0mmptL3uU5VvciBcNwCDOVtnT68bAdZVWIzMxSydhnReg53484R?=
 =?us-ascii?Q?Pi3ZxZQceT6xSUyOK+RYKuP7e18N0ZNJlPRx+jgKsKQ1NKSUGWm/BnFou9cI?=
 =?us-ascii?Q?mR0MKoD70dpxjb/lOpV1z/6ATRHBIrUjW3l+JlXsuXoRCwBBVn59Et6CQcWN?=
 =?us-ascii?Q?FM76v4ddloxuB5SI29TlRNsNzj45YqpT8lwDTXlo/nRpHUwgvD1I3Jvs6pl1?=
 =?us-ascii?Q?extyL3Ui/KC85wg1bc1Z1KfGYENF/SN/YpCH4XI8q0CdpJ9bLltifsKrspaZ?=
 =?us-ascii?Q?AiOUsNXa0kvCvHYtMTYtggoUbFH5uPlr+X66RprKnjRxIaEgpRojuoG9iF17?=
 =?us-ascii?Q?eCsQU5OP09TIQUUeEyl8+va78OKqow+VBrsdWeVN0LdZHk0fd3hduGSXxEMj?=
 =?us-ascii?Q?khmxWtkJ2+HWNyHitLoo017j9Pt4lSH+Kkhaa1+pgj1iVyO16xCMXdC9I/KH?=
 =?us-ascii?Q?CeqA93V1vdQtxIrMT5y9dkpVM5HABVRkx9eX1cGRV2CjdQnRHnzXcqZbhuq3?=
 =?us-ascii?Q?A/1VtyD2BykBgFO/QROhuMiOPm1He9oEU5LIJuFpwJ5eqU4hoZZEEvv2WGiB?=
 =?us-ascii?Q?egXT+D21C70ASfwYII1nA/KK878CRfLAIzui7fC1gu3I/3dfMPmeZLDUexl5?=
 =?us-ascii?Q?MV95aiZ9BuJ2f20OrAos6R80D+x6yzlkYtUnti/hBwEfOT4C6lmHEqbRfDPj?=
 =?us-ascii?Q?qIli0slZxyBCduz11Nw6RaT8BOOEO27yw/OefzgphfGfI+8t2JDokpKDNmm+?=
 =?us-ascii?Q?UAPMA07sQd7HP8hloRh8zqJKQK5a46gjgsfYgMFEKSvqn1mqUNcN/Lwa4O4V?=
 =?us-ascii?Q?hN3gwyv+vKlwB95hq0/7Ebvmgp5ydELXYAiM009U7LQT9VwvW+On6ccZa5mt?=
 =?us-ascii?Q?w3lvI6JLTtxs+mObGJxr6reXhgBZYV4OpnSx1H5Z/FTMug5I7nE0LkXXhsbF?=
 =?us-ascii?Q?VpiO0OTYbvbSZvVucIFXH4eWNUTW44VODjyYngRhiFkW9LlaUbdSZRI6Mb1e?=
 =?us-ascii?Q?n/pOzw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76676b88-7d02-435d-5ae3-08d9e2f844c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 07:23:38.1559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E2Ae9ZGdYcQmLN76IeIIcYl4xRKbXAF+fGE+X+XTXSopd7yYez0zdZtEfkEsEiB7rwu/JnCFMp1iPZ12XYzCCBK4Ke4lVdLMUeMxwBC84fQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/gt: Re-work reset_csb
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
Cc: "Kuoppala, Mika" <mika.kuoppala@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Cheng, Michael <michael.cheng@intel.com>
> Sent: Friday, January 28, 2022 2:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Cheng, Michael <michael.cheng@intel.com>; Bowman, Casey G
> <casey.g.bowman@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Boyer, Wayne <wayne.boyer@intel.com>;
> ville.syrjala@linux.intel.com; Kuoppala, Mika <mika.kuoppala@intel.com>;
> Auld, Matthew <matthew.auld@intel.com>
> Subject: [PATCH v2 3/4] drm/i915/gt: Re-work reset_csb
>=20
> Use drm_clflush_virt_range instead of directly invoking clflush. This wil=
l
> prevent compiler errors when building for non-x86 architectures.
>=20
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 90b5daf9433d..e8a2e2683b81 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2951,6 +2951,8 @@ reset_csb(struct intel_engine_cs *engine, struct
> i915_request **inactive)
>=20
>  	mb(); /* paranoia: read the CSB pointers from after the reset */
>  	clflush(execlists->csb_write);
> +	drm_clflush_virt_range(execlists->csb_write,
> +			sizeof(execlists->csb_write));

I only see the insertion of drm_clflush_virt_range() here, not the removal =
of the
clflush() call, which sounds like it's supposed to be replaced here, based =
on your
commit message.

>  	mb();
>=20
>  	inactive =3D process_csb(engine, inactive); /* drain preemption events
> */
> --
> 2.25.1

