Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E5389B694
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 05:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128F310FFA3;
	Mon,  8 Apr 2024 03:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jd5a48zf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2FD10FFA3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 03:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712548245; x=1744084245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hoZCYS6Y2v5l0bG4eg0xyNLm/RH7ABOt6ufSyQGruwk=;
 b=jd5a48zfMwFPPh9VgJtVwfAV8RaW1bJblvL6O++ebda6QTOPi+F7OcPY
 uZam+rNs8C5pFdjV7NA38eM67sQ9K+8A+1inv8D8bdFHge0sgtLp/USdH
 hkRnmbR5H9VjkpAvfz3hwOON4+Br0SEDnXeG/QnJvQkXSUB1m8lTBT3HZ
 4Id487rJ3de3Cf3S+DQaTupYITB8IiM1p1ndebrzB5DywBEd6u0WVhrgs
 WnbiKxsx391/WgWAU02SKqZOMvrwZOAIeTBZMwLk1VB1yXZVTPecEwhH8
 HAyDDf8yHmktcJ/Cvv3h6w8TfhxvFR7FKxatlcR30/7hgnuDWnvOb+Unu A==;
X-CSE-ConnectionGUID: cvSZQQ5CTTqCROUz0G/wTw==
X-CSE-MsgGUID: Q/OtIc4nSFOQtS+gc5/RSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="8385401"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="8385401"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 20:49:57 -0700
X-CSE-ConnectionGUID: Vyr2dx7sTo6XDl6k5E3vdg==
X-CSE-MsgGUID: Sk5GWt2pSyemaaOuEmBWNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24490378"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 20:49:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 20:49:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 20:49:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 20:49:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 20:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V3p5eVHYweAEj3DWbkRRfCuJYa+e4KI8lI+zmQWFCDPfALEMAKm4X3f2m/1hhUpfEd3S92iOlgVyzM2Mh6yh0TW4YV0qC6QyrnNJDYPURhy/SHX0v+NTq7p/woNC4AKZuiIko1Jh/M1+boBn5mQEC6gUEGyWggaQvD+6xQ46F7YHRdZE1bI+4XaxDn9knQ/8Bws4LcAgja+tVBuerZ/cTyTWE5dHqhxnZYN7kR12DdZnL6aq8nEuiYVq6J8pC4RlehuC8DROK6pIk/aUPsYweRXq0c3oMZUo/YAzYIZVygNso/pPENs6RyiORHutExK7cUyCcgQVVaV6wD265ZcvfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvaKpTSueDdrHX2i9+6uAmJC4v81cg7e33/thFdo5Zk=;
 b=B4ZbGqHqVzt7kuiVNG+l5MFCgnbRwqM5bWuEkoXVvVMQHpkHCNPbnblT09rhDldWn2A1aaCau2oWbe7erPg5iLf0BcRiWakmqWCUkpNUKEKY+fjU1gPlyEi+KhoA2AEvR1A7Bpo1e2v4P9bw8dwNLTrJFbKCBOj593zhDa++6vhsNmOvJ3bEfMvojW9FUoUXC/7YT8FTpSeC2kL4UWn0k+BGrCRV79GwwjxZnuu52kjzv2egpgWTRBxvbuAgDKm85+SEON6SJsMFjJwOdskCUKGik2G6O0UQplvRNgyCKmAWsHph3cxfS47ybcKHs6RJIDo+3LpPeBbs4eCvP/RO8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4545.namprd11.prod.outlook.com (2603:10b6:5:2ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Mon, 8 Apr
 2024 03:49:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Mon, 8 Apr 2024
 03:49:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [7/7] drm/i915/dp: Limit brightness level to vbt min brightness
Thread-Topic: [7/7] drm/i915/dp: Limit brightness level to vbt min brightness
Thread-Index: AQHah4KSciSmtdrLPUuHDYdYcYrB7LFdv/2A
Date: Mon, 8 Apr 2024 03:49:53 +0000
Message-ID: <SN7PR11MB6750741F4EF2FE4A6E12AAEBE3002@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240405083704.393996-2-suraj.kandpal@intel.com>
 <20240405175546.GA934147@toolbox>
In-Reply-To: <20240405175546.GA934147@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4545:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: stqGeyTCQJ5YViSJhnl0tcyxHYCSiCa9eVU02bvqQkzGENgCztDq+5/d9gj/vR76IHMMpM2J9Mr9IOyzL4LlcO1tonklRMfuYrpVD6yI/MIe7DB9ie1WOYZVgGtaDk+CzWC/Y8QaTNxiPmmEGsl0jKIOKcadccxZpgNFGFMDB0QF6ZyGmnz+fXxYZALW2C97VvxE2FzHOk6BKlUVUiQHWp6gEt6V4qByuIcEaFTPF9jsELa4NcEwSGPXcvBUj2a63Xp+O4Ev9rt93Dx5bg7Wvg+Z3vEAoHJCOJugA52SZ9QeNAwlb3tVI8Rt4RYjajPEJ/3hHimdPDvbVRqeFBHolEeL/R9baei4jaBE31sgMRfiY8gueWU0lAQIXIr/tXtqeOjERN9xqo0/cJ850bO8uX2aIaihhZqlRYp/tkTyMKJ29axTvmTE1O5ib0lF30lIlZBQifZJN2xjHzDBqmNHWEZMVJj7mPOrWSHiIu8eEUUrButiNY+/znhnxBGVqprIpFmnYU0wDVpcCYj5rEVeDX/u57ubu5mFocAL7XxrUxV2+itGAHvabjkNSGJafA8uymbWs4E58LrQHOMpzYhP7eveQ1AFwkLfnKCzy1gpmJL0c1isRibIvBZhS1WnAZh1sHYWe+/AOYEjsvdDA4Am6un2ig+QTy3SDu0TewUqLbA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bE4XcJ1Ttufc5iv7msAWm705eQLZN2/teKvuWiFZXnYpwCmTkd9Q1e2eL0O5?=
 =?us-ascii?Q?ep73emRpOqd4KQe28ce+kzqE9RbJr8PePydcjRgNPNQ7mqOQmTBywgeS+/a/?=
 =?us-ascii?Q?RvhV36Uex8e0NsAUazV2wu2kJW1cEOcj5c8Uy9N6rASR5F+PVlUbgZfQUoKu?=
 =?us-ascii?Q?VXItqF7xMZmDrZoctSAM5wfzTeedatcCKJOi9fSOiZ4TUZVhhPjaOIbMw7nI?=
 =?us-ascii?Q?d7rnxa7soLxEpStHcv+vGyWUakeSfU19lGsoht9EbxN4qOjlrygPgJD4XMy9?=
 =?us-ascii?Q?cOuJ2pTEAKc4gTc51qvvp1kULQOPR3X9cy9j18QpvCl5yrSV5iOv0aps0v0m?=
 =?us-ascii?Q?i1YHVLD966YUPn9jtlFqFhI494GJR0aSPTRpP70d/V4SBxW0+G873n4UtxVs?=
 =?us-ascii?Q?CSmV1hXbQ0RYyasbzs4mLpOxpsa19cSzynBs9tCXZgNS7y6/PEzoKnZyGP67?=
 =?us-ascii?Q?cwtECkv1wZlmelxXb39XlkjI6wtZKdJn4pDMYh+WIQ2jEpAcYMOAxmvZQD2i?=
 =?us-ascii?Q?B0ntdVIuwOTRXtwLmHeNAlamVA4/GuGqplUeCOTMFxI3Y9HASjgQxt+fTyl6?=
 =?us-ascii?Q?DWfAw6vmjKCLOCUaOxUszgc5EEJJYtJUFJxX89r97ur6EvXVoLQzguv4Oiph?=
 =?us-ascii?Q?NX0dwEHkoRztgHI1eQ/aXp9FO30b1NPoI7gv/2ycVcQNa7DmWpzZJkGzKUFr?=
 =?us-ascii?Q?YpEDLwdHfQesUNxrPvRy0gsrnFcwnT7CNKdcjcPQuaeeQz5pjWJgwO71Awwd?=
 =?us-ascii?Q?/xM4HMb1KD0SFCZDODEALpIP7a+bH9T8nykbEhKayDMuGjp75dkkHr0/LCoi?=
 =?us-ascii?Q?9khEJDYDpxaRErveWXm5tptC2S2RZOnDFh0q9klhetoYLUjQQ4kYP4OlYyrR?=
 =?us-ascii?Q?Xd2HK6r4f8dGqrc0eUr+X+Nx+pWhYatQfVlw29UR4Eria17raBmTRt7TIaJJ?=
 =?us-ascii?Q?VKgwGGf/Q4kC0LEtMKNMjWfMua8iWdI6TPw7WeY7hXxHWBxPj9eOuXlTXhsx?=
 =?us-ascii?Q?FUPm82KPH5rB/7ggx1hLiQ2pYOSXPEDg0ObJO+QI3hwCh56u2WwtLbiK14G4?=
 =?us-ascii?Q?B1hqoqXYqxeaYR2FpE21p1z+9J/4ibS6DBXoKYsbf5TxhbOXe2GrPlemND2X?=
 =?us-ascii?Q?OF8vaOntKVBKxblR2AL+9IPuDJT8E/VQyR2ypW+gkAzYnxnqysnhoBspQbEc?=
 =?us-ascii?Q?p8ioWz69O4Xdh7C2DT5kNL68Ce7ACwcS7CWbyteBLxacYDy9z8EiQ5Y3ailz?=
 =?us-ascii?Q?qbyRoRm2DUBK3EaearG3as41GFYu+sYD1xLrFjTTBq8LWt2Wwwln7cbqBPFr?=
 =?us-ascii?Q?T8F8B2tUJLEGi1Yty6e9NG6nKoji6fekNpz5SxKBQ1yGN0/KsScCN/vwhSo6?=
 =?us-ascii?Q?2WmtmQGjxUlTKqDIvyJIsDn7hjFY3Hx1k4qeUpnPo7+7pkjKz6vHaJf9Dks8?=
 =?us-ascii?Q?6KTqLeO1jFqdTZpu74JJDV9Xacln67+zgoWkudAX9IpyyJulWMKKttms+btC?=
 =?us-ascii?Q?cCAQK4PJYmfz5gCgxhxJ7ZoypVjFh1HtnRgiKbtPwI9Bf7SNxm8BXhdeD1ix?=
 =?us-ascii?Q?M1kBqIvMxDDf68Sjvi1UtA/0WmeNfOn6ciEcwtHn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f5b6c54-b4f6-46f5-434e-08dc577ef31c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 03:49:53.5476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXoSwmTyv778moZI2X4m0pWmpKjRiD5QqZCUOyAGVV8MR84G5l3tHwtXJKkAckaySEhKBcnBpDT0/XpQPQKU6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4545
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
> From: Sebastian Wick <sebastian.wick@redhat.com>
> Sent: Friday, April 5, 2024 11:26 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [7/7] drm/i915/dp: Limit brightness level to vbt min brightn=
ess
>=20
> On Fri, Apr 05, 2024 at 02:07:05PM +0530, Suraj Kandpal wrote:
> > Limit minimum brightness to vbt min brightness when using aux based
> > brightness control to avoid letting the screen from going completely
> > blank.
> > Sometimes vbt can have some bogus values hence clamping the value for
> > sanity in case of corner case.
>=20
> So, you're completely ignoring the value from the EDID now instead?
>=20

Yes we will be giving vbt value a preference but yes in case I can add a ch=
ange wherein
If vbt value ends up being 0 to prefer edid val and if that too is 0 to tak=
e a min value of 20

Regards,
Suraj Kandpal
> >
> > --v2
> > -Use something same mechanism to limit minimum brightness that PWM
> > method uses [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 20dd5a6a0f3f..eb2a7225dfaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -411,6 +411,8 @@ intel_dp_aux_hdr_setup_backlight(struct
> intel_connector *connector, enum pipe pi
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	struct drm_luminance_range_info *luminance_range =3D
> >  		&connector->base.display_info.luminance_range;
> > +	u32 min_level =3D clamp_t(u32,
> > +				connector-
> >panel.vbt.backlight.min_brightness, 0, 64);
> >  	int ret;
> >
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is
> > controlled through %s\n", @@ -427,14 +429,12 @@
> intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum
> pipe pi
> >  		}
> >  	}
> >
> > -	if (luminance_range->max_luminance) {
> > +	if (luminance_range->max_luminance)
> >  		panel->backlight.max =3D luminance_range->max_luminance;
> > -		panel->backlight.min =3D luminance_range->min_luminance;
> > -	} else {
> > +	else
> >  		panel->backlight.max =3D 512;
> > -		panel->backlight.min =3D 0;
> > -	}
> >
> > +	panel->backlight.min =3D min_level;
> >  	intel_dp_aux_write_panel_luminance_override(connector);
> >
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR
> interface
> > for backlight control (range %d..%d)\n",

