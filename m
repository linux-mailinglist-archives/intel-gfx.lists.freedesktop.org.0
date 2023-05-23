Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1F570DC93
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 14:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550FB10E427;
	Tue, 23 May 2023 12:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF93010E427
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 12:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684844975; x=1716380975;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FVpzSEVWCKOfz31Mrb9JQorZ9562im6w788ooqZD3kQ=;
 b=G7a+gyB4ktxekikf5R+BvR9HwwX2m5Nnv0NnPsbqGhKaas4mMQdxW0FC
 +1xDB0cDJuRPc+4lwjuqMU9BZSbR4EeZoINhhREJud0WW8EfOZQGh8Frp
 xptlc9CmYSdMEy5OhP/tK73RPngv1Fq1f/0IJbvD/spaertRSA7vBxuKL
 sZz6KzGvkCNpYZk889RDiULH/1AN0QG6Dmjfl3RESfc8UHHRkeVnjYYOH
 j1Ur88QdFBp8P7hC8tvE+dYCtks3ffpSZmXzd2O3BF2rm5Q9Eb3WJVrl4
 d1xOrwTDfpFuBI5JTse3LQm/HUYk8WStft8z+6x02nnDqRWoPaBnXoT9M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="333583809"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="333583809"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 05:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="828083792"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="828083792"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 23 May 2023 05:29:28 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 05:29:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 05:29:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 05:29:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nNCZxNRDGyQWIKIp7i6/Uk+5QnzelLMosp0ZPzXF+Ayg60/EN5FOU6sArMkezwe9QJUbfPCrDR3XaA1PEXGqF8nu4ADAbIjirpPeDTaVqID65gWKJlGq6TCcMm936fbKdryp8dPJLgaUORWXndRXOz1+kcFypVlzFiIaR3fQEMyh0zggU7OQwn5tiPMgLAxx+qCSKLcXbx3RZ3ZNgpZ29VaBe9PFIq4L3ALBuDDXj1DW9cmjs2fixBlSE+Jx4F8YrHJUE8r3b5L4LRRLYS+3GZKDXv1xGU1DNbZxIpeK3KHBkqaIRv4BX41PqFmB0/nTmIT/O9v09tyRFl1JTo6c/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iN/EqtMQdI+sX0ld9Tsl/avDn0Y/zC5U65lu3dHD/mY=;
 b=Nc6I5FKj7GQrZjW6zvfwxlrDJq3qX/ZjDGFbde4YmdjWQwcnbtIjjFhqR277xFQqSahSFi+5efLI6PRHnxnz9jJM0fRohWs6WaLqb2fp2s5xGCMvAh49pyYSVx6o3Ihtxu8Km8gezDufe/F0NHnuoymGvvrd92jD+p/jXYOVTkLiRIK17FxyWa+HO24x0RCXwjGQDSoZF+fB6ukmN0s3mcAzleqHGYVFCgmgWeVxeuHmSelOBqISR0nu07tXy1W2AM+wRWvxttD3n3tow5VZWRwQwU5QsaU69TXNptXshYSY/i0rAGl0dZriIiBDasMETIFKmTsHtyhRQZ+JjMHuvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 12:29:24 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::ddfa:657f:1ec6:5232]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::ddfa:657f:1ec6:5232%3]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 12:29:24 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 8/8] drm/i915/display: provision to
 suppress drm_warn in intel_get_crtc_new_encoder
Thread-Index: AQHZhF7vaWC3XWNQG0CJg+YdpYI5pq9melEAgAFV+oCAAAtGkA==
Date: Tue, 23 May 2023 12:29:24 +0000
Message-ID: <DM8PR11MB56550B060B9ECF78745E4216E0409@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-9-vinod.govindapillai@intel.com>
 <ZGuJOlTW5FGLcyuw@intel.com> <87o7mbl146.fsf@intel.com>
