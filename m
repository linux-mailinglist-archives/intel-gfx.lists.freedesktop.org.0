Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5CA668AF0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 05:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B2E10E986;
	Fri, 13 Jan 2023 04:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F50810E986
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 04:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673584726; x=1705120726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NH5v/AMINPaY3G92YkEX/XnxjxsbgVGJxBj7AMa0Aq4=;
 b=ash/jTkU373E9tW/D6456C+5uAPth6EdlfNFAC1G0lyKKKyCPJhe71Ku
 TBazCLY+W/3oucM8JmZCT+bcfJTmzKgYWmZBiIrcob2/ovYHa9+3G3GrI
 4po0dW7AztOktATbQhaDeDybQNPvNK/V08pABlIkZQoOmgCcdhsVjDE19
 cIkmaPjm7eGSCjC6rdF39x7fxdZfNiuCop4s+VMW89VurvIAb/bW09IFU
 0PipcDEGRD0aaJ6ShooLyU39NvSlk586nx7jS0Z/erJmQ0HRqCDh78uut
 jm/Z/mk15M8BqwJIpCMJpjsCdL4sPBOaIupRmoGbaZw2UTFZZyWfUhAMS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="325173241"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="325173241"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 20:38:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="660090641"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="660090641"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jan 2023 20:38:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 20:38:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 20:38:45 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 20:38:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P15tlAkFY6yw5EI226Lb0zB1FYpRbXI/9bmoJAoF6gwfi4KgPTHQ1JtymfHVshlLjcUpW+78kT1wINvJHB4XNdQiGHRdESxljJDnb4ije5McIUbpW3qmXDWppuhvKfSIyCXIDZHNqRw+BOS8A9iqaDjtOD45mWX4iaH0IAtCA0jF2+a2BeBAP1D9x5qapMzLYZD1/xq2tuuCSFDtvvoWGD/hPs9z7m3jQpCulcLovSubKbBHi3lGpb8bc8xG/fcX5peRtzcXPMGp4t7vAG3Z1LEt40nhJqEuteLcRrQbTtMSdTjQH75WPNsyZv2iK7k/TsQfFZ2mNjvnbym2su3gpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pnfl5gQfelLAUiVK4S2IQeiNdN2CFrSRdO+gpW52X3E=;
 b=ONkqMkz3C4yjAoWnHgbyh15z8xkeWZUVGP9hJb+QMMRvA2Dxq2EWRmGAaCu5pkugxTLJkBHUxoZ7I0ARhaCR3y50aGrXAJhszuUGBW5vsAZN0jf5mzeTe3zEaLjLTYnFRBlFZgWu1Z0aIEbY7QCwrv6v/iiU2bjJdBTY3t6nh6Uk2zQER8+mAQcL+NiOmgK5o6RbxOsVXOeRzwhNyCj1eA5nrhrbdoRDbd1aDiv2sit0Pxdie6x1rUb2wvitfDqTCHvewYBMQHp4WawNlofq2h2D1oS/FhFnjOeUcjTRlGFCNOdzPJYB9N/b61vFGbwG4pwtdSyU7mtPPvZf6viX7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB5247.namprd11.prod.outlook.com (2603:10b6:5:38a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 04:38:37 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%7]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 04:38:37 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [RFC v2 1/2] drm/i915: Add sub platform for 480MHz CDCLK step
Thread-Index: AQHZJmg2whrbWFyAqUO4OAT1QDOEZq6ankIAgABst4CAALhFAA==
Date: Fri, 13 Jan 2023 04:38:36 +0000
Message-ID: <SJ1PR11MB6129540B965E5F71921EC264B9C29@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
 <20230112092758.539070-2-chaitanya.kumar.borah@intel.com>
 <87zgaof20f.fsf@intel.com>
 <Y8BEQwBtn305YBzj@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y8BEQwBtn305YBzj@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB5247:EE_
