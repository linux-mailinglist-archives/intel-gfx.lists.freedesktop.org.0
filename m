Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B1A51B80F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 08:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2D610EDFB;
	Thu,  5 May 2022 06:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6BB610EDAC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 06:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651732625; x=1683268625;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i1sEvzntsW//T+ODElDOrS1Qm5rLirQUBuMLCPhTqQY=;
 b=hB0gFSJ3Pj6tfOGftzj7S2thpYRZ/Et7O9RVXWhfUGgK/2x4bD8q8Zp8
 4EnCphJbX4UvVqgJdcrlviy1iiIIi6YdLegibu3QlQprykzPJ8dNduZVu
 uzdxMs1YLygw+pFhgVW5hVMP6x71WUUnGKv2OoSm7ly1m9wkh9c6b8S6u
 yyEvatLMdDK33bYV+aRde2CkV7hc2cH1ycS206QYPmFwuFOeryqWftyH8
 337r8fzLo3D6k9UWKmLhS/+TQOQqOO1LWhuG5fb49BCm2a7aLduUngabc
 /sYKUhZimM/GyWfAF7FEnksjcet7lAV2F9lakeRpNlPWHcFO7r6fTjObi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="328557306"
X-IronPort-AV: E=Sophos;i="5.91,200,1647327600"; d="scan'208";a="328557306"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 23:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,200,1647327600"; d="scan'208";a="585168197"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2022 23:33:50 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 4 May 2022 23:33:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 4 May 2022 23:33:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 4 May 2022 23:33:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2k978CVuwL4J71K6sPtRVHBDQAx3JDeBG53Mku9ot4zSB5XkFHalq9YwbBVi6zHQofFmHWQV3mzxBMEBwOFAH6XJOOtqLIdiGroLK1RVwxbAFfP6pKvYMarxKMc3fMhu4ttpnWtDcL0CDHuI4k8H+ru9rFOz+HghSPb0NJlFqXe4neYSeT7x1CGglToak8jDIB6i6+Fj2hQixo5/nIHtz0Cxwa4RvWB8/x7GxzUu7VI5z74ZK/ORGgzh+gtq09gfHP6Xby2SnxZooCOvtwIfx+Gf8epEGxMLy/XBkxVBxNZzRxUxQgef8LuTnOof4mK3KsbjVAV3pvaJMAULkdQJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1sEvzntsW//T+ODElDOrS1Qm5rLirQUBuMLCPhTqQY=;
 b=XikktIxkmdR/kSZaqM8Y/UPwCMeCYB1Hx0nQJVFDQeg2atFYmQjLYkcgRXyRnCPMNL/k4FxhHy2iPHurSynX8P9onctDLnZQPN/AJ5U/a1LcS9cdd5nJyEL77JhtktKei7Tp+6GfoVbtwjf5Cmn/hoCa1XisyM265g3XAHfUqTq6uGdGUOKVQDNDHQhbXs02CsiZahn/UfCa8TY0/Qa6lkOELdS7Stsz4sqWW3pvojh5P+3T1KP58xlm20pGoZnzG8OK++1EIGJjwu/Aan1uix4DOJPemHtLGAy07X1CZJctbnGcjNoGaW7HWpNz8CpRIlORWptdWsC5qLcpMzpBww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MWHPR11MB1248.namprd11.prod.outlook.com (2603:10b6:300:27::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.24; Thu, 5 May 2022 06:33:46 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d%7]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 06:33:46 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYWWXWrvMGjms3kEmwnEgqBlBTi60CgGEAgACO2+CAAJpEAIABJquQgAsQsFA=
Date: Thu, 5 May 2022 06:33:46 +0000
Message-ID: <DM6PR11MB3177F94FBFC7A99A1BD4A2EFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
 <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Ymkv9sCuA9SwUIvj@intel.com>
 <DM6PR11MB3177FDCC1F636934C2650DFBBAFD9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177FDCC1F636934C2650DFBBAFD9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e4204d8-1e99-4f6e-d812-08da2e613546
