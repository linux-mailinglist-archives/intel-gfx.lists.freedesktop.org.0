Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 811A87DC8C2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 09:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109BE10E426;
	Tue, 31 Oct 2023 08:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16ECE10E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 08:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698742666; x=1730278666;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AD8IR2w5jHB5z6ycDIXYLipMDjwp/3w2Y/52DmQ76a4=;
 b=eqrvpjWqi9DSAgPpf5Ga+jUoO48MdWCvxa4a/EGfH1VgBhFfzUNNUHJ+
 6fMadBQSoAK7uYnPsl2HzoMe0KrQSL2wOSorlSgNl4ilTDOhrYjxFfgvT
 PyjHOe+hf9kkD066qI1y5zi4E3EV7bu2Ohyvnqf/QKd7tILYCV4skJ1Xr
 oudARJGiM/a7GBZKnVHqdDgYm8K/tHeIcZRClgoSRzfjEzA0n2mTE9vUt
 9ZgOWpsC/078GihTPUmeq3D+16UBLQYknqESNhEdTC09e1zU/98XHuVK7
 8HP5yRiXsT3lytmsqTl3JTemFod316PDdH9vsMoB+Ez46KDkMLeCNTCt+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="367589018"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="367589018"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 01:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="904275263"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="904275263"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 01:57:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 01:57:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 01:57:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 01:57:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 01:57:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gwpqfhLQf7wSQBmIvWLVmfSAzKOfm48AFT4AICUTy1sZFrRDL1JAqNIMficnm7GKxnxkY43b5zxy1w2jCjQjEvaCFkNFTlHAWj04WvDb5QNo5RnvQ2KSZEBY/dqW2NqrY/mzosG/VZ88oj+mXRC/4mbT0SoORrc1CnVqzDsHKKRj09KsrVt4U84EXd/SqQgM6ZhQ4RfkKEQB/BuXBQv8ZR1E3iHN6XnmjD1n5Wlpm9JOXQn4C2K5d3unXhe/7YB2Qy1WldhI0lLXxrIjWq9dqoGXYVYOlbB3Nh8ZJe1Usyp5koEjlB1CLUokSGFusvw1UWhFAotMxVpkO94vkIcsMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D2s5QNUHPOId1i2v0/BdPulsJ0eNniu+z2+kZdAQEqg=;
 b=N8Vn2vC3Qkwacf5bXclfVKDY8skf7ZpZcLdKgNYuxTq24oyC0K/zROvVKJV3ChpMvomlobynwPN0rymUuTMSKolZDVfkk1QAo17gbtGKOjgfQPom63V28gmbS40Nntk6wObL3WPvqYs1Sws51CwqRudF1qi82ma68uIfb+lHhWLAqGLyMePyS6CTlgQH82Th/8HQuhquwGg+qc+5RF8IfT42ora5Bfx2OTTyY1CKBe7Q8PqYVlb+Jp667zikkO9yWPXIVkrJ0zuxqhnq/gqP6MMmYZls3MfzY1bUfUt5ILgo0hxSxoYp8Yqrajia4u9JhgNPHZxpJNFeOyO5Vy7yoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB5406.namprd11.prod.outlook.com (2603:10b6:5:395::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Tue, 31 Oct
 2023 08:57:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6933.027; Tue, 31 Oct 2023
 08:57:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/vdsc: Remove old comment about
 DSC 444 support
Thread-Index: AQHZ//FxyJBxrA2+bUSJ3sX2tQnZfbBjsIxA
Date: Tue, 31 Oct 2023 08:57:42 +0000
Message-ID: <SN7PR11MB67504B51817B2313FC9C3BA3E3A0A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
 <20231016052038.1905913-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231016052038.1905913-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB5406:EE_
x-ms-office365-filtering-correlation-id: fb133d7b-59d2-414b-f6e4-08dbd9ef7135
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZC/Zo18EXGXQYdbZAa1RyclHIWstajpcE+PZUYGdrrNjIaEcKYnkWe9xIp8N12cTmlXkf+BZKAEOkMDa6FNx9rnJTcLk/UNAbIUWLIevC8Ymuxg01OoBLWwo9oQ4FRTt8hlSwy50I89kxqwgrif3Ni3Hzp7trE1zk3ozawQArlnkGrl2baCClEJMWLxk7rcOaUa5KcO8WnLJxcqyChzERc0PIL7eCx3G3CJ73y5yRKTaBqD7E1XGy+tMOeCOI5jIVX8IwkSTTyRv321Dp0qNEpAgoMJ9sVZcFuOJckR4uBI7EBAybbdVFH4Y2mmePv97arLqm/PIogXGGs82hA+JXzYgQ9wd6MlFYQ/5kVsLc0R/paP3vykB9zRljUUwozn00PltZOxCifcQtk/F/fG8T1ndU4wuYGGsZ3IYJzf20JZVrIsCGpgUwVATsKyyE8dLqRIlVYD2cYhtOqE+lrAvqLVkFwWabdFp5dHf1awP8e9ZoGq1AmBlyrO0pz1AMu10vamEfFX6c7rLGH97gnNPJaygl6jTaQbR9SyvCo18ExpDHcVZVQQUG88bgNJ+6KfIDc6n4lq+7MJt/qO0uyqlZOld4Fh4qbE/ZlAfmhiWW/Y+pFpzOytQoVK1ZDXpPoZq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(39860400002)(136003)(366004)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(38070700009)(26005)(9686003)(55016003)(38100700002)(33656002)(86362001)(122000001)(82960400001)(83380400001)(2906002)(478600001)(6506007)(7696005)(53546011)(71200400001)(41300700001)(66446008)(52536014)(8676002)(66476007)(64756008)(8936002)(5660300002)(316002)(76116006)(66556008)(66946007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SMybPOqTQno1DwYwqf7ITYkPtlr03dk/Jso0ElZHmT28x9F1WzNPoilfel47?=
 =?us-ascii?Q?pINd6JwumhgTbYEwg/7cg3M/rE1Dm8N7pgH5DPGbNeXkTX1plJnoC+MX1aKI?=
 =?us-ascii?Q?5ekjgAm4aby3gehhIHFmzQXS3aDPqP5qgWHjQpNxNmvAfsdU1OwcHi81k08Q?=
 =?us-ascii?Q?xNydbysJWiEpFP1GXUSVPTehO/5DRHsvSzYpknxhrg2prep3YFaka4l4kPgd?=
 =?us-ascii?Q?o75Gx9LJ9PVRxrRKvFKR2G+cr/Qo/0exlkRObUQZ2TYffWknVT+ioWdj8gF7?=
 =?us-ascii?Q?5Fr8Abk2CvjbgjByrZ0wzGJNPjqdyKFBsOHiLBTsxlW7fwPV26U+naeZH/mw?=
 =?us-ascii?Q?LcSiak4TDgdZaAQb9uv1HguOacogn4NJGmW5Yi6I1aBCCmymxdXmJ5X9Exzz?=
 =?us-ascii?Q?P3R2Wkn1jZlUKB1EOy0EqwGiswrFfRbELoWiYHyGf3Ry4rt9azZQ4A3Q0XaE?=
 =?us-ascii?Q?vMc/w2z3muv28a7kv9HiBD8iAAyqV/LpvJkgbxBTcYRNZlNqzo8GQ4qWYJSW?=
 =?us-ascii?Q?ATVsHoU+yNyjj7vmpJFaKHbzxbfXLHmyqLyIFCnk438EVLix93pLkhtdr5EI?=
 =?us-ascii?Q?D2AJ++YbJTeBjkt7WOSc2Vo67XXBrTEz95emZUH673Zi0p9HI7it0sN5q3q0?=
 =?us-ascii?Q?U/ekCO7I1uQ4D3tVD5ZEaeyhLzCZYZTJ8zI6r6misIp+E9srS8RX51auX4wi?=
 =?us-ascii?Q?rai9eV0SpIL1fGFkfrHvp+yOg5e7Prp4a3rYiE7ZHg1ykuuH3I2aZxudGBuu?=
 =?us-ascii?Q?kE1Eb/QUtTFxf95IQ2IpUFxD3GIut4Z28MouoYeSYQj+73rN7rySEOW+Dsq5?=
 =?us-ascii?Q?JJWOvA/2SvcurFmz6dL+WfhGCVn84Ks6m713FjZ+pgDyi9i+LDKMZAlRKpis?=
 =?us-ascii?Q?syURg7edMpB12Gg26uZerYG5bhMMoIYv8Q/nQUZLu7sySbO4FIgtJmgSnK4z?=
 =?us-ascii?Q?l1It7eMZGWztn9fLUw6ST+R8eZRqDWpDPR2Sn47WKtBoUi9EBk3KEmGh2Mlz?=
 =?us-ascii?Q?whyrYoVYj7LXDiziTwI9BHUqpYVm0U+tP4lLa1QrboPDFGAM8OZPrCv4jRSR?=
 =?us-ascii?Q?xLzKpsF8VJ0DwJAP15rdWvikE6+HvNoc7yxqy2jwbNuFz7Z8+qMi9I3Q1aGJ?=
 =?us-ascii?Q?5Y8jObuFcef9Q3UPmhpTwUf6OiceTElHv/Kda7mD/9pcIK1rWQZT2G9WM4Yq?=
 =?us-ascii?Q?cYjmsTrBUcUsM7O/+h0GBTgBGds0Ws9+fynzD9O2S9TNXqaShkg6uSvcygv3?=
 =?us-ascii?Q?9TreTCs+z/r5b+gtBvGhWVXKdsE37Tz0H190PuyO3GFrDDr+TXUs9O7lycf6?=
 =?us-ascii?Q?1JchJbtC5qmbyL0uBKJWT01M5C0qJt1c3xkj2u8Uo1TgTSGC/MpZ1Ld2yNxv?=
 =?us-ascii?Q?qaeNdaYFUOYqTm1liIMStFKMvLMa+jewQrHPpGbxOUz7E7wGlNTpxBmKpm0i?=
 =?us-ascii?Q?ndZo53A2ofx/0w8abyhN8HTPeFzAE8su75rl0vmgauaWb8RoS01H15K+4vOP?=
 =?us-ascii?Q?wn7AqXNGolafF6GkGg5mi9xNbhlktEqCbkBBowrJD3FEzQ81ai0gqs00WPG1?=
 =?us-ascii?Q?UrPa9+lsLCTy6MUzXo4vX4aOkiNw/yE/7GDj0BA2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb133d7b-59d2-414b-f6e4-08dbd9ef7135
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 08:57:42.2395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ICyA1x9NtLnK8KsbYDvB3kFKnuMuZCqeP52O6uuvDOe9/QZxLS3SZyke+BPpF0HOr0tIIRu6TiaYF6G6DgI7Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5406
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/vdsc: Remove old comment about
 DSC 444 support
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
> Sent: Monday, October 16, 2023 10:51 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/vdsc: Remove old comment about
> DSC 444 support
>=20
> DSC with YCbCr420 is now supported, so remove the comment mentioning
> support for only 444 format.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 708c6d4da0a2..a6f15a51e82c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -123,7 +123,6 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  							vdsc_cfg->slice_height
> - 1);
>  	}
>=20
> -	/* Our hw supports only 444 modes as of today */
>  	if (bpp >=3D 12)
>  		vdsc_cfg->initial_offset =3D 2048;
>  	else if (bpp >=3D 10)
> --
> 2.40.1

