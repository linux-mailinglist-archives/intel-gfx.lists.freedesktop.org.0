Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D32D8716E2
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 08:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1031128CD;
	Tue,  5 Mar 2024 07:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANlT1NCF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076DA1128CF
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 07:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709623918; x=1741159918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TDyqOScsrfbpc3VL0fphyPsWmStbIEqmOrr8I+whGdk=;
 b=ANlT1NCFqkmCWmQrM/qxD8IU0o061fhNXbIWdy8sjpZdYvvyQYQY4mw4
 xUw5+7uc0AZ7h7StwN5G2ndkxsju+ijvgGgXSV4mGJffY8IRXdZN/Ksz/
 whLX0cY2mh5PSKM9V+Y72hs5tbrLfwIyp/Fec90xuN4butsOqSzv65TSk
 S89wspxbl3AvdYhgvmdRwVKi0/Fwvj6XPRKjfFOVBlfaBNvLkhoJn4iff
 NZv3Qgy7oGYxseDsOguVz6/a714TAEDdzcbCV1WEszdjrBj+IQwRj2/pq
 u1bm3f5a+kkoJyZJ7ZbGmElsA/ICwPMbmIY0fbGIVQ44DG9xbo6kOBsmD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="26615812"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="26615812"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 23:31:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="40263261"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 23:31:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 23:31:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 23:31:53 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 23:31:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bY6Vm/LnQsbrTWabt8tTF4+fxq9cvvA8eDRkI/WUeegI/VFLHad0WlU3or0KmsPbUi2ZlnLdGr1DK+KzKr2gT6Vzt45iVmvTcE3udWk7Jxw1GtYbwM8I3UvwKJ169evi6gFOJPfbAjOjaldCdvUikPiDl3FU2SfOGJH6bp6oy95J6AQcyi7K2qMEr2uozr4JIgbtnTXuBYT7WeTWzV1A7tBUmboGeYDG3USbGGCdD8ORCttZHEqj3aQ6f0Pwa0oRmLHsIVKJ8aXmdWV4uIBoUeUHnprvyAlky6TE0BMoB+L3vs+9u40l47waHJJFpSEnNpneHiaw/04/vERrnxpMkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/HUBEYYhmQtXTwRP7GW8G82x+g4InJkbAVQRR3ctMe4=;
 b=EL2GYu6c59in31YVj0hS1CrzNoBKY6iAik+CRgZi+RythAm2K8yXsZrVD9kq6CQ9Z7kLXNYXoMUsqAA4CWedN03yvOiRpm9j2sND0CXq2AycUKMzFLCMzdiXShVPgnkcanpGhhliDHQ/aXOzZBefn0y0cP/kMv23jKKjSH0ftA8fJyI/x99YIQfB1cdoQn0sEpDwYXgYajBW3iL3FjIdH5pbMHgseUeAqd/1VAlFD7GFaIU34aYcXbaF2O5cCGhrCaeKgrhzaa/6geOKnUk73sfhgxNZ6K/mnPm4myuBoLqzgSDlNtmYz7aZKZQ2QvdHa9vkep7JCytx+VOKCN+2vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6486.namprd11.prod.outlook.com (2603:10b6:930:32::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Tue, 5 Mar
 2024 07:31:50 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 07:31:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [RFC 2/3] drm/i915/alpm: Add compute config for lobf
Thread-Topic: [RFC 2/3] drm/i915/alpm: Add compute config for lobf
Thread-Index: AQHabgmp7lLGMBZrJU6v95HvaMqDELEn2AKAgADp0TA=
Date: Tue, 5 Mar 2024 07:31:50 +0000
Message-ID: <PH7PR11MB5981D4C1F887744502B2E299F9222@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240304074303.202882-1-animesh.manna@intel.com>
 <20240304074303.202882-3-animesh.manna@intel.com> <87edcp52ci.fsf@intel.com>
In-Reply-To: <87edcp52ci.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6486:EE_
x-ms-office365-filtering-correlation-id: 51d32321-42fe-4c4b-a97a-08dc3ce6525d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fTqAOs09CeX0EPGMnlWoom7sbUDOIiowGZC1BmqH2AwOE8T27NPzyWN6lLeV9E211i20mAP0I96sHJjVY+0PlG1TvXTjKs3jgbopVVcMHXlVT27UVPzXyJbV4Nr5Bo75ecDV0qHB65m2JtHswbVPPZpYcUZUSRcTK9f+XwkwD96Cpaf8sAXeZjiTR3fJfqiMYF2ZpDQ2QRJHRzAYT9Qate3eoX++Yz8EbP1Jvog8sUz9RyxEIjO2UPOOugf9rGQgvC0AtwT4Wfha+P0jZS/YFQkYDK0AwOu6rjPQAISo74kmh0VwzazJVW+6j+Ck1LPOdyARCtnkz5J+g0a3bC9HDbrS9bzMKnx8M3D+7lqnq1NAebypcqsYgum4vVT0WeO2N4lpWiEan5Q+u9zK933yxXMoZKGVSOnEFluxcgw75/SJbxj84W9SzFQ+iKJYZkanmB1okAv912P98zBfV89eS9C8Rq9Ex2+daztM0+hUeK91+Dep+kh0z/pg78HjQ+QoBwQEM01eIDyaYUFvqImP9VB0ZJgjTFFec90ZpIEu33rzU8Z+Nr0qAajqybebAhqoFBfCjh7AZJMn6KQkWdXFRdz/AEEdoUdqHZDGs4bOytDa92ksNQ4yejgz/Cx8ZAQrn3ACH/JMMBTMasl9hyHtddq3FQpL22XVlQ3y/yR2bdMuYH+ceditiAN2ISRjwN7Kj0yxTM29bjVaLrPRfX27hg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0cAnvH/DrAur0/XDXanncsgULc1k4YJkUWTU9i5CDkfkEhYp8LPPOhEJxRou?=
 =?us-ascii?Q?R/IMU4GdOUU416reZjE/Q74SddYIrdPh0+laGi5cQsrJZRLIiuBC9nSw2LwD?=
 =?us-ascii?Q?eQosYC8Wgk8MCf1vdbWESwkJTFmZvyz9ud9zIHZ0kovtqsWLyOUI2xtVoWvK?=
 =?us-ascii?Q?rMU9DOX5/wXeniTqmL/Q9TIStV8uV9JAx69SfRZ8bxNN0PWR87sl293kJath?=
 =?us-ascii?Q?KfH59HKsgJsEHIYDXcuM+MixAZYA5h7q2FL1n+RWSjgqQUR2daM+3jzEbAm/?=
 =?us-ascii?Q?0wLzPAwYCtGuEY1V1VjBdC7WDXBwhy3TVhosLQJywGrejmiSWfNk5EcGGuBu?=
 =?us-ascii?Q?FgzEOgqwUPgHw8OFiYYukUlmevhVFrzlpQSHkR4FzC8Hf4JdKgxL7Z9xtbUp?=
 =?us-ascii?Q?LYG71Y5ONFzl2n0pKqDkWWntivWnHxaDoHucrGG4TgoWboXKTDvZ0f2RtEXc?=
 =?us-ascii?Q?Hz7QqncP9KnEAuaFfmMgVa5xiaYI+5pkonPLYk6nCyFWtbvkadk3gz23tOyD?=
 =?us-ascii?Q?EaLqbtRyEqIw91K0denU8vU7Os0RLXs8V2r/+71rZ/mLhIbJIO1jBi4uQXON?=
 =?us-ascii?Q?+lCDZT0wToPkVCT0AjIGlpzcpYVbyoJAlZovqhVLZAac2t5dFFQSz6f4/xAs?=
 =?us-ascii?Q?aeVP1rFFogLTSibbKyOJ80T8Gx8KBtMNFJlCcOI9WP3FmKFgKNUKqdD62nfG?=
 =?us-ascii?Q?FQF9ZDyiX08uqcKTQgeGowIsUl2VzY+poXa/b8kM5Ruo6/WlNz6qyhx1sFEB?=
 =?us-ascii?Q?oKGfXgkLpbiQLF9P7bsKlBLipMgIGM0iL66crh7IJkiXa5L2d8PGL0v8Nbjb?=
 =?us-ascii?Q?79i5it+v1GX0TNpsk+JnXUeCm+0PkNq+Onl7jSkWUuCbzdTLGZuq3AK3DMAl?=
 =?us-ascii?Q?x57iI9ZfLWevb5K9AnVrRIA0hVQ5fwuWwG+yS+yHaNGi4eKF/S1hld4+zQ1S?=
 =?us-ascii?Q?USdAHaQSguUQOq+v4x/k7SJg2CzAk+bHJoEzO50aKT1TEPypVW4lOMXyiL25?=
 =?us-ascii?Q?mjsXJ1MnscnpXefAYcyx13HJZbih9kXvhM5hLw+4f6VWAg79t8kIw0yOBPSw?=
 =?us-ascii?Q?n1PwEBbWysOG+9+GfekRvM5BPoJNGZiNRZEI/KKWmimnQFsqhhfgns9gX746?=
 =?us-ascii?Q?8YbrpuWnEit7T11sCXAgsZPs7oRrGVxELJDGTBZ+fOco/92jlfDvoNPUFEIi?=
 =?us-ascii?Q?UDuChmO89A4DQhUC4t27bQrRtBsqRbKSaMFbiigO2H86uL6JcOYOeX5S5+Nq?=
 =?us-ascii?Q?nqx/77uRslK6cHiUJRg63Y7V4ixKLZlhdVkakfPGyZyjJ9fGl6StHyb0Nuft?=
 =?us-ascii?Q?TJ36skWtpv22WAiX4dKokFRNmY4JOZauhp4naZQJmZ9o8Akq0tUlGTtuNpnV?=
 =?us-ascii?Q?tyL9opEGawxFhe184pUJfJGBFFiUHiQ8ynvzNajwXZ+ZGi7JdexX4GJbQ86Q?=
 =?us-ascii?Q?qn0jd0PqrW6e2Bu/kEy+zdyR5bn2rncf7cHKMKlJT4kZ5aiEHdOELiNOtpi2?=
 =?us-ascii?Q?nWWku8tdljyekgW8sq3M0sYXx/eTYgkIKlwjl4NsozCKKWuUfiia5qgMzpZt?=
 =?us-ascii?Q?D+mT2HG2elsU9Fvk09l8qko6jBgdUQkPcqB/V/NQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d32321-42fe-4c4b-a97a-08dc3ce6525d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2024 07:31:50.1565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PKGuDv4Db6+QGMqtQrvjgQ/1N8FWfInu7sWaCbtA/fSApZf7/8Ut/j50CjcCiydo7whbsbUGdoRBIxcNl9LfFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6486
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, March 4, 2024 11:03 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [RFC 2/3] drm/i915/alpm: Add compute config for lobf
>=20
> On Mon, 04 Mar 2024, Animesh Manna <animesh.manna@intel.com>
> wrote:
> > Link Off Between Active Frames, is a new feature for eDP that allows
> > the panel to go to lower power state after transmission of data. This
> > is a feature on top of ALPM, AS SDP.
> > Add compute config during atomic-check phase.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  3 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 45 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_psr.h      |  3 ++
> >  4 files changed, 52 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index d473d8dca90a..4d2161eeb686 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1851,6 +1851,9 @@ struct intel_dp {
> >  		u8 silence_period_sym_clocks;
> >  		u8 lfps_half_cycle_num_of_syms;
> >  	} alpm_parameters;
> > +
> > +	/* LOBF flags*/
> > +	bool lobf_supported;
> >  };
> >
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8304ef912767..e34b70d88b9a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2979,6 +2979,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	intel_vrr_compute_config(pipe_config, conn_state);
> >  	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> > +	intel_psr_lobf_compute_config(intel_dp, pipe_config, conn_state);
> >  	intel_dp_drrs_compute_config(connector, pipe_config,
> link_bpp_x16);
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config,
> > conn_state); diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 4adcddba69c1..c08bffc2921a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -436,6 +436,16 @@ static bool intel_dp_get_alpm_status(struct
> intel_dp *intel_dp)
> >  	return alpm_caps & DP_ALPM_CAP;
> >  }
> >
> > +static bool intel_dp_get_aux_less_alpm_status(struct intel_dp
> > +*intel_dp) {
> > +	u8 alpm_caps =3D 0;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
> > +			      &alpm_caps) !=3D 1)
>=20
> The compute config path must not access the hardware.

