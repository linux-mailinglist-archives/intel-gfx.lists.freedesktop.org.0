Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C0C68CF1F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C652710E2E7;
	Tue,  7 Feb 2023 05:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3513410E2E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 05:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675749102; x=1707285102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Te8hRO4ggT3bUSPjuZI7bRKBPb1cqdbK4gX58mr92IE=;
 b=AnqNMQRQxrtbJLUKiaevSlPl7JjWW77Jp59Gj8ocOrIbJZWuzNWobLyY
 BsGmcJgtcal0eXHpaLh2l+1cq41wPeMk0+Z2io5/eLmPvrd/LOpFzTzO5
 eYXCf9TPebUcqgx4vnRMfBxXN9/pdHXnIlmjbKhf7X/kMolw3DZrHsPz6
 IkqB+pdEk9LbasWAK3y3HrADv90kyzFM966HWFSnSgTGVUU+mHpRF8YVz
 1M00QpFmy3qMGGvjaaMGkTZfzfcNveNPw5xc2gx6NjNOhAZYpN8ItkFx4
 dt1azQlicmHbq+fW9tmE/jjGMUj5XT/S3xS+Zvi7r8Lf3m8H2cKQ75fPD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="331546768"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="331546768"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 21:51:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="668670250"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="668670250"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 06 Feb 2023 21:51:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 21:51:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 6 Feb 2023 21:51:40 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 6 Feb 2023 21:51:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nVFDHHIFDrdPCyoibTJP3+CcgGuk+HJn1+DN+m/UjATr4NSmcRK5ej7raLise31HMfUqyulPmP9C4jcDk16/ZuIegYNWFhtTCIpAXwNZ0dvfD/Uk4NKyJztqk4Q5DIafEkoyjT9KpYIFcNxWrVt4SxUMixjxF9ZSgXk9gOwG1hKrfCx/3QNbKen0/fQ+g6SCu8FhQft0xlBuWqdkdJRg0T7J4dd3ViB84+S2qn3qROTbc+z3OFx/B+z5AKt0SljUuN+eoPS5kcCfDXOgGCELwgI7hn2vZx6upjwS+BfpvFnDFevUuqz1PyoqZP0mtgPtNs0IIut9QPFhh8e8vi8k/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrbG/EZZuNyu9qV6jnHBLmLIQl+gI1mxOevcnkaj5kY=;
 b=aK8Ix8NhXqudNYiQiaS6/z1pOy6Qa5lBBvWN/QxxZLzeRU/yxYd5dSHFBqgQbUl9pyL48dM4eKCovi4EvMJ0KlmgRqxE2X5O+lBWrOgKB1wBf0hIrzhbxNie2O0KOlw83kczVAaky8qxlNiBxwvdTCZVR7I7HJpvMA0GrtQdNbnn1VBC5wgaXkhZniPr3gFhVIH4RDUGeqzI1psCll9HGeOnOUkqr4i1bm9MW5hgM6b+P0f64BK17FXr0O/ByYlHGkI9m6vezylEvW+laqgdJmurX5PTMlHPcm5LmpA7+vmN11EHc6diFPg6hqQSGvMKET9TA3XCsMqVuIAxWVPyTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH7PR11MB6697.namprd11.prod.outlook.com (2603:10b6:510:1ab::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 05:51:36 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%7]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 05:51:35 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIB5ErxAgAZdxOCACU3HEIAPuYtwgAAqugCAACJYMIAHfZFg
Date: Tue, 7 Feb 2023 05:51:35 +0000
Message-ID: <DM6PR11MB3177347E3076BE04C45525C4BADB9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
 <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31779DE7C32B77798771CD74BAC89@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31770BE42F08018A83ABF749BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y9uBQoHTkp1HZTQa@intel.com>
 <DM6PR11MB317734A77C58D004550309B1BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB317734A77C58D004550309B1BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH7PR11MB6697:EE_
