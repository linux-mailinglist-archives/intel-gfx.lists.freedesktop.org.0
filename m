Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E065BD7A4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 00:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5683810E010;
	Mon, 19 Sep 2022 22:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73EBE10E010
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 22:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663628091; x=1695164091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pVMT/zZb8mtg+sWil/9UhWOYIbhK5LkPKGD221j/L7c=;
 b=feI1XqmhJ2Ntw+XDy49opHdh12lX3oQHV/fkglP3/Qq+D8eFqv7ar1/K
 +VXmGx9DvJtLQfwji+aqlvUzYXuhmHhu4Ge/UP9IGkmYBfuc605TWytae
 pGf+CWvvLARx2XIT6vJvL28EW09TEk+7mmh0KXHnn3GcvXnWrgKuDCUso
 ivT9YJv1fCtYVm5XwL0yHVHVB7FoU/yL9KuQq/jj15U1YZwfyeLDn5W1K
 bpwBe5n1xilsdYQaCis6yUXTvS78WHBeh5FFZdZdNuY9iW2/fzUWWCqY6
 yhdBQXOYvhSg0HMXIyDxJPhncRpyJEGFjRRPIBysUfx5BLYeYu140O4+L A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="279270329"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="279270329"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="744292191"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 19 Sep 2022 15:54:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 15:54:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 19 Sep 2022 15:54:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 19 Sep 2022 15:54:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZF8Ri59/KnwBD4t5AKmcsxE3JLoNindsqxCSbR8JFdRUjA+P9LvzG+NyU8i/HFOyD2ezr1iAj54VY9VaS3tiaKaElKzKf5x/LzAKtFQEGzJC+dax/1qRtTbwCuJDwX7Ue0/7w13Uxam765UmTWWKEmhssZcO1+1CJgdwDH4j8CNGBFeq4uVXDU97B8gTpMObO8hLTno6WVnXvWq7wQrzhAGN9zT7ahtvkSMSICkOip067Du91bA7I/prlzLTniehdUgg9ah5Q5RoqY+KbZOW5JGCsu6jZlXfMfQZjVjsYRuMoTZOdg3tv+ErB2AkUvM3yzoIC/Fcm6OQ4c4j28RpEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mt5I5M7vgxiWH9SefR9YCv4tQUQRB4aEjDohhxbeoM=;
 b=dgguZIqRovYG9jbUZgE698L4opNMD2HoGta/LHkmV3vA/im1Jdd7GWzCMVHoTz+71bgw24xUEzgDdG7VnBV3hw3XOfdJd+gILjVQmB3M1F2SMiMy7dKTD4xOF7+vKYFtPyuUwp9D7mRlSyGZxgi+cjRguIKCf0VczRWbwIaLLRQ91r1H0QCumydrsbkvyh8V72bh7uPn0jkjdn4c+3yl+24zbqXwQ6uTdjRFTaAwSxfKdm+d07KOgJb6Y+mom/WQrm/ZSSQ8bkBAr0IukavVqY3mbg6N2dyhgOLtHtidwTfqmvwnM7ZqG6wA6u+STYdzG3pQ/skO8kT3bD9q2/j7fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DM4PR11MB5309.namprd11.prod.outlook.com
 (2603:10b6:5:390::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 22:54:47 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861%6]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 22:54:47 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/6] drm/i915/display: Embed the new struct
 steps for squashing
Thread-Index: AQHYyi6pthyspg6ME0i1pXwB3U7uEa3mf9SAgACqx4CAADRRkA==
Date: Mon, 19 Sep 2022 22:54:46 +0000
Message-ID: <CY4PR1101MB21662DFB06FA35C661E02F3EF84D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-4-anusha.srivatsa@intel.com>
 <87v8pjpvc4.fsf@intel.com>
 <20220919193909.GB1061080@mdnavare-mobl1.jf.intel.com>
