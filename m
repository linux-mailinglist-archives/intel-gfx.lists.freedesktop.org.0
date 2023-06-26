Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEE773E4FB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E400B10E241;
	Mon, 26 Jun 2023 16:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A68710E241
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687796887; x=1719332887;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=diuMCUJF6qvCCn8W/sy63mzlzLnKx6KdBUZTJUy1Yvw=;
 b=UktQiAnOkYWq/N2M7zsRxgqFzLZPxhwWhHHq40SH2pvRDp+ZxUEUw+0u
 chXIthsUdnOwgKtiV54wiTYTAg2jLLvOe9nFpxu4wWCpQvByLXJ/fPNst
 y/h/9xygqJZxuRQnnN4y/S5SdM2t3LKF8WuFVX20akr0ayzFbXJffUtbg
 Z9zd678ZdSJKHWNlMujwdA3kccOSBbGq2FjxNskhs6fFF1VjHE2tiTJvl
 zrBfVVIw0BhzfBsdWBcnNhImFooi1fg++CNlH7MZaqJi7CIcUqjUWazF4
 zpszf8SRpHpEXcxqdx5kE9/vzuHy1jmpw3lkcOQMGZxmdi1zxrWOtdPRa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="358815538"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="358815538"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="781500030"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="781500030"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jun 2023 09:28:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 09:28:05 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 09:28:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 09:28:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 09:28:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsmlgBWqIEwCox7RPa7g9BFEQLu4aVKltuAp7WTn2AU767eRJJA52iIxBGtmQRplBwcDBDfeAkBTvz+w2WLU6CZGwW78Q3a6bMmfJm/2wpE2clzjKtqgKasnhRDrubQXq3V35x5L7m1wtO9jIGlnGj/H+ENIjcS/5K/DkWyMroY9a2as6Ud0P6Ej5RfgFCqID0h3aYbf85r07kvSqBlDowCrhL9GHdTdbtjp4D8f2lPS5EVxZWyvlFig7+Ee9ipcXRKvUYXXd6FI4l7MmNKj/eaOkI730BCMxIZA9l490wVlWrY1gNH+MqvV4fVO0ZAPt3I+INb9mE/O/gkE9edWdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ffq2H5cCCT6ctBbpGv3zJD2kZ+WApFqHPq24EoS9AKs=;
 b=Pb4OE4DWxoST39yqZwl2yqGlVVJzcuPSJ48+75w3lvi5pxaf90ARjv3kIjS5CiT4FoQ4YMuYLpN3paDljEIsnzecwkzalV/SAYjGg9gVmDPz5KCH7NbDV5PUDrorYtmiGSciVsXxVWDljsDEFBYoJ99PGD6p54AXs/7JdEVQXPUaeLnCI0NgBnuf6kQwnDKQwEmkv7flGPK6Exa3KaX74FX/IzzkBQfb4hXO1whfSyoYaOTDLh2W4NIjRQdOWi/gqZ95d1DdAtE8rsvRJLTA1L3D36QcNU5ONX+l2dhHUnVpieMis0YtCW09Utf8dDm9Cve+0PFydFgxKC+uazpeMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by LV3PR11MB8578.namprd11.prod.outlook.com (2603:10b6:408:1b3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Mon, 26 Jun
 2023 16:28:02 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6521.026; Mon, 26 Jun
 2023 16:28:01 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initialize
 HDMI audio capabilities
Thread-Index: AQHZmvmhMhAJpwPiyESSUn4ttIkGuq+SHGwAgAG2JACAAbyvgIAHyu3Q
Date: Mon, 26 Jun 2023 16:28:01 +0000
Message-ID: <MWHPR11MB193515FF0C6345AF5EF76D34B226A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
 <SJ1PR11MB612990667303BE8F0F9453F5B95CA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <alpine.DEB.2.22.394.2306211844340.3532114@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2306211844340.3532114@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|LV3PR11MB8578:EE_
x-ms-office365-filtering-correlation-id: 0f2a24bb-441d-4879-ab14-08db76624f89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rb1DlIHQDSzoEzmGwWrcpQQPa7B05HZltY3qiZ3hV2rK1eUMqv8umnTZApxripv33yKOOFGWqhmiT5zivYKRBL5xUXVfjR43J/VzGPY2H5zK6VdtXb0vzhgYHB5u55xCYH+yZvTkUx0O42twyea1o03WQQg33pxgCLm70cdfFKxEF/5e9OhHzByQnN9nuc1fYwIytcqmvz789ik5klu70EmyPHV3mXZBUAGu9aNumm6HZN4jOYq4Mi/PbY6tIx2kjlAjvvGA3AeTrOExgqs2RoLmWGIh+BSHaH7YsQSxOM75xsBNfWY5VgyBkvfDnSfTOSOxChwtfk/9vS5Rf75RbjdgaszawKw6LiqrWbwZeRZ9QjkjJaVxNj5Ntt1j1sMMXFL4D8iSltV56SfWdF/3iDu0ILLxo/CrcWAL/4oKSohRtBl62APhwhDHLpDQVPbHb2sHaWRV9PfuvVS9pVhxlOR0s41tpE4Nc+NUTrRv6foFeo28LXNkWI2rl+ZYJevHLZ5L+xG9gbuaSN+FWLa5pQkAELQGl1mxnfQ3kOEso5vknoyD4If6U6Lm17ex/tmkJvLIHCWIo9f/p+kKn7eioKcEgmwxSzgQXt38yf/7jqR62ZwFJAR7nsovUB+gUFYK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(39860400002)(376002)(346002)(396003)(451199021)(8676002)(76116006)(8936002)(55016003)(66476007)(66556008)(66946007)(41300700001)(316002)(66446008)(64756008)(6506007)(9686003)(4326008)(6636002)(53546011)(26005)(55236004)(186003)(478600001)(54906003)(110136005)(7696005)(71200400001)(2906002)(52536014)(5660300002)(38070700005)(82960400001)(38100700002)(122000001)(33656002)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6FwQIWh7y+FjY4LiKt244IoRJLbKfsE7Q2Jm9v7W2zxjLcyiK688oBu++k3r?=
 =?us-ascii?Q?npHFvZdbahdxL6Zp5Z1n4nEvZ4gs57nIZO9wRhUD2uP187ZR/1akPTK8iXer?=
 =?us-ascii?Q?iSjbFIZl56lRQIV9+HGd/9Y+IEf3ySCA/trsDWsz/YwIhSxVZZvMFaNPGatG?=
 =?us-ascii?Q?27baDMburjWtOF9R0OPfD9OeSXEuGU8G6pUMdNPHWUTSuMkUpq9UQM8vB5sB?=
 =?us-ascii?Q?z4FWHH8S29thRBUQBqAtMruIoAypFVrdaSxqjM4K6arbxt+DSNlu7LJky8/U?=
 =?us-ascii?Q?C64BwLbsFjraFvb8tnsdSW/geMaBcUppzAyWd9lMGIHmMjpYAfhSKANCF6xr?=
 =?us-ascii?Q?gY9p//NEAIDVdwDIHNoGXbX83GrjSMJX3VVkT7R7J42yx4/69kiNDsZd+r+M?=
 =?us-ascii?Q?/Q7iBLtmToqRnkDJgtowzI5CwRZTC093/Z5hVdl+Fe6k1N4HUTYax7ElDtyZ?=
 =?us-ascii?Q?UdcMIII2G95seHT/TK+1eHKWlA7rrzbceiLFA+6z3YTaqLzr1w/mUt9t3rG/?=
 =?us-ascii?Q?riu0KW5mNoESV3IeN8FYfk0gU96SqvrEE1EYPsZ6lZXfu+fogvlAK0Rdlnh5?=
 =?us-ascii?Q?Fm2cqCAr0rRb4iLj/ksfreXzNFsd3bGoXj103n5UaaQNvqIiRt+Uft6leC0z?=
 =?us-ascii?Q?3YkVRUUA54eE6pObNYhJ4RLKDmMqu2GGGsZO2ffyTwbi5NGqcpEhf0hFI5nf?=
 =?us-ascii?Q?+Z5yojqdOSUfHEZFxWUlwb5MvQbPf//p+WboVKFQ+yDwnahszSNKQozub4RV?=
 =?us-ascii?Q?i7oCd7r0qLBdbPuGf1mRVQh7mqTFIKid1+2OsoeMpIku5iqmstN6y7ef+ori?=
 =?us-ascii?Q?cPENJ6r8TtbgbBmTAB80VR/vuDF9KX5scXIBBNn89YG0Am23vajBH9D8Eltp?=
 =?us-ascii?Q?qasik6a+PdeNjgxCwZ1vOC1ywcuVnRryrGMD+Sw5r5rPedy6qOR0A3AlBshk?=
 =?us-ascii?Q?v3dqBz4nAGtz09FqzjJ5Es1BhQhBgqI+LAGX99aCCZkHV3FHIxWRpFP1Wq3V?=
 =?us-ascii?Q?ZlpEMtNKZQgrPty4U3S6V0L30GehSykgt1M2hODp1AUaNXE9SGfMbgoGsPJ5?=
 =?us-ascii?Q?mN1oTn8iLvINc4eOQ7hnGfa9Jt6SR7AseE69NOfcRIFMNf7uYcFu6xT15q0/?=
 =?us-ascii?Q?WG3EswbeI6n+li8mEVciajSaC3OOe4u1JWi/81VB69Tx5f5x0Y/4FvV9TVMy?=
 =?us-ascii?Q?n9GCVrAbrK4j8/zAAtnyYj4L5RJUdAdh5TSv+eT7sK7NqE1TuOeD6wV+ymBs?=
 =?us-ascii?Q?V6yH2UTn9h3m/z+Q1cPhLm3dfs7J2cddbnFftnYYt1RQifK+kU1WTGSCytvt?=
 =?us-ascii?Q?bBSyypuToc3afMCkADyxQPLJuUzjez4VVDBUKv7YFEKNlKzRw4Qs0v35yuZm?=
 =?us-ascii?Q?dgSUjwSv2dhcFY1a1FTTda7iTNhC+nPGYQ5YjjjMfm4j8FVD1T/Tc5uYXfrR?=
 =?us-ascii?Q?tvAT1Uiku/pFQj63MkyfpCu97DJaSrJZ8ERET1D1w5mAKhPeIjUmYg2Ctnxz?=
 =?us-ascii?Q?MkFH7mS/Hn16j9/y2ibF8RgQwnO7KtG9/snkjrO8a/fuaJrIqvgFAguBAeLQ?=
 =?us-ascii?Q?AJx/T1nGoSpA5I+KTC8ec01zuwt3i6C1kNoK8KGOMlTlwxaSsqz+EzghO/vy?=
 =?us-ascii?Q?dRxAOCDiQStMEjGahc9eV94=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2a24bb-441d-4879-ab14-08db76624f89
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 16:28:01.6253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ij8LHo5DPMau2QqvFXV5xuD9OxegS6UM92MXrFt+8EpmrpcuRmpWw68rwFHuPAOPKmgfTn1at0FJtERgtqj+mewMK0sP0eBU58kPqQc8hVfhjaj6bzH8JTdW5v9WcZJO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kai,

> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: 21 June 2023 22:36
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>; Golani, Mitulkumar
> Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; intel-
> gfx@lists.freedesktop.org; jyri.sarha@linux.intel.com
> Subject: RE: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initia=
lize
> HDMI audio capabilities
>=20
> Hey,
>=20
> On Tue, 20 Jun 2023, Borah, Chaitanya Kumar wrote:
>=20
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Kai Vehmanen On Fri, 9 Jun 2023, Mitul Golani wrote:
> [...]
> > > This will hit a problem if we have a case where bandwidth is not
> > > enough for 5.1 at 192kHz, but it is enough for 2ch 192kHz audio.
> > > This approach forces us to give preference to either channel acount o=
r
> sampling rate.
> > >
> > > What if we just store the 'max audio samples per second' into pipe co=
nfig:
> > >
> > >  - have "int max_audio_samples_per_second;" in pipe_config
> > >  - pipe_config->audio.max_audio_samples_per_second =3D
> > > available_blank_bandwidth / 32;
> > >
> > > Then when filtering SADs, the invidial channels+rate combination of
> > > each SAD is compared to the max_audio_samples_per_second and based
> > > on that, the SAD is either filter or passed on. What do you think?
> [...]>
> > This has been one my concern as well and we have thought about a
> > similar approach as you suggest. One disadvantage of this approach
> > that I can see, would be that if there are hardware limitations on
> > channels (as was in GLK) or frequencies independently. It will be
> > become tricky with this approach. However, one can argue that these
> > limitations arise from bandwidth itself.
> [...]
> > Regarding the bits per sample, Is using 32bit for all audio formats
> > fair or should we take into account different audio formats and their
> > bit depth?
>=20
> hmm, I see the point. This is indeed trickier than it first seems. The 32=
bit is a
> good worst-case bound, but in practise actual bandwidth needed will be le=
ss.
> And problem is, we don't really know which bit depth the application will
> choose, so again we need to limit based on the highest value in SAD.
>=20
> And then you have the problem that this calculation assumes LPCM
> encoding.
> If the audio is compressed, e.g. a 8ch DTS stream, the bandwidth calculat=
ion
> needs to be done differently (see
> linux/sound/pci/hda/hda_eld.c:hdmi_update_short_audio_desc()):
>=20
> So I think there are (at least) two ways to go about this:
>   1) reduce the scope and make the channel/rate limit more
>      limited, and only cover cases (like) GLK where a specific limitation
>      is known -> max values not set for other platforms
>=20
>   2) go for more generic description and expose the raw
>      bandwidth (in bits per second) available for audio
> 	-> then SAD filtering can be done based on raw bandwidth
> 	-> can be done only to LPCM at first, extended to compressed
> 	formats later
> 	-> still the problem that code needs to prioritze
> 	   between channels/srate/bitdepth when filtering