Sure, will put in init_connector() and store in a variable.

Regards,
Animesh

>=20
> BR,
> Jani.
>=20
> > +		return false;
> > +	return alpm_caps & DP_ALPM_AUX_LESS_CAP; }
> > +
> >  static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
> > {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp); @@ -1569,6
> > +1579,41 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  	crtc_state->has_psr2 =3D intel_psr2_config_valid(intel_dp,
> > crtc_state);  }
> >
> > +void intel_psr_lobf_compute_config(struct intel_dp *intel_dp,
> > +			       struct intel_crtc_state *crtc_state,
> > +			       struct drm_connector_state *conn_state) {
> > +	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> > +	int waketime_in_lines, first_sdp_position;
> > +	int context_latency, guardband;
> > +	bool auxless_alpm;
> > +
> > +	intel_dp->lobf_supported =3D false;
> > +
> > +	if (!intel_dp_is_edp(intel_dp))
> > +		return;
> > +
> > +	if (!intel_dp_as_sdp_supported(intel_dp))
> > +		return;
> > +
> > +	if (CAN_PSR(intel_dp) || CAN_PANEL_REPLAY(intel_dp))
> > +		return;
> > +
> > +	if (_compute_alpm_params(intel_dp, crtc_state)) {
> > +		context_latency =3D adjusted_mode->crtc_vblank_start -
> adjusted_mode->crtc_vdisplay;
> > +		guardband =3D adjusted_mode->crtc_vtotal - adjusted_mode-
> >crtc_vdisplay - context_latency;
> > +		first_sdp_position =3D adjusted_mode->crtc_vtotal -
> adjusted_mode->crtc_vsync_start;
> > +		auxless_alpm =3D
> intel_dp_get_aux_less_alpm_status(intel_dp);
> > +		if (auxless_alpm)
> > +			waketime_in_lines =3D intel_dp-
> >alpm_parameters.io_wake_lines;
> > +		else
> > +			waketime_in_lines =3D intel_dp-
> >alpm_parameters.aux_less_wake_lines;
> > +
> > +		if ((context_latency + guardband) > (first_sdp_position +
> waketime_in_lines))
> > +			intel_dp->lobf_supported =3D true;
> > +	}
> > +}
> > +
> >  void intel_psr_get_config(struct intel_encoder *encoder,
> >  			  struct intel_crtc_state *pipe_config)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_psr.h
> > b/drivers/gpu/drm/i915/display/intel_psr.h
> > index cde781df84d5..4bb77295288f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > @@ -40,6 +40,9 @@ void intel_psr_init(struct intel_dp *intel_dp);
> > void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  			      struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state);
> > +void intel_psr_lobf_compute_config(struct intel_dp *intel_dp,
> > +				   struct intel_crtc_state *crtc_state,
> > +				   struct drm_connector_state *conn_state);
> >  void intel_psr_get_config(struct intel_encoder *encoder,
> >  			  struct intel_crtc_state *pipe_config);  void
> > intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
>=20
> --
> Jani Nikula, Intel