In-Reply-To: <87o7mbl146.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|MN2PR11MB4760:EE_
x-ms-office365-filtering-correlation-id: 4024e310-6883-41ed-63f2-08db5b895796
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fgBYmje9VfeKmfShVvZcagMZ3+0R0qao/HhXWiAsOKzEEnKm+JGuSQTEkRmHhBc7k267J8A+l0LuV5CSAghPyIL2t3xpvqz+csy5gaVFxR/etrXJ65Js8nhyFcdHWBsZWewAoLENYFJsrGuKiFdh71FIs7Esl0pHacVc2YKaYXU8HTo0G7giQihrd+GiSOmHXZrdDdv01YP6KgoRR/BEsehtwEZBG7eM6ub3oQU1UpSOZjxMWY3rYjSpyEf++9DMXX3Xpz8FRFPEXD70zkombC91qc75iiekOa68DVQHazfj0dk+KombTjf6baF/jBCcWWX02LtYbegM7du/YWTUiGsYYeEISKWqGLygWT4iwnwdrgn4OXE/dxWAp3qcOdJugjlJjMuLJIYr6edSoPBErpfTLlaPRSePAgVrwLOuy/fsev39P5YxDoTRbf41fiI4c1b8iZSrsjMq913UiK++d+cftHLs8iyuhkqvhzMzt5aWOv20VAmRaRi6wX67BxwL3IMqcZoYM8JkuPE4zDW5P9oX/JeGW2zLQLoGUIbTkSx/Ucrw+WYSobBHJI0JU/KQLabiBvQxpGbay4gtUAB3jEvn4jSDAYNJyI3rUa7JIvM2e6cmkjXRO98uIdziFMWe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(396003)(376002)(346002)(451199021)(76116006)(66946007)(66556008)(66476007)(66446008)(6636002)(64756008)(478600001)(41300700001)(7696005)(54906003)(110136005)(316002)(71200400001)(52536014)(38070700005)(4326008)(86362001)(8936002)(8676002)(5660300002)(55016003)(38100700002)(82960400001)(26005)(33656002)(122000001)(186003)(53546011)(6506007)(9686003)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zLHEl3dVrcZomitUSZ2ZgCOHLg9M1BQH/GIyCLz3472hlnbguZ2op18CQOrw?=
 =?us-ascii?Q?0DRYbxQzwPMt+EDWPkHyiUZ/FWnJdlvkIOT4hpnnV6Mg/gTuXHdMX1/ZcrY3?=
 =?us-ascii?Q?9KuKgX5SJs+a7u9C/v0glJ70oxKxSAwDTUTQs9fvEWfCg+pl1CSMkzOCfhG7?=
 =?us-ascii?Q?lpyVq+cCN/pQRELWV5anlZKrFkswZxro7IyEqZfoJFxDmAYh764N6chDtrAf?=
 =?us-ascii?Q?KueTLV8Bcz6M041DHaa7SOBRGmwy14dDjB1dPmuRLFUOaj8sBKDz83DVDOyX?=
 =?us-ascii?Q?39psAmeCjjpm/MkTEQc0IpmQR2ZCDE6y7G00BGQc5gPKRHT/53th7wJoPLKI?=
 =?us-ascii?Q?T0oJmCqzNloyYt5rdMTkv2+ordonQ0R6h4gLr0CgWHGnxMoe44C9wFjokNZe?=
 =?us-ascii?Q?5qeTlGADqTBvKZIn1RG03Gr5D3YmtgMITnIatOtK+yXXbHN0uKlYe8RFJmcW?=
 =?us-ascii?Q?oNbnKdvSoqQDSdS+3JK7mXuzULsVRFxRGE9RxDCWRXOmhbD6SXkvaX2NEX/G?=
 =?us-ascii?Q?W8wvTItWJX5VNOzhfIdnMrwkDTPddx09vp3Nw+fwJJG/J9JG5gHp3ZMpuihe?=
 =?us-ascii?Q?tb/q/9+O1VP2BZ1zANiLOXGdzDy2kkXC0NsPyPQgmtnEnvPGCvb6gVWQOb2m?=
 =?us-ascii?Q?uw8JlgQPwboXoMzfcrCI/vxWIM9TNVvS+C1i1dXsmJlOV1od44RC4EMWctDL?=
 =?us-ascii?Q?1RUnP7XvyVfyaNeVEYrhbPPZ2jldHmBLeSiYilAphgZuI2KPYKEEaDtnjtvQ?=
 =?us-ascii?Q?ZZb02NNRx7/1iFLGgcINjMBj3LHktSnde0/Oxwh98BOg5PXogRjRyYBLHMc4?=
 =?us-ascii?Q?4EAIb5c2OQzQkQRyf+sdt+zia4vfKMT9ins7hHKY9nOMK0gwINIUIcgh9gZ5?=
 =?us-ascii?Q?wDgS9yiEUqb0haRfsRr35M9yq/6K34cxn3T2LvrImRCUsfAUs0ufRWUKo6Bs?=
 =?us-ascii?Q?i5Iim8f5ZJ9xIPhxj9gVn+eZxOTOjbOlPumjfMOBqfORiIiP78xWCXwe7knF?=
 =?us-ascii?Q?OD5LxKf84oyBSRjav34EyXc33k6xfnu1jOamOdK8GdwqbuHUYMdDt3wSszR1?=
 =?us-ascii?Q?IHVKNaLOmWZ2g36dFCxFdQVxXmQlIiuSOHEaimcs47bu3032SaUCtlEKbz40?=
 =?us-ascii?Q?P0JWYqtlKhhzIXfq40HItPhpAm7s3luj5DcD73XHbxaZQj85Qz1z+0MbziYM?=
 =?us-ascii?Q?fbMe3C2mUOmLGoVHOvQQ7tjX49O7FvF2pJsdqonfWJ1Yrbuesr9wU7vFV2oN?=
 =?us-ascii?Q?IqNFHxZFDjQt2CeDRp8fG9H14q9dFwtPzs0xYyM3peRqjgF0MMtG1qwiTCMr?=
 =?us-ascii?Q?i/E7u3iNAfpBZB0OXfamnyBz1rL39oQBvbrNDqGS0Cmod4N+4wcOW6WbL3jw?=
 =?us-ascii?Q?LOiSU9aBRIhH5VOCf1kxClLzPs1vf0kO1masqwbJRgAPo0VlT+AJwjgovJ59?=
 =?us-ascii?Q?odX6MtVFT/vzoXZ32e0D+8l2QE5rRWcbLBwq2iDdFznZ3zPwaqIb+zXB0pu6?=
 =?us-ascii?Q?WzZ82mNT06OAI2V3TZTfcuLDidfRnoI6cpPQfgD7oCy5LsPNNd/faoHQDMLx?=
 =?us-ascii?Q?jH1vKPL2FVzoG/3OO4BL0WD+SSghHVfN2ELuSOMB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4024e310-6883-41ed-63f2-08db5b895796
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2023 12:29:24.0826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7yooVQiENnWLoxxWEJ6K038tlNR5ESYTc+D27yhWzdpxWt6NM9/bs/JslMfJuk/xjh7d9472l14OLM5nNLsoyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 8/8] drm/i915/display: provision to
 suppress drm_warn in intel_get_crtc_new_encoder
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