x-ms-office365-filtering-correlation-id: 529bf53b-e2ed-4ad6-12f4-08daf5200946
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +CuZNPOz0uB+1G690Su/WfMYUqjnXnSn7/MYOu0f3TaNyZIxugESai2S0y723pOGpWruxYCCdVOU+xrGC8a0DnY75j66hLO7wylk+MJH87xIwDoj/1YVfmtLlAqHlS6CFSkr4cO5AQyrAvUdQCSwRz+6wz/0tVANrnop5y+gjyFrx6fA0nLjUhDHASyj2Leyf41Q8uFGFqkbVYfZxrd1pqkcY5Px6yRvf1CmnEI6d23KGDWz+N330GmJmMEAXYzbZrPhXrA3Kyb4pFJjKSHbGf8tUrL/POrBopz8XRBphby5nm2ADEmyl8bovhGVWJ6x1DpLg/jROezWFLAfoY+MmHupaSOX5wVMa2jbo/TXlBXgxr2jUfdRj8oF4KsVy1zHdQ/1a6gAT95ahxPUyLMR3csehXzu2lBsQfkCNQ8yalNpqKztt0DtrAN1HlLaDwuRi6QakZQPTurZYJCFQNS+HqIPWaCapciMHsSCGx7qPvdz5N/xGxeCKvfZ9/vXBA4dsVvhJtSURmKhlQhJivtPpsS+Gi/76wwZp58X6qKx3A9diXx5FojtaTF/57ggc4uOa/Ye6KRu57VT3bE2Ze+10sLM367VoF1NJzldf1oEIrEY1Mzv895BawgoUWCFC57ETpBZScVJeIKceucJaDBpHCkzhL8NAal4Ukb2M3G37awhedPVsa6btEUCY7Z9jp+ZS1tbiyriSmJWPbphi08RnQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(66556008)(52536014)(2906002)(5660300002)(8936002)(66946007)(7696005)(64756008)(41300700001)(66446008)(66476007)(71200400001)(8676002)(316002)(4326008)(54906003)(53546011)(110136005)(478600001)(6506007)(26005)(76116006)(186003)(9686003)(55016003)(33656002)(86362001)(83380400001)(82960400001)(38100700002)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ROYj6TkFf4Gs27N9VMp35e8aws974VQBpVSjaYVjmpcz3Jn0srjwSCyh6P0b?=
 =?us-ascii?Q?2MWCaQMFZahG5c+cAdcxbzJMuTR73hxSNJNm9LY0o7y54ylAmnl8RPXeMkef?=
 =?us-ascii?Q?56fxnrK5OVBegsvy4x5iVZpEszS/vDFtdklx/SVLy3abjo1n1BP/WXo7cPPc?=
 =?us-ascii?Q?pBTZ93x3FIjwD697l30NGNn+HaH8aGKp10SFs1I+5J7YGjQXiTzZmKNsVh8x?=
 =?us-ascii?Q?uvzp+/7+JKAd8CKseP43uJBpPsr6trgC1H555S80FSpkPVL13hF+YVa38J57?=
 =?us-ascii?Q?6NmAyJaSyl/9kNXZHQcTojPbVVwThiTjx3ROG+oMZrdXxxTsL+Zxsz6h2PVr?=
 =?us-ascii?Q?PpTV1f+7iLeBUXELcwOZBxzVXTAEJm1Y6J4sRa9UBRdwlApmc1bcq2PSdToK?=
 =?us-ascii?Q?EvVf5CZV4SYhCEoSdZmScdo9IzY//zgdUtcoDQKaGsehHDua4zF/eSwzlVJY?=
 =?us-ascii?Q?uKtR8bYQqBfMY32mZQs8/i6BXfGEJlOjhMyZd3AU+yTH3P82HRAdDBltGl5d?=
 =?us-ascii?Q?xiIchlvjIAB4y9MU8P22K49aTnNhT1LGboX3b/SakY3Ilio15u+W6zY0C8g3?=
 =?us-ascii?Q?whhrO96BAZNtuSD+zhNZL7QMa8F3upAX1QPOatPonSZTV6DQFNwGsv+pkQU4?=
 =?us-ascii?Q?Yp39oOgUpNJnDD5T2DegxYkcEcaFlBg9OafEWFIH2P1wyYI2MpGj1k37ANaX?=
 =?us-ascii?Q?Y19GLX1CyjChe4TnumOSPEvXFarLvMyqIQxa0ZxnnsGTLUbzdAUKkCJnqJaN?=
 =?us-ascii?Q?/xjWAzHT4nDHl/a+EzKqc8dpsc7ih2ExyAFB6+uDXjp0neCGPWLq3M2sf5fU?=
 =?us-ascii?Q?BXyKeqE9Ess8kkXvuxNxO+hU/PDlpAwK/sj5ubhhcYxg4T+3KSwE/WA1J/k9?=
 =?us-ascii?Q?dUR7sGC0l1RkXV4I8+N0t7mr7cLENsXRT1dhMHXGfbstkYkT+cwpGMGX3r1Z?=
 =?us-ascii?Q?UzVkuswbGyfyIGv50cEOwM02MI2If3KwuuhZg81NIE89JubLhwTHzNG8GVeS?=
 =?us-ascii?Q?5DSnC+gwnVIrL/kvRwfsDVq0YLgMOQuTvyvQKf5e9R/NeouUpOO9i+/kjfVB?=
 =?us-ascii?Q?ZNpzvqv6h3Z+tEs0j8DUR40EjpZzxt9lWU9kWALd0OGsC52+9cR9lZuKtn3G?=
 =?us-ascii?Q?GKQgJUhhVth1t+fx79ftBI3n8Y2t++gBkoktjxGvd3OS1OuFi4crB1F9+X5a?=
 =?us-ascii?Q?C6rG3Pds8YWRQWldQkvXzytDs6anb76K92cksosZOl0SYAVNVrVqqZoFpNd3?=
 =?us-ascii?Q?QtdMFS+PN3mdg3Q/0uhGO79/NWPuVQCAXmT6Zem98+05Rvb5oVx/N2d6N89k?=
 =?us-ascii?Q?A7eIKc4ySdBV3tP+Vxn7XFPZ5ca0SsHydFA9rYIiZIvjctO5o7C4qwfj42Em?=
 =?us-ascii?Q?6BJQ9W93DDYT3L1LxniwjXF96dhXzmgtP6h84zxPDxffj3fpaCWcu7NjDTiS?=
 =?us-ascii?Q?VvGJV9Kx62XxZCGjCnelI3wIJuhuA5Ru+04fZSnTDbXYg9OMtonOWfuJXW32?=
 =?us-ascii?Q?323+/6eDB69ZAL8UtofTAevk0kIXwn7vQUJWk29WuX635y8eCHd5exFGqLIa?=
 =?us-ascii?Q?2NoGY2wn1feYYK6CRBQhdAvFGymqlWs26QatOaGnN7ZZJ/t/e6B1keiZHj2a?=
 =?us-ascii?Q?Rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 529bf53b-e2ed-4ad6-12f4-08daf5200946
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 04:38:36.9379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSL6lY84j1o3ng0rneUaDUfR4sieldvZIRpUNeD4iIYFSPa50mPdLM9uT12mMtEsimU9J2q+RHqBIkMRx8lJpXU8352yM7aibtKUswFdfrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC v2 1/2] drm/i915: Add sub platform for 480MHz
 CDCLK step
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

