Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B03609E15FB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549FF10E26C;
	Tue,  3 Dec 2024 08:39:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aOnHSqIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4820E10E26C;
 Tue,  3 Dec 2024 08:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733215143; x=1764751143;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OTEx7yXoLIsvmIKcTj0c5Y+KXWajZxVqUI0kY46AJrU=;
 b=aOnHSqInmsdnfyXXBqKx++zMjidthFizYSNm7n9DoGDjYmCob2JMRzkK
 C/XZt88p5XAr1XXg+Srjfw8LO/dSDsdHPbi6hFvQsAxqarw0MKWU7kVbx
 e2RgVmCK7yJVw5DtLPxZNYuDDthFhh7F/J5ImR2vRKLVlOj1C0xvX7/Hc
 4o1Pq+Uel8tBB4PXu/wsAk+4tA36/VI44u63gM9ZItJLb4TGGlNInetv6
 f8v0PgOs+m42rWoVWuGeHp/31cxRh25/PRR2RjYKMTc4MpPRReugkwkws
 uDLdRqJA9q8/QnnZKJCkv+MGjMvrg/O4da0VQbHR3D8R1rAlplMN1C7Ad w==;
X-CSE-ConnectionGUID: BkLENwssRri4GP+3rPQ34Q==
X-CSE-MsgGUID: KVsVSrouQb6Ts+XKeMk+Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="50827404"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="50827404"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:39:03 -0800
X-CSE-ConnectionGUID: 8+vmhYR0QMy28wx0hndUTA==
X-CSE-MsgGUID: g/FBWRt3RBuwGjFzirlMrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="97438518"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 00:39:02 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 00:39:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 00:39:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 00:39:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EskZnmiF6L/L3r1aGfKFVU5MUjRUc0HlEHCKw9sBcyDfbutJ/fRMw2EHHTBFYvxndESusqXagXYUJ3s8vwv50e4q0+zrGq/CLB9zZucyYBtPrEEIZlk4EkbLDsFVcqJrP5vaeTEaLXg2biFb5knh9V4JzV3OFC+A4fe9axycHPahFTkAMEYJXfMC9NVGGc9hpIlASGxdYx444iBrFNaOG4pabEGekFy7gtpu1rZMRykMulRtcyrIw+ROD4LXAaCAcUrnpO72SQu+S/ldIPU4rUi3jr8RkLERk7VZ8nhvC6woaDTsUGX95lyDEiFzJAKpSLDOqH84oqfIdZ4ke/NexQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PnDpKLEs9lZN9aSszXVC5qA3Y0GFfSHdobroFS3NhnU=;
 b=hrfu3+SVeu+hbaXN+MazZmA9KhnHcmPx0q2fCA0FRzixul+4GEwKqdhN1hY5gdms0s0fnNH7ExaYczqKCFYWc7GcTsbD7YsSbzCQotvk6L/8gp5llkIhHWNwWBaf8qdkvrXyZ1+1YfnmpD+/BUFVw4cIgx8XPQfIYcuWLbUW9X5Em7p1OuWIeKypXhfOIlbI2CD74ZamiYetDm91MbZl1pV/psFPY0nZkCgPsC54VWwPWbm7jw0QwpKNvi1TU4eQeYvtj4rAjSIbuLQgSj2+jEd/6QXpGimVn8KLOL85WuRgRiNMHlNdyopJdoRE5TiwPTS3VayWjpWUDgGuagbRfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ1PR11MB6105.namprd11.prod.outlook.com (2603:10b6:a03:48c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Tue, 3 Dec
 2024 08:38:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 08:38:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbN3fQs5HK72mma0i9ovFfWRrooLLURQ8AgAAJdQA=
Date: Tue, 3 Dec 2024 08:38:59 +0000
Message-ID: <SN7PR11MB67504A01FA6C178DF2F75777E3362@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-6-suraj.kandpal@intel.com>
 <IA1PR11MB634835B812B15AE3FF02439FB2362@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB634835B812B15AE3FF02439FB2362@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ1PR11MB6105:EE_
x-ms-office365-filtering-correlation-id: 639eadea-2791-43a5-f9b4-08dd1375eed5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?x6PGGDCEsLZkbT2I3dCyLvCoTVQFQ5l1qutMjjGRuWR0d1LcyLoK4n81Wr4x?=
 =?us-ascii?Q?SUxQsMlBwzeGtjggZq4thSZ4HS/RqSWeRfmH5Mj2FhRNJ/Ap5Dx+fMuZP7lM?=
 =?us-ascii?Q?Rnxg31DCEtArhwlNQ5LvGWGbC3K47J1r7ajUL0KkGMFAuW5q3CeoLBCHEVhS?=
 =?us-ascii?Q?2yU5z68yKsES99Y13T812wBn+J9TRyVm1rDZxWqPRpNa5m5kBT3QwDlZw7ad?=
 =?us-ascii?Q?gVmWNcTUe7kP5dJvjw8GWMjbkVWdEB6iOgbX3aLh1siWhBki+c01vFBoEQcr?=
 =?us-ascii?Q?kWiKjtOuKaScnvphYGgZWKe1rWo9O6e+245QmVFHmu9u3G8LKN1Yr5/ALbiP?=
 =?us-ascii?Q?O6tswYN9I5cujZW3OwjuiqScArJYVLl+mQfvUVRQS5Wr8f9hVPfPp+64ojGk?=
 =?us-ascii?Q?4J5Z0JoFfgZwa3sdVH8p+tSAojpIhS6aNcBvX46VqNsImcvTKz5eCFB+p5S2?=
 =?us-ascii?Q?cqoXZ5qsapC/t1irHHgWS3uooXrZRdUN6zcZ60wff3NNWOxwikYExSv1zFqp?=
 =?us-ascii?Q?2j/7YzrnFzQqSWr1nMOVC4aVbaHtPwS3QWp083goSs2gf3PjAR0ycuNXwnwF?=
 =?us-ascii?Q?+hya4iEijyAxhMsst/JT8soF+luA3F7V0UuTR5tngqJdVrskryvmmBXHPCjx?=
 =?us-ascii?Q?+B+bSM2mXFkqjwYTn57lPz6gWeKdiRQ2DEfrxNRiF5INFGauc1iGNYjY3uQR?=
 =?us-ascii?Q?ayV27mNNGHQ68/Z9cbO3vnLio0OfHDsCQrekhigSRZFlrErS3jkiRVplXzuL?=
 =?us-ascii?Q?FGyKthjFnB9ifyrK6RyW7vm4rmoQ2JgmSbbeF59nqnRl7cDfVLXEx+ZyKgoM?=
 =?us-ascii?Q?cOy3vmI5swHgPi97ANOQRuTHdbfpBiR+Mhx64T5jDg+wJQtlnfsxD2GrSpxj?=
 =?us-ascii?Q?Srp2Lyby9dgdyk56Nhap7kavu4/nq+sTV2tir7RRTSWBoPZC11ZlrtK5Yt9R?=
 =?us-ascii?Q?aeapjVoW6GB9s6q/6CqGZDakZOpft/5eWRafQloe4mZw8OCo8QclQem6/IAp?=
 =?us-ascii?Q?tXJkPsEeoHo6eWU7Ro80aO1zfj8sXyiUqIGMby01Lf5H/AYFivyTXnOV+wjs?=
 =?us-ascii?Q?3s7vMeR6c723CA0HMDS1GzLnIE1lEB3I56JJbrMJSjyTVqF8VeTNL+RRzxrG?=
 =?us-ascii?Q?+mVxHEaDqKdrPZ6GoWYYMfqFZm1MvBYkihC89VRk9EmfJF3PsOs8kgWQmBde?=
 =?us-ascii?Q?qJzrgU6f86Th2hDKlNJGGs5hKbQzuKUKCZqj158FWw2ayW3X+lC40Kj3Utyw?=
 =?us-ascii?Q?ld+8qy4/tLC944T/7MuS86gza2H6c2X/zuXmELXRsnCLh4ITSysfvWSmf3/r?=
 =?us-ascii?Q?vj2z7qAD19/7LooICa9qypQuV2yoOYSFnkx1DPUAHUolJg8uRdcODAekwJob?=
 =?us-ascii?Q?Q54wo388V8bUWTaQzZMyI/OC2ldv3OsraHwnyQAnZ1YgAoZKmw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?syy2fLSTkiG8xYHAjN2VsGSChYxkpNSqor7I04tqQx1jbh0HChOdR1aqTKIs?=
 =?us-ascii?Q?hw+UXLbcirzQ7f0muIPz0ZJOd85xCYUsdKWeUlqr+V9KVQsxbmywNASikRc2?=
 =?us-ascii?Q?5GMZ1T9JHYvtFjjAYTJs/cIVq9664vY0F4hU92pZnGKN9qMaSvap9E5iz1v/?=
 =?us-ascii?Q?B+hmdwZKl8ngXYos5CbxPRDN9RkPjLQDwLSe+KyyrBM5zVTOEChbzwBTTBrb?=
 =?us-ascii?Q?+JM3JECBbXvyLH5STDch+hy+DAVl6Q4U/RzaTBKRn84lRPmYn8ad1zj1Mrct?=
 =?us-ascii?Q?ELgxtBR2ZNqTA3NpdYQn0lsRbTY14gqbGolNlRbTLnxfGqrI2FCcXHSeTCAY?=
 =?us-ascii?Q?XH2MuzBhkAeML1mfaPi4lGUSXWX7wY4ob3FVpooZH69G/k3C2d5DMNqzgAHK?=
 =?us-ascii?Q?2SWu69CGIHdMgFuoQqiUJoSmrVoVC9NjGKzjIYmXeqlocWsv8QjrcR5OGZ7a?=
 =?us-ascii?Q?d2y3sur5R4x0tqzVgagf+dNB6Fm1UT+9umXhtk7qDX/l2y3bMSc2f9uRZWGP?=
 =?us-ascii?Q?k43N+hs7aiKFA5bGAkXDBNajibqNqnoFbGaZP8mbHRbNPg4tq4XH44yWnT78?=
 =?us-ascii?Q?4vHtg5MS4yo063R1SbuPOyKulBjJGf9o0A7X2TYnBGEbBqomo4KsuS1iWdOe?=
 =?us-ascii?Q?YDG2VbYxD6Hgs28SGrvsAeNy57vLCSK4r5xLeNxP5f2NNKb9iNOxth/FpLdR?=
 =?us-ascii?Q?USFm8AYde9SPo5qYUh8Je7/LzHHFjpto6LFzMd4fAifsUdjaPbJreVwzsRVg?=
 =?us-ascii?Q?UDNUxb6KmsHGWv1L/Gan1p9JV2xU4kf1bwyCd+CjwScp5UGZyTTQSUC86plB?=
 =?us-ascii?Q?NzvQwxLngOBcno/4iyOH7F3hEzNbnPIfKJaiBY7XjESmDi/qsgDn4FqoGXV0?=
 =?us-ascii?Q?I/g7vTHhwTdyvPmvkzR8uM6IqsRr0/GoRO08wH/luIvGQXvkl/WFGLJimgjq?=
 =?us-ascii?Q?5o1d6A84hOmClqZHvDGg8w8g3iZ6sPNCKAr5YEuU1C3L97ZuXV5dxavUfBaB?=
 =?us-ascii?Q?QASoYb4AE+rOwyE/8UdAJjB9GvYhJ8HOflhV3DnV2IRzDN9Kqi1/5fN7t13Q?=
 =?us-ascii?Q?BdEAUhpYqZbOJT1EOL5rVnwxOj3Xlmnc99SDvem8MEiogsZBGMdHiZX/Uegw?=
 =?us-ascii?Q?cZnYhPK3tQqKfXEaCwStIhhyqPzQH/2sapRycdykFykwjPPS3xAjQOHL2ueC?=
 =?us-ascii?Q?FE46uFuaycHCvissxpEFVfgauTO1+o4ztngL2t+0GOxe7CG5M6MY7+ADI9ww?=
 =?us-ascii?Q?0Y7mOkSwQqCbwfh4mMyNaUwNStOXDls319qwo1cOxlGJS0XxxC+Oq9A7C4PX?=
 =?us-ascii?Q?2YR3tkF21mBZ4jFAi7ix1MlHJX5vF1oZcxkDCCirGW4LMzWwsyvRCgNl5T7j?=
 =?us-ascii?Q?kIvabgvVGaGfw68Yztdz6Ir+t9Qy1LhkJ0TCHQRBkUFlbktkOdfJEZVZKP3j?=
 =?us-ascii?Q?2LIzBA+wwRu68hMLZ7B7Md7RklMt1Xu/AiVU0FjHGJoGRlcUF/inbvwS+Za6?=
 =?us-ascii?Q?ZRtBLKNtmT8kj1R9xNveLJXteSC6DE1N86jGu9hMuwVJUXbx6TRDEfrWvAwZ?=
 =?us-ascii?Q?i1Qf18O6CbHpL22aHqnY/MZuJYoVMD5eb3QPw/1P?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639eadea-2791-43a5-f9b4-08dd1375eed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 08:38:59.5020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ZJhHelPHiQsWRRDN2hLsl85KGXvaSnvDqyftnF8Cd+jdh1P31uz/MsshyldBaGCbgkaqzYWsfUTOHMNbRuS7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6105
X-OriginatorOrg: intel.com
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Tuesday, December 3, 2024 1:35 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
> PKG_C_LATENCY
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: 15 November 2024 21:31
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 6/6] drm/i915/wm: Modify latency programmed into
> > PKG_C_LATENCY
> >
> > Increase the latency programmed into PKG_C_LATENCY latency to be a
> > multiple of line time which is written into WM_LINETIME.
> >
> > --v2
> > -Fix commit subject line [Sai Teja]
> > -Use individual DISPLAY_VER checks instead of range [Sai Teja]
> > -Initialize max_linetime [Sai Teja]
> >
> > --v3
> > -take into account the scenario when adjusted_latency is 0 [Vinod]
> >
> > --v4
> > -rename adjusted_latency to latency [Mitul] -fix the condition in
> > which dpkgc is disabled [Vinod]
> >
> > --v5
> > -Add check to see if max_linetime is 0 [Vinod]
> >
> > WA: 22020299601
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 20
> > +++++++++++++++-----
> >  1 file changed, 15 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 0cc843314358..e9a60d54afef 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2861,7 +2861,7 @@ intel_program_dpkgc_latency(struct
> > intel_atomic_state *state)
> >  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >  	struct intel_crtc *crtc;
> >  	struct intel_crtc_state *new_crtc_state;
> > -	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> > 0;
> > +	u32 latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D 0,
> > +max_linetime =3D 0;
> >  	u32 clear, val;
> >  	bool fixed_refresh_rate =3D false;
> >  	int i;
> > @@ -2874,18 +2874,28 @@ intel_program_dpkgc_latency(struct
> > intel_atomic_state *state)
> >  		    (new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax &&
> >  		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline))
> >  			fixed_refresh_rate =3D true;
> > +
> > +		max_linetime =3D max(new_crtc_state->linetime,
> > max_linetime);
> >  	}
> >
> >  	if (fixed_refresh_rate) {
> > -		max_latency =3D skl_watermark_max_latency(i915, 1);
> > -		if (max_latency =3D=3D 0)
> > -			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > +		latency =3D skl_watermark_max_latency(i915, 1);
> > +		/* Wa_22020299601 */
> > +		if (latency) {
> > +			if ((DISPLAY_VER(display) =3D=3D 20 ||
> > DISPLAY_VER(display) =3D=3D 30) &&
> > +			    max_linetime)
> > +				latency =3D max_linetime *
> > +					DIV_ROUND_UP(latency,
> > max_linetime);
> > +		} else {
> > +			latency =3D LNL_PKG_C_LATENCY_MASK;
> > +		}
> > +
>=20
> Can this help, to avoid nested conditions ?

Sure looks fine to me I can add this change

Regard,
Suraj Kandpal

>=20
> if (fixed_refresh_rate) {
> 		latency =3D skl_watermark_max_latency(i915, 1);
>=20
> 		/* Wa_22020299601*/
> 		if (latency && max_linetime && (DISPLAY_VER(display) =3D=3D 20
> || DISPLAY_VER(display) =3D=3D 30)) {
> 			latency =3D max_linetime * DIV_ROUND_UP(latency,
> max_linetime);
> 		} else if (!latency) {
> 			latency =3D LNL_PKG_C_LATENCY_MASK;
> 		}
>=20
> >  		added_wake_time =3D DSB_EXE_TIME +
> >  			display->sagv.block_time_us;
> >  	}
> >
> >  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK;
> > -	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> > +	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
> >  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> > added_wake_time);
> >
> >  	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
> > --
> > 2.34.1

