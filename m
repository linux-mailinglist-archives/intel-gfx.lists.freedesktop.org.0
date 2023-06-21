Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDA8737DCA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 10:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5D910E0B0;
	Wed, 21 Jun 2023 08:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7697210E090
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 08:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687337360; x=1718873360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EP+XrZz65lUlXRxG3fltaTEPD4RkKiXGYecPX8D5kvg=;
 b=cwCm/XAoaayGsB8ywQz0cJGJ0KE7t69MiYT0lg6Aqwpe/F93wpWW0V3i
 +O2CLwTudu0+znvIc3dNRZC6nmCCYSkiTXqus94crv7YI0CF7EKZK3Foe
 vOGtQh1sgpdgTUIwYMoNZT8mIamcdrQzu6sMEdEY6ddZra8y1bKz7hlHc
 rjz4MK4tuF+jwi7DDw6XNtGXtr44HArI5hAygjZx90qnV9j0XmuYKSCwf
 L3N7yT3Eqwi76Ly05zicAhiW0NACSbQHXqQtMAaxlU9uqt13ZNMT7tbwj
 m3DwxkX1/FwRxNGqiJ92o4yNymgzDaw236Smj/X0nxX+8RlYMoall3UNY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357607511"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="357607511"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 01:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="717556896"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="717556896"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2023 01:49:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 01:49:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 01:49:19 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 01:49:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9Jap+CPxMQPlTmqsYgY/0qWFHWJ6Nbza+1REN1h6SqHlEZE0er4yYhq4Isax7HSRWwS6+bOPvTBVxSAiqcSNmk8oCo5QFgO/xq/xxKUcr5loTracVlnikG4n+x7jEHxZp/XRINRXiSgcoHkRhcb1m4+kAB4QlExcIhYRbef7RhUwlp5HURhs2Nzde0Kas+ob0LNnH7YLRi3IBx7LaoG09/a0+7oElVzBUJam5VW43Zy1eh/VQv6qcwQ7Hiy5bmcJI3QiPx106t94LwH3L/oMSkNDJKw4fTROqYFKN2x9f6KjMaGrA0EyHbmEEf6sxooZmjy8b5YPTymRDsdxckdSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKnDAUhfDCJW+T35cf5wSAL52Wt2D1eR876PJT7vxK4=;
 b=aGlL/Fc8H9mg9JhMZMps8k755hNG8Fjjejxx21+zkJ2432btFS+Qo1T0UhL4G95rfTOjlgdPnVMCWdDkQUd+fwLtsmU4i+sSimAhlFV3N3lArNMs3J3zzmQzoviE/0F7NhHfFITDqi1aSO7Oj7PyPnVtdVHQJaAfUoxzxGz5+5SyXYx2CCbrvr1Hm1tBEZqKii+2/OWF3DRdAET8vgy2MT3a4ZsQz8FsdmqwbKAkByAcbLrD/MPeWUgNwUQN1CLp2M+0PMthWb2RUdBnuGmnA32vFigLPoZ3uFXjXCMnmvkZxVk+SetWQssgwhFf/1UDKPV81P22aoGwHUtCv7SYGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6983.namprd11.prod.outlook.com (2603:10b6:303:226::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 08:49:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6521.023; Wed, 21 Jun 2023
 08:49:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
Thread-Index: AQHZoyNuf+s6uyQC30yk6lSR4X0knq+U8+Xg
Date: Wed, 21 Jun 2023 08:49:15 +0000
Message-ID: <SN7PR11MB6750DC684457557AB55AC161E35DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
In-Reply-To: <20230620025243.979317-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6983:EE_
x-ms-office365-filtering-correlation-id: 38444441-6dfa-4a4f-4bbd-08db723464b4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IewP1I/T6FRvZBdaDPQJa5q/FifLJKJTpeJDhwSPdh2/wD2/uF3XG9gTfEmMoWWwAmeldhVc/R82n8h7sEiAFEOCUHjFrIbVX3FGEi3P264pF0TlA1KAY/oESWgddLBp0Y7vtBBzjAuI1CwrTN+sNqTKyL8DuvAgYR9z0v2rPrl74TJ0AaxxvRvBPzJpLOsJoLhihTCWOASFgE4UHPKJ+q1NCkjHVLEfxnulqSAcbq50vn0wmeIzua7f26UWICN32vCI4PTQDdMtnAemsTWLtzRV6oxLTqP2Y4NzkUxxvfwmvway+F/Zl7GoxMUV2xJxqgzfb6a5OjTf3DQcua2Cd+lx/a0LGAuzC5LcCMuEtQAnToaQ2lL2EPlYkyugOBgztyVBoOwJ5Qo6HniVmIg7lYYfzLcJvfE2SHO+MicGgt/CWqfqIPyPUdVFFlJd0rlao+8jrICJGCHb1xJmsbKv3qEevXGdzH4WMw0Qq/clqpd84CABUj9X7F3aKv0DJOx/aoz3fkECnzx0/iVTGSh3RihJ1duAgc8+/elCE0Y+abZYRs/fRTpsOTFW8GwQF/hIM9+0K4NrhRKXPk7srUBWPL0ySH1aIJVOjTl04I0b0hdrHuLFw+F255tjCyc5elIG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(39860400002)(366004)(136003)(451199021)(186003)(33656002)(5660300002)(41300700001)(8676002)(66556008)(38070700005)(66476007)(8936002)(66446008)(55016003)(64756008)(38100700002)(316002)(122000001)(82960400001)(86362001)(76116006)(4326008)(52536014)(66946007)(107886003)(478600001)(9686003)(4744005)(6506007)(2906002)(71200400001)(83380400001)(7696005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ng/HIEhhPtFUlM2r3MSdQvxEuuIc6kmmSpqi90NJfwr6KiMtPhSnPSeRIHuw?=
 =?us-ascii?Q?FgGIQGMtnz5ZawYbhXiuWr2/+p4ROYbJgGH0Xv1/YbQ1WfRZ6A6OuQuFHAAF?=
 =?us-ascii?Q?lU20qw+jAZnhoLOX36jj5AMn0KbE565Wx39Va1oaWMSzhaiWfq1LakKNOTve?=
 =?us-ascii?Q?TURZo4zOJBHEIgyXh+iix0hLLPRKWIalNU9xBGepxFxPeOm+7R1buU3etaXj?=
 =?us-ascii?Q?zM8HW2DMZm42lFWNipACK8G896a0pbYIrwp5O4IrLmBUBWPd20qzZaDplp9I?=
 =?us-ascii?Q?u3zB4fR/O5+kYuLkV1Hz7hlcJhlO/P9n3kTMmhx9aSgT5trBBKeHtWd9Kaqk?=
 =?us-ascii?Q?NSU9gSpMbk3SbyfqOYBSC3phPu7mcAxi3js3LdO9e1L+6I3cCSlEqDVCv/jt?=
 =?us-ascii?Q?X6B5o7d6j+xNyppkEmEdE3Gr+FwLSyCrnMA48JXvA8Z1NaHHvCm11n/hAw5W?=
 =?us-ascii?Q?hoFHcsPmo6D8bsdUYMbIpT/4kyMkXg3nOk73wuD0a6RMd6HkD88n69f3b9wk?=
 =?us-ascii?Q?1YYCnyOdDi7qPKsdxliLN5LYfDE22RmI7K42FnG+8rr9FRovJWjFHJEwMDsQ?=
 =?us-ascii?Q?sEsj3lKljPTch7ZouUAzwAqll4E19vGaWIW4nCCn8cZqeq5zb+rwAyyz2UmG?=
 =?us-ascii?Q?qlP89cNJgIBCUxdIRDOyXocmermZSwbICBYL9Ulfgd/6WNhzlktBiQoW8O/R?=
 =?us-ascii?Q?UTDuwcsmKgeB6V52HdEHNi9rLo6zkHtcGo6gVx75rp1LsyAPqMZzLTexYPjc?=
 =?us-ascii?Q?1AxYtLBM7tbrYz8LFfB2VSsUGWd3GM+iuGLG9SQN6Mez1QIejXy8fiP2uZRY?=
 =?us-ascii?Q?1sgXOOCMjLRq8kZaR/zkMJTI23o2lSK6aDFYaw/ACZjQGrVZmLhbqvV3mUoZ?=
 =?us-ascii?Q?WCiqxdFhCcogXXVjPT131G7qOQqy4mW2w/pGzk4mTNtzqA0fAI8OzQYNykxR?=
 =?us-ascii?Q?bpFKDqHioMg6MHHiKr1gdiOsRgyNT1OAmHyQcAA4ck95fnJ+zMf5bX0m8Qgs?=
 =?us-ascii?Q?SSpBUPxUseygmywsTg5x2VaGUU5FEIIERXd/xgNtMJybCIGNpQCnc9W4DJs4?=
 =?us-ascii?Q?UC4479c/Iuep7p4iqRWGuc+Quwf0nuoBJVHF1nwUL8arFe2wMytOtINivqTh?=
 =?us-ascii?Q?EYk9j8iaHWB9+/2CY/3RcXAaTIY2MF/d0IOepW9f1Akfh68VyFSMr+1lMbu+?=
 =?us-ascii?Q?NWeExzzyQ4o0fszYKGlh54I9n7k6As7xiOmhRVRI5d2aHbufDvtojpPypodo?=
 =?us-ascii?Q?b5dMjJshsPdCFNj70Wwi9NBbiDJm8WOa+we1IK8p9pZ0PYENZwA/raG9VhtV?=
 =?us-ascii?Q?2xBffEKeInPqUJLIaVsTUAnU4s3MHlALNhm/+kFlX3m7GORv7oStxfaviyJM?=
 =?us-ascii?Q?rgZONPffpxWyheux5xBNjREYuaTOix17Uyy2TNVylNdGD5qkBIfllREexnXj?=
 =?us-ascii?Q?B9B21iievBRZuuZL8WIq0k+GeZVrj7KxNWyv26ooGKv+IOqv0BgCzsiB1U1w?=
 =?us-ascii?Q?kQ8kYaAlbCvXBisDBLs+ACmvou99/O/XVhCu7TAXf3oqjEQ+U4+UqXtqSVgr?=
 =?us-ascii?Q?OZuA28AA3ik1tI99aFg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38444441-6dfa-4a4f-4bbd-08db723464b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 08:49:15.5976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mPQn4fldsVJ8Keo3Oj64+PvrcuZHf9BDCVVjhPUwxVIuYYYjPohXd3cUskqfGsaqDBwqY8P8GKPBGejr86IGLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> As per the DP2.1 Spec support for UHBR13.5 is optional. Hence removing th=
e
> support for UHBR13.5
> UHBR10 can be used for 6k panels.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Looks Good to me=20
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9f40da20e88d..54ddc953e5bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -465,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	};
>  	static const int icl_rates[] =3D {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000,
> 810000,
> -		1000000, 1350000,
> +		1000000,
>  	};
>  	static const int bxt_rates[] =3D {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000
> --
> 2.25.1

