Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 729A173F908
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 11:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6EB310E2CC;
	Tue, 27 Jun 2023 09:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D044710E2CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 09:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687859440; x=1719395440;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3XgWqIY17DhoYJ8Ixy1TmDGmIB3ScFJ7H/pguJ1dGzI=;
 b=dZRLRrhgQqnNmSTF+ZKNLXn/3xe6eQWDipzim9bzUu/GG+1ylMP0ce1y
 Hkzi1jPG9lTDB8dUcB1e2etna6TX7Uopn8kzx9AKqwRseYzrXlX1tC0em
 txeiVmyegvykKcdd9Ok9UBdD0M+t3aEJjdDwxcJERFUzjOApdByF6e7Wa
 FHrXTnxVnrnSTzgkb6cYdxiN7qxgn4ukHKOj6NIzQKt6fyAKcY9ypO79u
 oCUQZn0zZ3IowJsFf2kHfdV6sadU8st4jsD2wHBXzEFwPj/qlbe937ff1
 LyF4/9u7XOXdUfpIvsSSsfDr32Qo1SaiC6C+xoDtUgMZukPVrfOiIoKQ+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341117940"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="341117940"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666637370"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="666637370"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 27 Jun 2023 02:50:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 02:50:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 02:50:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 02:50:38 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 27 Jun 2023 02:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TYgQ1nrRg9CEXEWlKFAQbp5sitwYJu0CVb5lm6uRxnxw9njujfH26NjYmYnrMX/MYsa6fi+IsADuv4fwrtMueL2Xe5Q0aNT3fNaYoiRuqrXba1uVPMReGsBmP5fLkcwI+7JDDItiLClF3IMYDDwL0YLicxV9Ta/6kdXzJ9NQf6uUxsE3gXgEBdSlTVGtP/B7kvJmd9rOiG7gxx49joFrpvDV9EcReTiPtxHS66r64PiujfntopVI2llEszx2lyRYWeuw4lG4RZV925F0rpuKo/QHZgj5RL+xTkGleil+2WkLT9MN9Vq9rxKOq1qD3GjoF4H1Zi+u/pkj08PbfWsMxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bo/ZSyp20boZ/3M02MKrF50Um38IbWrOQZ7OlEE9Er8=;
 b=GlE79Ls36g70CgqOMiEeFDrdLX/3HNXHD/cGXeQvlnzobFOejDY9E79if/vdoV3dY01xm/vI05eEbAV13pB33gqLknOikw2MuaFEl7OsIBifATXQWS7Qc6fQ4S5RPpqTik4kuK86pqQsEtIgedoM7zCMIlz1aJh28PKAGdm9MtLgbZA6KB9S0KViVe/IL75cp+r0iJZKbzFreorra0/pkjQCWyb4wL7HXebgG+3Xj3lkeydTYvsCKPcGsSk8Uur5ZNVELavzfHct0QxzHuEbzBTWbg2W3YL3qGry9/QfIMzJtAnNq0708F8610W9GniCFryFrx1lLW64p2IJbe5S3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM8PR11MB5591.namprd11.prod.outlook.com (2603:10b6:8:38::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Tue, 27 Jun
 2023 09:50:36 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 09:50:36 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Add forward declaration for struct
 seq_file
Thread-Index: AQHZqAOcRqNBe3L1hU2owMbMt6rrAq+c/V6AgAAaUfCAAA8UAIABIsQQgAAfIoCAAAC9QA==
Date: Tue, 27 Jun 2023 09:50:36 +0000
Message-ID: <SJ1PR11MB6129F9AE02B30ABB830A18B9B927A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
 <87r0pyv34w.fsf@intel.com>
 <SJ1PR11MB6129D9B5056D11F447C5DEDBB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <878rc6uw9z.fsf@intel.com>
 <SJ1PR11MB612959F0FB18371AAB0C5BEFB927A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <878rc5texs.fsf@intel.com>
In-Reply-To: <878rc5texs.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM8PR11MB5591:EE_
x-ms-office365-filtering-correlation-id: f12834be-f6ba-4ab1-ad34-08db76f3f4ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pNHytvinLzAaauDHU7ChOAbhf9MQkE3MSFJhnlQqJHBf6ZDG2inmaHyjcSUALFSYcOp2UToA2qvB6j6uO/N+4E5RpHruIgctt/9kcOEYG7pODytCiBzYr3RRq/bt0Axd3/LR89vQShsS4L7fhzJI4zAEGIgic+guE3sz4cHP7VTRLO1IZZiFdP1o20ez5Xw3nvy0bB9rAzGLeQKqq71AGmYAq8vZz5DMe1jsYa1ZCicCYIE5QLrop4f2K4+Oe9piXgchvrJDT/BFnf9qDQQpfkbcxQEkF2fo05d8It0zjpWDLNIdHQyhmkYkpDG6L3vEZs9mVdU4YiCMhOzYyfYpJDqEGY6rDCmoWfhSzs9VjsWKVg5vRdBeeXzjfbXC6X7oq65CKH4cJjack7vkN6hxk/6N1UfVLxzN7EfFn656SiycssHzUfouvI6SdrshgOHbY/gZ+dq77uXkCJT4nJ163OwBPaxu5aPsEUc5DLvzS2+pbnPDwSXa1xwHDNJ+s47+dzYZMCvquqKoCwdfmoW+o2nXxnkPhTHac5sKeng7gWVQy5lcIfoTl5U/BKwdd3Vaf+443pSi9e90PK/qWAX5GEe/4hKH3CeANdOdVR5gbpyNq3Sdf6yKpmC/jKLW0sHT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(39860400002)(136003)(346002)(451199021)(110136005)(54906003)(2906002)(7696005)(122000001)(38100700002)(83380400001)(71200400001)(82960400001)(26005)(6506007)(186003)(53546011)(9686003)(55016003)(86362001)(41300700001)(478600001)(38070700005)(64756008)(66556008)(66446008)(66946007)(33656002)(76116006)(66476007)(316002)(4326008)(5660300002)(52536014)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HgDFG+dDrOGFLOhQ6YYZ/SJ9A94f0U4g0Hrd55W4gMfiiQTfGtgcnTNpiJ4r?=
 =?us-ascii?Q?sZq18osLtgpRd60WfWgV57jsCBPiQ/yr1ur6X8MYSWFb6A8jo0+JqVNNvE7E?=
 =?us-ascii?Q?jSPu0dVr61DRx/VXuLlAXSJQ/sQCpcmMKzSu9KvY7AIQ8DE2O9lTxYHxTCxo?=
 =?us-ascii?Q?TqKgO04bh1aK78CdPWpORMnuVvy0uGUO9xGORgE3H+pkjEH70WOGezVReQyq?=
 =?us-ascii?Q?ZqohcdTvTIyqW8l/y4Rv/nzc1ArtNq368jgbshksptGDINg98mLtKBMKu+ed?=
 =?us-ascii?Q?sbJS8T/5tHuWFAVyM8rQGiiSsuBMQXUdhrFY0nI8URGfb+zagEKZwxEP1TLy?=
 =?us-ascii?Q?KZqWRQn91PFbjJBH7OcBcJLI+7iXil6ggBIb4+Sy3rQfLUjIUgnETWL0rVFC?=
 =?us-ascii?Q?71itOcjZU7auoMHDq7FwVowKxApgASwgKt5e+Z2Dj1mGXZszih64KOwhMzqC?=
 =?us-ascii?Q?73b+AWwN+NswDx1GV7pAsA3xXeTZmcE/Oqt/kXEsvh19AkSTJVlJnOV+HxFs?=
 =?us-ascii?Q?2t01fGjSVQ8KgzEF4VdaVQYeUNeWTiW/NmLOPxstbV+xt3F/TA01yZkHLbrg?=
 =?us-ascii?Q?BBt1whfjppN1mIoVvbHQev4et+e9HXCe1xdXsvOHQxN6gvQNBmWyi8TA8HMp?=
 =?us-ascii?Q?z4sRQT7n+qaduQXkEoM/l3Mi5uCLUTljwC+VWvKHj4VLFj3VSBP8B5fVOqec?=
 =?us-ascii?Q?aP4piEKKLAh0vnhtad6KTwwYb6wdoN+sP9DqlbBQt4QidPJefNmxUpiYNbGr?=
 =?us-ascii?Q?AwZdOgH6rqEEKDfsHXyHprJa2uKGYeUhwWdgpnsOiTqsGmmeg8oSR9ZQTRwz?=
 =?us-ascii?Q?allQ76C2Jl3xsffW0QmfIUIHgn2e6X9tekqNwqlKxe5E59xvSQaIxeldQ6ed?=
 =?us-ascii?Q?L6y0qPExVLy53/PYDbY2LC5iYUtHl+wLWBLR7HWDRZMbImab/NLL/mZB/2hg?=
 =?us-ascii?Q?CXwLbkfQcwwmBJsKWt4X8fBW5r+9oi+29/283IoGBbItK8nO6a37dVH/iRNH?=
 =?us-ascii?Q?nRTCdf33xxU6GFqVuP6AhuDg2L3Afq6P5MF3dZ480eNaK1SPrCuZICOcgFV2?=
 =?us-ascii?Q?h+wEDVBTtgDqfl1jnxJqjt5mfzm2COR4FcFKMCLyART3rpskjB8qh9Q31Aak?=
 =?us-ascii?Q?0CBPw2xUd1VPNmmi18lSy5Clk4JeuLAmZVNPXq/rw7XK/XM++rkN0khudmpM?=
 =?us-ascii?Q?wEuFo/EE9cq1naQ5cvWxyPOWd+8efOONqn9VLneiStt4c8tK44toHzS27Nfy?=
 =?us-ascii?Q?HPe/6TdTexswuLD1/3xtwu+bAfn8JbqSvvGuOssIuOLt1zTOliQ3nq8HQku+?=
 =?us-ascii?Q?p2SfM7ybHmCYY2qfwf8/IwzETXPlgueU4lVeZ7SjvKIhrnJ1uT/3+JUoPqeg?=
 =?us-ascii?Q?iNqCxl2nxdd93Fx/nbZehBPBpD9KjPkkLmoh431PnVMBYhn/FAaIbiCOW8cc?=
 =?us-ascii?Q?vlazeqW3z8dBm97InM97JA5Wrno/OC6A3U2xrgA5BMc/tYUb85UdS50A5+tD?=
 =?us-ascii?Q?2eCnxmht+4//VSFeMbaurFk6x6AjM3v+WwgOSYBOwC47aYeHHuEUJrzbxC2w?=
 =?us-ascii?Q?KS6CJelPuC/zwTbZRvIMNHkVAcC1VFZeV1SkdRThknHUEyTRDE56DLYJYu8O?=
 =?us-ascii?Q?hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f12834be-f6ba-4ab1-ad34-08db76f3f4ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2023 09:50:36.1295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W30rmRt0ShpiQoRNMP0+ToRUCS1k1BDXgON8v+xQhdjs2Nmt340q3GGlXcnAY1S+ZpEQgQtq3SOthHmwQPUhtCNQ2pBJV+KyFa45xn84nbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5591
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add forward declaration
 for struct seq_file
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 27, 2023 3:17 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Add forward declaration for struct
> seq_file
>=20
> On Tue, 27 Jun 2023, "Borah, Chaitanya Kumar"
> <chaitanya.kumar.borah@intel.com> wrote:
> > Hello Jani,
> >
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, June 26, 2023 8:05 PM
> >> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> >> <arun.r.murthy@intel.com>
> >> Subject: RE: [PATCH] drm/i915/display: Add forward declaration for
> >> struct seq_file
> >>
> >> On Mon, 26 Jun 2023, "Borah, Chaitanya Kumar"
> >> <chaitanya.kumar.borah@intel.com> wrote:
> >> > Hello Jani,
> >> >
> >> >> -----Original Message-----
> >> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> >> Sent: Monday, June 26, 2023 5:37 PM
> >> >> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> >> >> intel- gfx@lists.freedesktop.org
> >> >> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> >> >> <arun.r.murthy@intel.com>; Borah, Chaitanya Kumar
> >> >> <chaitanya.kumar.borah@intel.com>
> >> >> Subject: Re: [PATCH] drm/i915/display: Add forward declaration for
> >> >> struct seq_file
> >> >>
> >> >> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
> >> >> <chaitanya.kumar.borah@intel.com> wrote:
> >> >> > With change [1], visibility of struct seq_file is lost in
> >> >> > intel_display_power.h leading to build errors. Add forward
> >> >> > declaration.
> >> >> >
> >> >> > [1] ef104443bffa ("procfs: consolidate arch_report_meminfo
> >> >> > declaration")
> >> >> >
> >> >> > v2: Use forward declaration instead of headerfile inclusion
> >> >> > [Jani]
> >> >> >
> >> >> > Signed-off-by: Chaitanya Kumar Borah
> >> >> > <chaitanya.kumar.borah@intel.com>
> >> >>
> >> >> Hey, thanks for the patch, this would've been fine, but looks like
> >> >> Imre just pushed commit f4fab137dd2b ("drm/i915: Add missing
> >> >> forward declarations/includes to display power headers") which
> >> >> adds the forward declaration among other things.
> >> >>
> >> >> Sorry for the trouble.
> >> >>
> >> >
> >> > No problem, Thank you for the info.
> >> >
> >> > Sorry for my ignorance but will this patch eventually find its way
> >> > to linux-next or do we need to do something special here?
> >>
> >> It'll show up in linux-next once -rc1 is out. But I'm not sure that's
> >> the
> >> *question* you want the answer to, really.
> >>
> >
> > If I understand correctly, the patch will get merged with linux-next
> > along with the release of 6.4-rc1.
> >
> > The pertinent question is when will linux-next builds be fixed?
> > We are missing out on regression tracking because of the build failures=
.
>=20
> I've asked Tvrtko to pick this up to drm-intel-next-fixes, which should s=
how up
> in linux-next when it's next generated (it's daily).
>=20

Thanks a lot, Jani!

Best Regards

Chaitanya

> BR,
> Jani.
>=20
> >
> > Regards
> >
> > Chaitanya
> >
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> > Regards
> >> >
> >> > Chaitanya
> >> >
> >> >> BR,
> >> >> Jani.
> >> >>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
> >> >> >  1 file changed, 1 insertion(+)
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> >> >> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> >> >> > index be1a87bde0c9..0ba268e566b0 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> >> >> > @@ -16,6 +16,7 @@ enum port;
> >> >> >  struct drm_i915_private;
> >> >> >  struct i915_power_well;
> >> >> >  struct intel_encoder;
> >> >> > +struct seq_file;
> >> >> >
> >> >> >  /*
> >> >> >   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX)
> >> >> > domain instances
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
