Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D73545612F3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 09:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FD710FF0C;
	Thu, 30 Jun 2022 07:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2219610FF02
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 07:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656573123; x=1688109123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u+lN3+273tyjozJrLV9IVPYHIJV4vfQhP1bGey8qGas=;
 b=C/8iK06mxUwoZfldL8byRqblJJy1xSfTUBidwTAapyba2u63s5l18G5m
 wHouq7/IBhRQq8tCEGVTlb3vKtYLy4Jm+hvF6d6hlIeH4Unhdhz/Up5cv
 sm/miAWA59dZPBIiZ50eWdlQqOvXHrHjavFjpv8/gEMc3MdHzC8fKAMkd
 kfWnQK45mKPZRAFIsSnIfTQiBFexYPb0yb0ynnW8YC1jQJWvHnUCbBZQH
 iqBKus3v5KAwNMlyJiY6lXNDmpRjV22RFGlI2NMxBURnYv5VDQ0utHyLQ
 f0ntO0j/yDS3ph36A6xYqGpOb0UyZ9dCM1MtMnrld6QDUMe9WL/BX4fct w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="346257868"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="346257868"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 00:11:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="917932331"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jun 2022 00:11:56 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 00:11:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 00:11:55 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 00:11:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctgKsQMDM1jM6F5Vzn4EfJ9SQyhbMenHIdYn1JNlR7GgM7GwpHxauDHtdcDPGvvm2eWrYZWZmuWf/3Z3kOftBbP5zIdR63jZLu8jUBi6piRRRPwDJm3qkjBAQrEDHk00hhuyB2mtNXuLixz6DDpuY/mZoKCkhWVSxQxlpQfCye20FNQ2vfZVofj2ZJASBb6dPWRKxAp9gkEghn2BzvxGpDLrkz2mUpCrfsTYGVJy2x9kIAcH8YZeUTuDgKm/ONK4/x3TiPplGq0fIMrMat6SDkOt5m4baAnxidIfKJ9GUL8hdx1e6mmqDPLq2inBsN5E3WXxlRPdlTHucr4Ie2HLQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u+lN3+273tyjozJrLV9IVPYHIJV4vfQhP1bGey8qGas=;
 b=b7pk/jWKaVumGPVVRKZqpiYPZCuZQ8krv/toZEXZlOj7BNrCHuZIYXDwInhwI6gec5K1v5166gJoC4CKdfKchuof6PrG1+cH8fYzBVMJBAAE04DYsbOj9rZaE0ZAxYgW+089ZTTqOWqDnHk5oaUccH0VTwLkIwMTUIBxr8GeDKeByqvuO+pKgPMVvHhqcCqZvz1EcDVNFa2WJR7u5NfgFbDxgcT/9zIwncBJk0y6u/+n80D2OzmGl0qMQGXMkOw9M77Pi0ajsOoDNNjU9o2GY/YlfZOIUb+DXATF34pwnSRe+l5xxgIjiidPxJyZUInw3Ks7BYws4v8rWNtyCs2dbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN6PR11MB4067.namprd11.prod.outlook.com (2603:10b6:405:7e::35) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Thu, 30 Jun 2022 07:11:53 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 07:11:53 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: free crtc on driver remove
