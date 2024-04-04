Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A64A08984DE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 12:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417F611B34D;
	Thu,  4 Apr 2024 10:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUF7EUqA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FF511B34B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 10:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712225728; x=1743761728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o3uUt7z8PP8rHJdGGKkOANM937hrLyVcU5a/KNT6/Qo=;
 b=YUF7EUqAnDDZaj3V0jHdPuiCCYCzKDlPvXh9o8bTsaCeDooaeFnG51gs
 pDIQ/vBEwUz/krI7sK1UBY1ZhcUUcjT1QeV3P6++jSCu0vg/AF36r14UU
 31AMjlsFn9NPTqWufWOfnYmNC1jU7YqkOosu7oTCK+SCG1ACz9L4zGSqb
 DFfpfF7d/Vmsc2scnrf8OjTEaCTBZ4//da/KUk3yDW3mS/Uq9iwydvbEr
 rjO1C5IH0StjPHxXefT4Zi1Weg/qDashVyDbjnKAJMqwUHttcEMGzrWOR
 Zipiy4uvmDw0HndDeA11VS6zRGwOKqOoCdkU9ydlmKX3+OValvKJ6WweZ g==;
X-CSE-ConnectionGUID: qtFBdIL0QFChMUFETYShhw==
X-CSE-MsgGUID: 0lRe4OtgQT+QiAi8EegLGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7682989"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; 
   d="scan'208";a="7682989"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 03:15:25 -0700
