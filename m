Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A0272A18C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 19:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5932B10E165;
	Fri,  9 Jun 2023 17:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9FD10E165
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 17:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686332709; x=1717868709;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nBLG4PjkGnckW5cqcDUQ81Uq22gEvrwRjy+jboEj/mE=;
 b=B5m0kDNeB0DKm1UTMH9IpZ8Z9eAHfGhIxhmititw52IXABExH5oSZp0P
 eVSp6L3tEczt3HCeT+CSTOwO3so7F/bosT7JNPEtsIeQXzgCRhUDXbmSL
 15styDFp0oYfI3SJVsBlaUp/iOXqneY0OGu67WdBKOE7Nqlcw+EX79XoL
 hYTGmeWvazOjWGU1ZlT/1DxvD+jNmtJ/0yzK58N2MyklUmBQ4eHfYIfcs
 7wCWjJnND32nyFANklb/xM/z8heZt20tc0+yh7qaMfGCoKT5UxCuj5b5q
 a0Mn7qGJju1Bwdtyk6E+J6102Nyb0Ggo11sBwlSbkqAorIwwBUrAHaJZC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386019948"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="386019948"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 10:45:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="884666101"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="884666101"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 09 Jun 2023 10:45:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 10:45:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 10:45:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 10:45:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 10:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+fACeJjmFghfeHSVZSPk2Jz0PKxS/4+Qtb5BG2t6l6TQO+rlzOjnTNFWEWJRYlEK+Mvjxf6HyvIJxY3jRocbOSi8sQJU7MEN/X0RO1W5I59luXrnNW0EtuGYj1PCG8DcPh0N27oAd0GXE82tX3K1NAUqbqktfvbapuBINUhcuBPjbPKihB55eiEHHzNFc/Nh+FkeamiFeXp9tmOYjyaktXLy96/z0HzLu8h66Q1Cn6SzifSs8PJcmjdFkQB2nYUUyXq1PbbPSWA9uhuBgC8tS0EajEEDtXqGCPKfAl9ETlbVvawWAllTgvJxgMoVM8z//nZ0PAQSEZo3GRpWvJ2IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dxLQ6aKtACXt4FNZk/sTuxUimm+v0RSl7UYoVSTjFs0=;
 b=jAU4J7aT11U6hYq8VXa0lXH2f9rFQ+Jf2zUeJWg9MOs3zS+W92kWhNrxTrSIIT73/mnwDZjeIu7qbJZB3nu75I3VXOAwzDiIOaRSxWf6A9H++QZ4hVGFtbQEzDFgikgrAq+jxp0fQihwD40sI8HmZ96wO4ZbNVK6Sz6Ye8lqbAQd/8RMLiJbB15nvT22EtrCMGTRPV0gw3f/W6cgr9n4mNj5ApMEx6UfA7+dLtA6rKOnkYPcQfGyLz8NZPUkDg/XHOoSTbxzkb9q81pTw0pwLllUDymklizmujdexCyUbqx0hUK4rfTP9V6u1vw/JcUFG2pAtc2HrjHd0RXWwYnZRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.42; Fri, 9 Jun
 2023 17:45:06 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::c7d5:8421:98a4:2579]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::c7d5:8421:98a4:2579%7]) with mapi id 15.20.6455.043; Fri, 9 Jun 2023
 17:45:06 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 2/4] drm/i915/display: Update access of
 has_audio param
Thread-Index: AQHZmq6UQdVMNfDamkKTMyooGAzhtK+CNxwAgACHqxA=
Date: Fri, 9 Jun 2023 17:45:06 +0000
Message-ID: <MWHPR11MB193571458C1B26FBE379F444B251A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609084504.1929424-3-mitulkumar.ajitkumar.golani@intel.com>
 <87fs71q8jn.fsf@intel.com>
