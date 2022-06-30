Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890DA5619B0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 13:57:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C351B113FF1;
	Thu, 30 Jun 2022 11:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 190BE113FA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 11:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656590229; x=1688126229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJlG4yLu1XkJCLyR+mi6cxyOKES1CJzOUyfmK1zqxTM=;
 b=Qa/BEG1vpY6O80r6RHvXtZ/XRBRcDT8zVj56QTesUwE/NmWZK2AX5hll
 UA+Cq3aJVikSBPsUhUSyltsyuL4AZu+3jUHvIa9wX9ybBPplvM1PxCBdT
 e859uJCKMUbNbpfVZhYIncsj5UODif5A+Oey7dFfkU96rZbmX2ZQE8kYd
 AwvGL+QND9ln9zMVjyWzI2ZiZGP8hLMooxSfWzMA64elDXclDLPAt6MCg
 q8HkX5vBohv6x25auh1wVrs2gf3VLaDh/xv7IKOaRYMbnosI04TUag8ms
 mPzxwTHXyqbcJOU0KDWlSZdY9sFNavhf6JfhYWIKOJk3v6XEZcWGPj7o9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="271094893"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="271094893"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 04:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="837575669"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2022 04:57:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 04:57:07 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 04:57:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 04:57:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 04:57:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpLZaDNNkqXY/LGcP4gXA/pn/v6MLeSDhDOlWenK0AHw0umbx5s5qbl5oVTQWHhC/+S/udqlIdbJ3DRFRcGi5DQPG8zkfK+g65ZMxv8AlMhuCk4C95OIauKnlVsxDU/UZtZGW+MCPi778+vikK+fKU6wKThlL62S5JrawIAbNP1iZ8VBRttb56E+E+fiE2atQLW5XK326BG9bqB61TnklyV7dGmZzVzrEtr1NaUJNXgqGpT1TWx1SpV7Nf1MzALbXtavgcEOCrP647qW2D2oJgx21IDzsL5Ef7fUkzV/YFbgIxCImXlU/+x6Qsu5Zf8tnA7+0o08K6zarDjJQhGqGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHM3zD8AK8c6vF8So4a8KbGmCp6Nu0eFsWBBSEwD6bY=;
 b=QnKVNw4oJF89uXguSTsONfPYDXjt9dkgbuPZsEts0vAoR9jKFCRvNUnBR8KwZM331EzMQkjfeI9246YvtQUshl5i9CibnsZxQBX+QXoMElHi4mw8+AC8wWzaVOZimCcY7tAn3leweiBuxOPdwXPalcstZvCnoUsoVRNgWKUe2Fy8ZLgNa3iYrmUKh6hss63pJ303X+Cudj4n/TPMPz/rZtGLjhFZUVs488ZyKQ720OescWRgQRnwMqPqdUOpmKvbUpb4vJmWwPKEu695pcY9NVXNBcwwBf57y7EHeTmgsd5AIBeEY1VPsS14+lYcKB/YwMEZRmtni9C6J0zObeCv5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB2873.namprd11.prod.outlook.com (2603:10b6:5:bd::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.18; Thu, 30 Jun 2022 11:57:05 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 11:57:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYdW+H7anuRYhycESY77YMZjZ+IK1OurWwgBlLBuA=
Date: Thu, 30 Jun 2022 11:57:05 +0000
Message-ID: <DM6PR11MB3177192FAA98B95925E4E818BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220601042411.3299122-1-arun.r.murthy@intel.com>
 <DM6PR11MB3177953D8DE861A1622BBEF4BAAA9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177953D8DE861A1622BBEF4BAAA9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef83b089-579c-4f20-de23-08da5a8fa6d5
x-ms-traffictypediagnostic: DM6PR11MB2873:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6NRn7UN4AiVxQeS1fVZEHnBuVV15lyS+R7yCsIZPYjHpg10asHQtyECaFIH8dV8TdsPFLm5xT87Ky9DCyW/YHhzJS0wNjWkgzu28K71yjzjlcO7n44JtYhJFbrqxwBJ3Sn91MSHK405kl4Jq4aJiynL09Efwzd5mOH9vQ+w6SpSM0nwVW5PQBm4VjgaBCQ9w0znH6stdrN98TMrW3lko3W76eeuthUdgp93rF/m/WTVEnxhvs/fLmeoLHxyj+qvcKoEtjxbCv/AFPtDzGp0oadkSTR9pfubHU/tbjUkvdqbJUafOShSTiS54jrcXwuCzPsZsDadCCBqQSg9SVOfiIW7vsX1EafajciFD1eueTuao6HE58FSOJd7xKNHGjyhxmSbbnVW4zuomTAUzCAkE4zQKunBsj+xLXq85PvSOhTiX6eTPReRPIneyn5BP4EQtBjw//aPSu90uOmMeVLvPar/Q23Vy5PQ7sdLZ08ODknEzRf7gMJXEr3/r8ANW5n3rHJAbq0+HO6xj31SGPe60mQn59gS8K07WWlIAA3SQv2rrCoDMK0zYG6LNHADuAuexbHnZzfkYw7JXbJmlwrOw3re+8C8GheyIEEqBR03z9a4jUdPUmfQQ1V+LlssWZ6WcJD+vAWEbyo8PgSB+dg23WwEXWE3MW77Y5teVCZw3hGzpHl2eH16l5SHBB5Th/x12rjG8jS60QWkZ/QMrTFuDbBldHg249hxJ1/dQ5CKESz6s2fntsbp5P22L69Aip4ijoO39B+GWVaoei79sC64hAjgiQUfY9RA6EDQWMY9sJLcM6mGhlamLxw1vu0AxpdA6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(396003)(39860400002)(136003)(83380400001)(71200400001)(9686003)(5660300002)(6916009)(55016003)(38100700002)(53546011)(2906002)(54906003)(186003)(316002)(8936002)(6506007)(55236004)(66556008)(478600001)(33656002)(41300700001)(52536014)(38070700005)(76116006)(66946007)(64756008)(66446008)(82960400001)(86362001)(122000001)(8676002)(66476007)(4326008)(26005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0ybGuL/hutnFaswAhLsv/1dqEx10xxHPZ8mYWxTO4EM9zTnPUZRB46IWRZ25?=
 =?us-ascii?Q?xYQpbgww1Q8+tpEHUdXSAXSyEcnpMT7TNYsTRf2pSkjJq4oBp4Y7tWTRX9sq?=
 =?us-ascii?Q?1d3Cf4nZbncWe8deanMpDXILe7hh9S5uemzEIROk6A0Y/k1+3rHVXnI2Emyq?=
 =?us-ascii?Q?/WIzXLQ7C+BVDe4Eov8cDqCGc80oecgpEpCweJkxEIb6pKdVoRjV1eEPv/Oz?=
 =?us-ascii?Q?ayCB7TZEO18u+H1ZRcVmgKdAz7BhCqkzecrazBGrRlJovF6qR6d90h3c1SQZ?=
 =?us-ascii?Q?/21h02PYP9dkIhvhI0oq0WBnWlQD0iYUyKwFMzjzd0tmtYPPKQXaVmjvgKoC?=
 =?us-ascii?Q?wufUCIl9sR9DMYGW2SOBEudqM23GgLMCDQwzwXKYWoxgXvgcZX9/yo0xQnrk?=
 =?us-ascii?Q?iVOoBOEPM7xPhuZJkwQn+zMbw+2Wfk0wKtTQG3Laks1mn7xJrlqNEuKOY1gI?=
 =?us-ascii?Q?35vtUIsHJm5xvIjXVtkMRQmQqvjJ4LpwjZCKiuvI4E6O52tUtQf5cUXbBNW/?=
 =?us-ascii?Q?Scv61iEq/PT5nC0CIp6dODxRk3zYZOiND+nDUf5iU3r5KTCsA+KrxqhnDGY0?=
 =?us-ascii?Q?4Voldt1rhkd+Fnoc2eBEBe9H5cMq7xatiNw9Bg3G/vPIf/Rdsjn/mTrayD0x?=
 =?us-ascii?Q?yzWVoKBqKYNLTfdPiZme+4wVHHsIPbN7FIlsVqKHGegxpxQp+lZ6Uh/NLSbC?=
 =?us-ascii?Q?bhGpeBzu4tfxIbAZTvVJOer7tFpTfmEIEHp3NCPpTNDSoRPCCWCIwh+JZSFi?=
 =?us-ascii?Q?RySrcLhUG+elBg9JimDE4+P1PdlW4rPWdILUId1lsm9LcP45dpJ/flMIo2pk?=
 =?us-ascii?Q?M60f2UdVxIuJsOUkRvQ6xpt5oECVJqtEUaAE89wIB4YDccnwJt7Ffn+PJuSm?=
 =?us-ascii?Q?K7oixjbnUAYBrvnN3FvpKCln36Yzn4hOLaQ9aXjRNCXqAJvFfQpHezAYvbPa?=
 =?us-ascii?Q?YCwNmVNhAKpWfLQSeNg/B2EM8FI/0TIkgbKGd4j3YzmEe5WTwGaBS7GWomoS?=
 =?us-ascii?Q?iEAMY0KBqYmpkUC5DFT7X7xkmmND01dU3aG5ihVP5OAJy72PtkUUuOIH2Kbu?=
 =?us-ascii?Q?7r0LgMsrX+qU8f1AXFQBN5KO2yjEPNnMGk8CYpzysaVtS35z8h3Hp6dPIxzp?=
 =?us-ascii?Q?28IDo3tAtLY4IgRPKIF85Rxmqa9ZNA0J9q5NN3hg8hZ/1IzETFo4QCXQAY3a?=
 =?us-ascii?Q?vJkIxbRgKlhc0RXn5lt8egXaNrdd6hk28u74FdpnDwwMENULExTejqGahtDD?=
 =?us-ascii?Q?gkyosFhtzDFYfzfaXV4rAn66B/olWr85fLcRC+IAR/6wjZB2q7ZCkR/Nh8Q0?=
 =?us-ascii?Q?MIfgAFWtu/rtBwxQdOQznAXxdtetAsk16cvHvpQPYz87zMmsTkPPzOAcrZyD?=
 =?us-ascii?Q?+GvJqN9bE7DuZ5kFLq/Qv19QYtYU/VDJWAqQuE6PoqpWa2ey0OHVj4L5MWnb?=
 =?us-ascii?Q?cw7yYybx4xrp8m4PrAyB6vc61vvD7HquPOHBv+8oEnREiwn8b/Yp7qxPeDYI?=
 =?us-ascii?Q?5iHMdRDFbA0khnibwtmLE4YZlLljktwFWC7SjFdA+EATr0mioJI12mcsLUYO?=
 =?us-ascii?Q?8hyv5/TtmzuZebNabqAIt4LtBUrGWI7zp8mUwADF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef83b089-579c-4f20-de23-08da5a8fa6d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 11:57:05.2047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EFrAQt2lDAqWLmZifGApl5tUbLFqLgka2yACHbK0T/dI6K2h/+eVoFTi9uWtf/8omC4ZP14tBWFiu/fE2ePOcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle reminder!
Any review comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Tuesday, June 14, 2022 3:11 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; B S, Karthik <Karthik.B.S@intel.com>
> Subject: RE: [PATCH v2] drm/i915: Support Async Flip on Linear buffers
>=20
> Any comments?
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > -----Original Message-----
> > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > Sent: Wednesday, June 1, 2022 9:54 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com; B S, Karthik
> > <karthik.b.s@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCH v2] drm/i915: Support Async Flip on Linear buffers
> >
> > Starting from Gen12 Async Flip is supported on linear buffers.
> > This patch enables support for async on linear buffer.
> >
> > UseCase: In Hybrid graphics, for harware unsupported pixel formats it
> > will be converted to linear memory and then composed.
> >
> > v2: Added use case
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e71b69425309..da2df7239353 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7524,6 +7524,13 @@ static int intel_async_flip_check_hw(struct
> > intel_atomic_state *state, struct in
> >  		 * this selectively if required.
> >  		 */
> >  		switch (new_plane_state->hw.fb->modifier) {
> > +		case DRM_FORMAT_MOD_LINEAR:
> > +			if (DISPLAY_VER(i915) < 12) {
> > +				drm_dbg_kms(&i915->drm,
> > +					"[PLANE:%d:%s] Modifier does not
> > support async flips\n",
> > +					plane->base.base.id, plane-
> > >base.name);
> > +				return -EINVAL;
> > +			}
> >  		case I915_FORMAT_MOD_X_TILED:
> >  		case I915_FORMAT_MOD_Y_TILED:
> >  		case I915_FORMAT_MOD_Yf_TILED:
> > --
> > 2.25.1

