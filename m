Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E9189B73A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 07:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264FB1120A2;
	Mon,  8 Apr 2024 05:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="In444J8L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF411120A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 05:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712554819; x=1744090819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H7rpLfmOkcl4iVkKB+Bnn1UQRL12zD6gTdMUtb7bwM0=;
 b=In444J8Lo7I7GPUzphQxrV/rWy9SXfsDuj36FUSUNZ4BtO4f4bBv58Fd
 wNV7TLYDX8r1EPLiW2ZXzf6YycnENSj1+XuNDmreXwglxOaew24fKevtV
 ZLHptLpRk1iWLsJ0LDUHppLlvKquSpm9+LHoB4uMJGmZIB9PeJhn4EXyH
 6+DWH1pv5XWh6zIGZcH7J7BQ4dmZC1t/y3JySup9yh0LIdHv9SBPO8hR3
 YGY7/7X8P804U4EsTIB+RebKK/uiOr3fLmw77giG8uzeOd1K1LVJphGRT
 QHZwyq8J/BB5PjV8mPVwsBKQrJ344XZLEO33ly9/HQc1aeT0hdrwHz0+W A==;
X-CSE-ConnectionGUID: 9FFPyE3CRM+sbI73CcgGhQ==
X-CSE-MsgGUID: 3wFPhvy7Qcu4+a8XnlwQpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="30308154"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="30308154"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:40:18 -0700
X-CSE-ConnectionGUID: LlCwHak7TVuvQU+2XdR94Q==
X-CSE-MsgGUID: wVCDAI64TIWxtn06fTVNIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19797892"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 22:40:17 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 22:40:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 22:40:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 22:40:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdvGtsAuFeY5hZolTL1YdcnPHFMhOfWvNnlM6AgXXdJ5NvRybUJRy9+838sFVjrOn6QMbOouyimfpQUJNfRQ1XBDFeKmjWCfCKEq30/FBKC7sDQE4rjjY1kaLN2RVWzD56C2gQaSE6FuBI5WcdInl7aHIhyFFwM2PjkkN17F0M30rl1nTL609e90M9d8XLJerIsdbHcgIKM86bJxnZd89sTrWXQuq3yM4mFRzI4Pb7bTA7ew3AsKBV4tLdty+vgh60E8iX+I99Rv3z2SovvrxS4unTDMhES7EBfxUJ6GEwz0qT84ezsSqsDL2nHdDK8MNKRTycG9zNKLUF8s5Nhkjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aebKFGAzly1a1Gm/SpdPNyc9SxtKEJbWb5YFkwC1sy8=;
 b=YJxv6ImHOLc7uU8/LVvKEGv/aWGQ2VEB240eLJ/MQ39T5W8swpnmM7nipL+gZsl3XKtlGK0VtJSG/231o0gPXmOz5dXJ4IJHp1y8OyUZYvkFzZAZqZArlMWhEyGx5tFqjrUA7eGnwEr1G2GI/oJWn61eQEddTz2g5j2/vgPKI0Ynv4RI6UrAiwgO/HXN5rILDiGi3fz4e7jG2jfHVV5WjPOhksN5hiNHtWv8LJ7qNNZf+55Tl24thbC60nSosUiMVvVa5cl3acryOKtJAeV9E7aPWaN45y/ooZE6i47ULxl7I0N5Xa21NW4P/HYZSsvrEDprpsLH3sauhCOKJjuv7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6764.namprd11.prod.outlook.com (2603:10b6:303:209::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Mon, 8 Apr
 2024 05:40:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Mon, 8 Apr 2024
 05:40:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [7/7] drm/i915/dp: Limit brightness level to vbt min brightness
Thread-Topic: [7/7] drm/i915/dp: Limit brightness level to vbt min brightness
Thread-Index: AQHah4KSciSmtdrLPUuHDYdYcYrB7LFd3nUQ
Date: Mon, 8 Apr 2024 05:40:15 +0000
Message-ID: <SN7PR11MB6750CE2809F13D1D72838682E3002@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240405083704.393996-2-suraj.kandpal@intel.com>
 <20240405175546.GA934147@toolbox>
In-Reply-To: <20240405175546.GA934147@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6764:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: op+UNkcrJ+DuAwys18f/j5Re8MKnbbH7kU3nYDeUCCEZmbeAgMwvdTjhp1fkCO6RQPIZkOVt0HLl7fwGLEaVEj3R/2+YP6riDt0BJ4lol/eHJywBIfSkVoGt0ARpXs6c9kSNqwIPWl81biiZE04gmzDMn9NtZqa3gfkiXSG/pN755nHxQi6tlH/fakpCwI7PXDOPv5jFproodEnXvnN0VX8T/qvtAYvVRPSdtBVYMCfcnQcbLul5+/c5/OP9ii9xoPiAXoyUAEv7/TClaXXzK2Ubn5C/pF6dez3T+lbldzuZLZq/QkaJxx4I0f+NeK0DYjgzdppsJEKPXbuNdDdkfVMixa7/qCeW6Ui/uzVeAUyymWxrA+tOUwmTZeyNFS13GZ8z0iwg5Uo7JGA8aTYE4ZvfQjsOatPMlizoYp5czjB3K1xqi/eDirhqLik+z5gUNtZLiisC1DVbibV3lV6p1PQ0dAlfZvgrr4/CaLqvA0ZAyx5XK/gZ0fkxOKihPdJHyPHOuUbAOjhg8vsvfPUCT/BHG8dQAOzOkgSbEhggvUDOn8iTSkWqb0/O1lj7qjcH8Lyj4kHIspfO7kmtomKw9b7ZJ+P9hg5adEKr5uY+VEf1WgylEM/2OkizHKY+e1AdsHuCOZgoKFjL2tyR9cHLRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RSm7NogW3vwzgwbkLJg7whXchTHbWMXMPmuNZQfZa/G7RM/dGFsZvRi4xmTK?=
 =?us-ascii?Q?AS5VCEtFbJKP1QEhQEGV5uw6ebmilmAMZAz12BseN6arWC6ohb1zLoBSNMMr?=
 =?us-ascii?Q?V+mOnpzX4YBqIbKRp21pmKD9QHCLEslDUKxYmvef1BTPB8eIMND44pBxxZav?=
 =?us-ascii?Q?Sm2TNdNa4qD/knuz95DJFluW/8bBBdcTc8szceqFLnqTH8Ea7K7nNAw2/Z+O?=
 =?us-ascii?Q?SWFhQo4qMRdxXjwtDRPwNQfP3qScxPRQoccJ59vYHnB+DrU8DeH/XhCxhiLP?=
 =?us-ascii?Q?aA9XKNsePS3MRA3F6q7J1iHzKbw2lvgtop55aTVBmCmkNJdO4LXj2BIvrtgj?=
 =?us-ascii?Q?w6tzDkE3zTuzIWl4QxcmQp0amLtZLFdfmr16kmR9UcwIU4iQqoh8ln8aT74C?=
 =?us-ascii?Q?HLviJqnjtsSiDqDaiz0jF+tTZq+15CfsXjF1VfjrbCFI+LnLewDFFn7gOkvk?=
 =?us-ascii?Q?Fy3Ka1n2fK+n30IXr2miX2PSb0cbdjWVWG8pkBAU22N4w8HlUZNPpIVQ+tXz?=
 =?us-ascii?Q?aCPiOi9rzW2blMLXnFrUAfCf3fm136K6P0mx8XYg+BB0nU/qXlIq8xzlzUKB?=
 =?us-ascii?Q?XEoIuR7zuKS0cx4RTDDUmY6ee2habYSfWIiOxMgVfs6fuaAL1YxYqSjI1gO3?=
 =?us-ascii?Q?RNSe7dJJkerfxH/KoZrDWkl1hJAboWbRgDMconrQgPTXAYlqtq4o5OMxtXX/?=
 =?us-ascii?Q?Z/7wV6rGk4cOQ5pHI7ieX9AQ4vMovokICPEjvez/2DiG+m4Jxr46+cxB8Y93?=
 =?us-ascii?Q?qpkuaOzKQiCUDkFPUSYix6OHaKJ2HutSNWglVjeNuK2WBJUKNhxzohV/aDHk?=
 =?us-ascii?Q?g6wiVv/sa2jtefGDkzCsyKmdyfGVQNZylSM5EGnZ7PIpB2iLmfi8XpS0WbH1?=
 =?us-ascii?Q?xMQg95N6ccuFFxMkSzufN2Fgcca03A0XyJJmlZWIjm4+oFcSdH4l2wjlcvuP?=
 =?us-ascii?Q?PUWPy7S1oS+oMWC5HVy1O9+PxeQpbloqbr495yRwKVQzbej/0oXAuS3YmPPz?=
 =?us-ascii?Q?piuj6x9PzxWrgwismkQFgtSqg7neYBOD4frqfvdyKPmWbIJN5Diz+4wKl2Y6?=
 =?us-ascii?Q?tvDBA8/Syzmbnt2E07Pb9mTZH0666NwddzjrlUCxNaeihe9rSB2P3FGcMxTL?=
 =?us-ascii?Q?MF2sfKu3MGnag0tLJlqiPU5KU8GsREG0qwaCTLql7CiMIw7V+xq63MPLDDMo?=
 =?us-ascii?Q?+XrQ2tMGjFWXVrOdoOpM8LLBh8TJeUG7H2yNNxyAlkX9dz+sCpS+4Fq6dAxU?=
 =?us-ascii?Q?k74XPgwFVMbfmsJvb4Eas7R84xsf2sPaZfiksXsNiEMwIP3CQU2b6dgW4eB8?=
 =?us-ascii?Q?/9PRZVuVMgkZL+qqErML4XHkZhKEHCO/R9VzAC2n66sow6R62jrllN8kIQoo?=
 =?us-ascii?Q?8gNk8kPi0wk69bPgy53gc85yfM/maTH2qPoNlhgLpGzPdFHNZimFWhRopcze?=
 =?us-ascii?Q?+ylI14jqNXdVIAY0vtGe7wAFy1RGHaAW0TsXHCX5NpavpMQw8aa9F9LZGRqi?=
 =?us-ascii?Q?F1XMMyn13gqGQ5vukXC5zkAgteQiLel3fFOYIP05ab4JnxfJQI79pUvefnOV?=
 =?us-ascii?Q?F2GAH7gHVrEBqhdwvvJx0R1bWeZbmt8g1GS+WjqC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5791027d-e00b-4031-4749-08dc578e5ddb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 05:40:15.0855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L/gonziXzq/82vH2Vetj59kocHojjDYhPMMzck1oiKHKe723/f2ddOPRlz5Bz2yWG6A/d2G9fz+IRm2te942gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6764
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
> >

Also after having  deeper look using the vbt value directly still will not =
get the job done
Since that too can end up being 0.
Usually when using the pwm path when we set brightness to 0 it usually resu=
lts in a
25 percent brightness which is what ill be doing  in the next revision.
Set the min_luminance as max(25% of max_luminance, min_luminance) that way
We don't ignore values.

Regards,
Suraj Kandpal
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