In-Reply-To: <87fs71q8jn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|CO1PR11MB5186:EE_
x-ms-office365-filtering-correlation-id: 047f6139-4981-44ba-3e82-08db6911434d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DMsCTUFr3yfSEyYUYpvQjHTIfduf7jwHbD/CcaxRZBqIgFeMguMKIRXsaeJE+m6faVKj74AQ6rrQBqyxJkWner1zMbN7dW73CeAj3QjtoHKp/6sQWzUf1ivFK960W5tcBPuPrXjdvr5iljCOFQ4qMo5VzfCz7+/IEb8/dVpN/RinjtXH6Abeq0GmcJwrYXWHEXWbgTI8I64b7s4MURoAtZwAHA8r13w7aCyXr+kelGeBkI6uvVQcHmWLD4DkrYU4nTraehejo2kUB+j0ndlS7J01FjEyXA5lMXXJnbYFt2NbSr7nn0pq9nDIuVzZWTJhzgDeEYrnDqfz4y2tGTkwVmrTdQIrBfjIEAgUSHGlwm7+hrwx0C0WV0SCqDEe5yDTaNH8bqIkFjz7XYOW3O+0pJBJx2RHZ2/rExg/s0THBzhePR8pApkgVkUNV3WVcJoW2sxIrSi56epd9QtRVUpKC9Wd6B2mqtnpN7wxoh6hNY0mTz2AhMu8Upi2CLB2hBfbrEdtykpMRl3fxTVHqFTFrJ+aLYSdcVG3RoLmP6Aw6U6BOAlhtmxQXI9fO3i7XK6irIAhhCG/IggPVZKJCdIk9lhd03jsgAXXUiQaOjw/1yIxM2Gb8bsYS6R+KymHheZ0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(39860400002)(376002)(451199021)(52536014)(5660300002)(8676002)(8936002)(33656002)(30864003)(2906002)(15650500001)(83380400001)(38070700005)(38100700002)(82960400001)(122000001)(86362001)(55016003)(9686003)(6506007)(53546011)(186003)(478600001)(316002)(7696005)(110136005)(76116006)(64756008)(66556008)(66446008)(71200400001)(66946007)(66476007)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b50mpQ+V1DLf+QppeyvT2VYQKcHltiLOGEaieqmw3/57n10M7ab7EcD3QyH+?=
 =?us-ascii?Q?NOu0rQYV6FysRSgmwfxk/df6mPOl6eYbFs3j23+nIZSZbTAYT/SCyoT3aU73?=
 =?us-ascii?Q?9IzkbBUOuYa2Rk91xiGJdqfln3BQsuL6Zftd95ehkGOQ9amw6vOUtENWqS75?=
 =?us-ascii?Q?zGA+qd35Y1dhbax9EzX0QW2Rqoubj5X4xe8uoky1UX+dNro2BjMcUhdd2kK8?=
 =?us-ascii?Q?psgP3GXMpUH2/Qybk4MNynWf9hMzZDST9FVSj5Cp/U9vMB+1XXAOirjZ+f0Q?=
 =?us-ascii?Q?YV1NEjr3BiMsQRk6rH6To7xtONzcXCrWJuXgCUXUiVb+dpPIOjD7I8AqcLVO?=
 =?us-ascii?Q?QALGqQuv/lP5+Ut2YysteUdwxx13GHwwfNdswK+I4U4HLPNnBY6WMNAnyj4r?=
 =?us-ascii?Q?1kFEsIw3AOZOaAnSu2XbcjGbTA6V5acX15vgHfDIEfV62VwQz+JVTEeT8f0j?=
 =?us-ascii?Q?hK6m/t8BWRzgoqYBVAI7xOHLANLG05Ol/BiOdBjkRc2kC3udNaktV3csTd6H?=
 =?us-ascii?Q?VwO8uZRXQi6lsrTVLsURTiExsHhUmiNe23AgcgCR0zn+pNHwlKqPVzG/gBN2?=
 =?us-ascii?Q?ftsgDuhQRkBcG2VaDwMmOrAUc++g810AK8OdxxEI6HOCbpnZG/8gf3m3oHL0?=
 =?us-ascii?Q?ofanhWFeKO2x+iXpx47RLgJRe/59/mm6yZ6LLrdlhWDqmZi74gw5VR68ez95?=
 =?us-ascii?Q?Olnbog84YOnvketyW6V2r5UofOU2ltqeRBL6Lw1dz8IF5epEFmwVcVD1Bo5t?=
 =?us-ascii?Q?vkA1oVYSJPFCKzcqV0MaOM/FTUdWgjVoHk6qWdj3tgl2Cw+oCA0z+f5RZ/Lx?=
 =?us-ascii?Q?TsoKd0Uj7tl7h/OT5eAmK2xOcZMRioCFrIOL2MbmDYzG71jx0F1fuC7mNk7H?=
 =?us-ascii?Q?XXhrQLZo5lPyEP9L+kecFjZ85Wf70YlBmM+n0+rI+CGMp39KF/fYGKUas6L3?=
 =?us-ascii?Q?4P1VPzd9iJZPj35m2A1GHdyUFhha91XODY9kmec/v95YCvHbc9jeWuU7GYNb?=
 =?us-ascii?Q?8U4fhALGBj+Cg7y3v3uaCtFuRkWFIzEXc57YVyzgi2sEqDEU0CWQ+KTXPlfZ?=
 =?us-ascii?Q?tA0ok8qn4ncDTOfHWjuK/B48P+Xkn6ejrc1tMybNChq9yfEch3fPIcbpwckz?=
 =?us-ascii?Q?QAHd8FLamKgw1JjF//rAxvdPGWRXZ5PvSaLItGmEcc6VEeGpBoaf4704Vc6I?=
 =?us-ascii?Q?0dwjN2Gkw+yPNOk3KB60xYrB5vFTiwc//g4rPhrbi/mR3e0UCOXq7rZGztu4?=
 =?us-ascii?Q?1Xrl+L5P9qfEYfDcWVjuDj4yeqjI4rfWSjZFRFfngejzyW8GbF25jkn//p1Z?=
 =?us-ascii?Q?LOVApxTPxuc2/cZct+tn+l8i72BrG5oMvp8WV26xVNxQsghhEZr8RUrRUbLg?=
 =?us-ascii?Q?XqzH8YoTYSO5zpdaTjMylxxgKuUPSNuUJsGsWIju91M/gKKz/dJUH6h9IdZl?=
 =?us-ascii?Q?vkZhmaX7UUZJqZPkFcvUrOW8htrKUMbUnlTm/b6zT1v4UoCtncb90nID5Wo3?=
 =?us-ascii?Q?EGp6bVtq3Ml0YCGweNJYdsCKl2Ae46H/VuxgdKNSd0ffOgNRt7TV8W223rud?=
 =?us-ascii?Q?uc6gXgP23yOQqvnbhXweLXMU1cUj4YT5BtvcceXXdbqL4Uc/wIi0aQ0kI3KN?=
 =?us-ascii?Q?2tVTTRsnCQGUZWpicueMguXubz1yzEbPq7OoGBGnCcRbRN0ny+uKrCOqRmVG?=
 =?us-ascii?Q?RA9jMp+98LynIjDyUZMt8Mpt1cU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 047f6139-4981-44ba-3e82-08db6911434d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 17:45:06.7355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6hFNkNDPRi1WRu47vdL9Pq1ST2hQjRbVWWbphcBSNKsMu4OEae86KiufwMF+96ZFPFNaJWwT59aD+qWygXEtbLcZppc2IjQemoZREH/RvFrFAMI/l1aNUqUau8+kmzG5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/4] drm/i915/display: Update access of
 has_audio param
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

