Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9178E6E46B3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 13:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D647D10E452;
	Mon, 17 Apr 2023 11:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A44F910E44F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 11:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681731820; x=1713267820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CeIPgbXsSX0lhWgV5CMpt9rv1ESklr93H/U7dgjcSUw=;
 b=V7ryJZA+1hr5gGae2IR1UPMehzk6MxKj0xjz9Ygv37UFlQSz0cgTESWK
 FADkLf9tWh4m+KkUGdv+rb1o3qtf2islXis0pKOlyb1wsUnwK/B3SBX8Q
 mNH4mN3QdwRmZoVaJ8ZrM/w62xTOmxhTSjqJTx06S0+GFUe84fqAn+34X
 lmYLZxtN5j2hkpXdfqIMWu2Zl0ppitn1mmr6Z8R7KLHWbxyESI3pe5rH9
 i2AV+7b7tVMp1eN2oqx1b5kGl1ZbdZZVOvDaJOFkdTJ6US4UvDmITXTXC
 ti9yxRxogtOc8XD+joF5qRiPjUoRnRZp1qN2iKwvTBl5iAjPLRu7HDOOJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="346715295"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="346715295"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 04:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640927865"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="640927865"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 04:43:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 04:43:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 04:43:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 04:43:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 04:43:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z91mekeg1eBkk03fMIVs+wiXfbs7Tm0jecEeHlHsZ3qufAiBVoaTDL0RQhiJxO9wGAKXICo1fDtK4i5uNHtNXNsaJfKe66FqbwyUVZtU8nUNfpdjGAo+ABX6vHKG22uBK3YvUFXeJWf/FlV354KH3UPGto/aeV6KnqD0ovLUnB6ScFV4ajJKX9/vBMxJsNeTIPkFEfy0jvw6dbmiMudTB1WTygivXu7ikzoyqjys1p/UjutUrpnC9whiyX48IwD7yFeu//4IFuBpOsPie317TH8LOgybe291loBbqBVWT+ZFbcQsPMxU819Aw0sl+NswuqkVyufFn7DqxR1atGjyFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+w7Q7CpzE8WHftx2N67BosHUA4cwiUFa5zaJ0/pTDxo=;
 b=K2yTr6pWJ83Usnsb9rt+bFShmrb63fmLACynqFvGeOZhI7SXRVUJNWGgwRdt4TIen0BhlCacKD3uRtW/OG8dhbG7biyJhc+zOXI4IYW0AY1g/0BoFX4ukkNdNDLFCSouBHzjwSYyd+qskg85rqdrcFXhuaTxDCnXkmSZUm0L2kagmugm0R8i5bhJpPvPkYaoZcDKUXy5Ovcq0zZd3vlb1gqXTj56MWQ9hoIz2BuvBvRBALexuDdS46L8Ho3IqOqP+9XGA/I/F3FmeK5eN/zkTN5rhj7X6i83mTRvgAS3e349K97bPnMAygv0yzs6v/gZ+SqlEQLXUhMlXrsoTOfcFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB8028.namprd11.prod.outlook.com (2603:10b6:806:2df::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 11:43:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 11:43:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivCAAATIAIAAA/oAgAACTwCAAAi/AIAAA9JA
Date: Mon, 17 Apr 2023 11:43:25 +0000
Message-ID: <SN7PR11MB6750A7954E47CF19AA16DDD9E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com> <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com> <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
In-Reply-To: <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB8028:EE_
x-ms-office365-filtering-correlation-id: 09d218d6-6b3d-40f3-2ab1-08db3f38f43e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rAtqDAiSm2GUSK8zTp0dONGY3JlSQi8ZiYECDaxxaOQXRNv1YbB5IQBkn5aElmENvgJMx7rEapCzDVwQD11E8R7Ep39yYZyFZvg17vUAOc0SB7FK6Hh406o7Untd+w+rBuA/P9EmARFK9eBHFYr/QKqBV8idbFZUf/Bx/AvrjL209mj62z3TmAaERpx7S7rp/yTFsL43Kfvc+vPypD+owTI5mr9uoc7JaXWiNwBRm6ubETDPFCnCxktFBnsemulxBRS1izZsHmkyWgCDscBHFj1YHY8Cew3KfpLxkdw9Tv2+OMbmFFsurF4L07pDWlYoKqPNLwvPugv7i2lxI4dURclS6LpCs+n0ntl2mgkXBX6wz47b7IMazs23r2eyeeIrNlMhJCQVMqNsg4HyQnn3KeD7xbjhwOEYRuCqxQyLSW/+0Vm7GOqawsjAXisXp9bk+uqEAAtbbUrlJz93KfqrCbDq9G7tW/7efl/LuM1r5d/lA5FtRFGT4/D+C73RUp98efjN706qPYWgHlzEsyAAGaUNiE6aqqmDvuE7/oCb7shh+kiMMlkzrMVvj4eoWwN2LUIu3xT1xM6lj++CXMXpbuCchpA+Fj8LQVglezXxOwH42w4EspfSksazV/zhvKZi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199021)(38070700005)(52536014)(2906002)(5660300002)(8936002)(8676002)(41300700001)(122000001)(55016003)(86362001)(33656002)(38100700002)(478600001)(110136005)(26005)(6506007)(53546011)(9686003)(186003)(71200400001)(7696005)(4326008)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(316002)(83380400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e036M47GArKDrEEsvzBD+O5jtiTQz47ys+opkiigfGwloZSfIxmRqdwwptPu?=
 =?us-ascii?Q?dr3ZXLLfPiikh/0T+Tr90nCurbrGdUTH4TsZuxh+K+FAZ3nF4g0hHUCv4LOd?=
 =?us-ascii?Q?3B+oN6ah1XKh4DhKSD5IIvgwZ6ly9/w7oim5Oj0IJ3J+IEeXLu0+YqyZ1PqH?=
 =?us-ascii?Q?jJxuY/meIcMlawwSvPeh0pCPSBhxHuOUt2+Mj0/D7a9RvmDxyhGJCByM4z1n?=
 =?us-ascii?Q?/+h0b255SbJC7Qhj6sp46dvozGnGSdbSp0ft9Kms779BLufUBYkqITCx1RuU?=
 =?us-ascii?Q?5BkHTH1+FYi+U480sUNNDTtA0BznOs+yC+vM38lL9ybmCBAUgHjPYPCzVpj7?=
 =?us-ascii?Q?mxdwkoohPqJZfNMl30PRSF1s0/JV2HOkKO1RFqjhzqYoLcqrPv6KCvIeFM7v?=
 =?us-ascii?Q?8I0L/VoSNpwWqKr0goWBfsL0fKaqoZlxDQzSv4QpmePeuDav0lAaeDVNXvoo?=
 =?us-ascii?Q?SryWqaTP7rbulaDnVjz14lbSA0b90rVwuWOOk+5Yafy7qetQKjSqkPEjtIwT?=
 =?us-ascii?Q?iTACGLTO3v6/v+oq/OdAGxxCbZifkoYJtzTNhvyUtg8FPMYn2cICBi91QExg?=
 =?us-ascii?Q?/OZs2a7UmBFIB2ZMNGQ+I6OB1fmF8jPkVVcBCUou+Eft5pICzZfrsmFnPQFq?=
 =?us-ascii?Q?2rQ4EK7MxJEDJZ70drqQfV5Uda6on6prn5gm1d3Z03m7bKCJcHqA9kYQUGmM?=
 =?us-ascii?Q?e3XjMjTMLb6sprNqLavxnRRHqNj3nH3ss0Dl4EZcwx4VGoCh+hhhuU0zttZN?=
 =?us-ascii?Q?q0MGrsm0Ahq6AtLe2aRi+lHFj+6WamsylH1h/L2KAtMlgz9ucjSK4hh9VyY4?=
 =?us-ascii?Q?+mLc10hS6E6aD7WxUPLJnJ1Ks5oDPhFeUhHVjWcy63VAWQLevUvJq4goUI/h?=
 =?us-ascii?Q?EOINxdYgLL9+SlbLmhDIIukwYREZzG0mg5Pd1E1qmZfIKyWCEP0oapEYyWfY?=
 =?us-ascii?Q?BL+M5WaB1NHy0OulQ0j0RkMRU1qyTmHpX7NFGEOSGJJGIz+Ume8jzznMfjfH?=
 =?us-ascii?Q?D5x/AHoKY77cMr1APRXxudeILSgq6dtgm8ngV9zbdEQqWk0gU8we/Ky+Q09Q?=
 =?us-ascii?Q?87fu9Zuy2D+5ueriVaKNapf2opJvEsZTu86gib1njnrOWKZHVzdHSWadELT5?=
 =?us-ascii?Q?Mvjxi7vimpJ5zZ63kEbQ/BvsqJ7KN27MAT/S8E7Ly8N4P5e0sI1w0r0hdk7N?=
 =?us-ascii?Q?YF8X5WCXsFRFMMFzE4tsFHNHTjtnTsHvk5JhASijoLHj6AYw0omoa0jEnx0u?=
 =?us-ascii?Q?mEPQHwL11mepPriWK0swKiEy8TOwVbCkZmNPceszC2R6KCEfIKZ4SU8snYGi?=
 =?us-ascii?Q?FGaRWhKikeEzMpnWxhQT8A1S7c4oFaBNTjKdgjdBLa4kG9MKAYyrk5CBs4zr?=
 =?us-ascii?Q?EANz6iDPclAEGbPYec63EtfiEQYUXF2p91pl49YAfHxVYzs+P6iOPeZmPE34?=
 =?us-ascii?Q?rT5+jTrBnYqXCiyB1d7z8JUNGBDiEcvieTtPnAfJeKRXDcemUF45ZfEr1cc2?=
 =?us-ascii?Q?bnb3stzSPw6EF6hH4wzXvwF+cWfkMZRV9P1FtHrHaKKQN9nt2BPOSuL0ThmU?=
 =?us-ascii?Q?4w2/5lM2VsZA4FRUrKo7JYSyK1BudgKKgJwsF6lq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09d218d6-6b3d-40f3-2ab1-08db3f38f43e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 11:43:25.1354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4iSCFUDqTD0R9X5hP0sM8cp6CeECANU7X1XrJjGJhpr/YlCCknpPthTV0G134/E3qHGLUe83bO9WoN8XI0+VkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, April 17, 2023 4:58 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeou=
t
> for Type-C
>=20
> On Mon, Apr 17, 2023 at 01:56:12PM +0300, Jani Nikula wrote:
> > On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> > >> -----Original Message-----
> > >> From: Jani Nikula <jani.nikula@linux.intel.com>
> > >> Sent: Monday, April 17, 2023 4:04 PM
> > >> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > >> gfx@lists.freedesktop.org
> > >> Subject: RE: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX
> > >> timeout for Type-C
> > >>
> > >> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com>
> wrote:
> > >> >> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com>
> wrote:
> > >> >> > Type-C PHYs are taking longer than expected for Aux IO Power
> Enabling.
> > >> >> > Workaround: Increase the timeout.
> > >> >> >
> > >> >> > WA_14017248603: adlp
> > >> >> > Bspec: 55480
> > >> >> >
> > >> >> > ---v2
> > >> >> > -change style on how we mention WA [Ankit] -fix bat error
> > >> >> >
> > >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > >> >> > ---
> > >> >> >  .../i915/display/intel_display_power_well.c   | 30
> ++++++++++++++++++-
> > >> >> >  1 file changed, 29 insertions(+), 1 deletion(-)
> > >> >> >
> > >> >> > diff --git
> > >> >> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > index 62bafcbc7937..52f595929a18 100644
> > >> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> > >> >> drm_i915_private *i915)
> > >> >> >  		    "succeeded");
> > >> >> >  }
> > >> >> >
> > >> >> > +static void
> > >> >> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private
> *i915,
> > >> >> > +				   struct i915_power_well
> *power_well,
> > >> >> > +				   bool timeout_expected) {
> > >> >> > +	const struct i915_power_well_regs *regs =3D
> > >> >> > +power_well->desc->ops-
> > >> >> >regs;
> > >> >> > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > >> >> > +	int pw_idx =3D i915_power_well_instance(power_well)-
> >hsw.idx;
> > >> >> > +
> > >> >> > +	/*
> > >> >> > +	 * WA_14017248603: adlp
> > >> >> > +	 * Type-C Phy are taking longer than expected for AUX IO
> > >> >> > +Power
> > >> >> Enabling.
> > >> >> > +	 * Increase timeout to 500ms.
> > >> >> > +	 */
> > >> >> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> > >> >> > +		if (intel_de_wait_for_set(i915, regs->driver,
> > >> >> > +
> > >> >> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> > >> >> > +			drm_dbg_kms(&i915->drm, "%s power well
> enable
> > >> >> timeout\n",
> > >> >> > +
> intel_power_well_name(power_well));
> > >> >> > +
> > >> >> > +			drm_WARN_ON(&i915->drm,
> !timeout_expected);
> > >> >> > +		}
> > >> >> > +		return;
> > >> >> > +	}
> > >> >> > +
> > >> >> > +	hsw_wait_for_power_well_enable(i915, power_well,
> > >> >> timeout_expected);
> > >> >> > +}
> > >> >>
> > >> >> Please don't duplicate the function and the wait like this.
> > >> >>
> > >> >> Something like this is sufficient:
> > >> >>
> > >> >>
> > >> >> @@ -252,7 +252,9 @@ static void
> > >> hsw_wait_for_power_well_enable(struct
> > >> >> drm_i915_private *dev_priv,
> > >> >>  					   bool timeout_expected)
> > >> >>  {
> > >> >>  	const struct i915_power_well_regs *regs =3D
> > >> >> power_well->desc->ops-
> > >> >> >regs;
> > >> >> +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > >> >>  	int pw_idx =3D i915_power_well_instance(power_well)-
> >hsw.idx;
> > >> >> +	int timeout =3D 1;
> > >> >>
> > >> >>  	/*
> > >> >>  	 * For some power wells we're not supposed to watch the
> status
> > >> >> bit for @@ -264,9 +266,13 @@ static void
> > >> >> hsw_wait_for_power_well_enable(struct drm_i915_private
> *dev_priv,
> > >> >>  		return;
> > >> >>  	}
> > >> >>
> > >> >> +	/* WA_14017248603: adlp */
> > >> >> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
> > >> >
> > >> > I did try this but it ends up throwing a kernel null pointer
> > >> > error at intel_phy_is_tc which made me float the version of code I=
 did.
> > >>
> > >> Please explain what causes it, and how your version avoids it.
> > >>
> > >
> > > icl_aux_pw_to_phy is called is hsw_wait_for_power_well is called
> > > everywhere where its not possible for aux_pw to phy conversion is not
> possible with this change we only get the phy for adls version.
> > > Will address this is next version.
> >
> > Cc: Imre for input
> >
> > Maybe pass the timeout to hsw_wait_for_power_well_enable() as
> parameter?
> > Other ideas?
>=20
> Adding a non-default enable_timeout to the power well descriptor would
> avoid adding more platform checks:
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d85..8ca1f34be14c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc
> xelpd_power_wells_main[] =3D {
>  			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx =3D
> ICL_PW_CTL_IDX_AUX_C),
>  			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx =3D
> XELPD_PW_CTL_IDX_AUX_D),
>  			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx =3D
> XELPD_PW_CTL_IDX_AUX_E),
> +		),
> +		.ops =3D &icl_aux_power_well_ops,
> +		.fixed_enable_delay =3D true,
> +	}, {
> +		.instances =3D &I915_PW_INSTANCES(
>  			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC1),
>  			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC2),
>  			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC3),
>  			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC4),
>  		),
>  		.ops =3D &icl_aux_power_well_ops,
> -		.fixed_enable_delay =3D true,
> +		.enable_timeout =3D 500,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
>  			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT1), diff --git
> a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 62bafcbc7937c..930a42c825c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -253,6 +253,7 @@ static void hsw_wait_for_power_well_enable(struct
> drm_i915_private *dev_priv,  {
>  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
>  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> +	int timeout =3D power_well->desc->enable_timeout ? : 1;
>=20
>  	/*
>  	 * For some power wells we're not supposed to watch the status bit
> for @@ -266,7 +267,7 @@ static void
> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>=20
>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> timeout)) {
>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
>  			    intel_power_well_name(power_well));
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index ba7cb977e7c7f..fd5acf68503e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -110,6 +110,8 @@ struct i915_power_well_desc {
>  	 * Thunderbolt mode.
>  	 */
>  	u16 is_tc_tbt:1;
> +	/* Enable timeout if bigger than the default 1ms. */
> +	u16 enable_timeout;
>  };
>=20

How would we make sure that this timeout only applies to ADLS in that case =
as that's whom the workaround is for?

Regards,
Suraj Kandpal
>  struct i915_power_well {
>=20
> > BR,
> > Jani.
> >
> > >
> > > Regards,
> > > Suraj Kandpal
> > >> BR,
> > >> Jani.
> > >>
> > >>
> > >> >
> > >> > Regards,
> > >> > Suraj Kandpal
> > >> >> +		timeout =3D 500;
> > >> >> +
> > >> >>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20
> us. */
> > >> >>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> > >> >> -
> HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > >> >> +
> HSW_PWR_WELL_CTL_STATE(pw_idx),
> > >> >> timeout)) {
> > >> >>  		drm_dbg_kms(&dev_priv->drm, "%s power well
> enable
> > >> timeout\n",
> > >> >>  			    intel_power_well_name(power_well));
> > >> >>
> > >> >>
> > >> >> > +
> > >> >
> > >> >> >  static void
> > >> >> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private
> *dev_priv,
> > >> >> >  				 struct i915_power_well
> *power_well) @@ -
> > >> >> 517,7 +545,7 @@
> > >> >> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private
> *dev_priv,
> > >> >> >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> > >> >> intel_tc_cold_requires_aux_pw(dig_port))
> > >> >> >  		icl_tc_cold_exit(dev_priv);
> > >> >> >
> > >> >> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> > >> >> timeout_expected);
> > >> >> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> > >> >> > +timeout_expected);
> > >> >>
> > >> >> A function prefixed adl_ should indicate it's only needed for adl=
+.
> > >> >> This change is misleading.
> > >> >>
> > >> >> BR,
> > >> >> Jani.
> > >> >>
> > >> >>
> > >> >> >
> > >> >> >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> > >> >> >  		enum tc_port tc_port;
> > >> >>
> > >> >> --
> > >> >> Jani Nikula, Intel Open Source Graphics Center
> > >>
> > >> --
> > >> Jani Nikula, Intel Open Source Graphics Center
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