x-ms-office365-filtering-correlation-id: 56c016d6-d8ec-43d6-0132-08db08cf5f98
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aaw0pCZHcb1b1F2J/Ge9rDWbbNLSJ7jG0GGugyDE69GYkq602q7xfcZ/FSGg1iSS27jkxn0S5uGOjZCtgisGN5DBo9W1iWJpfxq4gPvy4byhW/gzO9kWQ19xuKPYU5klqmBla7cWPzexMaetUottoZ/KV+r3wg8dstBniivaj8PjFCH4/w4R9Sj6mkbhJE0AL8JQp+21gviB0jH4O/QO44FzjFBHZURwUMP/bA1frlc7mgYpoHq9oiDyeezSrbMTWfJgjnUFG3wSVWC3ptrBlfXwbnzqR03Gp1z9ohSXRmMIEqD+jWlzvOiCvCiAiYVkbQVC/OjfY6uUAoVTRgM79JQZW0XChpBO01VZt+fsrC34yED11OGRI2zY4RMA3CKtWfkPBUhc+e8X8nXfOWj505i2AmL+O2fTt2dzchJfhawRTTezN0pCphWmD5m7IC5q0Tsm39tbnsw3hlZl7J+EiOdwHbpXdkyfTzWMRh/12Crpsnc4P0UiASjRsqFV4wCO0Yap9viXiImJOJOgb0LZL1/uth0CcSJi1PJNGZnaCajFz1QZZdCiqp5qVoRe8YKGgOF+j4Co9TddGBkF+fZUr0O4bWwD+PfBpOL6viPo7ClZFWQ7gp1GYggcPlqnLpaC5uXHN9Wfp7u3MX9B3GiZrCSntSYjHVRU/NkVCbdnMhFU3CS5DuXEj2c4/6gMBcRaA4XGl6YSfWxorarBu4lo0rvpVoi5eaCg2B+cH4k48bg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199018)(71200400001)(7696005)(54906003)(316002)(966005)(478600001)(6506007)(9686003)(53546011)(52536014)(55236004)(26005)(186003)(33656002)(5660300002)(86362001)(82960400001)(38100700002)(122000001)(66574015)(66946007)(38070700005)(4326008)(55016003)(83380400001)(8676002)(76116006)(6916009)(2906002)(64756008)(8936002)(66556008)(66446008)(66476007)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?uriTFs59O/JAa+j4asLs+RoRBIVvpf3PvnTMxqaYh160OfL/DCgp69VHT0?=
 =?iso-8859-1?Q?g7CymPUvZ8szmq2deP59HAllsVL1tJzWKGbgA62KR0SQzuAsqnjcrDZE3Z?=
 =?iso-8859-1?Q?o1CIIihhZSJdNXQpEfqEsnPpkC97bK7hWqd0KaSvXi5cftiNMppVUq1hok?=
 =?iso-8859-1?Q?CBW06KRsIlr4F2BjrinkLiP2QGuestWfOWX/ZsKKkGQt14pFirYxtDG/zK?=
 =?iso-8859-1?Q?wrnhQqBkf11Q5GP0YpSfYL1mj1nZvx9iRtGnAU5S2ND8B66PsQteKnkLbk?=
 =?iso-8859-1?Q?GILrg5PdarbPk5cYx8Osrd9qM/Ur1kDpM+tW7tFTMkw6evBgIk9r4wzj4w?=
 =?iso-8859-1?Q?BrQ9WjldicjKafY1LRSTE9Csu62P1E/klHM/BlJqKM2M/V/VAIcHva9tEf?=
 =?iso-8859-1?Q?gSz020BYAQfDrFIBejf4G3Cwbx5BkCaVCbWXkeaoNN7oM6nmYJ3Lftf+cZ?=
 =?iso-8859-1?Q?dYoJXKoU/KYBKehkLOnpVtrM/x1ZYR1LwYZ/3eqR+NwOc7795VqvwDk5QF?=
 =?iso-8859-1?Q?B2HTd8cu7ZZGDXBuHivCtJbjSS6MAVFHU3Zr1loLBBMk1NoyiCdqJ1yHz2?=
 =?iso-8859-1?Q?brXvRa+J46dqsN11UgjcunMfUFmy8c7kw2tlYuNJaLMaWrHbRn9flrQDoa?=
 =?iso-8859-1?Q?MLmjIjXVD8hjKJzt+zPcVMlekx4adDDNXT3056qrsxktvq2wqBl2RyW7+J?=
 =?iso-8859-1?Q?SGktpIEatWDCX8OScUXCtUVQ/4g43h/czJpoDn5Cfi2P1G+FLp7v6qeLHs?=
 =?iso-8859-1?Q?sO5tM4lw8gzKHLY0/OB7UMkfYho/CnGNJKWNVoOehNuODFcIwfJAY7nILS?=
 =?iso-8859-1?Q?G1q5nHwPk7rtYN29YlFrlJN3ghB7ZOYv+Uz6gM0Wl5uXxf9V9m/lp3eLQ3?=
 =?iso-8859-1?Q?rd76QmK71b4L4Y0++aF6I1oCUwC8eFAC3/py3ouo1t9ncWoBk95UTdqTyV?=
 =?iso-8859-1?Q?wXUu4C1AyTA8aW/n2vSZUr7J91VftaBhjZzIRPBNZYCDgPiLM7/6cJ/ipo?=
 =?iso-8859-1?Q?25py2I86ZWguF8HaRgAX0DGAUCuoHK3olvz5KNN0gek3gBdl/STobNZ1Fr?=
 =?iso-8859-1?Q?+BpDo6B/sxPZBJOOOWyVvG7qseqz0FTPtzvAQxKOhfUE2AKwQoLkVV0Pzc?=
 =?iso-8859-1?Q?GkmdRCvemLjiZ5S4ahMpxDs6L3pG75Mfx5QlIhRumu0VkGHhGGgj4kFcXt?=
 =?iso-8859-1?Q?bjbkWSOstM4HJCK+lPqW6Yhu67pN1hakAT635AGRa5oIY0utZPyv4IG3is?=
 =?iso-8859-1?Q?GUV/rE867I3oQLB2XTLUGoAbKxo9PC7XoyiI6uOyn5cQJngDMAdIJVZAq8?=
 =?iso-8859-1?Q?mrf1wuPPVbPXObsMQIZhi0MkX6FO/YA8CuSxBgE7XJ39ye6lw3Y8OT08pz?=
 =?iso-8859-1?Q?G5f/f2YEoLM8gXj97eMnlBLhmJ76G07DF5KrvJ5DmZgfUNyCUoPB86sDi5?=
 =?iso-8859-1?Q?VdiMZ5lT3VRoBzcY178QqGCq6Pc6SGfPIFwc0+mJJZQcjdqwDcCxgih/KQ?=
 =?iso-8859-1?Q?tDCaDAiWFduOS7oXx8eI4HyOoE/95HSZ8o6xmFSA8S1K7EeB9yoeVH6Pn2?=
 =?iso-8859-1?Q?hRGQNpmXubDb6f6FJgt6rOPCx2zN7DyEio3f60PB1E2zWSx3577aNhel89?=
 =?iso-8859-1?Q?acRj9LzvZXUIOgh9nZfatMPIuZvWKyATU+?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c016d6-d8ec-43d6-0132-08db08cf5f98
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2023 05:51:35.7638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O4CfvrVizZeyp3oWL5BvYDRQZNzuQYFE0404HpgsMQ+rOxXtdZhJ/yb43JuaaYp72YKsZINQcz7FVtQ4ql0alA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6697
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

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Thursday, February 2, 2023 4:59 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Thursday, February 2, 2023 2:54 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > <ville.syrjala@intel.com>
> > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > Linear buffers
> >
> > On Thu, Feb 02, 2023 at 06:51:49AM +0000, Murthy, Arun R wrote:
> > > Gentle Reminder!
> > > The patch is pending since a long time.
> >
> > Please review the igt changes here:
> > https://patchwork.freedesktop.org/series/113525/
> > then we can actually test this (and any other new modifier in the futur=
e).
> >
> Done!
> This patch is to add support for linear buffer in the driver and shouldn'=
t
> conflict with the IGT patch series
> https://patchwork.freedesktop.org/series/113525/
>=20