Hi @Jani Nikula

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 09 June 2023 15:09
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC 2/4] drm/i915/display: Update access of
> has_audio param
>=20
> On Fri, 09 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Update access of has_audio param from crtc_state pointer as it is
> > wrapped under audio_config.
>=20
> This should be squashed with the change moving the member in order to not
> break the build.
>=20
> BR,
> Jani.

Thanks. Updated changes to new fix version.

Regards,
Mitul
>=20
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c            |  4 ++--
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c          | 16 ++++++++--------
> >  drivers/gpu/drm/i915/display/intel_audio.c       |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c       |  6 +++---
> >  .../gpu/drm/i915/display/intel_crtc_state_dump.c |  4 ++--
> >  drivers/gpu/drm/i915/display/intel_ddi.c         |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c     |  4 ++--
> >  drivers/gpu/drm/i915/display/intel_dp.c          |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c        |  2 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c        | 10 +++++-----
> >  11 files changed, 29 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> > b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 112d91d81fdc..741896db0b38 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -345,7 +345,7 @@ static void intel_dp_get_config(struct
> > intel_encoder *encoder,
> >
> >  	tmp =3D intel_de_read(dev_priv, intel_dp->output_reg);
> >
> > -	pipe_config->has_audio =3D tmp & DP_AUDIO_OUTPUT_ENABLE &&
> port !=3D PORT_A;
> > +	pipe_config->audio_config.has_audio =3D tmp &
> DP_AUDIO_OUTPUT_ENABLE
> > +&& port !=3D PORT_A;
> >
> >  	if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A) {
> >  		u32 trans_dp =3D intel_de_read(dev_priv, @@ -625,7 +625,7
> @@ static
> > void intel_dp_enable_port(struct intel_dp *intel_dp,
> >  	 * fail when the power sequencer is freshly used for this port.
> >  	 */
> >  	intel_dp->DP |=3D DP_PORT_EN;
> > -	if (crtc_state->has_audio)
> > +	if (crtc_state->audio_config.has_audio)
> >  		intel_dp->DP |=3D DP_AUDIO_OUTPUT_ENABLE;
> >
> >  	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP); diff
> > --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > index 5c187e6e0472..5607e750f576 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > @@ -178,7 +178,7 @@ static void intel_hdmi_get_config(struct
> intel_encoder *encoder,
> >  		pipe_config->has_infoframe =3D true;
> >
> >  	if (tmp & HDMI_AUDIO_ENABLE)
> > -		pipe_config->has_audio =3D true;
> > +		pipe_config->audio_config.has_audio =3D true;
> >
> >  	if (!HAS_PCH_SPLIT(dev_priv) &&
> >  	    tmp & HDMI_COLOR_RANGE_16_235)
> > @@ -224,7 +224,7 @@ static void g4x_hdmi_enable_port(struct
> intel_encoder *encoder,
> >  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> >
> >  	temp |=3D SDVO_ENABLE;
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio_config.has_audio)
> >  		temp |=3D HDMI_AUDIO_ENABLE;
> >
> >  	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp); @@ -240,7
> > +240,7 @@ static void g4x_enable_hdmi(struct intel_atomic_state
> > *state,
> >
> >  	g4x_hdmi_enable_port(encoder, pipe_config);
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config-
> >audio_config.has_audio &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  } @@
> > -258,7 +258,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state
> *state,
> >  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> >
> >  	temp |=3D SDVO_ENABLE;
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio_config.has_audio)
> >  		temp |=3D HDMI_AUDIO_ENABLE;
> >
> >  	/*
> > @@ -293,7 +293,7 @@ static void ibx_enable_hdmi(struct
> intel_atomic_state *state,
> >  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> >  	}
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config-
> >audio_config.has_audio &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  } @@
> > -313,7 +313,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state
> *state,
> >  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> >
> >  	temp |=3D SDVO_ENABLE;
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio_config.has_audio)
> >  		temp |=3D HDMI_AUDIO_ENABLE;
> >
> >  	/*
> > @@ -348,7 +348,7 @@ static void cpt_enable_hdmi(struct
> intel_atomic_state *state,
> >  			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
> >  	}
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config-
> >audio_config.has_audio &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  } @@
> > -360,7 +360,7 @@ static void vlv_enable_hdmi(struct intel_atomic_state
> > *state,  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config-
> >audio_config.has_audio &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  } diff
> > --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 3d9c9b4f27f8..b4a0dae65cbf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -815,7 +815,7 @@ void intel_audio_codec_enable(struct
> intel_encoder *encoder,
> >  	struct intel_audio_state *audio_state;
> >  	enum port port =3D encoder->port;
> >
> > -	if (!crtc_state->has_audio)
> > +	if (!crtc_state->audio_config.has_audio)
> >  		return;
> >
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s]
> Enable
> > audio codec on [CRTC:%d:%s], %u bytes ELD\n", @@ -874,7 +874,7 @@
> void intel_audio_codec_disable(struct intel_encoder *encoder,
> >  	struct intel_audio_state *audio_state;
> >  	enum port port =3D encoder->port;
> >
> > -	if (!old_crtc_state->has_audio)
> > +	if (!old_crtc_state->audio_config.has_audio)
> >  		return;
> >
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s]
> Disable
> > audio codec on [CRTC:%d:%s]\n", @@ -930,7 +930,7 @@ void
> > intel_audio_codec_get_config(struct intel_encoder *encoder,  {
> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >
> > -	if (!crtc_state->has_audio)
> > +	if (!crtc_state->audio_config.has_audio)
> >  		return;
> >
> >  	if (i915->display.funcs.audio)
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 4207863b7b2a..48ecd2cb5a9e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2553,7 +2553,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	 * restriction for GLK is 316.8 MHz.
> >  	 */
> >  	if (intel_crtc_has_dp_encoder(crtc_state) &&
> > -	    crtc_state->has_audio &&
> > +	    crtc_state->audio_config.has_audio &&
> >  	    crtc_state->port_clock >=3D 540000 &&
> >  	    crtc_state->lane_count =3D=3D 4) {
> >  		if (DISPLAY_VER(dev_priv) =3D=3D 10) {
> > @@ -2569,7 +2569,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	 * According to BSpec, "The CD clock frequency must be at least twice
> >  	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
> >  	 */
> > -	if (crtc_state->has_audio && DISPLAY_VER(dev_priv) >=3D 9)
> > +	if (crtc_state->audio_config.has_audio && DISPLAY_VER(dev_priv) >=3D
> > +9)
> >  		min_cdclk =3D max(2 * 96000, min_cdclk);
> >
> >  	/*
> > @@ -2580,7 +2580,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	 *  162                    | 200 or higher"
> >  	 */
> >  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> > -	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
> > +	    intel_crtc_has_dp_encoder(crtc_state) &&
> > +crtc_state->audio_config.has_audio)
> >  		min_cdclk =3D max(crtc_state->port_clock, min_cdclk);
> >
> >  	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 8d4640d0fd34..ea1b706e637e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -265,7 +265,7 @@ void intel_crtc_state_dump(const struct
> > intel_crtc_state *pipe_config,
> >
> >  	drm_dbg_kms(&i915->drm,
> >  		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
> > -		    pipe_config->has_audio, pipe_config->has_infoframe,
> > +		    pipe_config->audio_config.has_audio,
> > +pipe_config->has_infoframe,
> >  		    pipe_config->infoframes.enable);
> >
> >  	if (pipe_config->infoframes.enable & @@ -291,7 +291,7 @@ void
> > intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
> >  	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
> >  		intel_dump_dp_vsc_sdp(i915, &pipe_config-
> >infoframes.vsc);
> >
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio_config.has_audio)
> >  		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
> >  				  drm_eld_size(pipe_config->eld));
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 090f242e610c..396fe3d16609 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3782,7 +3782,7 @@ static void intel_ddi_get_config(struct
> > intel_encoder *encoder,
> >
> >  	intel_ddi_mso_get_config(encoder, pipe_config);
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio_config.has_audio =3D
> >  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> >
> >  	if (encoder->type =3D=3D INTEL_OUTPUT_EDP) diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 5c7fdc82ac22..6eaa537ee961 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1857,7 +1857,7 @@ static void get_crtc_power_domains(struct
> intel_crtc_state *crtc_state,
> >  		set_bit(intel_encoder->power_domain, mask->bits);
> >  	}
> >
> > -	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> > +	if (HAS_DDI(dev_priv) && crtc_state->audio_config.has_audio)
> >  		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
> >
> >  	if (crtc_state->shared_dpll)
> > @@ -5254,7 +5254,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_BOOL(has_infoframe);
> >  	PIPE_CONF_CHECK_BOOL(fec_enable);
> >
> > -	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
> > +	PIPE_CONF_CHECK_BOOL_INCOMPLETE(audio_config.has_audio);
> >  	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
> >
> >  	PIPE_CONF_CHECK_X(gmch_pfit.control);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f4192fda1a76..028317d40dc9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2255,7 +2255,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder-
> >port !=3D PORT_A)
> >  		pipe_config->has_pch_encoder =3D true;
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio_config.has_audio =3D
> >  		intel_dp_has_audio(encoder, conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index e3f176a093d2..4ca39373c448 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -322,7 +322,7 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
> >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->has_pch_encoder =3D false;
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio_config.has_audio =3D
> >  		intel_dp_mst_has_audio(conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 7ac5e6c5e00d..aa822ee5fbda 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2302,7 +2302,7 @@ int intel_hdmi_compute_config(struct
> intel_encoder *encoder,
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
> >  		pipe_config->pixel_multiplier =3D 2;
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio_config.has_audio =3D
> >  		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > index 21f92123c844..f6ff42841784 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -1191,7 +1191,7 @@ static void intel_sdvo_get_eld(struct intel_sdvo
> *intel_sdvo,
> >  	ssize_t len;
> >  	u8 val;
> >
> > -	if (!crtc_state->has_audio)
> > +	if (!crtc_state->audio_config.has_audio)
> >  		return;
> >
> >  	if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
> &val,
> > 1)) @@ -1406,7 +1406,7 @@ static int intel_sdvo_compute_config(struct
> > intel_encoder *encoder,
> >
> >  	pipe_config->has_hdmi_sink =3D
> > intel_has_hdmi_sink(intel_sdvo_connector, conn_state);
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio_config.has_audio =3D
> >  		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > @@ -1760,7 +1760,7 @@ static void intel_sdvo_get_config(struct
> intel_encoder *encoder,
> >  	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
> >  				 &val, 1)) {
> >  		if (val & SDVO_AUDIO_PRESENCE_DETECT)
> > -			pipe_config->has_audio =3D true;
> > +			pipe_config->audio_config.has_audio =3D true;
> >  	}
> >
> >  	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_ENCODE, @@
> -1805,7
> > +1805,7 @@ static void intel_disable_sdvo(struct intel_atomic_state *st=
ate,
> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> >  	u32 temp;
> >
> > -	if (old_crtc_state->has_audio)
> > +	if (old_crtc_state->audio_config.has_audio)
> >  		intel_sdvo_disable_audio(intel_sdvo);
> >
> >  	intel_sdvo_set_active_outputs(intel_sdvo, 0); @@ -1898,7 +1898,7
> @@
> > static void intel_enable_sdvo(struct intel_atomic_state *state,
> >  						   DRM_MODE_DPMS_ON);
> >  	intel_sdvo_set_active_outputs(intel_sdvo,
> > intel_sdvo->attached_output);
> >
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio_config.has_audio)
> >  		intel_sdvo_enable_audio(intel_sdvo, pipe_config,
> conn_state);  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
