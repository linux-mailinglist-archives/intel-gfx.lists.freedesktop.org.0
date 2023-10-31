Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2D67DCA99
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 11:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789AA10E45E;
	Tue, 31 Oct 2023 10:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC21910E45E
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 10:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698747522; x=1730283522;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BuEaTWcEcX41zgP09dSadS5BuUSPm67L28vSUhvM6dc=;
 b=B7ZKgoXBzG9Qa3340nforyJHocfXEgVHPB1d2LNDgyTChvcBUccFRHhS
 jXyldAgoQCIdpWxUw8/100jhCDTw6rivniceomKpxYocUM2JCF7z/zkxj
 CSyfA158vCDQmtl2jL5JNh417ha8YVESuZy1sJ4hs1njjlZxsnKWyhnH3
 T6s2GmmQATkpR+nzIxy/xHM5Sx3euCmst5nPnK77e5DEcy1LkUUqTugmv
 WyAF3JMxL3cps8RfaPD9sSFKk9UbgQxwT18m5GEVuGL12ck3f9BF52OGG
 BcaJn2pgsKCQHUAlDv8ci3mzIQKje8egkXqsp0ieG+5q/JcN2phj2d6lq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="452532218"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="452532218"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:18:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="764193003"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="764193003"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 03:18:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:18:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:18:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 03:18:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 03:18:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HoB2vcY4OZ8l/DgEolhwsD53ivvDvv9DCagcBKwlCigzC/F/MDgl+xQEkO0Gfyo5hxvpFy71DDlPuMAohnD+IuxLJ1l1uMHyHZcPjiRPFCst+42fvy5kCodZ8aC0KH/RXVMVyRfBmwXE7GrmCtKXEUCBK02EOKAP6219vIV87kN9e7iSTCKc1xTVXjYxCtY17piIy7bYdcZefDHJMK6YzKVlIzpyWz28yahSbbqSFA8T1dssq+otNu17TZVlGiE0W9tjj7cbdkMNoI8r1X55LoZxYpKwvX7HZcrn7CLax5cm3l4m/g+KEFN/9+bmQTULZCxUJlu/lYPcfr1Je4Xsrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuEaTWcEcX41zgP09dSadS5BuUSPm67L28vSUhvM6dc=;
 b=fvyE5opNfgRRHUQ4jjhF8HtwCUfB2o2bNPNXB7e63Wug1ldhwsiiqb/QUf4vgkVmBB/mjWDevGhPNW1FITaXvV1YBgd51lcUeX9QZ9LQd9Ch2cQjPk19BwSYiWGhJuVT7kJIaDWcXdmTvpLgHHXmM9pCsKD8g7hcAkkYc9SrzUwKQEF2Y4TY+U5lVE+57xqvMSR7LHbk+QJP8gMsnGWxJ8c49qgyqsNqpgpqtjl0cqE6SPYiWaguqw5oAw8xR62g8zl2FnV194tDJrsgPiEuNeFUMn5aQlyTbnNlxkTmlv9Lbs/gSVShpMkWhBO16SQW0Sxav0x5JbuETQuONGMC0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) by
 MW4PR11MB6571.namprd11.prod.outlook.com (2603:10b6:303:1e2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.27; Tue, 31 Oct
 2023 10:18:37 +0000
Received: from DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::a832:38b1:b74d:abe8]) by DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::a832:38b1:b74d:abe8%5]) with mapi id 15.20.6933.025; Tue, 31 Oct 2023
 10:18:37 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
Thread-Index: AQHaCLvZFHhoTLduP0yaoPnP+zbcObBdetkAgASbidCAAA1LAIABkZGQ
Date: Tue, 31 Oct 2023 10:18:37 +0000
Message-ID: <DM4PR11MB6477B6FE3EB08D1758A7E615E3A0A@DM4PR11MB6477.namprd11.prod.outlook.com>
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-2-nemesa.garg@intel.com> <87v8as5njd.fsf@intel.com>
 <DM4PR11MB647706B7EA07B147429A66C4E3A1A@DM4PR11MB6477.namprd11.prod.outlook.com>
 <87sf5s5s5n.fsf@intel.com>
