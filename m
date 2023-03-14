Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C5A6B8A37
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 06:21:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF72A10E6F2;
	Tue, 14 Mar 2023 05:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E177C10E6F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 05:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678771278; x=1710307278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2uJZKhwwsfMCLOWymGtBNY/aY9KUiU8EukhzjwI8WX8=;
 b=CS+rkpV5/Ffv2tFUNljhuHIe+etXjLViKjcuLAUCwbZX0TqoJijQrowP
 hBPVKiIsuLTYGW9n+1v1jE6M6CoyXfBa7787sSYCFLPg8wcrjvN3ytmqW
 pPXTWA2fJQg0ySfnMYccwQFR/yvmugyP0INKBnYqVLSHbRTjIRpev0u6Z
 QaNFTBFAR4yNe4c6RMTS1NHGpH8Y7Pjsu6skP1VR2C11VBS/vlO9lpgTI
 2JAsOY19RsiV2c1sGENp7V5MoBIUFiX+ZlAFeQPOxxwLbBgiY12eYy7oh
 /fUgZz6CN4T5bpEOKEpEWZjif8X0NgsU/Z2wqFjCvThaGnLOKd52on7TV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="399923803"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="399923803"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 22:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="822228486"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="822228486"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2023 22:21:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 22:21:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 22:21:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 22:21:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PZd/dpYLI6oY3e8uMRb4y4UHO87qpxftpUEPcEVzq7dGjeihhxXh4DikTwgnfcX6VFJpnKmZUlgc1OL2Gt2kMmN/WKQZPZ/4h7bSeIxJW77Z2CMec85BFI0kJhlVbnn9CQIrh0IihkHALO2Ao0ln66zyEn+Vc4yqpV6aSIjuDvLEIKHhK6HD4q0ic0TO/aRsY2P401Q5XgiA0nflO+9PgDpKH8z773MLocFxHvaC9t3x5sQ4BKOXeJDKxwFT+NYJzFd2lw769U7hxgcB1adBBEp9fiadm2WwFdieXX0qO4xEJtt2RW9NgRdYhx2z6Wy0kCpGWzginASjCmpQv+OKpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2uJZKhwwsfMCLOWymGtBNY/aY9KUiU8EukhzjwI8WX8=;
 b=NZ8qYNY69Rv6LBTMAsQmI+aLytghEN2Nh0VNDHBtyWmpNs8+nBR0sB+la9YWT2KLh6g6Pgi8WBWmmHvohJ8rtPyd0uDiGWXhFdEVh8C6vAXbUGTY2fYgZTkLX+O7tpEldSljShmaqcAwB8vvjmOkGLpzY/wj3+DpnqlkiTr5FMAy2AwM4e4+Cw2OfvwbaulBg3OHFNzLlZW/DEBPggJYgsursrgBmSm8Clr91e6rVNO2hJWt8vZku1KXt5WY/QPwGVuZJYXv+F2y5SxjryHFtTR8DaG1dMpV0AbDQPwiEL/mCvb5qCr3HsIw9WWEArI5MIz34cngPfkuQSr2kxqI8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SJ2PR11MB8348.namprd11.prod.outlook.com (2603:10b6:a03:53a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 05:21:09 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::c7a5:6ae1:621d:1f5a]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::c7a5:6ae1:621d:1f5a%5]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 05:21:09 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63RzAwAgSfNtQCAAUwrgA==
Date: Tue, 14 Mar 2023 05:21:08 +0000
Message-ID: <DM6PR11MB3177C2CF81955F2EAA9A571EBABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <20220906041806.4095575-1-arun.r.murthy@intel.com>
 <ZA7sn2ctsskxDJvs@intel.com>