X-CSE-ConnectionGUID: wj2rUP62RDK6XbeYkMqMTg==
X-CSE-MsgGUID: T/yhyAzyQAWrrArgPGT73w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="56194506"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 03:15:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 03:15:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 03:15:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 03:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODlxbxb2j858kdIMVud4uKmZkfRmUUJ2VYfUDiPq3i2vljsHl9tjI0UvtmXYaes+OHJWbFrf/idfKyhDup1W6Yu1q6O4mUKCHP++q9n6bg9OL79e399JSDwTG7wKlOwsutc2ssEcWn9jvlCPNrg9AgqnqAkNTrxWAAtXNCYT5bvs6MuP6td2eJmC4BhnovPlwfibxYdxLi1WqqKyDzfRZiJT8f0xDh4wWlYUpBagdck1ryuZePGnXf3NcsFuxFxuYsdirEHeKi9DUMQAc9KcX3K5/FXZZvZ/arKbrWRQQlSPUEatv2sj1NeBT1dsuf7mEG9f72Vira1G4sWtsnajgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AEC7pfeS9v8W3MNXDb5rjZlqFVHZBLdAfUXOfSu0jJs=;
 b=cVvES9GFwY9H0f/w2QbHOk1fHnyRGKg69i66hKC6x6ppZ33bgPa5yLwte3VmtfvUi8FXAe9arh6wku5jSgBRllkYy/6c3gnYkHoyS3485CtUBB6kvKL6e/aDPApVWNQzFomkQuGFs5BvJAjJnviUIn0PLwLAKRrQr/of7AeqLzEqoaGT9FKGAluQVBHr8eVbZLWglDVWl8nzzu8Pf70m1lexFach4VooEgvYATgJCifB0tLLPbUxluGIU45PBFWORp8thf5utydHJ/LpWq61goUqTN7gXr1Q+mRaycTtE1iIUvKXy9EzbTlEiWBQPwKSN8bX1ll0r6aH45Y/19179w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB8074.namprd11.prod.outlook.com (2603:10b6:806:302::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 4 Apr
 2024 10:15:17 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Thu, 4 Apr 2024
 10:15:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>,
 "sebastian.wick@redhat.com" <sebastian.wick@redhat.com>
Subject: RE: [PATCH 7/7] drm/i915/dp: Limit brightness level to 20
Thread-Topic: [PATCH 7/7] drm/i915/dp: Limit brightness level to 20
Thread-Index: AQHahkC2VMsn4/dAZUqj8Kh9LVJE/LFX0Z8AgAAS20A=
Date: Thu, 4 Apr 2024 10:15:17 +0000
Message-ID: <SN7PR11MB675099283B54D5B2FE00A227E33C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
 <20240404032931.380887-9-suraj.kandpal@intel.com> <87jzldcxdd.fsf@intel.com>
In-Reply-To: <87jzldcxdd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB8074:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YSJLLSFmjdNhEER0/6pDcvjs+1N1dRvuTvHAVg35w3wPhPk5YY8JNrKRa/y69yGKyCkAbOIoso53S+2icr+BKGabkiW1tTK11mH1w2QumkULXrGPP38+AypD7SpxVnDoTlbVOdc0O5dAPaVAHlcNa8JZs2mFT7p0LhaCNCoay9NmlhbxtDodsFreFFg6rG5PMdNDX4pImxmfq4mO+fxlaOaK1I9+1o0UiGNoADEJwWYsqryyDQo71JmRNd/6AtW0FJTLcs0TR+voMXU4S2aRLfLphkQ+fM3g3/HK90Nm/QSl/lwOARooP9GhhC8EvIQzdgCxlqK24y+Be2WDcxQiKc2tbOWHYF+VWg87kgvvGs2ywFDqOEyLoo34NxTY1fRK//p5snC0CKmJvekpahp0/Qk1hU7b3DSIw39/6ae7vUBQF92tcuQrTpZg4+TEsfe6gt+8CrThFQ1NSVNrItgkYVfk9xq7ixXqRCBzE7bWD8+QFlPc/AMZmRNHyghDtExKvKAs8exRZCVwAZt1jGssrOvJiDFBf84skJWKdO7Bf03LVpwox4ahxMshmY9gnNb8flxak4vULd6dXcvmcPQPXZ/CsXepnknuCKWmb3nBbWliKzujNMBSxRaMIsvjRaRA55UDeSlbZJvqiqHDAehq6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QzoPk/tPalvedjQGPx/aUslB7k6sgFOLHd0cGtJTgK0dK3fd88ATtf7Fw/hM?=
 =?us-ascii?Q?KrUMKfnfLN+IyUGmuJWXPYQLYIlgabEoKRofsUR78pmt8534O1YAih3my/xF?=
 =?us-ascii?Q?ym0VJgltSMUWEBE/QxZ2njAHA2k+e4OXfPDNUhaqLIRwwIE9yTxtgfrV6KgW?=
 =?us-ascii?Q?gxv76k5j+VuNyWeuel15T0AwBH4PjxBWre3K65yGUDPVtatxaRwlJ5XV6Dy9?=
 =?us-ascii?Q?78SLHMAiVS83qyTa7Y14Fz0hcS58NSUxH/NG5kqoAsqwkYCRtgRE00v8MsLj?=
 =?us-ascii?Q?jVaACy9j06jd5k7u/1FOkJQIeRY/oZEa7Hckt/N99u+pk9fvGlH7DXb+M9tu?=
 =?us-ascii?Q?2e/Iaj2F7+scCJ721z0NiaUbNlQ2f2s5jNkOBqtxokl6cZGyHwwQo1WJGVez?=
 =?us-ascii?Q?A0xzTUZ+5nJ9n5Ac67Bmximctby7pLzyabE8Y5LkLKtrf3cKC02Offo9SSoV?=
 =?us-ascii?Q?+TKEEK1uErZdCKQajyCHEKQbHhbLkcy7wGFZlKtsdwCjZ1bfgy0GnAQdoUVf?=
 =?us-ascii?Q?P9x+6FqYZ6obHhKa/GwyUZUjooqo69amFh5JqmWdg0TeqTTDejVzM8nJwMrM?=
 =?us-ascii?Q?QR5pmtLabWYSHGYxRVd4psKMVjp3L6lFAX72JAUM4MBYXm+RyAq9lUDTNLUD?=
 =?us-ascii?Q?82NmZ5UY54CEix6X4LZ5zk7e61BV2TJrMgVD5yD6Gl+JFdF6stYMoYwSUevf?=
 =?us-ascii?Q?qjqaoWPkcaMN6oYrz/eYuXlvnDTY7lYdUbwaN9CHu+sI19JGd/kMbYuJ399d?=
 =?us-ascii?Q?azNBw8L3GGe8OmsCVCUHvLlg7k1+OVEeiYWWRM+4kVWk3Ak9ExvLpWZYdmXc?=
 =?us-ascii?Q?XLegkY9Qn+y0G6NMxI139ckPewKGliwel7CPT+P8hQNSlFt26r+TVGrIe1k/?=
 =?us-ascii?Q?coCFSI7KBPIHHZBs5zlGfoABzaVGDSpoQA/LUfwpCeO3hebv8fC+M8cyXEuK?=
 =?us-ascii?Q?FJuBiQ9uHYzRB8D1rnUg+D2+xPzRIvLX/mmjRhLfWaicaFWGWGbuSFTZmZIn?=
 =?us-ascii?Q?nrS7/FG2tMF+8VqGNHtg1xOm9bC2M38AXBQwwcxejX0iIvzuJGidZvCecbM4?=
 =?us-ascii?Q?xpO95U6aFFCHkIjSaZmKDd4RqnT94v6+TznSyMWDG0xuXJO1tSjp5LUIormq?=
 =?us-ascii?Q?vpQS2owq5ZF2OZPg5hwUQ7HEMiQg1LcCHysKPJXHHm0FIKHO9vWnB21k/Nla?=
 =?us-ascii?Q?9qEUNY0aLW4yHvKRmwYTqlcpLw80sMXZ0gaq7VRVWnpkzmossI2CxhHwTGTL?=
 =?us-ascii?Q?LLuiXi6ECMQ9b49Dvkm0eI4yI+2Fo5uNlbZDcAMpYCn2U58g+lSco/19gL9r?=
 =?us-ascii?Q?DCeHZwJr4oiTGvjZE+vDjD/C5w++Pl8wbrDU2JGxv5eHk64XecxTt7DVvY7D?=
 =?us-ascii?Q?NWxEGZwlJ15OnaseSYLXhmVDyvvwUcV9GxFK8nWu1RJHmN6mwLbg/V95pJ3D?=
 =?us-ascii?Q?ur7A3IqS0/pQjBErQs22HTEZqrF9vEoEWpDidYFysq46Aq3acxD/GN4F8FQ+?=
 =?us-ascii?Q?5Sya4GiiWDU/JF9sYOKMlo/VlbSbpKoTFcquWd9bQHZniGir6sVmWObsjIg7?=
 =?us-ascii?Q?f8VGMBKFWkJirKh2Rt4XRwIWAkO2L5l4fnH2LOeh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e405a7e8-652e-49d5-032a-08dc54902059
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2024 10:15:17.4132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m/VyuJeBrxSeom3F99VBeivD1sy/bGibJAhSDLDqFQN87ijIaHMnu5fVsJrmJQohqZcP48+xhPJ8QbikwpopoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8074
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
> Sent: Thursday, April 4, 2024 2:34 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Syrjala, Ville <ville.syrjala@intel.com>; Kumar, Naveen1
> <naveen1.kumar@intel.com>; sebastian.wick@redhat.com; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 7/7] drm/i915/dp: Limit brightness level to 20
>=20
> On Thu, 04 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Limit minimum brightness to 20 when using aux based brightness control
> > to avoid letting the screen going completely blank.
>=20
> Why "20"? What does it mean? Why don't we have this in the VBT like for
> PWM backlight?

That makes sense. I used 20nits as that's where I felt the minimum amount o=
f brightness looked okay.
But yes I could use the minimum brightness that we save in intel_panel ->ba=
cklight structure

Regards,
Suraj Kandpal
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 20dd5a6a0f3f..b54ea7e46954 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -211,6 +211,9 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> drm_connector_state *conn_state,
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> >  	u8 buf[4] =3D {};
> >
> > +	if (level < 20)
> > +		level =3D 20;
> > +
> >  	buf[0] =3D level & 0xFF;
> >  	buf[1] =3D (level & 0xFF00) >> 8;
>=20
> --
> Jani Nikula, Intel