Hello Jani and Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, January 12, 2023 11:03 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>; Syrjala,
> Ville <ville.syrjala@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>
> Subject: Re: [RFC v2 1/2] drm/i915: Add sub platform for 480MHz CDCLK ste=
p
>=20
> On Thu, Jan 12, 2023 at 01:03:44PM +0200, Jani Nikula wrote:
> > On Thu, 12 Jan 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > > Add a new sub platform INTEL_SUBPLATFORM_480CDCLK to identify
> device
> > > ids that need the 480MHz CDCLK step. Separate out RPLU device ids
> > > and add them to both RPL and 480CDCLK subplatforms.
> > >
> > > v2: (Matt)
> > >   - Sort PCI-IDs numerically
> > >   - Name the sub-platform to accurately depict what it is for
> >
> > Did Matt actually ask you to call it INTEL_SUBPLATFORM_480CDCLK?
> >
> > Personally, I don't like it, because RPL-U has its own PCI IDs and
> > that's what it's called in the specs. I'd prefer what it was.
> >
> > (The one outlier is INTEL_SUBPLATFORM_PORTF and I don't like that one
> > either.)
>=20
> I think initially the plan was to not match RPL-U, but rather to only mat=
ch a
> specific subset of RPL-U that had this special cdclk (which I think was
> determined by CPU vendor string or something).  If that's no longer
> something we care about, then it probably isn't as important to have the
> more precise subplatform name anymore.
>=20

I will go back to the RPLU subplatform implementation. What do you think of=
 adding RPL-U ids to RPL subplatform as well? Shall we retain that?

Regards

Chaitanya