Thread-Index: AQHYjE5WXS4uUydQ1EaqS8pZiAApu61niDlw
Date: Thu, 30 Jun 2022 07:11:53 +0000
Message-ID: <DM6PR11MB3177DA053DD0AF72F434F2B3BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220630065442.830061-1-arun.r.murthy@intel.com>
In-Reply-To: <20220630065442.830061-1-arun.r.murthy@intel.com>
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
x-ms-office365-filtering-correlation-id: 379bfb21-9377-4b79-6854-08da5a67cf59
x-ms-traffictypediagnostic: BN6PR11MB4067:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yjyyII3FVS9hNOUOUohYgQp5wgXHeFRz23XjEi9tb7D1O9IBuW5s5M2WfZmUKhg8pmBjCMT7Yp+qhpSmXyLiFyy1M2/oXMf6B3F07b56ZAoiM3wN0t1osQdGmOLKF4kD4mWPIP+Et0xzpZGLerdY9WtofAM9ZcBZP1fgPIOFJu/7kj7wkHeN1BMyYuRrstrQUHPW8Zz9vJ575Rwq/gQQRuIGTqnQTDojFDstQaedcykSqxwg0GkkvKVOuQjZ+yPRXmaMjY7+Dr5rqG9j1bqI52z/j8m0hR0ipQxM0iYaG38GUDpCJHSP50YLWALIMaCP/lHo78qS8giJZiAi4Hg/1XJvX0UtGtXJgOZza1tkdmUDEq6IiIzaQvy+rOJGnHH3J6BS5unDrWgATpHVCwLAPirlzBeFLnv1vE4pMSUviDEmKKaiFpbIotLR5227Po/oJnid4352xg3MHnWwwekRlR1Xy/hEwUIcznEgVRS6su9a2TorDKKkLf40IT8dTO+jWphd/qbBJBrxjRWonU9UsW2j6eez9iYiu9pgHz9Wxw5bxbH4EVkViabsWVy9EOj2kAS/hZGUzVFC7LJ19cuWGejzVb4+AupicZ3e8GCTR1wLu8rLvrgIqltK1yR/blUh/fJ+Wf3aavQnqJLAUyMTkSDf8kn4/kMq+7vtBGOAtmZTCGCRNoK6W5BFpzQQQ4/9rh0R9vyTV0jTye336yDpZnB4C8HhadhiAylwMM8kwpV0HLCSWNSoaVlUykpjAdSkUXXDXZvp7xGwlLzCHwAgn1nA2X6+3eIlEdO18ntIID3xrQXCBeXH/S1vNso8ZivG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(39860400002)(346002)(376002)(38070700005)(8936002)(66556008)(478600001)(52536014)(4744005)(5660300002)(6916009)(82960400001)(41300700001)(2906002)(122000001)(54906003)(316002)(33656002)(64756008)(86362001)(71200400001)(66446008)(66476007)(8676002)(4326008)(66946007)(76116006)(26005)(186003)(9686003)(38100700002)(55236004)(55016003)(6506007)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XuLovgcehHhaaOvA4/+sIbZyx57WBjW0dEpswLg9Gq/M9WhZIGISaCTa9kYS?=
 =?us-ascii?Q?Z5IwStBTpOwrza9ldMZ37rRE295uRV6EGtMlyGjXGKGrQtnKS4VKpPodaKBT?=
 =?us-ascii?Q?IZwK5IseviE35ydXKxBxZTNwZUWVp5fAKzg1R61OA96J28ALR8DNkGfB2VgB?=
 =?us-ascii?Q?qmCKh6iog0VfsdjAMEVNq3PfrPCZnY0ZXXBJ0V8O2eAejLWgm5SXsvIG1aNR?=
 =?us-ascii?Q?3H6vgNjkEs3c4BJyA7ZYlZoHmIJTzl6Jmf87epI3ZmH/h2/kLniR8ABazA6T?=
 =?us-ascii?Q?DjVtOqb7TMQjmkrAqzKwVDLvWeomvglCrPAXbJ7td5NXIGlyJmdHCllXLJpm?=
 =?us-ascii?Q?rsXJjRNXGrWNaASR542MzGL3wtxBoWr6MBH5EYtNu/69C8jmU4hv5tglEusP?=
 =?us-ascii?Q?x62/8BcnmMPyHZj+Xh/RgUkABBLW5MKsxSYWfpV3u52sgalgD40udW3GZBJu?=
 =?us-ascii?Q?Qx6CrIl894HAlUhloWK3ggn5nB0YkBYAxQfbAQcx6BRaVnBL8EDj9riFVfkb?=
 =?us-ascii?Q?065v96LwBfraitBT9T3s1B/QbAgBBKcC6Q/saGUj4XOvo6jod/GGhRkHrQLI?=
 =?us-ascii?Q?Fea7FN8nP9KeqNggzRBAJZF56lCIZu/j8kc0/htqhUVGvEvXP98USvcyULGb?=
 =?us-ascii?Q?neem8Wwj0qLiMcou4Z6YeXW39HYgPSpV+tRRC7fitwFqB40M70VaRxg42S9u?=
 =?us-ascii?Q?mvjjSjuXAYbOgq1oX10tSH3Z5Nbh3rKSAMxWHdGVYcBjiW4LtHKecC+elPQP?=
 =?us-ascii?Q?wvjErCUn7of2VFUKOdvvDQiVzKJbFPj6W+EdZeZ+N4sUAlU13HrIlx+xKb/L?=
 =?us-ascii?Q?J76j0Hw5YwLMCA/Vmij4A1fXUtzRsjdNhQoGJDa23MZFzyNZiurNwP2R2NX2?=
 =?us-ascii?Q?QZygdP80vD4KZJzg+F27roqogKKwjfbXuErdBFWtZSm9ZWEg70kIgEThPb9h?=
 =?us-ascii?Q?DiB+UTxXa2p0st4ddpzBAbb+Bb3lxClR+XPJW+INnNEGjezC4OfUpWsDqTBR?=
 =?us-ascii?Q?+wtpZL2XaEdlyaXpCyDNpLD1gtrgP5DbmEpOncK2n6wd++HpV0DCWagbsS0T?=
 =?us-ascii?Q?/pY0p3yXyTlRRTVfZSMLltYCpOGz8UJX0dourl1ThPIWfjZ9BU7Vm0J2OTdd?=
 =?us-ascii?Q?Bhq/jOmF+X80tRYUILgp9FHa7623N2zUSceiMNeWrdSS96HPW8bu1kFaTAjI?=
 =?us-ascii?Q?PGw/Laie0v5/LMvk5cdC2HaedtzFbyBk2Ga74ImcdHH4iN8pnQ9J6Z36xdyR?=
 =?us-ascii?Q?NNNSf63y8G+Z6kx1gr0QX49N5IIUIpMQwpRpUjf1iXdOyBynJUBjUB7LDFY+?=
 =?us-ascii?Q?H+AxSxz5x/3VCr1jbGTyiBNPwlPjd+YIc4GL2HskaHW7RDzGZMHImrwLaf8A?=
 =?us-ascii?Q?k3akbsiFZzRDlKizHNkYEINubVnMMyZ82Cb1FKzXzRtnT5w6Fks0udODPTOW?=
 =?us-ascii?Q?uo9OdEq/8qa6JqlTXyB44FLkPKTxOXOFpT/xvGAmjaJH5w38Fxh1/Ia+Kel3?=
 =?us-ascii?Q?M+chdzmCUi0Dau/pw0vz3aMWYVhDC2nAbYLC9NF7GQY/Wkmp9oMHrQGsSiUW?=
 =?us-ascii?Q?TCCRME715UE4kKaxO9ywTN7foaxSmgG43E2mEriY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 379bfb21-9377-4b79-6854-08da5a67cf59
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 07:11:53.3064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 47mY7upSlS5T1L8mBPzfjVUo+ILt6HXgKN3GGLRryQvuK+6u0Nx2Vh20Uc+UnRNQohKwc3PUQukUmANtveHLIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: free crtc on driver remove
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> intel_crtc is being allocated as part of intel_modeset_init_nogem and not
> freed as part of driver remove. This will lead to memory leak. Hence free=
 up
> the allocated crtc on driver remove as part of
> intel_modeset_driver_remove_nogem.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---

Please discard this version, accidently sent a wrong patch, floated the rig=
ht patch under v2.

Thanks and Regards,
Arun R Murthy
-------------------