Since this patch doesn't conflict with the IGT series https://patchwork.fre=
edesktop.org/series/113525/
Can this patch be reviewed and merged?

Thanks and Regards,
Arun R Murthy
--------------------
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > -------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Monday, January 23, 2023 12:14 PM
> > > > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > > > Cc: 'intel-gfx@lists.freedesktop.org'
> > > > <intel-gfx@lists.freedesktop.org>;
> > > > Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > > Linear buffers
> > > >
> > > > Any review comments on this. Gentle Reminder!
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R
> > > > > Sent: Tuesday, January 17, 2023 2:09 PM
> > > > > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > > > > Cc: 'intel-gfx@lists.freedesktop.org'
> > > > > <intel-gfx@lists.freedesktop.org>;
> > > > > Syrjala, Ville <ville.syrjala@intel.com>
> > > > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip
> > > > > on Linear buffers
> > > > >
> > > > > Gentle Reminder!
> > > > >
> > > > > Thanks and Regards,
> > > > > Arun R Murthy
> > > > > -------------------
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Murthy, Arun R
> > > > > > Sent: Friday, January 13, 2023 12:57 PM
> > > > > > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > > > > > <ville.syrjala@intel.com>
> > > > > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async
> > > > > > Flip on Linear buffers
> > > > > >
> > > > > > > On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrot=
e:
> > > > > > > > Gentle Reminder!
> > > > > > >
> > > > > > > Is the igt stuff merged, and did this pass the test?
> > > > > > >
> > > > > > With IGT alone the tests will fail without the kernel patch.
> > > > > > The
> > > > > > tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2
> > > > > > /s
> > > > > > hard
> > > > > > s-
> > > > > > all.html?testfilter=3Dkms_async_flips) are passing with IGT and
> > > > > > kernel
> > > > patch.
> > > > > >
> > > > > > Thanks and Regards,
> > > > > > Arun R Murthy
> > > > > > --------------------
> > > > > > > >
> > > > > > > > > -----Original Message-----
> > > > > > > > > From: Murthy, Arun R
> > > > > > > > > Sent: Monday, October 10, 2022 1:24 PM
> > > > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > Linear buffers
> > > > > > > > >
> > > > > > > > > Ville,
> > > > > > > > > 	Gentle reminder!
> > > > > > > > >
> > > > > > > > > Thanks and Regards,
> > > > > > > > > Arun R Murthy
> > > > > > > > > --------------------
> > > > > > > > >
> > > > > > > > > > -----Original Message-----
> > > > > > > > > > From: Murthy, Arun R
> > > > > > > > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > > Linear buffers
> > > > > > > > > >
> > > > > > > > > > If no comments, can anyone merge the patch!
> > > > > > > > > >
> > > > > > > > > > Thanks and Regards,
> > > > > > > > > > Arun R Murthy
> > > > > > > > > > --------------------
> > > > > > > > > >
> > > > > > > > > > > -----Original Message-----
> > > > > > > > > > > From: Murthy, Arun R
> > > > > > > > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > > > > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > > > > > > > gfx@lists.freedesktop.org
> > > > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip
> > > > > > > > > > > on Linear buffers
> > > > > > > > > > >
> > > > > > > > > > > Gentle Reminder!
> > > > > > > > > > > Any comments?
> > > > > > > > > > >
> > > > > > > > > > > Thanks and Regards,
> > > > > > > > > > > Arun R Murthy
> > > > > > > > > > > --------------------
> > > > > > > > > > >
> > > > > > > > > > > > -----Original Message-----
> > > > > > > > > > > > From: Intel-gfx
> > > > > > > > > > > > <intel-gfx-bounces@lists.freedesktop.org>
> > > > > > > > > > > > On Behalf Of Murthy, Arun R
> > > > > > > > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915:
> > > > > > > > > > > > Support Async Flip on Linear buffers
> > > > > > > > > > > >
> > > > > > > > > > > > Gentle Reminder!
> > > > > > > > > > > >
> > > > > > > > > > > > > -----Original Message-----
> > > > > > > > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun
> > > > > > > > > > > > > R <arun.r.murthy@intel.com>
> > > > > > > > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip
> > > > > > > > > > > > > on Linear buffers
> > > > > > > > > > > > >
> > > > > > > > > > > > > Starting from Gen12 Async Flip is supported on
> > > > > > > > > > > > > linear
> > buffers.
> > > > > > > > > > > > > This patch enables support for async on linear bu=
ffer.
> > > > > > > > > > > > >
> > > > > > > > > > > > > UseCase: In Hybrid graphics, for hardware
> > > > > > > > > > > > > unsupported pixel formats it will be converted
> > > > > > > > > > > > > to linear memory and then
> > > > > > composed.
> > > > > > > > > > > > >
> > > > > > > > > > > > > v2: Added use case
> > > > > > > > > > > > > v3: Added FIXME for ICL indicating the
> > > > > > > > > > > > > restrictions
> > > > > > > > > > > > >
> > > > > > > > > > > > > Signed-off-by: Arun R Murthy
> > > > > > > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > > > > > > ---
> > > > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c |
> > > > > > > > > > > > > 14
> > > > > > > > > > > > > ++++++++++++++
> > > > > > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > > > > > >
> > > > > > > > > > > > > diff --git
> > > > > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > > > > > > > ---
> > > > > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display
> > > > > > > > > > > > > +++ .c
> > > > > > > > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > > > > > > > intel_async_flip_check_hw(struct
> > > > > > > > > > > > > intel_atomic_state *state, struct
> > > > > > > in
> > > > > > > > > > > > >  		 * this selectively if required.
> > > > > > > > > > > > >  		 */
> > > > > > > > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > > > > > > > +			/*
> > > > > > > > > > > > > +			 * FIXME: Async on Linear buffer is
> > > > supported
> > > > > > > > > on ICL
> > > > > > > > > > > > > as
> > > > > > > > > > > > > +			 * but with additional alignment and
> > > > fbc
> > > > > > > > > restrictions
> > > > > > > > > > > > > +			 * need to be taken care of. These
> > > > aren't
> > > > > > > > > applicable
> > > > > > > > > > > > > for
> > > > > > > > > > > > > +			 * gen12+.
> > > > > > > > > > > > > +			 */
> > > > > > > > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > > > > > > > +					"[PLANE:%d:%s]
> > > > Modifier
> > > > > > > > > does not
> > > > > > > > > > > > > support async flips\n",
> > > > > > > > > > > > > +					plane->base.base.id,
> > > > plane-
> > > > > > > > > > > > > >base.name);
> > > > > > > > > > > > > +				return -EINVAL;
> > > > > > > > > > > > > +			}
> > > > > > > > > > > > > +
> > > > > > > > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > > > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > > > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > > > > > > > --
> > > > > > > > > > > > > 2.25.1
> > > > > > >
> > > > > > > --
> > > > > > > Ville Syrj=E4l=E4
> > > > > > > Intel
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