In-Reply-To: <87sf5s5s5n.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6477:EE_|MW4PR11MB6571:EE_
x-ms-office365-filtering-correlation-id: 7ea9acb0-cb04-4c55-7d38-08dbd9fabf5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IdAxFpw7ySqCTFlQNFLWHq6hsrgiYIQX/GlGziHhlv100XXaF/0G1K7BxUD3e5YrV+g/cPtmazJbhLMG4KW8CZP5S/cOeZQes3jrm9dKAiYQmK7FYmQZYYIJdnIqQCCSzqwK0I1mGcXdwEB2fI3/XsfsVRMoYIRL/MsvAmhKA9GzjkQUaVwIiSXgV/ZHmntDIfDk7SIzRpFEQtqGCBVR9GtMZR6SamqJpiXay1GHmAHNwP48qD+AoJ1gDcPqmDZncPcgmrhjptFhF9KV1IPg13ki42IERB7IlM7m/MqFgzZkFay0e62QWFF72yPXm4UoZw4P9aCVKLFKVnryhfFw4N/hYUP9ZDm9Jt3CAQqUKSDv21KCVIqZaxP0UJuawqlPOG/S2hIccXWxHzJNK0UHSB9MK7FKEbu+BDYcVlygrXK6Vj+2gRKqACBM4X4lYsqBhQdKxFUJdIa7/vuDhtmy+lqBlTzhj9CdVHdQn8aucmwdPdIIJKOYto5FP94VdLpQwGZysN9vK96ZbQEQkwRg9IZmHQpRxbxCBO9CkUJi4ZzY58r2zKSLmMd/LNsRF+YkSRuWmP/yv/1ZaQ6MLEcs7Dq8GzwVDgdmGuKYq4txCCLPR3UKWgGk/uJlRtJ7Qhs0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6477.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(366004)(346002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(82960400001)(38100700002)(6506007)(122000001)(38070700009)(7696005)(8936002)(478600001)(9686003)(53546011)(66446008)(8676002)(76116006)(66946007)(64756008)(66476007)(66556008)(316002)(52536014)(2906002)(5660300002)(110136005)(83380400001)(71200400001)(41300700001)(26005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?32i7gL91nrEK7JVDYQm1NUb0VeExKlAqB+E8b6PtZdLJWAr7tDcPS55kcmtP?=
 =?us-ascii?Q?o32SKpUjgDTy1CTFG13pNJddDwNpjYV/DC/ihw0073VM7uo6oyskkyT/fMWC?=
 =?us-ascii?Q?xd0c4YuwxxIrlOgizAGXCqIGZE7U/6PHvZeTCBtKNhEmDbEgbuR02mwffw/a?=
 =?us-ascii?Q?DL+SNZdCRkGQFZ0aqVIF6EAQ6GvfhekcXd+xhRwK+0ElZxy0D+UCdISuqaxF?=
 =?us-ascii?Q?CCKVW2AOb/wzFnu0m53ftWCP23sVClCDoTSRITU+26uu9DU52KQhe1TweRiT?=
 =?us-ascii?Q?VUdNo3w1tpuTtcJaDYaHit0cQ8U7TFKdM8b4wQLRxZfbagF8IJha+04yebG2?=
 =?us-ascii?Q?LkIxQF4RRKf5bXx8qmu9v8I1kPM6xQwOegDn5QMUpIgAA1fjnh8sh6ROG8Cd?=
 =?us-ascii?Q?85GwicKeVO4QbP9eVHtD3nO6+5Je2FmLOBWD67Lpq44Bu4fL0XpBWKMcOjEg?=
 =?us-ascii?Q?1SHmALdzKj+PZepIxfj5hVg3h7iWE5HKNDBAJAKJ51YksQwzIAVKSzSxgS1D?=
 =?us-ascii?Q?RHT8vugYBm8SqAIY/byW00uIvMXcFscWO6iEFFmFno3DYhD91nsiPQzxL4on?=
 =?us-ascii?Q?hvFhO8TzKL/F3G1upWTGID3wQGDLK0NgMYa7GWlSw3X8PVDzMPeXZ7uJd9u8?=
 =?us-ascii?Q?yp6/ZtyfUxvv8MJfEp3mWx2Eypbrd0z/IqNJKso8sHIo33okid/xaqp4A/LD?=
 =?us-ascii?Q?ycK/O2tzAX6TzwVpkdATDphos7qQtXcYzct6YH2kTmmxlBxxnBkXwpkUS3e6?=
 =?us-ascii?Q?zQo4pJyCgPQmhH7R2BHlUTSjTEEusPj5d+oQuz3ZWd/QuOIcFyy0qbV8P/Me?=
 =?us-ascii?Q?J6WKIMS6Qt2MGADgwFahvoMxad5d6FcinmmFWsAhYcOPUziLHzfbsdL7xzC0?=
 =?us-ascii?Q?RFpLOPOTANFON/SIxdm29CLQk1uLS7t4LDorApKqUrIhkpWdxBoSPU26R/iq?=
 =?us-ascii?Q?MpdoFdNcICGQr4YG4R21N9i8ZOJFGNXoDayU9juZ2nO/ZgtcVjJfYB1dyF+E?=
 =?us-ascii?Q?l/L9YXep0hrO/2T49hRpZP/fRLFHdTXZLMF2Q7Pq976tHsEHcQYHkDSwH8gB?=
 =?us-ascii?Q?BFisJApVAFn8jepHS132L03ggrELZwYfnXf6xLTy2OaQBmcIWrm0bzTI4mIC?=
 =?us-ascii?Q?z9xYTKOmfZYMXO0ejHVxQfSKClkJmfjjzYui7pZEskh2ZtACbyiyZihZORL7?=
 =?us-ascii?Q?xLqdlfUTrqs+aeMy+ZleVA8X6hxgMMhQb73IY4//BGEw0ET+26UCeZoVYQBd?=
 =?us-ascii?Q?drskI0Y9Y0kORbbouWIaayegdTglE4V7d1jNk2h0IQ3oqORtLRfmyjfPjr8l?=
 =?us-ascii?Q?YXl7+47NKy5t8M6MxjZFWGwJoYJ+3CkNg2N+aEQNKX4OtLvoNLm91aR38JJK?=
 =?us-ascii?Q?LEd0jpI4wKBn8jGDLQbBE71u50R945xpwyszM0jswvuOHMNtU+1hcK6c865P?=
 =?us-ascii?Q?i1lek5W9aINXoHTE8o/ZLNkkQtQouYRLMI6cRNPM+fNA0jiWnH1I23pgdI9u?=
 =?us-ascii?Q?vwjJkyr2/SigoNkgR0vvXnwUTKogjMv1SU/O52t01wRtGhPGAlU/eUZjEQ23?=
 =?us-ascii?Q?IltcB6FTEvyv9EuNXjydm025Lw4ox5UE2Z9b6KKO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6477.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ea9acb0-cb04-4c55-7d38-08dbd9fabf5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 10:18:37.8468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4qbNzt9B9piInwBUTLnK29LcJb07IHAxUOlBFnf8qyOwdE2DVnLhNRqX1UvOvgmuFxmQfwFhnac+/hwdHDXag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6571
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
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

This is will also be caught as dark screen.

Regards,
Nemesa

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, October 30, 2023 3:50 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for darsk=
screen
> detection
>=20
> On Mon, 30 Oct 2023, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
> > Hi Jani,
> >
> > Sometimes there is an issue of black screen on the display due to numbe=
r of
> errors like invalid input buffers (black), some issue with display progra=
mming (no
> planes enabled, LUTs zeroed) which means some problem with DE. Upon
> detection following steps can be taken:
> > 1.Print in dmesg so user can be aware of this issue upon checking the
> > logs 2. Correction steps can be taken and the design is in progress and=
 will come
> up with follow up patches.
>=20
> And if the user wants to show a black screen? Does this feature flag an e=
rror?
>=20
> BR,
> Jani.
>=20
>=20
> >
> > Thanks and Regards,
> > Nemesa
> >
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Friday, October 27, 2023 4:40 PM
> >> To: Garg, Nemesa <nemesa.garg@intel.com>;
> >> intel-gfx@lists.freedesktop.org
> >> Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
> >> darskscreen detection
> >>
> >> On Fri, 27 Oct 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> >> > Darkscreen detection checks if all the pixels of the frame are less
> >> > then or equal to the comparision value. The comparision value is
> >> > set to 256 i.e black. So upon getting black pixels from the pipe,
> >> > the dark screen detect bit is set and an error message will be print=
ed.
> >>
> >> Okay, this still describes *what* the patch does, but not *why*. Why
> >> do we need this? What for?
> >>
> >> (Please just reply here for starters, instead of resending.)
> >>
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