Hi,=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Tuesday, May 23, 2023 2:49 PM
> To: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Govindapillai, =
Vinod
> <vinod.govindapillai@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: Re: [Intel-gfx] [PATCH v5 8/8] drm/i915/display: provision to su=
ppress
> drm_warn in intel_get_crtc_new_encoder
>=20
> On Mon, 22 May 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.co=
m>
> wrote:
> > On Fri, May 12, 2023 at 02:17:50AM +0300, Vinod Govindapillai wrote:
> >> While configuring pmdemand parameters, there could be
> >> intel_get_crtc_new_encoder call where encoders could be 0. To avoid
> >> invoking drm_warn in such cases, use a parameter to indicate drm_warn
> >> should be suppressed.
> >>
> >> v2: checkpatch warning fixes
> >
> > I thought, last time we discussed this, wasn't it so that you
> > mentioned that this patch will be removed?..
>=20
> Yeah, the "bool warn" parameter is icky.
This was already removed at v6. So review/check that.=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> >>
> >> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_display.c     | 10 ++++++----
> >>  drivers/gpu/drm/i915/display/intel_display.h     |  3 ++-
> >>  drivers/gpu/drm/i915/display/intel_dpll.c        |  8 ++++----
> >>  drivers/gpu/drm/i915/display/intel_pch_display.c |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_pmdemand.c    |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_snps_phy.c    |  2 +-
> >>  7 files changed, 16 insertions(+), 13 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> index d94127e7448b..1a41a314f8d8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> @@ -2934,7 +2934,7 @@ void intel_c10pll_state_verify(struct
> intel_atomic_state *state,
> >>  	    !intel_crtc_needs_fastset(new_crtc_state))
> >>  		return;
> >>
> >> -	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> >> +	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state, true);
> >>  	phy =3D intel_port_to_phy(i915, encoder->port);
> >>
> >>  	if (!intel_is_c10phy(i915, phy))
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> b/drivers/gpu/drm/i915/display/intel_display.c
> >> index dd390a0586ef..fb2b77aaaa69 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -763,7 +763,8 @@ bool intel_has_pending_fb_unpin(struct
> drm_i915_private *dev_priv)
> >>   */
> >>  struct intel_encoder *
> >>  intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
> >> -			   const struct intel_crtc_state *crtc_state)
> >> +			   const struct intel_crtc_state *crtc_state,
> >> +			   bool warn)
> >>  {
> >>  	const struct drm_connector_state *connector_state;
> >>  	const struct drm_connector *connector; @@ -782,9 +783,10 @@
> >> intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
> >>  		num_encoders++;
> >>  	}
> >>
> >> -	drm_WARN(state->base.dev, num_encoders !=3D 1,
> >> -		 "%d encoders for pipe %c\n",
> >> -		 num_encoders, pipe_name(master_crtc->pipe));
> >> +	if (warn)
> >> +		drm_WARN(state->base.dev, num_encoders !=3D 1,
> >> +			 "%d encoders for pipe %c\n",
> >> +			 num_encoders, pipe_name(master_crtc->pipe));
> >>
> >>  	return encoder;
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> >> b/drivers/gpu/drm/i915/display/intel_display.h
> >> index ac95961f68ba..4620ed991ff0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> >> @@ -501,7 +501,8 @@ bool intel_plane_uses_fence(const struct
> >> intel_plane_state *plane_state);
> >>
> >>  struct intel_encoder *
> >>  intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
> >> -			   const struct intel_crtc_state *crtc_state);
> >> +			   const struct intel_crtc_state *crtc_state,
> >> +			   bool warn);
> >>  void intel_plane_disable_noatomic(struct intel_crtc *crtc,
> >>  				  struct intel_plane *plane);
> >>  void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> >> b/drivers/gpu/drm/i915/display/intel_dpll.c
> >> index ca0f362a40e3..3101de274f9d 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> >> @@ -940,7 +940,7 @@ static int hsw_crtc_compute_clock(struct
> intel_atomic_state *state,
> >>  	struct intel_crtc_state *crtc_state =3D
> >>  		intel_atomic_get_new_crtc_state(state, crtc);
> >>  	struct intel_encoder *encoder =3D
> >> -		intel_get_crtc_new_encoder(state, crtc_state);
> >> +		intel_get_crtc_new_encoder(state, crtc_state, true);
> >>  	int ret;
> >>
> >>  	if (DISPLAY_VER(dev_priv) < 11 &&
> >> @@ -969,7 +969,7 @@ static int hsw_crtc_get_shared_dpll(struct
> intel_atomic_state *state,
> >>  	struct intel_crtc_state *crtc_state =3D
> >>  		intel_atomic_get_new_crtc_state(state, crtc);
> >>  	struct intel_encoder *encoder =3D
> >> -		intel_get_crtc_new_encoder(state, crtc_state);
> >> +		intel_get_crtc_new_encoder(state, crtc_state, true);
> >>
> >>  	if (DISPLAY_VER(dev_priv) < 11 &&
> >>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI)) @@ -984,7
> >> +984,7 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state
> *state,
> >>  	struct intel_crtc_state *crtc_state =3D
> >>  		intel_atomic_get_new_crtc_state(state, crtc);
> >>  	struct intel_encoder *encoder =3D
> >> -		intel_get_crtc_new_encoder(state, crtc_state);
> >> +		intel_get_crtc_new_encoder(state, crtc_state, true);
> >>  	int ret;
> >>
> >>  	ret =3D intel_mpllb_calc_state(crtc_state, encoder); @@ -1003,7
> >> +1003,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state
> *state,
> >>  	struct intel_crtc_state *crtc_state =3D
> >>  		intel_atomic_get_new_crtc_state(state, crtc);
> >>  	struct intel_encoder *encoder =3D
> >> -		intel_get_crtc_new_encoder(state, crtc_state);
> >> +		intel_get_crtc_new_encoder(state, crtc_state, true);
> >>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> >>  	int ret;
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> b/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> index 2411fe4dee8b..fa91a9f66422 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> >> @@ -427,7 +427,7 @@ void ilk_pch_enable(struct intel_atomic_state *sta=
te,
> >>  		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
> >>  			temp |=3D TRANS_DP_VSYNC_ACTIVE_HIGH;
> >>
> >> -		port =3D intel_get_crtc_new_encoder(state, crtc_state)->port;
> >> +		port =3D intel_get_crtc_new_encoder(state, crtc_state, true)->port;
> >>  		drm_WARN_ON(&dev_priv->drm, port < PORT_B || port >
> PORT_D);
> >>  		temp |=3D TRANS_DP_PORT_SEL(port);
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> index ea117189910f..b9821f8b0700 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> @@ -224,7 +224,7 @@ int intel_pmdemand_atomic_check(struct
> intel_atomic_state *state)
> >>  		if (!new_crtc_state->hw.active)
> >>  			continue;
> >>
> >> -		encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> >> +		encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state,
> >> +false);
> >>  		if (!encoder)
> >>  			continue;
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> index a72677bf617b..a4d56a2a670a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> >> @@ -2012,7 +2012,7 @@ void intel_mpllb_state_verify(struct
> intel_atomic_state *state,
> >>  	    !intel_crtc_needs_fastset(new_crtc_state))
> >>  		return;
> >>
> >> -	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> >> +	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state, true);
> >>  	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
> >>
> >>  #define MPLLB_CHECK(__name)						\
> >> --
> >> 2.34.1
> >>
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