In-Reply-To: <20220919193909.GB1061080@mdnavare-mobl1.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: manasi.d.navare@intel.com,jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DM4PR11MB5309:EE_
x-ms-office365-filtering-correlation-id: 05f2f7bb-12d4-4658-d254-08da9a91f353
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qgqeXEmdZELyPFBnjGi1I5OzHgKgRT+GZPTAByjBOqqrBn7mWKi2IJCbLSuxEm7r8zkyva6xn1KXgWSCNtNBnEQOTg/6VlFlxRcDHufzC/IIiSP1NdgPhyXO9NR8SL8ymoqqCGw20Q00w97aERw9hoJQoAU+BTo7SfIoECaDdMQ/CIh6voUzoRs67SgzHV2WzDgvcc0Z3CE8aROoP02Wm4YrAfFCcvD4Arqj4nFOl2Ma4EokJSHW/2TlcfczFmrWlm7tAgCWdSfg+pTISl/xoX3Pb4Lx5oLM9CTTe0Rag7OsGRzHAyHb3QcH0rdCnveEatZPtWwKrkZ0AjRt87Lslkns1MW8DdvcKGkwY52TD0b2dvWELplJSE1CHCR5Xf4S7CWg6t/VOAADUUVU8g9F7sv4FElfvl/rdrUHAJCMUqLttIJOqncBAh/UYlW5n5m2u323S/ho53gBU2VUHt74J5jSeja3ciEobKAPRavXLoXXp/JQKpJuu1/VCH64z3k9ZqQEoiEqVdejez5Po6NrAac55rL1/yWohcsKcOCmftwIRi+Ld7RGh3sgKeLqzkEmDIPlP10dPQBfF7cew46B6+u77Ggsr0rYii7K84tD4cRaZTZWX25pyhmNLt8ta7dSuu2etq23/owL5kY1daODUZpXmsaAotzs7PVeKauciYyQprmYgZT3wnBSVwOAgEaiT1QTXg1yrrutHi6dpw4vUG1jN72afW/yEORmXFHLx45sO8FnYcrEGNoeelrvBA0gvceEm1x37CRK+VjHZRJogg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199015)(5660300002)(82960400001)(83380400001)(52536014)(122000001)(71200400001)(26005)(2906002)(316002)(110136005)(33656002)(478600001)(38100700002)(38070700005)(55016003)(8936002)(186003)(41300700001)(9686003)(86362001)(64756008)(76116006)(66946007)(8676002)(66556008)(66476007)(66446008)(7696005)(4326008)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YsyVjopWymP3ck50p0IVDV5pxYhtGRGdKqbo2Tpf7jV15P/Q0PbqX4WYz4b7?=
 =?us-ascii?Q?Ld0VMg+j5ugue0UZMqevLg6mkdDuw6FS06jHx943e0471BnlEPLz7DJbHQpa?=
 =?us-ascii?Q?Y0GskQW5p9gsGs8aWEfzMywtSxW7vf9YaOyvi4xr46MDT2YXHfudoV5iSKzl?=
 =?us-ascii?Q?iL2V5QVWrbzhoOKbcinV8/5x8OFeeEZzjW2lUmGbfxe1QWqcH78Wxm5Eq5Vz?=
 =?us-ascii?Q?MwwuETPVYD2KNI4y3gkcBQKDRbHxFHl7Qd+TB586DnVq72uaj0NETz2N1pjk?=
 =?us-ascii?Q?EDOAHIxUbSblGjcZMCQkd2gnF1rbUvSldsBZMI+JOwmhbUajz08ee0mroRGY?=
 =?us-ascii?Q?BbvlaExOMhZ3XnbbnofafOk6wA5R/G6fW3E7GZdD//05AvQjRXUWqWu3XTcf?=
 =?us-ascii?Q?W/QaMMWkYPim63KpNueZovn5FzEh4rIldWoGdp7dTOp+cP1dJqx7gKeQrKcB?=
 =?us-ascii?Q?vXcY0jHfg38Y3jmWMb/v7NI25v932EaP1Tmwhv6JdLNYYGddmpkUWcK13t3I?=
 =?us-ascii?Q?q60TOztX4XMn38MX+D3/hfMr+AiySLYYWX2o1Q3B3EWG/T2C/OPK2njS9sxu?=
 =?us-ascii?Q?PGBgzonu9tucS0s+zov/99M+QVud+opdGv67uIrb6Sg82BI+7BfW9hR4NV2L?=
 =?us-ascii?Q?LdLSRwtEUQ7Wtg2cUr5SMQEiAy9aGJoNxLrjb6BVX8tLARrbtEcv62BMyCo/?=
 =?us-ascii?Q?fj9oTRAQhE0QgeEoNpDgMmmQhlEb7m5bQcRUDnCy+ycKrIAszR3Zb/fgIDXM?=
 =?us-ascii?Q?7ZnXn1zCjtCq3SrmGzq4Ie33mXWwMKnKizPUaxH7Kb+487bjmXV1fTmxet69?=
 =?us-ascii?Q?cFHAp6t3ByqUP4s5ngO2O/OILDqt8ax6wuSWkMy6+Q2vDiTNPZV7Ff/YIqff?=
 =?us-ascii?Q?BDrE5iM816W71ZBjDR/QPa3tPRKHc7PdFQrtyKEMhEpXofBNzdqHYj/lPxpr?=
 =?us-ascii?Q?p+DH0f1LgPd8gmjrc+/4Y4vyZgSgMhSUX479zHnGOuRucrEVLBMSYQwdSvr0?=
 =?us-ascii?Q?QjVDaG9/VwtQND3IddbzIGBIyST3KPM1vHabZwSUAlHhWLxzfFAE6jNUxIMU?=
 =?us-ascii?Q?qgvpLUuLtpE4hjbpUqXS+MeAkFAsA1NkJgQTnLJjPTo01f8pX0/VGgBWmS3m?=
 =?us-ascii?Q?vysM8kyFS6vS7968O8pIPZ3jv3kxkE9/PKr8Cw0bRCRBoifUcbYZxEhCFkQt?=
 =?us-ascii?Q?/uM3f1bxQwQDUpgT3wBBe+abK7L4jy2o8rgRybfY427a0DOVFHOzRLLSncKj?=
 =?us-ascii?Q?kQSqBKKQVtXAoC13dffqtdi2qnIZzYxmC6LLNsh4fM3TTJ/pKvNDAaheflf2?=
 =?us-ascii?Q?mthsbnVNNusbMOjqIw2ZPehhAHlvdYRAPe4p4K2f6cqKmWzAKZWFxOsCesi1?=
 =?us-ascii?Q?gfrfEOCCnQOtmeQpQeRwrC7Lxv/ZiozHIUWp6bFvaJi1M/miFlxpXm+Z1xiA?=
 =?us-ascii?Q?p4LlLIWSsDFCkaEk50Y7mjbTy/4co2isP8qasUAKOaWoaPYtMqYBd+dFIQWr?=
 =?us-ascii?Q?lJtjry/jikXPPf2p7krgMzdjB1grE1VHOhd9/nhyPYLu9+jDQDCU0nT4hbk2?=
 =?us-ascii?Q?ZQoFX3piIVM0fjeguaoPINPKly2wj+8MNEyc7TNMJEZibwq4waHBJuKWlcdz?=
 =?us-ascii?Q?9g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05f2f7bb-12d4-4658-d254-08da9a91f353
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 22:54:46.9326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GCV4yrhxO3Z/j2M+w8k8IgMOZjlxMk9nortY+wN3ArpaNoIYDhXtjyHqr6iMK2NDCfIls2bM0GA3qLg1eE5CgdUjEMZRKXGoN4C6xNdVCUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5309
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display: Embed the new struct
 steps for squashing
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
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Monday, September 19, 2022 12:39 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display: Embed the new stru=
ct
> steps for squashing
>=20
> On Mon, Sep 19, 2022 at 12:27:55PM +0300, Jani Nikula wrote:
> > On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > > Populate the new struct steps for squash case.
> > >
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++++++++-
> > >  1 file changed, 8 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index 220d32adbd12..d2e81134b6f2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1973,8 +1973,9 @@ static bool intel_cdclk_can_crawl(struct
> > > drm_i915_private *dev_priv,
> > >
> > >  static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv=
,
> > >  				   const struct intel_cdclk_config *a,
> > > -				   const struct intel_cdclk_config *b)
> > > +				   struct intel_cdclk_config *b)
> >
> > Why are you dropping const?
@Jani Nikula @Navare, Manasi D
Looking at intel_modeset_calc_cdclk() from where this function is called, n=
ew_cdclk_state is not a const. Since we are going to be populating it in in=
tel_cdclk_can_squash() and in intel_cdclk_can_crawl() in the next patch, ke=
eping it non-const made sense.