I tried to prioritise the logic with help of rate first. But in that I foun=
d some issues,
it is picking lowest channel with highest rate every time.=20

I think apart from current params, adding max_audio_samples_per_second,
can solve both the issue with following case,

Let's say, with the obtained audio_req_bandwidth, if I encounter the follow=
ing combination:
pipe_config->audio.max_channel =3D 8 and pipe_config->audio.max_frequency =
=3D "X" value.
Now, let's assume my sink supports only 7 channels. In this case, with curr=
ent implementation,
pruning will be bypassed, and there is a possibility that the sink-supporte=
d channel multiplied
by the sink-supported rate exceeding the available blank bandwidth, but pru=
ning didn't occur.

For this situation, I am considering adding an "else" part in intel_audio_c=
ompute_eld.
This "else" part would check if (sad_to_channels(sad) < crtc_state->audio.m=
ax_channel), for example, in the GLK case also.=20
In that case, the channel would be fixed.=20

So, if Channel * audio sample container size * (iterating from Max rate to =
Min rate) is less than
max_audio_samples_per_second, I believe we can eliminate the above mentione=
d situation.
If the sink's supported channel is lower than pipe_config->audio.max_channe=
l, we can get another
chance to adjust the rate based on the sink's maximum capability.

now pruning will happen in 2 cases,

1. If pipe_config->audio.max_channel < sink's supported channels then prune=
 as per obtained combination from,
intel_hdmi_audio_compute_config.
2. If pipe_config->audio.max_channel >  sink's supported channels, but sink=
's supported channel * sink supported max rate * audio sample container siz=
e
exceeds the max_audio_samples_per_second then prune with sink's supported c=
hannel and rate (which satisfy bandwidth condition. range: in between  Max =
to min).

Please give your opinion.

Thanks
Mitul
=20

>=20
> Br, Kai