In-Reply-To: <ZA7sn2ctsskxDJvs@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SJ2PR11MB8348:EE_
x-ms-office365-filtering-correlation-id: 515373bb-6484-4aa6-9b1e-08db244beb0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eoR8d3FHdgxhd50TJ9toIZcasJSeTmrRhBOfSHvPd953fT70BXnH/s1P8t41ABfgJpP2G7E469zpyfWT1SLHmMhtjUGw+wmYg4v0wAVB4C3BL+sDRfiESQQiltftzGQmTbLiuq7sRJeBVK3W9VG0GOAqZqr7vkZMn6hdzeYSuBKl+2uPtAumwPyUTGcl5bwgMecu6aE2+t1V5H0PFtapehg/+4+MQ8XIDmEVylQHCf6b+xDlvWAWmfrdWIohtFu4kd/JGiV+f/qlGuMt3kLKRpFucPrCRA6vIIHm6Pnddia63Ghmm2jM8GkdGfHq+vwMru5+7epNHNyauKcS0cuJYaeanwJdNOHKZ57kVWfZMkFiCRrAMfNOpV1t/f13etA6ezmXHCL10T9o7yuBsStkSgI5cXt7C1fQMLYyB4E1eiUxtdWMmW6xu7xoxXQYxUBq3WNeWefCneJzjfXlU7zpBf5aHDC8xZuRY7elY01jv4yWZFpHPj+vsg3sOtYmm/gVWvz2KG1qmYtOzzwUXSMoqv1+iT/dSz5t9DTvx6TKCxS7514B8rRSekTs2Wxn3PmRmYKenD6rpV2IrVBkXV6mPcnmwPxKevBCq9f6Dj9bsANapjCAK1BUL7Rb7ILUT22cj+cCHO8czrpWoi4LJ4z3RVf3JClhlqxg5Ak03Q1jqaeeY1BcbF8ufQD5UqPJ2Zvf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(366004)(396003)(376002)(136003)(451199018)(4326008)(41300700001)(6862004)(6636002)(8936002)(478600001)(66476007)(66556008)(66446008)(66946007)(8676002)(52536014)(64756008)(76116006)(33656002)(86362001)(38070700005)(122000001)(55016003)(38100700002)(82960400001)(6506007)(26005)(7696005)(9686003)(71200400001)(53546011)(186003)(5660300002)(4744005)(2906002)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CgThoAww6K1exFHCNEIaSEHVOimcw6houUWvBwatzGqFr/9QqzNUI34frxxm?=
 =?us-ascii?Q?hzfCxPh4V51sWTjY7UDggQvSwm8PxA5IYVIa/ptcC3AwuJRNubUbeTw3RQtB?=
 =?us-ascii?Q?ehB50iiCRbcbZoPihSGlrlSL0W4OZHCN7t6Pj6pgkP/+nMjR8r9DArbyxn3I?=
 =?us-ascii?Q?pnM0StPDY5De3QmDmcN+klE3FbTjBiLxQPdc+yCcobI58mGCocKo7Sb6nlxw?=
 =?us-ascii?Q?BnI6ByhhgZSbVrM4SUlUCVf6t36XRGjQs263SAiabJht5eA14Dikg+tVBDJ5?=
 =?us-ascii?Q?jYJaZb8CF67bfeAHRhOYj/2CrA4nqtNovl6slBX2ChOWeE1Fc2lPHnE73kh0?=
 =?us-ascii?Q?NbdzI4ohecZ8et5BbXovReWQ5T0lQX/dnynVuBKkIiZDKMEBGDDHzXOCE3RI?=
 =?us-ascii?Q?W+IlsLZzYYCw+Wfb/TFlPbb94ekjetNZQuFYqbIkoTMceZjGAajd76b+ph1L?=
 =?us-ascii?Q?ueVdcG1ALeqaogIhrDzFVFTt0o9q/LbZd+dRQFRQ7rEae2Q44j56uxbk9Ekq?=
 =?us-ascii?Q?dVsvnCeqBHT8K8Oyn+LtDR3n0Xun4hDLLzky7M41/KJWzdbfofzLzGHr1dBO?=
 =?us-ascii?Q?4iXGeQG6hJ9Hc7FmghDjqpkwwV+l+uAJb1xG6eG8dgYlUDqII397oX72++bQ?=
 =?us-ascii?Q?UccGTYPTEz4i7uo7u7wL1Raf4qPaQ9CMg4vsX/4m5ICq96Q8foAJDysQ5QoZ?=
 =?us-ascii?Q?WsErmygpXNRczronvXy+vUgWUmj8Zi9Z5RXE8Tk+zwyQ49apbuoSrNPmTYw0?=
 =?us-ascii?Q?rlngXeimu6PNz49ag4KvPRDVDhc9qM4KVEbHiHcV3/LQCX5DeiseeNyi0FCr?=
 =?us-ascii?Q?Zo4M51oUmldvoxMt29TVIMu4vBOPIfZ3fKNJzv//SYhFtcfUO7gBK35lFGHl?=
 =?us-ascii?Q?t9TPZ8fwM2yyIG/UVUFMYN20IHv/vlTYYqTK988ewEx+6IfG5ObpNmGT6dML?=
 =?us-ascii?Q?tGI25HGUOlB7QAJuvz3AaDrS7AP/2bglmt25D3lQCd7w/SNepHE+gwD4c3G8?=
 =?us-ascii?Q?te+g1ztn8d9uqLQA8Iumey82cUOvdf58xVolUx5K8uNN2IEgw+XUFjsUWmTU?=
 =?us-ascii?Q?y/oqkhsQ7jm1yplqIzvgDaZSElNErWsrlB0A6jKM+/tfzzUuwvEofAFUlUPz?=
 =?us-ascii?Q?8mYhwfP7K/9Q+rHToxXN6ExQniN+G1Bwi1TTLTpQkwcGH/doPQGpwlL9nUQy?=
 =?us-ascii?Q?EMbvbIlFQZS2uVaK77VG/DJcQABd/W1UUa2RMifaGtwdIlBN4vJ08p+gFkNv?=
 =?us-ascii?Q?+wPQu2w3BBu+CP29LdgINo8tXKwV/bmvaEm4RNxM3hyCy9+vHMQs/6YwGzic?=
 =?us-ascii?Q?WMQuSujvK6nTcdbl38thN8LxFtx/Nb0OuIlPE/FxS+0VHQUmVRN4AZ/ocDaq?=
 =?us-ascii?Q?A7TMC1J2ULP02C9wXCyzsLnhi9oqzAZhx+6Hbu29jaKkT/8uh2/rnvTBACCt?=
 =?us-ascii?Q?r4s+dDkH59vhQgOYtevRYYCzyyGrHd6R+CmsYq6hLObLfowqqp70iR1LLbFm?=
 =?us-ascii?Q?JQsrG7b9IlL6Dce2TzFuHdMc+mspNb0N/WVpB+qbsCSmMhamcVj9BDJiLYZl?=
 =?us-ascii?Q?9OZA10wkeRfa3nVjepDWkE2M+MTplrcoMd19st4m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 515373bb-6484-4aa6-9b1e-08db244beb0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 05:21:08.7560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4MxqfnIQptYj/jPy8TotcV2sxkcOWrO3jp8rB+vWUnvpalpeUhpKLvbslI+kBVT+h68zNM0yeDhyvheNhqFZqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8348
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
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

> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Monday, March 13, 2023 3:01 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> On Tue, Sep 06, 2022 at 09:48:06AM +0530, Arun R Murthy wrote:
> > Starting from Gen12 Async Flip is supported on linear buffers.
> > This patch enables support for async on linear buffer.
> >
> > UseCase: In Hybrid graphics, for hardware unsupported pixel formats it
> > will be converted to linear memory and then composed.
> >
> > v2: Added use case
> > v3: Added FIXME for ICL indicating the restrictions
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
Thanks for the review!
Can this patch be merged now?

Thanks and Regards,
Arun R Murthy
--------------------
