Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CFB59553B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 10:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87CE8DA9A;
	Tue, 16 Aug 2022 08:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6922F94B79
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 08:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660638510; x=1692174510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SUvRP4aK81J+9mZc2hXEJB6zK4Tit4BEScnV0Z+0h44=;
 b=k/Zd96/dWnn+s8b2bIh8jVuCBxsjd3XqVvCjedtuZ+FaCsiiWO9rGBK7
 30STBWVG06G7wh5RibVbEuxd2lAEf0gLfma5rMlx4HZ26bnfCTEhvGL2S
 k7VxijJwErGYlLdZZAqlPsw+51uTssNNy4fAk52/03DxgNeXsBSn7YtgD
 BxeKz5jNg1qX404E5ltyudhtwyzT+BF+hYlbgb3O8bLGeerV6FtLwFXRR
 SvEvHGde1lFDOy2W4gz8jWs8745pRRyMSw8h6PKcY1V3oWM1Q0mszyt0+
 thgbhoFfxyuo+v1+wdSjz1NwTrqv6rFr7xAvjjIUo4QBbDNmiQk97pTvn g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="292956755"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="292956755"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 01:28:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="782944389"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 16 Aug 2022 01:28:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 01:28:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 01:28:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 01:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PAoph7z2B640HYNiygQnNR0zUWtgWLd1OuM7CNAfZJ+FiF6cnzxdDOF879CN/ecLvcGf36j0ibBRcj5oa7ozJR/nQrVY5b2UUE+sl2nKRvLeMfLt+wZAtGiWRRssMwSOSOxZj1Rd1XbaDQw3wO6kxZigK1M8jYz61O1u+YnHwe6CneEerC22kbVk7DNN9FTYBOE2itk/Wue3csCxN7pBBxUDfVOadZdj2UeCK090U+WqpRbR7UAiWE0P4Gmrid/yjuyYEWS3zbwUAXaIHbiXJG6TVU6V+m3bNcIjb1nqn5JVbUrbnD1GbZwAjMtMyMKeIfYprcFEfD2ViRLmfxjR6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUvRP4aK81J+9mZc2hXEJB6zK4Tit4BEScnV0Z+0h44=;
 b=JHD/T9PS5oIPbPa98Jd3GQsIQmXsSyFWrTMO0oh7KIJn0x9CTviGbsHz+8tOXyPzsSTufHFUKGo/KWqNe7GQ7acaPYJL7NwwxHVLh2icxkdYbM9fZTK4BR8cSOxDeetK98AKQV36nomncwNGPeZDLs2IAGjLIrBxcvxUoPlwQMrPNAJLNnCGLePws616QOCYF5N5CO18Y1Q595nUf8c79rjdQL154Ckd3fdUwzab2iyGDTzvnNnJ+wjwxQk1ubv5UbG2jwl2ujWwnFM4J9tZq4z0tPhLGr0t5XMsPX6iaZUG7CSx/TeQ/lj7jSRllznB9FhrZcu82/qDsr8QyJa1GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY4PR1101MB2343.namprd11.prod.outlook.com (2603:10b6:903:ba::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 16 Aug
 2022 08:28:23 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 08:28:23 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
Thread-Index: AQHYrZVuNq/VAOfpUEWgx10VSAO8b62qtWYAgAAir4CABhh/YIAAQUEAgAAHDuA=
Date: Tue, 16 Aug 2022 08:28:23 +0000
Message-ID: <DM6PR11MB3177E12C1B1859D16F223170BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A0CB978DD0EA0717418BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87k07erlj2.fsf@intel.com>
 <DM6PR11MB3177D1EA57E1C8F1AE2EE845BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87o7wkr4zb.fsf@intel.com>
In-Reply-To: <87o7wkr4zb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 723f72e4-e66d-4945-8e61-08da7f6148d1
x-ms-traffictypediagnostic: CY4PR1101MB2343:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HtMV92KHmNgZTfGdtHZdursEL3uadxZnJ4Oe8XKGnyvxXekFPVPApnlvkAP7JdJ70RoyWKp3l6n6ddR0JnVQ2HIH0dTZHvxtcfa/jD5mf3yN5AG/qEgReYzjI/9VS/0tenktu/C0Ml6aNTsWiVIhoIhziGYjLp7CcGT94F0HQSCx/clA1lM0Cov+EaWPvWwK/eN9KRXFtVywLyzsw0xlm24Tb/ekYyXt0tbCbT1sgIyjciuVwoVkxbPicbw8XIgfZJSATkcoTBH9lYspqyZjJIEphCoomn4fVgQTJWrwPqQz6vZsU3LqUcn7hVi4VkzvlhGL/k+TJyJc3aTqyT01fbwjpABIiiFHoa0s7mHYLhDGK6Cxpwb+6Xx1xnYDJ+45mhlufXqNziSMynV36iXLuS1IiANGAH+bpEW+b0u3/i2KE3edyZrldOdTACiuw8rJ/r93V7oKT3iK9A0wXVDPEqlAzP6qPslwPdcoxvBZLm4ZbdaHy26g6HnqxZkkWw1HmiZKTyf4G14/yNmwxtqXhSPLbQPmSnrXOVcZQbs7/nn6Znz5M14dAYhzrku2XLxkZ15lCY96wlEGO5UMKQzFgAgLE9YvYhLPgfcEox2/YtL1FDz6RBeVpp0Qw2m4VwZhOGE54jffUUDAEWtLjAd2IBCgOfOQqusdCayb0vwlT7PZZgdjDfh/AeOwxl1+SyYTAjN7orqRFYkml7XrGTABGz1TXfyxu/mBCUelS5E4q008V20Oaw/xP4vt95tE9i9ZKvLijBma8zRwgG6EKFIfnhgO4fPfxKYr7KWmAbf3D2WThyCguR4gOQAybGHnWAT1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(346002)(376002)(396003)(4326008)(83380400001)(82960400001)(122000001)(86362001)(38070700005)(38100700002)(64756008)(8676002)(66946007)(66556008)(66476007)(66446008)(110136005)(76116006)(5660300002)(316002)(52536014)(8936002)(2906002)(6506007)(55236004)(9686003)(7696005)(26005)(53546011)(186003)(71200400001)(55016003)(41300700001)(107886003)(478600001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZY1y+CMOZoSdgcAZwZciWwDgf1Er4AhomtRgLyl7GRUAMQTvbKGv638/bNo3?=
 =?us-ascii?Q?gpAHs7Uki0z15fvnesB6P5qYx9l/W07TIDAkV9WrSEXb5lUh+bRACqstPOws?=
 =?us-ascii?Q?hcQ9AZAJkHFWmpgdtq+hxNPQzeqRGZBDd6ncMj0Xp21Urhywxhy0vYh60Ppa?=
 =?us-ascii?Q?dTCuoihQoZj8WfyMX7/kMdZ9Wqzbc1sSynYzbUOpsfYd5jhhIIJ/eVgE8ufJ?=
 =?us-ascii?Q?0FHcCNmByWF0gqgBf1hnH1viMlWGPMIny/kOjs1lTnUnu/epkzb8+7kRvBzf?=
 =?us-ascii?Q?7jBSIT2XfHhMziWYJR3nlyWLOXOmwnKSkk9MZksAx53wTZ3fcezf+AiOYJWI?=
 =?us-ascii?Q?7aDpt/p6L95wWNYx9ytxOj21G3Od38QHvIEI9KluJ823fCNFHzXBhg77nv9l?=
 =?us-ascii?Q?YHhW52AUHnyVWvmcP8dt/jrNAwrYqtg0Fs2jA0LkZyngxgh2Xx/y74HoE47q?=
 =?us-ascii?Q?/i3YBJ3YWhtb8pL2T/+nqYV08QXthaJctfLQUdvVw6Zldmw1yiEQ1wWpcQE0?=
 =?us-ascii?Q?hzw0BiMO04KgCa3LbOyRy/dO/Bv9ziBPotuzbXNvoG42VoaGxOS/IfdqJSxv?=
 =?us-ascii?Q?i23Ar7RPNLKQPQkZ7Zz6dg6E7wPpAWiCjx42OnkmsF01E3xd+tbDOIdzjRoz?=
 =?us-ascii?Q?2GeI6xr9o9NwUwJXGG7Y7vRCSK0zdZQs90eM7wGcYwXi4JNDuO3ppz33Konb?=
 =?us-ascii?Q?h24M01SEKvKSm9loRRPrx35emJL7SzzeRnYYYsNvz0q2OPGXpJdw969mjDrN?=
 =?us-ascii?Q?2H4nkk3UyyIDAoTHpSgSL8b/+2OtaOIfznaDuN3FGSkMfwQRjd/O4KWub6NA?=
 =?us-ascii?Q?yXQgSMPLCRVgoW6EV5AkCH/cNRxuCiVZTJ8ISoIgdL8feMJZOL5xja8DAEFj?=
 =?us-ascii?Q?F+U0mVsmh6xQ8noyyOLrd4aRHs7+aPHXiszX6HyO2HNe3SBYA7rCx5YS5AU1?=
 =?us-ascii?Q?8oYs0+yLxCT2th1nIZjll1sOYWeOOzQdL+Lmb06jq49tEqFKi2kPJG+D3otd?=
 =?us-ascii?Q?Tnj6ISqtNoZHwHfhuH14kY3KP1xagx7ON7fMd1EtG1PvTUmeN/WVmexMvSn+?=
 =?us-ascii?Q?r4CZBNivIrcV9YXOAfwAFqTZ37978vcEg13GSEGXN6Uw1lcP4P+0LQ3oHkQH?=
 =?us-ascii?Q?rXeMQ4wPLSGXiAXbm7TrgsPMSor1nmb2h1Va/wFaB85baVeMYB7ZqMTlTZfe?=
 =?us-ascii?Q?pQrtYGTbC60QDfWwESKs+KxIMuLjbovvLHP9UMTRx0nqpQNtdYpKo6kA/x1s?=
 =?us-ascii?Q?REWwD8R4eb4AZHFT5xkuwkgzuA5Gi4K+EmO6pDr213pEKSs0j5+YNpshaLou?=
 =?us-ascii?Q?xg7+YwKw0yFlyQ/3TmR0fBLCaIyN4UmQ3lsWDRkTg97dpG+oi1C49iqtvMEC?=
 =?us-ascii?Q?9HZbOxX9QDbkEaD2xVYGfgnsZjZf6ogGQrymOb2LQP0ea+1K441tp/++SJBz?=
 =?us-ascii?Q?IOqweR3ysFel1YJFd9roWMZqHORg1ymEm5rsHCQYHZTdGBH9ZXv0n38dfk8x?=
 =?us-ascii?Q?qs3CkuQfEzAWo/+CIbClctXZ8PUcHobhbQejQyVHjgcd25tTm8kyleKWcLtN?=
 =?us-ascii?Q?v2PMwkMsRrKwtFVH/KwUj4BBgqdt9q5S3QqB63FF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 723f72e4-e66d-4945-8e61-08da7f6148d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 08:28:23.6282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LBDDTukEtAq0UUF6bQ10qDMYE/80g3tJQFy2DO7ioxKaz4lMuro2EY/Wq/8xqtZVYGLL/Av+k6qbTLDm3mWfPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2343
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, August 16, 2022 1:32 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio und=
er
> display.audio and display.funcs
>=20
> On Tue, 16 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Friday, August 12, 2022 12:33 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> >> Subject: RE: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio
> >> under display.audio and display.funcs
> >>
> >> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> >> -----Original Message-----
> >> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> >> >> Behalf Of Jani Nikula
> >> >> Sent: Thursday, August 11, 2022 8:37 PM
> >> >> To: intel-gfx@lists.freedesktop.org
> >> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >> >> <lucas.demarchi@intel.com>
> >> >> Subject: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio
> >> >> under display.audio and display.funcs
> >> >>
> >> >> Move display related members under drm_i915_private display sub-
> >> struct.
> >> >>
> >> >> Split audio funcs to display.funcs to follow the same pattern as
> >> >> all the other display functions.
> >> >>
> >> > Audio is a feature as such so wouldn't intel_audio struct stand
> >> > parallel to
> >> intel_display?
> >>
> >> For i915, audio doesn't exist other than as a display feature.
> >> Display is a higher level split here, parallel to gt/gem.
> >>
> > Will leave it to you, since you have started this huger series containi=
ng the
> cleanup and understand you also have some more cleanup in queue.
> > My small suggestion is not to mix audio with display and let this audi =
reside
> in i915_priv and let it leave in parallel similar to gt/gem.
>=20
> No, I'm going to stick with this hierarchy. Audio is part of display here=
.
>=20
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
