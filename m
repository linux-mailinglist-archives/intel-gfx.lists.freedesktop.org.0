Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A354F823971
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 01:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DAC10E2D8;
	Thu,  4 Jan 2024 00:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF30810E2D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 00:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704326836; x=1735862836;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5gqAqbJU31LbUOA35KMczR0MQJQ+zdm7bQdJOvVN7hg=;
 b=IeYe2KiGKo1K51LfkPtlmy3GIKgvzyemwy4Tyw7AE5ikFXY6Vnnw7oTa
 iMbwdodKkx/FuKMJd2opb+Jl7C7hQPvXire3EMkRrJFnJx3MZEMV7v5Q+
 Q1ug1/C9urtvgNxjVR6ab8WnaIe+MB6xhTB/CcDWVrQVRRnJPjteDzBrA
 vsNXzh0+N15CXA2/qHazjWNio710oIu3vPiMT+n9NfWhbHAoiC0CsxQnc
 iu95s6K4CZMi1r5J7Z20vs35YEcPpFV6oBgm72YDsheTgfnKEepnQHEc8
 GlcGJBdzRZGSbQhETxI+nnwhsbUCrmd/iv1VKqTWmwyUwP9g84Uqfo3tH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="4427013"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; 
   d="scan'208";a="4427013"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 16:07:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="809006316"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="809006316"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 16:07:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 16:07:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 16:07:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 16:07:14 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 16:07:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQVj+gO3wrBYxu+k3wxsuL+V1gf8zJ7AKkCKqBos0XVqkRYNU+SaYFG/PniQJOoDySaINvNdZNIUTCqI8Eg8ZVsHGYW1AQjDmfpBgZfXrjvHI7QyBT2rVB5t5ckllCdd6bz8J1CPp31JmzIV12cABisBR0PBr4gaPBSbZQ/PEyJNCo3R1v4U4WcgGzPCpMMkq8cbyfb0NqluOYZkagERzWiue7KxyJau9DSUSsCMr/Sxn1qbWi6jEP4db/KfD78P6tXe0Bl4wvc7tAy5U+fsc8lBu5g/Qpd2HsoNGWmF+9P+YxwIDLzsgn3wRZenFkzvTy6Hb8GXeBWaXF7T97lpSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c/HI9QRFSzdaaesDwks4blEualO2rkOxHcakx+bd+HY=;
 b=dqU7UmSZVnC3P5kFhiUmbOvNfFYX2jaVwkiUMxu67xGh9FSDILpdDPqDKprjgs1iizhAGHxjF6g3/fCcoCA1CQUtpPeZrNdfrMU8sAt8mMQkgbE3yy3pe238AVoO9igpjQTZQFmC28bXk+S5Decymbs+FO/j4bS8/5fPyUj7TobO3N9htqd17f36Xhg48RqWzEUe9/vQmCYPlVTAK8nYCUFeijwtHXNo2RgYF8n60tPPwr/JWsBUTbNiyLl+nbQxVFhufC/fdXrxe247FK5ToZPl92vFoHtypXwjA+6u3+ZtaBYfdS4QrEq+uVFcFwvDqiPfpeQmidtQYNztAl82Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH8PR11MB8039.namprd11.prod.outlook.com (2603:10b6:510:25f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.14; Thu, 4 Jan
 2024 00:07:06 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 00:07:06 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 0/4] TC phy check cleanup
Thread-Topic: [PATCH v2 0/4] TC phy check cleanup
Thread-Index: AQHaM5IHTB3nSYZexUqrE/yK5PF6brCzgwCAgAFZj7CAADiNgIATxzUw
Date: Thu, 4 Jan 2024 00:07:06 +0000
Message-ID: <DM4PR11MB59716EC627BE712F09C48AD38767A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
 <87y1dnswgo.fsf@intel.com>
 <DM4PR11MB5971B4917DD49F4C42E8C79C8794A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <87jzp6sgeg.fsf@intel.com>