x-ms-traffictypediagnostic: MWHPR11MB1248:EE_
x-microsoft-antispam-prvs: <MWHPR11MB12481E65BF7674A6E8003EEEBAC29@MWHPR11MB1248.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /vBEQC38RZvFJZUk3/sVr8yjto0giqwI0IypFt5tUsl5rNCYdDbeB9DQWjp7LpfnC3+cx5PT/GJV+66+Huar+oEI7DERareWal4fp+nw6mMqCKeHEl9Y7yO8oHcrVDr5/nN4+mCUubCLutntjxSnXDhlKxnPTCEcjtBtkInhL8+S7TRDC70rimfqdeq0QET/qsLHcyiZ91cjKbNP/LnH/2nBtiE3q3FCTTPnlv71GqUJfn2NWIu8C3U0HMW/G3bgCCjuJfTPVpw2T5aCo24mvrSuhl05wwG0tRFYNNQWlEPt2oOOdRqiA699NA9UrSFMEXfUlU7EWqN8/J9S7KJZ5eXaRXvQQWGsI8iK2Ho9Y49sjWN8CMOwbhSPKs+OtFm3IXWOrdNdbclEt3zxIPbOf8blYrAVJOs9qUbaz1EQs7fLgwzhIqc0J3bBz5ejjHstgMorRV880KqGv5G3OzV4ra20jvFn/wPP0iNKYdQD3hvV0/kNsMlqdN9OSpggNDEC4jvUcF5iEFcWIi02pZpeYLuDcYmY5qbLKXZjmLHJ3R+yehOHgFLgXarUQIVXjjYrNLvFLFR57KmSPQK4nKZnkeR2NOH4vZQYZxkAPXb5WxVIe15b6mG9Ux8aGf7VheZLaxdlStmETwJK1iu0zCtxt3gPg1kqho3TU9ZpTP8P1yBZuCPuXcDQqdrt84BaPmh1E8hsJ0PUUuGJBJDConqSuw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(4744005)(38070700005)(38100700002)(6916009)(86362001)(54906003)(82960400001)(26005)(33656002)(71200400001)(9686003)(64756008)(66446008)(66556008)(66946007)(8676002)(66476007)(76116006)(4326008)(55236004)(83380400001)(186003)(316002)(7696005)(5660300002)(6506007)(52536014)(508600001)(8936002)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NHIfYkB+HDXzgw1hqj0+wugktm2VOCY5nWNnaHYPiwTe9cuhV5S8jp8BtT?=
 =?iso-8859-1?Q?isuWdqxeED7t+qVqFNMfZYjc5gN36j+Ug9jRwos+zcXGvHTckcGz9b/kUJ?=
 =?iso-8859-1?Q?CSTcF656D9aZSbpdinASKdM8wKw9b+DXGKwx11leAFEUxRVQHR9UR50iLF?=
 =?iso-8859-1?Q?UFsXaj5rLMYd+j+SXLPmZGXHAosJMFu9EdRfWDVYCchrihlSnF1FjyUP8C?=
 =?iso-8859-1?Q?NPqyqTcGU7gk1XFMNbRnR5hGwd3qRMoAtoz1AlOOm697WALYISMvQxpEjE?=
 =?iso-8859-1?Q?n7CkaT2+vhVYfk6YFdIGB4XdHS34dzPJvOrvGXNvvxgPbQNNCexkyZOobN?=
 =?iso-8859-1?Q?VwAYQS5Wc36cABCE4vHktJQDP0KIrWgdD32VIHrvjw/w8TmLGxBGUGd3N4?=
 =?iso-8859-1?Q?cOWKWsFGwXla/hJczq8ofNIDRy8gIMkoCB1eUUiHZ0Trk4AOlsvLwljYMk?=
 =?iso-8859-1?Q?5YpuolMJD2pzUYs5r4z55wP30GWDgMg6i0aZSjHTT8WuJ0o8a5IYTbyif9?=
 =?iso-8859-1?Q?8uaIdlXyohqRITIS2pwEYfMzfDqHU4P0brDxpY0ZIItjSVxIGDZkrpM3qN?=
 =?iso-8859-1?Q?DrKME165hGpRWtK5NosaWEfqnQ7g2qCvP9JNsXtSkRllMdhAYTfByhjQNT?=
 =?iso-8859-1?Q?tijJ1bZMLq2VvNwnaWIPXxrfLluFpwmiWyM2gcQC2rKBC7m+RUrpewq54N?=
 =?iso-8859-1?Q?va6js5tZNWFF7Pu4aEihe2c6/M17pC675EAJNq/s9T7ippSrDE9/exBZlj?=
 =?iso-8859-1?Q?xDuhxmMb9XMMXIHLl8P6rzOAvpJI4V7rOxLI0PIwADnmqmDGPd3GtMX+I2?=
 =?iso-8859-1?Q?0eH/uVYOqx1aujhKqO6rw4CUrNhUEPgTzab8wnbmZkz5KKdTOFfRRa0oxo?=
 =?iso-8859-1?Q?HTM2I8tYlSi5/4ipOElP3cq0hRDy6ec6AqkhMQAzxsVbhH8wM80xSVRogo?=
 =?iso-8859-1?Q?SkBexv0anFqY6GrZkFuNGbXB/BFhBc0vj1ybL4A4UdAZVub9T0xAw8b7ux?=
 =?iso-8859-1?Q?FHVnYJQl1nrEZLf+MGM7iLbKqPfhDUnlCqDV4aDx1FGTU6vfEGgkU1AmCx?=
 =?iso-8859-1?Q?irFSLReUgx1lRhnuQBudG/eTZ87bFbQRgWYF07de2Vh0S5B4AzfLltntKS?=
 =?iso-8859-1?Q?Nj81NZ9vFmWfv1PVSc7zWlv4aIYvn2Lf/wZPY3o2kcY71AVhcmkVodiixs?=
 =?iso-8859-1?Q?8NUOeVBGG0x1ImckH2byVASdOBtmYd1CE2k3frU1bFF392gWc2yYnGnEkm?=
 =?iso-8859-1?Q?lqZUMD0kW/Ay7aLNEOxZtNSBaPYyefIlLYg+j+cSoRyL4nGqR7ngUWiced?=
 =?iso-8859-1?Q?em5+BsDzftXggcbIlqhi4cqhtNe+41VMPmN5tct+EqmZx29dFBuNJ9Tf/s?=
 =?iso-8859-1?Q?/dQWT4zrcygoOk8stPd/G+7yGqr++XDDKHbexPbjGaKiAK443W7Ps/fqa0?=
 =?iso-8859-1?Q?28KzGjV5frWPnXT0Sp9D5znAqnQR7fWAfG/W4mnhyA1NYf6GxVomhN3BBs?=
 =?iso-8859-1?Q?D1gHb12lCR55Xtnp5XtqpSteVWAFAPrnL3CvMQnOJDBhon/8CgCVXZ9Fh3?=
 =?iso-8859-1?Q?chEbl9vq1AiLxizmUc/UgZVwQiQqpzrf6fpa63sNVg/V6KvBHCNeJmOt1u?=
 =?iso-8859-1?Q?xrLlrwqrz9lHgK7mj7ArpT8extAgdPL6Gh0UUjuRgfd73T8TPFBRQbIG0M?=
 =?iso-8859-1?Q?vgmp+u+pUK1/UmCi7ShBBD9ubHQIIc/y58IxdpiDJ+d47lWb83ONqCdsmt?=
 =?iso-8859-1?Q?40JSXX4iSAtQAD6NzroURMaC8RxNsETDSJy2pw/MnVlov1E7dw5na2rCCB?=
 =?iso-8859-1?Q?Tenn/5i03g=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e4204d8-1e99-4f6e-d812-08da2e613546
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 06:33:46.6418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: szW5xnRZgqGsD75/utc0JVWmLvnDE3Qufw0bwTC/7AyN2D5aPtOp01sAlSrT5JJwN/waPJ0hH7/hhSpY4ebRXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1248
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > There is that GTT alignment restriction that should be mentioned
> > somewhere. Can't quite remember where it was, maybe in PLANE_SURF.
> >
> I checked the BSpec, and don't find anything as such specific for Async f=
lip.
> I also cross verified with the hardware team.
>=20
> > But I guess the bigger question is what is the actual use case for this=
?
> This feature is a requirement for TGL.

Can I have your Reviewed-by for this patch?

Thanks and Regards,
Arun R Murthy
--------------------