>=20
> Matt
>=20
> >
> > BR,
> > Jani.
> >
> >
> > >   - Make RPL-U part of RPL subplatform
> > >
> > > Signed-off-by: Chaitanya Kumar Borah
> > > <chaitanya.kumar.borah@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> > >  drivers/gpu/drm/i915/i915_pci.c          |  1 +
> > >  drivers/gpu/drm/i915/intel_device_info.c |  8 ++++++++
> > > drivers/gpu/drm/i915/intel_device_info.h |  2 ++
> > >  include/drm/i915_pciids.h                | 11 +++++++----
> > >  5 files changed, 20 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index 48fd82722f12..fc5518314598
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N)
> > > #define IS_ADLP_RPLP(dev_priv) \
> > >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPL)
> > > +#define IS_ADLP_WITH_480CDCLK(dev_priv) \
> > > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> > > +INTEL_SUBPLATFORM_480CDCLK)
> > >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> > >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> 0x0C00)  #define
> > > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > > b/drivers/gpu/drm/i915/i915_pci.c index 6cc65079b18d..e9f3b99b3e00
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] =
=3D {
> > >  	INTEL_DG1_IDS(&dg1_info),
> > >  	INTEL_RPLS_IDS(&adl_s_info),
> > >  	INTEL_RPLP_IDS(&adl_p_info),
> > > +	INTEL_RPLU_IDS(&adl_p_info),
> > >  	INTEL_DG2_IDS(&dg2_info),
> > >  	INTEL_ATS_M_IDS(&ats_m_info),
> > >  	INTEL_MTL_IDS(&mtl_info),
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > > b/drivers/gpu/drm/i915/intel_device_info.c
> > > index 849baf6c3b3c..a1732ad519fb 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > @@ -199,6 +199,11 @@ static const u16 subplatform_n_ids[] =3D {
> > > static const u16 subplatform_rpl_ids[] =3D {
> > >  	INTEL_RPLS_IDS(0),
> > >  	INTEL_RPLP_IDS(0),
> > > +	INTEL_RPLU_IDS(0)
> > > +};
> > > +
> > > +static const u16 subplatform_480cdclk_ids[] =3D {
> > > +	INTEL_RPLU_IDS(0),
> > >  };
> > >
> > >  static const u16 subplatform_g10_ids[] =3D { @@ -268,6 +273,9 @@
> > > static void intel_device_info_subplatform_init(struct drm_i915_privat=
e
> *i915)
> > >  	} else if (find_devid(devid, subplatform_rpl_ids,
> > >  			      ARRAY_SIZE(subplatform_rpl_ids))) {
> > >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL);
> > > +		if (find_devid(devid, subplatform_480cdclk_ids,
> > > +			       ARRAY_SIZE(subplatform_480cdclk_ids)))
> > > +			mask |=3D BIT(INTEL_SUBPLATFORM_480CDCLK);
> > >  	} else if (find_devid(devid, subplatform_g10_ids,
> > >  			      ARRAY_SIZE(subplatform_g10_ids))) {
> > >  		mask =3D BIT(INTEL_SUBPLATFORM_G10); diff --git
> > > a/drivers/gpu/drm/i915/intel_device_info.h
> > > b/drivers/gpu/drm/i915/intel_device_info.h
> > > index d588e5fd2eea..4f488c900273 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -127,6 +127,8 @@ enum intel_platform {
> > >   * bit set
> > >   */
> > >  #define INTEL_SUBPLATFORM_N    1
> > > +/* Sub Platform with 480MHz CDCLK step */ #define
> > > +INTEL_SUBPLATFORM_480CDCLK  2
> > >
> > >  /* MTL */
> > >  #define INTEL_SUBPLATFORM_M	0
> > > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > > index 4a4c190f7698..758be5fb09a2 100644
> > > --- a/include/drm/i915_pciids.h
> > > +++ b/include/drm/i915_pciids.h
> > > @@ -684,14 +684,17 @@
> > >  	INTEL_VGA_DEVICE(0xA78A, info), \
> > >  	INTEL_VGA_DEVICE(0xA78B, info)
> > >
> > > +/* RPL-U */
> > > +#define INTEL_RPLU_IDS(info) \
> > > +	INTEL_VGA_DEVICE(0xA721, info), \
> > > +	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > +	INTEL_VGA_DEVICE(0xA7A9, info)
> > > +
> > >  /* RPL-P */
> > >  #define INTEL_RPLP_IDS(info) \
> > >  	INTEL_VGA_DEVICE(0xA720, info), \
> > > -	INTEL_VGA_DEVICE(0xA721, info), \
> > >  	INTEL_VGA_DEVICE(0xA7A0, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A1, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A8, info), \
> > > -	INTEL_VGA_DEVICE(0xA7A9, info)
> > > +	INTEL_VGA_DEVICE(0xA7A8, info)
> > >
> > >  /* DG2 */
> > >  #define INTEL_DG2_G10_IDS(info) \
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