In-Reply-To: <87jzp6sgeg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH8PR11MB8039:EE_
x-ms-office365-filtering-correlation-id: 09636bba-b715-4a9a-6dd0-08dc0cb916a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G/SrocOL107MT7oBJ21OMpCVrnzE1PN9TPmnhIt1B9ju8CR/MIdzJQWOWjTO8xVuN9bVh+XAArmqYzo3ekzOAJOR8d3Dg4fk2VCuZ4po8GsgCtljO7oRYK9m+bDBk30+RQSwSp961EAmPJ+91+7kdQheU9qm3xe7ccAgqfvDtN16xbLxbtvJNIHh8U9zMfL4Tm0m/G9Q1KhRgM7y1asjWRn2fcTIe6Mc/aE4iTobnAqHJnlPjboESCE4wC03oJmzmGYjp1aan05tyu/6gOa3uBDCn5bquY6ya5sncyD6z62daK2sOqfyYIVMeokEOMEvCcdnIAIO6G+WuIfL/b5AP6SeiPurT5OUDts6b3VfxFk7VSdLiflNAq/Dzl4ka9TJdPnsDejK+4Swe04Bu8Ih4ERLHvnE2QlDRquYZOgtQkgK5wtkd/0PU29Q4E53pzRNnPOMk5dFs16jnLCmYVvH+xnQpDBYi+pmzrxatRwbQOjZhnbKedAwUFSWSTAtjRWg3+pgJU7ZjBTei+LJV7NWhiSeI1DxBHYddK5B0aoQQdmnqJHzW+94Q+nkCCwHeBiAvptx6pGfCO/7zSnpK/5YU+HWgNXY0aNyFP10Fgn3n+TziLyGZLxrupT+oRSrU0wt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(396003)(136003)(39860400002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(38070700009)(41300700001)(38100700002)(122000001)(82960400001)(55016003)(83380400001)(2906002)(5660300002)(110136005)(86362001)(71200400001)(53546011)(6506007)(9686003)(26005)(7696005)(478600001)(52536014)(8676002)(33656002)(8936002)(66476007)(66446008)(64756008)(76116006)(66556008)(66946007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f6dPP8sFccEwI+lBePGL+b/izaS784jgdt90Nmd9hAJvtvwRQI+KFMuuHRzk?=
 =?us-ascii?Q?2H32EIwTgWr5Bg+RL7C3Phn6e+UAENeuwxa9s+hUMcBPmWQ5JP24sLMdAom9?=
 =?us-ascii?Q?r3uj68ZpclJBq2qYaaxTdcJgmPcpplGYkYnosooqqSOo79h9pZQJTFlw2jvu?=
 =?us-ascii?Q?F86ZTl8IwpIers9dkRm5G8P8iMY1voLjIebpwSDXY4vucnbiY1aLoiaJflqa?=
 =?us-ascii?Q?T1LKdm0trbnrC/VoxJItS7oQCGgJ8xIQpJubkk5axVxCP9RB8PinAG5vOiEZ?=
 =?us-ascii?Q?jKszP7+obYWdpGf8MTNAbAWbbs5lFJJ5+tCUHSdTzyDxm2HEXC8l3tWG9tHh?=
 =?us-ascii?Q?YSxOW4MVS7LB6fQoXvMvFVfQqGawhCwJjKiZXMVJQie82faBbtMoW0oBzn+S?=
 =?us-ascii?Q?WwUTeUZ5oKtr6BBW0/fXRzBJTZgtvFB+QfEyCqSQJ1csUkBMGTMzrHHxXd//?=
 =?us-ascii?Q?c7XAWwtjMrKKee4pAz+DLZmYX0Qi6JUfZ/UVMkGp+4LrakYhT2G71U8Mf93A?=
 =?us-ascii?Q?/pf+rwoZAeQWmN+LwabvaxhhVDu1Z2c9PCWT/QM0/JsCBZ/cSN8ht78V2iZU?=
 =?us-ascii?Q?Veis7biyoEMpXIQyisdFSSGIbZn6xfxT+5oqtZh8O0cvv3rsxnxZluAOoZ2f?=
 =?us-ascii?Q?8nqzPnbLPWkHN0/fUOxM4w7iZcH0bIM1alFQ90R0Aun2mCqBKfgEP8xid7ln?=
 =?us-ascii?Q?0TSqKHMr+zGqgJjkkhP63FOml/Lpz3e15KlNrtunJQSKL0DsJh5wKjqFQGKs?=
 =?us-ascii?Q?dRZxYjYh7D30qEwCFN1cwQAS7O6IBm4ipnyXKG4V9iQl/ixSxIon1yGyjhhm?=
 =?us-ascii?Q?xqjp+5jzCi/67SlvrvwxXrYRhCn4kwc8zw5Ty3Kc2QzB04+t4iyUD8otuS0t?=
 =?us-ascii?Q?1C4ZIAJ8xhZuA0pu8KF8bYqTMNBaKRkJe6EY57NSG+aE8Kc+D0SCgZr9QFRP?=
 =?us-ascii?Q?rd2vp9MbjO6naH344jqCHEuap0UoYBw+EJ3n3Zalg1EYKoRyB8KfoFNzWxYY?=
 =?us-ascii?Q?XWwtyGm8/F4ZkyxWA0PyiWFI2/AH2gj0Q+NeCGn74QiHXYCOCyWYimcw4RR2?=
 =?us-ascii?Q?uxDAaaTuD4p7r/izuDBDqtOVnSgASRwStMuPpANAz83/lGSe5ZstT6MqZmuX?=
 =?us-ascii?Q?MrIigH6Nus716UQ/O1ptsf0RT7al25JmQGX/f7IgIkYuFt6sttgjV2ZZfToq?=
 =?us-ascii?Q?41uGdiGLARIt0mz8EM29gimXGKqKwK6WHiJvTLs6I/4RVExIAjGv0XRsnsAa?=
 =?us-ascii?Q?cA6AFaV78NdmjUyIJmDmOLPiFrh0L0eXt3in5fyCkxQE5GWspfaRxzR/eJOQ?=
 =?us-ascii?Q?unfT3jDidVZJ2nx54P7MqMVlleGpRs7Dm/c/Tq0zRepnKRSZvc+LIahpHk8v?=
 =?us-ascii?Q?9h5nUtIqh6zzAbA3YHrzO/QSam3bGFFREKj8Lz4lLGhAQsNnje+GgRYKGuLM?=
 =?us-ascii?Q?LlXOOp3iwGwgTuw60dvSdr80IcjEDwFUUUVZwAAodP7cip7tER5xW1W6L2EU?=
 =?us-ascii?Q?TwbTDbSUZa4edeC924BBrLi915jcVeYiRoQhVmNgwz+mqJD9t24wCq17NERJ?=
 =?us-ascii?Q?6DkP2OQtx4wLIJqOS8jJ+nfeMK5MAa7HxuYel+T9KGqNVUbKHgfwXS06yvzE?=
 =?us-ascii?Q?/A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09636bba-b715-4a9a-6dd0-08dc0cb916a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 00:07:06.8036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iz2lpDAJUa0FE1iRSASt+3txruaiOrOXKchCJ3HH/WACpEqDidb0uJ03SErrp5d4IAY1rlqEGFbqd4BuWn+qm30vewhYQFknRGV5Ghk9ZV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8039
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

Hi Jani,

Thank you for that insight. I will use it for future reference. And as in t=
his case the 1%wart looks better.
Need to evaluate if having a tc_phy_mask(as pointed by Imre) in platform in=
fo will make things pretty in this case.

Regards,
Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, December 22, 2023 2:04 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH v2 0/4] TC phy check cleanup
>=20
> On Fri, 22 Dec 2023, "Sripada, Radhakrishna" <radhakrishna.sripada@intel.=
com>
> wrote:
> > Hi Jani,
> >
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Thursday, December 21, 2023 2:04 AM
> >> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: Re: [PATCH v2 0/4] TC phy check cleanup
> >>
> >> On Wed, 20 Dec 2023, Radhakrishna Sripada
> <radhakrishna.sripada@intel.com>
> >> wrote:
> >> > We are relying on end-less if-else ladders for a type-c phy
> >> > capabilities check. Though it made sense when platforms supported
> >> > legacy type-c support, modern platforms rely on the information
> >> > passed by vbt. This cleanup restricts the if-else ladder to the
> >> > platforms supporting legacy type-c phys and relies on vbt info
> >> > for modern client and discrete platforms.
> >>
> >> This series is moving the vbt handling in the wrong direction.
> >>
> >> We want to *avoid* new lookups. The idea is that you do the lookup
> >> *once* when initializing the encoder, and after that you use
> >> encoder->devdata.
> >>
> >> If you look at the intel_phy_is_tc() call sites, you'll observe that
> >> almost all of the places have the encoder (or devdata) already
> >> available. They get the port from encoder->port, and the phy from
> >> intel_port_to_phy().
> >>
> >> So this throws away the information that's already available, and then
> >> goes to look it up again in the worst possible way.
> >>
> >> You should convert intel_phy_is_tc() to something like
> >> intel_encoder_is_tc(), and pass encoder to it instead of phy. Similarl=
y,
> >> intel_port_to_tc() should be converted to intel_encoder_to_tc().
> >>
> >> There are a couple of special cases that only have devdata or phy. But
> >> we can handle the special cases after making the common case
> >> straightforward.
> > Common case making a tc check out of encoder sure makes lot of sense
> > And agreed to you point. The question that arises in the special cases.
> > For ex. during vbt_defaults init in intel_bios.c, I can only handle for=
 legacy tc
> ports.
> >
> > In other cases where only phy info is available, I may have to iterate =
over all the
> > drm_encoders to obtain port info and compare it with phy info adding lo=
t of
> lookup
> > overhead. Or we may have to use encoder based lookups in all associated
> lookups like
> > icl_port_to_ddc_pin etc.
> >
> > Thoughts?
>=20
> Frankly, the way I often handle stuff like this is just start making the
> changes for the things that obviously make sense. Such as looking the tc
> info up via the encoder. You can add the new function(s) and gradually
> switch over. It's mostly mechanical changes and pretty quick to do. I
> think it'll even clean up a bunch of local enum port and enum phy
> usages.
>=20
> And often the answer to the rest just presents itself.
>=20
> Sometimes the answer is, well, to leave an ugly wart in 1% of the cases
> while making 99% of the cases pretty. And that's still better than
> having 100% poor design.
>=20
> Sometimes you find out you have to redo some of the stuff you did at
> first, but it's because you figure things out along the way. For me at
> least, this is how the bright ideas come to mind more often than via up
> front design attempts.
>=20
> HTH,
> Jani.
>=20
>=20
> >
> > Radhakrishna(RK) Sripada
> >>
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> > v2: Move cleanup vbt later to handle safe encoder removal
> >> >
> >> > Radhakrishna Sripada (4):
> >> >   drm/i915: Move intel_bios_driver_remove later
> >> >   drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
> >> >   drm/i915: Introduce intel_encoder_phy_data_lookup
> >> >   drm/i915: Separate tc check for legacy and non legacy tc phys
> >> >
> >> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
> >> >  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
> >> >  drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++-
> >> >  drivers/gpu/drm/i915/display/intel_bios.h     |  5 +++-
> >> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> >> >  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++----=
---
> >> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >> >  .../drm/i915/display/intel_display_driver.c   |  4 +--
> >> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >> >  9 files changed, 44 insertions(+), 18 deletions(-)
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
