Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424A81C48A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 06:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2AD10E74C;
	Fri, 22 Dec 2023 05:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E676B10E74C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 05:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703221639; x=1734757639;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4ahOru4Cutp7+Z4ywSNy8lLmj6izJl1faNnj1wNthJI=;
 b=oDEOaTPr2sTFf0p+sWh5P6NesdfN3UvzgcWmwIR9QJAzF6bpHwgv1hog
 SjkU8gp0w+1Eo8vHF9RX66JyLoF1Gwr25jNxDR1VdahfAM1OsU4toJtEG
 6xVRWiGEuv/LzOlelIgzEbmg4erILPNkqubjzBx0NL+m6e7NMvtKLKpZW
 PWzbVckINNmlWFJS8+AE84yWV1tyngEuGHZnqiNPl6s/0MFBIdgZ9i67i
 Y3DC0Cu+Z92CAahPl8FTlRsywbJCukHpCdlGrsT1hXNGTnlnWugB/nxyN
 IBA/qfLIYu/Sgeg5ecQ90s+aWh0vXs3G1xGJyND8w4uI1FB3FaWNUbuf2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="462515205"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="462515205"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 21:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="11355278"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 21:07:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 21:07:19 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 21:07:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 21:07:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 21:07:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=janCInzB6M6gA4PAGmzU/WMsNNJElxXGBoOAY+64AaaXuZkgZtwaUsLjuVcduF5DeWUUnMSdrHmt7I7C4FSU4QylPWy2bRIlWUAcXj8sVusZ9mCwxW0a5T+188dpUebBFtHzyFhiT6URMhKC30oPvXQovkdEZECkcyhCRRLyH/LmTMMfNmSuMFUEKjJJKGP9pB7YB3rgIw0P/lQX4+SMvjVmTV2F+tyISIctF9DkJLC91r1Yl28Q2fbJOugmTAEF4oJ+cVXp1cQU15UMPdkdTRbqfF0kzfL2suyAoJWe5XsK+n+f6gljXggirjWAheTrhDCKbRbVrF4C5mzO67MXcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xxAkjyH/Mr2i6OpYoTk8ALhuLDBZZDRgqFy8lmxAafU=;
 b=RvEALsxj17FEZlq8qMnY2a8pRHjbu4cTOO9dclXY+xH2Szrw2P68H4WPw74lEqh21IDMtTQE2yVcIfGh2HkHCiqS9WCZl+cv6tHwdbyk3gRbcYcAVI/z29hMI+u5hhZevdGONaEB8ZnSFhBF+5vxedGaZ80dPD+X8ZdzIytNYLuHnji4VBW071wYea0he7KuqY17Da4b7GceJTHBMZVVOKk4LHqR15CyP9DIHUyhMVQXVh5dhodRczBoJXIfX4JW8RqTar9ERHDccLZJeBexOOTigaLnxNcomAFdXbxNa7nlddxPjfJRaeLhfezbD+FqzrZ2moBBtbtPovzhl28OuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ0PR11MB5597.namprd11.prod.outlook.com (2603:10b6:a03:300::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 05:07:15 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Fri, 22 Dec 2023
 05:07:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy cursor
 updates
Thread-Topic: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Index: AQHaLa7EuYvc8C70fEuorcQtx9WAKLCyFRmggAACpvCAADQygIACgf4A
Date: Fri, 22 Dec 2023 05:07:14 +0000
Message-ID: <CY5PR11MB63445EBFAAC4041CFCB5BDFFF494A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-9-ville.syrjala@linux.intel.com>
 <CY5PR11MB63440EB2396C4C24EE0C1A1DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <CY5PR11MB6344EA05F9B4796CCEDE704DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <ZYL-1416tbqydw0C@intel.com>
In-Reply-To: <ZYL-1416tbqydw0C@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ0PR11MB5597:EE_
x-ms-office365-filtering-correlation-id: f72e0029-683b-481b-fec6-08dc02abdc7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v4j91AqLb5KQW+5CP0D2s6lCuLcI9FpvJFJP7XNfRqq9muNA2tosRm5r7SD4/kxArLAimz5NRjx/qEzNBEnnKVrGmZGxbWJY1lT1j3FtfW8R2xugzIemjuNHFolnKY5rfly4QrcNvAQ9UpBwwgzRXNQWkK7Q7SiO3cQEMHa5tSQxRealYUuBpUCsPAH0+Em7sl6wWcVMejYObM4fQRei5k48AKPUy2fpCMaS0gKEz3DLWjZaK4nSfSQSdAYxsMtGTICU1gC0G+ov89VvREa8h06BHn1aid/XSxur0u/etWTLPvue/iUj+pyW2OIND6vJ3ACFp/1dkmS6MgJcbJQxiPL9NJlFn1GbcguDMNbTWbNCeORNjE9q4gtoFxzzQ+bOUKH7nwqZl6ln50qrCgVd2nanG9XuqIx8m/ua+t08zXHDoYHdZMmohjoIOQo43YwZ0pZKmK2JaX21cKcoqZ/5vZ2mIwlIco73Ks9gG9ZOEP4/53gT72uiJL8I6zup9I0hOUSfimQ7U1y+wlx+cQYhTV9sHZHy8efYn4IfQJo8aE0g7m5bI45mG3In15obpprvWysHSzR1L7viuClI5fxcASjiWcqUm+ZXWvYOAoOEbkjBaoVZrXgYvzBCLQkbyRli
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(136003)(376002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(76116006)(4326008)(122000001)(52536014)(8676002)(8936002)(64756008)(66446008)(66476007)(66556008)(66946007)(6916009)(316002)(82960400001)(2906002)(41300700001)(86362001)(33656002)(38070700009)(38100700002)(5660300002)(478600001)(15650500001)(9686003)(7696005)(6506007)(53546011)(71200400001)(66574015)(83380400001)(26005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lYRR+0BquooXE26DNVI7u/ufvkPm+m2htBehgzUI87EIcbAFi3wMdXVSyl?=
 =?iso-8859-1?Q?tCEEnmVjhPFQ8fiRQS+sLQwhS09iMgarQn/Wb7qLoDyhsVkeQ4hsSXysnk?=
 =?iso-8859-1?Q?n9ErqLjiuYmPeZAxQblhuoDxyllFD7gpH4N0CwpXTXzgUaN183dug+zUj4?=
 =?iso-8859-1?Q?0kwIxs5FrbBUi71N3+G+4WOtGdqiHILA12llVnHBKqN4TpmKaRtchDdcGk?=
 =?iso-8859-1?Q?xdSxhPhdwnLJOujajpiPqd3wibkAoGchqFpjlQc454oiKaCpzAywe9Q0+e?=
 =?iso-8859-1?Q?VpNPkFN+y3V0ZXY4DzAr5sinWzjlKHZo2oCEUjHJEHl/mLeNsfGHizEI5t?=
 =?iso-8859-1?Q?N9wNjvGhaiX83ajfFeqXDVV2vUUTGFsP8KCXQidsfvQ5OSdkag/4oRhLgd?=
 =?iso-8859-1?Q?2reQk8VItcHZcWApXh9bnmFApQZ0tVf+LNmptlsLyHIWgXVkv+tERP7g5V?=
 =?iso-8859-1?Q?NsRgvMPuykL87kztPB60IvtLnUU+8AoH50jlMSeKfVuwAO9XM0HGpKIlEw?=
 =?iso-8859-1?Q?i2O7y/2+Sd4OEYA7MAuAL6hHEUHtYzhlZGfJOqZe+1trtMWSjss7ylwaR6?=
 =?iso-8859-1?Q?028nNcAWJlei50ekVjCR+XcA3WeP/i+KOAh2jRZ/gJDFzWGooHk3ZcTUfh?=
 =?iso-8859-1?Q?DcBQeh6Vsm63a+f/ruJoB6jf7kFKJkdP6KO2kYDgz76GFvxRkph2IY66HU?=
 =?iso-8859-1?Q?dXaNsxiAySA7QMXALBdT/YQCJKfI0sdvbQa0nIBUtRW/p2jhOx0Nf6BVi1?=
 =?iso-8859-1?Q?IH6aAAO3hZvNPgFPF/T9q/CsJMz8bebljF4j1aMr15RA+iw1HvBjBimrsV?=
 =?iso-8859-1?Q?qh7ty9iXHGazUJ8czuZjYYj0CPj5DQumhwaV6TUFtPzGurcR4dvEI93Rj0?=
 =?iso-8859-1?Q?OEexmORWG58h+w59+nH4j5txVqW+gJ3ARe/ZKrN6OuPS871W2llUmTIQjO?=
 =?iso-8859-1?Q?ZevmD2Jpmb+C5eIf5voz2cBJnD4mEFkvblmG7LhzmdQdxsUfPOz3yndC26?=
 =?iso-8859-1?Q?ar+uqcF6sufuKBQ7c+hFN9Ncerv7ZIlz2fk/yriTairmwg2YfELv5ED4NR?=
 =?iso-8859-1?Q?9qWiT/SBEZsPShCk0x4eSd4amAysrbHekaN+soTrV4O9H7NrradNzUvXhK?=
 =?iso-8859-1?Q?l4dkFSZoqB2XQYVaohfgG0VVvxpZ8lappyjFQEgCz2uj3YDJ9B5s76FWID?=
 =?iso-8859-1?Q?gPWEfpTO8XdVNqnp74N4gIquOs6meOUryfmM76ibSmMSLX46IJ6HTuVrr1?=
 =?iso-8859-1?Q?eoj82FNxWWnO38bfpehWlBVk95OiRbs708Ml3yptjgWXbo/EJTO/bbUPBv?=
 =?iso-8859-1?Q?00wfHYw+twEabXNmkygNiR8ax9mHj0AHPh9KkTkIj///B+TGbWspWJ8Et/?=
 =?iso-8859-1?Q?ETRkNcRgvlRn2oCyQZq6sclQl5y83/OXeHEAQFlePO6OGDKVWnOmQ2aYnq?=
 =?iso-8859-1?Q?GS6xJOnbhjLsKja4NR75vSL4x3c9TWe0dKAE0A28dJI+CpUt+2hF3ij11S?=
 =?iso-8859-1?Q?Q6VqQuqPg0ePSTUF9vOKHczTyjnzj3XTyUmadHc2e4mOHO9BndGwl0f7Xh?=
 =?iso-8859-1?Q?7j5W6y0fx5KueqXVAdaNL4A7imgM7+aYNzFOxGpEm4J+LjBTEQTQSQeGZQ?=
 =?iso-8859-1?Q?j17IpK/vzczRzD7nNwslnMtzG+rRtYVBmR?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f72e0029-683b-481b-fec6-08dc02abdc7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 05:07:14.1481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kIotTwO9b133g0Ehsxn1XSH8bi3S/gG5KEpdBknD8bxVZkFx72EMnytob2T29zSbXaOU67QFsmxMRDq22gQjaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5597
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, December 20, 2023 8:19 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy c=
ursor
> updates
>=20
> On Wed, Dec 20, 2023 at 11:45:44AM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Shankar, Uma
> > > Sent: Wednesday, December 20, 2023 5:11 PM
> > > To: Ville Syrjala <ville.syrjala@linux.intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Subject: RE: [PATCH 8/9] drm/i915: Perform vblank evasion around
> > > legacy cursor updates
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > Behalf Of Ville Syrjala
> > > > Sent: Wednesday, December 13, 2023 3:55 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [PATCH 8/9] drm/i915: Perform vblank evasion around
> > > > legacy cursor updates
> > > >
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Our legacy cursor updates are actually mailbox updates.
> > > > Ie. the hardware latches things once per frame on start of vblank,
> > > > but we issue an number of updates per frame, withough any attempt
> > > > to synchronize against the vblank in software. So in theory only
> > > > the last update issued during the frame will latch, and the previou=
s ones are
> discarded.
> > > >
> > > > However this can lead to problems with maintaining the ggtt/iommu
> > > > mappings as we have no idea which updates will actually latch.
> > > >
> > > > The problem is exacerbated by the hardware's annoying disarming
> > > > behaviour; any non-arming register write will disarm an already
> > > > armed update, only to be rearmed later by the arming register
> > > > (CURBASE in case of cursors). If a disarming write happens just
> > > > before the start of vblank, and the arming write happens after
> > > > start of vblank we have effectively prevented the hardware from
> > > > latching anything. And if we manage to straddle multiple
> > > > sequential vblank starts in this manner we effectively prevent the
> > > > hardware from latching any new registers for an arbitrary amount
> > > > of time. This provides more time for the (potentially still in
> > > use by the hardware) gtt/iommu mappings to be torn down.
> > > >
> > > > A partial solution, of course, is to use vblank evasion to avoid
> > > > the register writes from spreading on both sides of the start of vb=
lank.
> > > >
> > > > I've previously highlighted this problem as a general issue
> > > > affecting mailbox updates. I even added some notes to the
> > > > {i9xx,skl}_crtc_planes_update_arm() to remind us that the noarm
> > > > and arm phases both need to pulled into the vblank evasion
> > > > critical section if we actually decided to implement mailbox
> > > > updates in general. But as I never impelemented the
> > > > noarm+arm split for cursors we don't have to worry about that for t=
he
> moment.
> > > >
> > > > We've been lucky enough so far that this hasn't really caused
> > > > problems. One thing that does help is that Xorg generally sticks
> > > > to the same cursor BO. But igt seems pretty good at hitting this
> > > > on MTL now, so apparently we have to start thinking about this.
> > >
> > > Was not aware that a disarming update will disarm an armed update
> > > and make the vblank sync irrelevant. Thanks for a good writeup
> > > highlighting the issue, really helps.
> > >
> > > Yeah, this should help maintain consistency with cursor updates and
> > > ensure the sync at vblank. Change looks Good to me.
> > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > >
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cursor.c | 16 ++++++++++------
> > > >  1 file changed, 10 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > index 926e2de00eb5..77531838001f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > @@ -22,6 +22,7 @@
> > > >  #include "intel_frontbuffer.h"
> > > >  #include "intel_psr.h"
> > > >  #include "intel_psr_regs.h"
> > > > +#include "intel_vblank.h"
> > > >  #include "skl_watermark.h"
> > > >
> > > >  #include "gem/i915_gem_object.h"
> > > > @@ -647,12 +648,14 @@ intel_legacy_cursor_update(struct drm_plane
> > > > *_plane, {
> > > >  	struct intel_plane *plane =3D to_intel_plane(_plane);
> > > >  	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> > > > +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> > > >  	struct intel_plane_state *old_plane_state =3D
> > > >  		to_intel_plane_state(plane->base.state);
> > > >  	struct intel_plane_state *new_plane_state;
> > > >  	struct intel_crtc_state *crtc_state =3D
> > > >  		to_intel_crtc_state(crtc->base.state);
> > > >  	struct intel_crtc_state *new_crtc_state;
> > > > +	struct intel_vblank_evade_ctx evade;
> > > >  	int ret;
> > > >
> > > >  	/*
> > > > @@ -745,14 +748,15 @@ intel_legacy_cursor_update(struct drm_plane
> > > *_plane,
> > > >  	 */
> > > >  	crtc_state->active_planes =3D new_crtc_state->active_planes;
> > > >
> > > > -	/*
> > > > -	 * Technically we should do a vblank evasion here to make
> > > > -	 * sure all the cursor registers update on the same frame.
> > > > -	 * For now just make sure the register writes happen as
> > > > -	 * quickly as possible to minimize the race window.
> > > > -	 */
> > > > +	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
> >
> > Missed to update:
> > Should the 2nd argument not be new_crtc_state ?
>=20
> We'll discard 'new_crtc_state' at the end and we just update 'crtc_state'=
 in place
> (only active_planes actually). So essentially 'crtc_state' here is the ne=
w state
> already. That should be perfectly fine for the purposes of vblank evasion=
 since
> that only cares about the old state when modesets are involved (which is =
never
> the case here).

Got it, thanks for clarifying Ville.

Regards,
Uma Shankar

> >
> > > >  	local_irq_disable();
> > > >
> > > > +	if (!drm_WARN_ON(&i915->drm, drm_crtc_vblank_get(&crtc->base))) {
> > > > +		intel_vblank_evade(&evade);
> > > > +		drm_crtc_vblank_put(&crtc->base);
> > > > +	}
> > > > +
> > > >  	if (new_plane_state->uapi.visible) {
> > > >  		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
> > > >  		intel_plane_update_arm(plane, crtc_state, new_plane_state);
> > > > --
> > > > 2.41.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
