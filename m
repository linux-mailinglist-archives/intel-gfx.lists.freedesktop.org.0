Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3612966D85F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 09:39:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3146810E515;
	Tue, 17 Jan 2023 08:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA6810E515
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673944765; x=1705480765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aAuFMiXh/mNL8nK5HJhC2J0io+WORuz8kUUESbYcdyI=;
 b=jN6FQM6PQ5BXTPgtMmccZSuMOJZOmP0XymruJupEjCz1APCjmQ97yK+V
 34ihAyqUGOJzcJ70thKVDYVAwAdBHcELrwIJmbrBgNpc4J5oWtyf6MiI3
 kUY96N/+0Xk1gFIrhyKhvKql/XdkVLW5kf8G5stLOydUOmd6cV5YjHxSl
 HEzOT0Ue5aBUyaoQjrCipTdGDU1BsF8MGDxXOobvKK4CuabXPDeh6VWML
 xo/YyNLbotdGzg9Eut/iYiZAcapkde2MbMLNFddvCY6oxB0QRk1BYPCLf
 cALFtCv0EJ8kdYXPMe+r8qrKg5T8UjV3W6cq5+DD9WH4j9Tft9pYbLivS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="308205386"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="308205386"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 00:39:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="747974274"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="747974274"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jan 2023 00:39:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 00:39:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 00:39:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 00:39:19 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 00:39:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ey+4Ee7uJH8e9a9JHVjvVV50+O4kRawxadmEICvdv2TwnFLO44a8A8SG4xdUaGMQrbNFimwDNUKzDavfCmNkGYnX/AIxkh9rTacRtkkFtcFdzMx+0+U/bsvZeW9dlxkq7toYjQKPoIHJqPirJ/+26D0u8e5zFOIivst/M5rGqcnYv5vb4ZucyuofNW2sTh0KweAvw432wN7L6s02bCkq8LqODomLn9RwHdv5fCC909f/iB6rTcZNbvzmnmgK65GnWLdc8L3GJ7592xhRg8fdavva/TlRS3AO41PvKxyFO+35Lem5X0jl0UOefVAFqnNhv+wvBnAXJr5chtuNMh4WPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6sYwJAtqelT6bEMMswsENUwu2G26umdXeflWGIJPug=;
 b=F0VxYlpVebMAEGMobEcg0GjhTnheCMO2a8W/4GyCBCCTqA2VXcCVd58D/GUeWd+AXi+krAI1k0tTTSRlICrSofvCBOwyNyzS4uaxN00zmwJ3me2eQrGCRnUXgO+VxWehYHRoz2Tudqf0Kwh48QzCA4W/pAe7agbmqHK3vRIHRpiwaotF1kzQrg++R0zwB9RhQWid/TLFjJOjg9VeI3ON9q0/VKA9vkkrOskAUejm4H60ZAz2sfBpRiErM3MJcC6szDALKQFerU69jXjJFjhQhAAuB7ZYSE6oChp6SoAckgxo7ZQ/KOzMNShIDtdwHvUELFSoDustl/DqxrosNTRHYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SA1PR11MB5777.namprd11.prod.outlook.com (2603:10b6:806:23d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 08:39:11 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 08:39:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIB5ErxAgAZdxOA=
Date: Tue, 17 Jan 2023 08:39:05 +0000
Message-ID: <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
 <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SA1PR11MB5777:EE_
x-ms-office365-filtering-correlation-id: 68da1efb-9057-4bce-bd95-08daf8664ad3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bdK7EiWc67fMUhkRvn+Lz6A1ovYrAw9QHN0vfM5/JJoVMN5+YHkWQ+8JsuH5KqCm6Pm8/aIqnzNMeNejkfZy9giLAWuGLzBSdyrvGD3EIIDYRf3ZUtZXmVK6sXQtNKA25WuLVAmHS4afsYKKoDU41lX9c5/0SFzRrNXNYidh2K64cn4fkRaUM1wqeNpGB49xEUK6K4hH+Mx0ABxzYrIjNrgQId3ZK7huqF0rBUVkAOhQ8XjGWeCjVeQtOomHfIQACM5JkFJpT+dNA7wp5HEL7GbfRfALSWT1yW5wUiqKTeOSF3IhSnUfk6Js3Wi206meyFCbHgGfYHcFfUDkPXwnfyP2A3kFFawNw8cNYFxBGsV5TfXqwi3VQFVyqbEaD1loBBG9S/a86OC8cM9dv0Awen6rLgbnRwUGDTQGeMtg75kpv3IvNdnGRTXNnuYEWq+yRxe2TdQY7AlN0ViMv0CJozwvCoxgAvGPRvTWNe7aw66u+Zezah1HfrCYPjAgkLbmZENXUKKsdNVMFFlHg7m0xJ2z3HTnFeG0+vXXkXr8CZhalGZMh8uMIu3Qg/w5tWK6cX4wKF3Rf+i2vlMweksxFZIb3KdanlGGuiMWOsmjvLWfEff02fheeS2gXr0ww9VwdQ9GVj1kZXJAdrZRIQX1fyP3BMaFKrLmVssjjI58dZqaBoJeGUkN1sF4ZRGNLq3aA3mZ4FoC0n+RjvxfshXIrfCsFlvttO9z8F8Ipcs0Xfs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(366004)(136003)(396003)(451199015)(33656002)(76116006)(66476007)(66446008)(66946007)(66556008)(9686003)(41300700001)(66574015)(26005)(8676002)(64756008)(186003)(53546011)(6916009)(4326008)(86362001)(55236004)(83380400001)(5660300002)(82960400001)(52536014)(8936002)(54906003)(478600001)(7696005)(38100700002)(38070700005)(316002)(6506007)(55016003)(71200400001)(2906002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?l2rcfKu5cmtJEnb/T+x27GhaXc94ZWbfvso43gO8raoQaJhpg0j6y7orHB?=
 =?iso-8859-1?Q?tBJgi7gRga3mHWNidb7z9B25Mkk56ofOVOnafjdJOBBNtYC+5mvYarOjJg?=
 =?iso-8859-1?Q?nUjc/MukzMJo3zyI7YW91IBwVRaVyDOzNaF8KfTRz41ZSjgif6oAwBQvHe?=
 =?iso-8859-1?Q?BlWhHJbA2vN80WfgTqgTx0ttsTehbBRMddw66O2//k46Owwbeu1s9l+XRA?=
 =?iso-8859-1?Q?krIrLGpvOP9ZgjUaqFnxvlxsRAvZS6+7z1sQpQquJ1TRQBzf202Q1ZIf3u?=
 =?iso-8859-1?Q?Zqy/LW6tQ0hq6hEL5pPa73mZZrVPFa/Nj2QQh0k9evo/DkFi2z0/D+OCRh?=
 =?iso-8859-1?Q?MV8ufpNSzqz1cY7Oii3vFLwLFqulix6m95IZe18D5t0exD7G2SIHIATbi1?=
 =?iso-8859-1?Q?RM0UvzsXhAJ2UyfqHCgBYYDiv+aQY/THnD7v9xBahEHjGKkCXfnUhw/Oi8?=
 =?iso-8859-1?Q?aCoIoPBlk8UhQrwxIdGeqqr0ElKgskNfTEFRNA5Lag5PKD+we7pT5Ty+f4?=
 =?iso-8859-1?Q?nyCA5K0rTbkcHRdnnfyat06vltGBJdZFgwm519L2irEK0aRwZMNm08cHXA?=
 =?iso-8859-1?Q?fv0RlulA3q08a9kgZPubEPIgrwCSXpPf3XJefQvjExqlh4IZcDlRRLQ7J0?=
 =?iso-8859-1?Q?8Vo/8N2i8SjaxN6arVThJWEBXc3pKWbGgJoRs+KombBtpvRcFzMRhtTLUU?=
 =?iso-8859-1?Q?rJKzF1XcXYlh9j9iTFQWzOxwVL+INCnCMgoEo4yjWexNd7Jna9I+7BEJq+?=
 =?iso-8859-1?Q?OSrJwbOc2QWuAXSOaLC17usy1G+9sYph96irrsIJvmhfwKcLXOy1nyQ8Uh?=
 =?iso-8859-1?Q?bY2ZJEZw0Hyv1AQAJDA4cWUcLzheQ2T6dOKREq9joCHe5RD10h1oH5IZHy?=
 =?iso-8859-1?Q?CevVOE9dg0N1Ut5O94mlbzLlncbjuL+DpLdgmVf/muDpMD//g5kE8hXFJo?=
 =?iso-8859-1?Q?D+wQNUcJzpsnN4smgLJPPb1bn0/3WLfxR/4h79zypDLwff77qGcufR72A/?=
 =?iso-8859-1?Q?86XZi7cH/oyEzefM3po03+lbd3r/NlHughOp/6X127I/1QO2jt9Jiy2SZT?=
 =?iso-8859-1?Q?0UJ4ffbLA6GJqQnfSGuN4n7z+D2Pv79mWmFRG78Ngp0LchJb2M39WDAgR/?=
 =?iso-8859-1?Q?u1k7hvQheQr4pFk1V5acelxH2PgCjhMFzfJB14EndrSidVWE5ZB0DaDwof?=
 =?iso-8859-1?Q?gFBgwal5TIAezVnqkwTG7RLMe0++ZIaIPOQ4OwIqonqdTWvpmehD/o+SDD?=
 =?iso-8859-1?Q?DzCwa5DThN6jGsc+Xbp3KiuDe64NQ/e+cFkSeIlgn6N2aC4zi3eaATqkTZ?=
 =?iso-8859-1?Q?sqJTNcuJQZOJV7JBh4vq4/EOk/LNUrXTOMKYmsB/ZvpurGwHhMF3Dy79f2?=
 =?iso-8859-1?Q?QJXgC9QQHomtLPZovLtAKxqKsNUpNnniIo+wkZ3n0W+Pa+7B0fxZ2lDhxg?=
 =?iso-8859-1?Q?izrB8zQ0t0G/+scqMq14gOUKPofKAHax05kuObvqxN9z9GYyvOlUUoU3hc?=
 =?iso-8859-1?Q?A3LTj5up0efwgoCclgAqpG6zvxnRPQlHICyMXVp1SC0TmB3CnRfe82t8fC?=
 =?iso-8859-1?Q?+ZwPBcZxbIoeLJZ4PnY3Czyv64OSGLGPZfiX4GmBFBFJC1EN1uy1NRzwRy?=
 =?iso-8859-1?Q?CLqLYYpDAMq/OycW2GJpafNWVeprmOnuPK?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68da1efb-9057-4bce-bd95-08daf8664ad3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2023 08:39:05.1621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CW01jHEaEV4UHm4zFe3f3g7GV/RECvuV4FPgmrd9YHQQ/cgukp79IvOmMl38ddBTXe3F0/96KPM9ZVQMR9rjvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5777
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder!

Thanks and Regards,
Arun R Murthy
-------------------

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Friday, January 13, 2023 12:57 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> > On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > > Gentle Reminder!
> >
> > Is the igt stuff merged, and did this pass the test?
> >
> With IGT alone the tests will fail without the kernel patch.
> The tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2/shards=
-
> all.html?testfilter=3Dkms_async_flips) are passing with IGT and kernel pa=
tch.
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Monday, October 10, 2022 1:24 PM
> > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > <intel-gfx@lists.freedesktop.org>
> > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > buffers
> > > >
> > > > Ville,
> > > > 	Gentle reminder!
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R
> > > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > <intel-gfx@lists.freedesktop.org>
> > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > buffers
> > > > >
> > > > > If no comments, can anyone merge the patch!
> > > > >
> > > > > Thanks and Regards,
> > > > > Arun R Murthy
> > > > > --------------------
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Murthy, Arun R
> > > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > > gfx@lists.freedesktop.org
> > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > buffers
> > > > > >
> > > > > > Gentle Reminder!
> > > > > > Any comments?
> > > > > >
> > > > > > Thanks and Regards,
> > > > > > Arun R Murthy
> > > > > > --------------------
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > > > Behalf Of Murthy, Arun R
> > > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async
> > > > > > > Flip on Linear buffers
> > > > > > >
> > > > > > > Gentle Reminder!
> > > > > > >
> > > > > > > > -----Original Message-----
> > > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > > > buffers
> > > > > > > >
> > > > > > > > Starting from Gen12 Async Flip is supported on linear buffe=
rs.
> > > > > > > > This patch enables support for async on linear buffer.
> > > > > > > >
> > > > > > > > UseCase: In Hybrid graphics, for hardware unsupported
> > > > > > > > pixel formats it will be converted to linear memory and the=
n
> composed.
> > > > > > > >
> > > > > > > > v2: Added use case
> > > > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > > > >
> > > > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > > ++++++++++++++
> > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > > intel_async_flip_check_hw(struct intel_atomic_state
> > > > > > > > *state, struct
> > in
> > > > > > > >  		 * this selectively if required.
> > > > > > > >  		 */
> > > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > > +			/*
> > > > > > > > +			 * FIXME: Async on Linear buffer is supported
> > > > on ICL
> > > > > > > > as
> > > > > > > > +			 * but with additional alignment and fbc
> > > > restrictions
> > > > > > > > +			 * need to be taken care of. These aren't
> > > > applicable
> > > > > > > > for
> > > > > > > > +			 * gen12+.
> > > > > > > > +			 */
> > > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > > +					"[PLANE:%d:%s] Modifier
> > > > does not
> > > > > > > > support async flips\n",
> > > > > > > > +					plane->base.base.id, plane-
> > > > > > > > >base.name);
> > > > > > > > +				return -EINVAL;
> > > > > > > > +			}
> > > > > > > > +
> > > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > > --
> > > > > > > > 2.25.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