> >
> > >  {
> > > +	struct cdclk_step *cdclk_transition =3D b->steps;
> >
> > The type name has step, the array is named steps, why is the variable
> > "transition"?
>=20
> Yes I agree that the name cdclk_tranistion is confusing rather having
> cdclk_transition is unnecessary.
> Why cant you directly access b->steps->action, b->steps->cdclk
>=20
Now that I look at it again, I see that cdclk_transition might be confusing=
. I will either rename it or directly access it as Manasi suggested.

Anusha
> Manasi
>=20
> >
> > >  	/*
> > >  	 * FIXME should store a bit more state in intel_cdclk_config
> > >  	 * to differentiate squasher vs. cd2x divider properly. For @@
> > > -1984,6 +1985,12 @@ static bool intel_cdclk_can_squash(struct
> drm_i915_private *dev_priv,
> > >  	if (!has_cdclk_squasher(dev_priv))
> > >  		return false;
> > >
> > > +	if (a->cdclk !=3D b->cdclk && a->vco !=3D 0 &&
> > > +	    a->vco =3D=3D b->vco &&	a->ref =3D=3D b->ref) {
> > > +		cdclk_transition->action =3D CDCLK_SQUASH_ONLY;
> > > +		cdclk_transition->cdclk =3D b->cdclk;
> > > +	}
> > > +
> > >  	return a->cdclk !=3D b->cdclk &&
> > >  		a->vco !=3D 0 &&
> > >  		a->vco =3D=3D b->vco &&
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
