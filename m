Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9858E8A8204
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 13:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2F1113404;
	Wed, 17 Apr 2024 11:25:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QUBmUWg0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8E9113404
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 11:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713353139; x=1744889139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mLPr3Zd7NxePUM7AShO683hZLZJ247lw5Q9Cujw7f08=;
 b=QUBmUWg0x3lko7A3mIZ8HF95fUzBfDNohipvd69/SbBVfhZ2PFu8nKrY
 Gqk4BtxGucprKdMwnDkXNpQHazeCuDlkGxZJ6Ubee2BihtAtEDFA9JwIk
 4FLFGy0s6wPQHx/Et4iqEF8WZFSmbGdWJVbnk5sMCaZOL41S+QjNia3tx
 oEihPBK060uxta76wJwKhHI8c82TOMyjRkbyQmAZ9BZYhIAFTUtXffFxi
 HLCaChn8Vb2UcSEYW+4HemCypqeCAEp/ycNfO/KnCxy5J3JxkRYyO0KZf
 ig4Ua91tHwxj43y4f5hkxVOHVQM9IF2BScF2J7hIfO0XLb/5iWmC19sIT g==;
X-CSE-ConnectionGUID: ayg0bzFfQSOkY1WswFVyJQ==
X-CSE-MsgGUID: OHbFW9ecSj2SI0a/pLhQ9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8698287"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8698287"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 04:25:38 -0700
X-CSE-ConnectionGUID: thWXSM/MSeqvHE4BfB9ceg==
X-CSE-MsgGUID: BteqNLKNSD6WiJiSt/UEPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="23007428"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 04:25:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 04:25:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 04:25:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 04:25:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5c2jMZohZd1uXOCgydLLHFwjFgDxYhND3f+UUQGwTkOTf3Nq7JPcB1QrKmIX1X7yh+zwMEsbxwIdmHKmlc+kNr+Z0scvetbqBPoxteMAE7im1Uz5r3uS1qOikgF5lxYtcP9cd+pFq+AAQHD7JNLVWpbRZ3sydSItb+4mN3QeHmf3/fyUx5N3t+Wbs+B3S07Q5wu6s5QBTJGtA5jmBeeaqBM/HlSEG5isEbWE4VbJnFaidp1OXQnYCzO1ruKcmDNvD+5xRLFwaslPutr6/98pAzWkLw8rPXA1sSjiNcIfUkA5Tt/KTJXgaMQPuQ6xGkj/Y8sXkHFwopenvTAru8W5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=li0COcon+SPzh6ycFEUAap2gRR2UJyV0KXpMhepSizo=;
 b=Q5nn69rz1WKbjsGMxhJkjOMTK+YcFNANDq9kNlrwwfwnNPEpa7nXrYa+n/WtkgwMCzaDW5+yaPsM8l75CbwZGI+gl+g/wwnO0V/ULGGXmz82BWysf7ePkY/LUEYaXTiVdZ2zZX56ID4OJvnIhPgXkOPf4BZbLn+s3uOUx9RwBlL4crEyPtgz2sldaUh+tdv6mVhobfy/DwSzjioBp3DYAEMF/Oyq9THEzuHGNIE1DubMBjc88iJ93td93jYsK+ak0WoGYhT7HuFIt7ovDX5cLFJHPOSDyHovT2V8XKeModbkefx4YX0RDpSts8hhKFJDfV1F2/CvCQ7JOVs85V9pqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB6262.namprd11.prod.outlook.com (2603:10b6:8:a7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Wed, 17 Apr
 2024 11:25:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Wed, 17 Apr 2024
 11:25:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHakAOt5xDanHgllEC9r7RqC2+JhrFr5M0ggABeAoCAAA6WMA==
Date: Wed, 17 Apr 2024 11:25:32 +0000
Message-ID: <SN7PR11MB675003DDEE33ED9E2DCD5DB7E30F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240411060925.475456-6-suraj.kandpal@intel.com>
 <20240416134022.GA40393@toolbox>
 <SN7PR11MB67502235E26E82CDA36A1847E30F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <20240417102425.GA141053@toolbox>
In-Reply-To: <20240417102425.GA141053@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB6262:EE_
x-ms-office365-filtering-correlation-id: f00c3a73-37e5-4cbd-bec6-08dc5ed11869
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: //3u8HseTZ02gGr4YQEUQjFu29eQKVYE/TqLK4+XJxUyuFdsdyDK7SpR+HV0JkbTao9lDR8flk8R4jtHv5t2w/L0ESIRZFSq0+iTLyEt53MbNwbqyIh0MeQ3ClfQLxOxQdmtDAq16LyZJydypOceu20uqrcuVDucgi7yFEBlnGMx5cwnf5fUD3aT9dIqF04ZIsUGysB/dUReq8vBjRRo1Nj8PzwHcuU8mmlYXDgmdL07yaiCdTYTmGOqNDPiMCH6SVL2g+z2tTnM1b1smuXJkwedgQj8xNL/2YfAspg3tu+HwXtMmg5CetYXKUobkX1zqUcA+NfEWbVHVoVl3WUTm6OlQHHGIZdvL5PmxtqEM6DUte5ov0inB0361dcP7kvqp2DpO6RJNF79dXs1x3lnIvlp0vtKyyPL4nhCq6H2m+Mgp1Km94IwB/g3w615t3kSUYl7uG5xR8FFel8eS7XPp6KqA8Ep+7qdDGmdPciMzHBmEqFlpO+AnokfRoOWVReLOzMj86jIXNz2uTtcqDwquvNAcGTe4+fSi14htZ7tuiVh6exQFAb+6nzDOFKFINVp2XtgdVymMK4L5wUNIlZ/LlWwodTUgdNZ792IiLYMlYC9kHnZVGhT7RYe/JO3AjgvzsFIKbsEO6mumBV+9qtFvb5ggdbyU0Q1WL+PxePQgxsZkMji28iNudIwnSpVYCrmHlhrUCHFtYSTSSzSPXVLqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WlJ48Gv06hkAj9X98KfW9P2rNb4bIfLVyGBE3htAVxA1Lao8ON3k+IFJf9hD?=
 =?us-ascii?Q?6NDmn0+anQ2Bfdw4mqulEX3KLlHTVJgfWJrRZaYQUUCeed1w5aBez5dreLTI?=
 =?us-ascii?Q?7TV24UqSENoWYJEj1AtzmNDzu7MAPRpCm5YCwhsfDG3ql6hTFrsA60DhQ1JH?=
 =?us-ascii?Q?mQ75TQYHOKL9DDnY1Zxt05T/tuFTL/OHGVknWKPBdfCaEj2NwhpnClNj7vu9?=
 =?us-ascii?Q?XhIWRH8EyP8RxGhcNtodqyBM4uJ0indi9bBBYygRTbFolruObutFG1sKTHDQ?=
 =?us-ascii?Q?qvroCq8nSRNT8vU3Z0niQcoZbXh2r1vti/mGbdvAP0yO9L7wWIeKUOUPManx?=
 =?us-ascii?Q?GbvalgqIISYt7433K0yHyzyN+kgR1OSRG13+S1u9WF9FV2pQeU0IfIqPUJio?=
 =?us-ascii?Q?UrsxJQos136xTHsTYG3/c3R1nEjEEgaVp2j50htnHCMKS5kP3umo4RGHrBGw?=
 =?us-ascii?Q?oDUbUtupQPqvJo0XXOYAVCoDUSoVFpDfi4PphNKQybevroXWPJ4svFJOpCHY?=
 =?us-ascii?Q?lpHUn4hoBPyQlRhg5wLCaZWwCunCeYIm52UepwCNxZF0RCinjfnVfde121g8?=
 =?us-ascii?Q?o8QyXXqBZozvQMcD8eu2kygEwZCL6a2HdPjioTrj22kSEALuL+pUZRZ7vH01?=
 =?us-ascii?Q?mncl0hmg5EoRHfyn0in8keNneOA66uVx45XVZVntbdEcOtDVvfN/iG3nDBkg?=
 =?us-ascii?Q?JZD4w+VgMNhaklXhF/UaWa2NfW7rPCFEvp1KR4hxIPUUPakdZ7cWtNXUf+Vg?=
 =?us-ascii?Q?8QTe1mCfdPzVmIpA6Hh3gnxQar/Gq5mxwVn0aSHiYWBvu+CJo0wiewPfNwQF?=
 =?us-ascii?Q?Do5jC6oiyGj8okwtpPCh+/d/SIyvYtZ1mM7YJ7kiNC28+RuqDfR047iQRtuL?=
 =?us-ascii?Q?Z60XPgQNQTJHyBSuLNVyCBjxa8Bp3QDnZ1IqOXDCkfJGeTpZWg/EJfYQtHR8?=
 =?us-ascii?Q?RglzqJca9+a2YqX0QaTPmo651EicQK5oH7pciBN0fpQla4KtL5mK1xByvMh7?=
 =?us-ascii?Q?kDaRU4NaOUGHhktrg1VVtkyM8dMF5ntVfbHo2HejiFaNxbVUp3r2eFPYTdZq?=
 =?us-ascii?Q?+Jblpzl1IwqkTbQ0QxOvr8x6pK76ytgyjP1GrOLgP9Eb03vKrnJ6dchLHD+v?=
 =?us-ascii?Q?IERBZ0LauBURdvI6zlXU9LnwWExrvz8S7oRpNITtHrGnl1jQd8ZQORp1NjZB?=
 =?us-ascii?Q?enGPzZBuOphjDtnP2JqmsKIDtnaaeeyqX+pMVHRCMi/Y+6TPS+ixAbIQYixG?=
 =?us-ascii?Q?FoevKBvfOC2uVmuv9F+tGsDv0ThvR/rsJqkS+w0x8ICuba9jDsosHPtC6yBn?=
 =?us-ascii?Q?8ZjTqYJ8v3Q/ovrQTGiUW/nIF10gqzv8y+VM5r9SMBkolIZYT68xXKcE8h15?=
 =?us-ascii?Q?Du+xuaXAtcudpqMJaW/vpq5LWuAutImRjj2nYmBfluWpDWat10kDCyoR+L5b?=
 =?us-ascii?Q?PN7FjR9M3yUWul0kvEM6zUTr++5KajnWWUf2HtMo9DfAnKzXrsY8xUHYNLdE?=
 =?us-ascii?Q?USmxnvzOpMcobFoZtWpHqOP3WRjsRBkaSEkAiOEU242rM/G1PXS4sEyBRPHE?=
 =?us-ascii?Q?tV1erdskiEqyYHnl+GW1G/G6g7gmsoXynS5xZ2C3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f00c3a73-37e5-4cbd-bec6-08dc5ed11869
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2024 11:25:33.0005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AePxOwr29bHatj0KxOkMrY2xCfADh21BbXDM2Kx6NtWddYAwXP+P/syAMq+oJuPDbNglabWlmVnQEBsRVjFvIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6262
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
> Sent: Wednesday, April 17, 2024 3:54 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
>=20
> On Wed, Apr 17, 2024 at 04:58:06AM +0000, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Sebastian Wick <sebastian.wick@redhat.com>
> > > Sent: Tuesday, April 16, 2024 7:10 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> > > <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> > > <uma.shankar@intel.com>; Nautiyal, Ankit K
> > > <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> > > <arun.r.murthy@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> > > Kumar, Naveen1 <naveen1.kumar@intel.com>
> > > Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
> > >
> > > On Thu, Apr 11, 2024 at 11:39:24AM +0530, Suraj Kandpal wrote:
> > > > As of now whenerver HDR is switched on we use the PWM to change
> > > > the backlight as opposed to AUX based backlight changes in terms of
> nits.
> > > > This patch writes to the appropriate DPCD registers to enable aux
> > > > based backlight using values in nits.
> > > >
> > > > --v2
> > > > -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> > > > drm_dpcd_write [Jani]
> > > >
> > > > --v3
> > > > -Content Luminance needs to be sent only for pre-ICL after that it
> > > > is directly picked up from hdr metadata [Ville]
> > > >
> > > > --v4
> > > > -Add checks for HDR TCON cap bits [Ville] -Check eotf of
> > > > hdr_output_data and sets bits base of that value.
> > > >
> > > > --v5
> > > > -Fix capability check bits.
> > > > -Check colorspace before setting BT2020
> > > >
> > > > --v6
> > > > -Use intel_dp_has_gamut_dip to check if we have capability to send
> > > > sdp [Ville] -Seprate filling of all hdr tcon related bits into
> > > > it's own function.
> > > > -Check eotf data to make sure we are in HDR mode [Sebastian]
> > > >
> > > > --v7
> > > > -Fix confusion function name for hdr mode check [Jani] -Fix the
> > > > condition which tells us if we are in HDR mode or not [Sebastian]
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_dp_aux_backlight.c | 105
> > > > ++++++++++++++++--
> > > >  1 file changed, 94 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > index b61bad218994..b13eee250dc4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > @@ -40,11 +40,6 @@
> > > >  #include "intel_dp.h"
> > > >  #include "intel_dp_aux_backlight.h"
> > > >
> > > > -/* TODO:
> > > > - * Implement HDR, right now we just implement the bare minimum to
> > > > bring us back into SDR mode so we
> > > > - * can make people's backlights work in the mean time
> > > > - */
> > > > -
> > > >  /*
> > > >   * DP AUX registers for Intel's proprietary HDR backlight interfac=
e. We
> define
> > > >   * them here since we'll likely be the only driver to ever use the=
se.
> > > > @@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct
> > > intel_connector *connector)
> > > >  	if (ret !=3D sizeof(tcon_cap))
> > > >  		return false;
> > > >
> > > > -	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > > > -		return false;
> > > > -
> > > >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR
> > > backlight interface version %d\n",
> > > >  		    connector->base.base.id, connector->base.name,
> > > >  		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported",
> > > > tcon_cap[0]); @@ -137,6 +129,9 @@
> > > intel_dp_aux_supports_hdr_backlight(struct intel_connector
> > > *connector)
> > > >  	if (!is_intel_tcon_cap(tcon_cap))
> > > >  		return false;
> > > >
> > > > +	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > > > +		return false;
> > > > +
> > > >  	/*
> > > >  	 * If we don't have HDR static metadata there is no way to
> > > >  	 * runtime detect used range for nits based control. For now @@
> > > > -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> > > drm_connector_state *conn_state,
> > > >  			connector->base.base.id, connector->base.name);  }
> > > >
> > > > +static bool
> > > > +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
> {
> > > > +	struct hdr_output_metadata *hdr_metadata;
> > > > +
> > > > +	if (!conn_state->hdr_output_metadata)
> > > > +		return false;
> > > > +
> > > > +	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > > > +
> > > > +	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > > > +HDMI_EOTF_SMPTE_ST2084; }
> > > > +
> > > >  static void
> > > >  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
> > > >*conn_state, u32 level)  {
> > > >  	struct intel_connector *connector =3D
> > > >to_intel_connector(conn_state- connector);
> > > >  	struct intel_panel *panel =3D &connector->panel;
> > > >
> > > > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > > > +	if (intel_dp_in_hdr_mode(conn_state) ||
> > > > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> > > >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> > > >  	} else {
> > > >  		const u32 pwm_level =3D
> > > intel_backlight_level_to_pwm(connector,
> > > > level); @@ -240,6 +249,70 @@ intel_dp_aux_hdr_set_backlight(const
> > > struct drm_connector_state *conn_state, u32
> > > >  	}
> > > >  }
> > > >
> > > > +static void
> > > > +intel_dp_aux_write_content_luminance(struct intel_connector
> *connector,
> > > > +				     struct hdr_output_metadata
> > > *hdr_metadata) {
> > > > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder)=
;
> > > > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > > > +	int ret;
> > > > +	u8 buf[4];
> > > > +
> > > > +	if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
> > > > +		return;
> > > > +
> > > > +	buf[0] =3D hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
> > > > +	buf[1] =3D (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00)
> > > >> 8;
> > > > +	buf[2] =3D hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
> > > > +	buf[3] =3D (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00)
> > > >> 8;
> > > > +
> > > > +	ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > > > +				INTEL_EDP_HDR_CONTENT_LUMINANCE,
> > > > +				buf, sizeof(buf));
> > > > +	if (ret < 0)
> > > > +		drm_dbg_kms(&i915->drm,
> > > > +			    "Content Luminance DPCD reg write failed, err:-
> > > %d\n",
> > > > +			    ret);
> > > > +}
> > > > +
> > > > +static void
> > > > +intel_dp_aux_fill_hdr_tcon_params(const struct
> > > > +drm_connector_state *conn_state, u8 *ctrl) {
> > > > +	struct intel_connector *connector =3D
> > > > +to_intel_connector(conn_state-
> > > >connector);
> > > > +	struct intel_panel *panel =3D &connector->panel;
> > > > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > > > +	struct hdr_output_metadata *hdr_metadata =3D
> > > > +conn_state->hdr_output_metadata->data;
> > > > +
> > > > +	/* According to spec segmented backlight needs to be set
> > > > +whenever
> > > panel is in
> > > > +	 * HDR mode.
> > > > +	 */
> > > > +	*ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > > > +
> > > > +	/* 2084 decode needs to set if eotf suggests so or in case of
> > > > +pre-ICL
> > > we disable
> > > > +	 * tone mapping and set 2084 decode.
> > > > +	 */
> > > > +	if (hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > > > +	    HDMI_EOTF_SMPTE_ST2084 || DISPLAY_VER(i915) < 11) {
> > >
> > > this function only gets called when eotf =3D=3D HDMI_EOTF_SMPTE_ST208=
4
> > > which means all of this is qeuivalent to
> > >
> > > *ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > > *ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > > *ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > >
> >
> > Right will drop the SMPTE check altogether
> >
> > > The comment about pre-ICL is also really confusing to me, especially
> > > because it doesn't actually change the semantics. Can you explain
> > > what you're trying to achieve here?
> > >
> >
> > Spec states that we need to disable Tone mapping pre-ICL and after
> > that it will Be TCON's decision to enable TM based on panel override
> > values
>=20
> Right, but the TCON will just ignore it so you always set it.
>=20
Sure will rework this patch a little

> >
> > > > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > > > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > > > +	} else {
> > > > +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] TCON:
> > > Cannot decode requested EOTF\n",
> > > > +			    connector->base.base.id, connector->base.name);
> > > > +	}
> > > > +
> > > > +	if (panel->backlight.edp.intel.supports_2020_gamut &&
> > > > +	    (conn_state->colorspace =3D=3D
> > > DRM_MODE_COLORIMETRY_BT2020_RGB ||
> > > > +	     conn_state->colorspace =3D=3D
> > > DRM_MODE_COLORIMETRY_BT2020_YCC ||
> > > > +	     conn_state->colorspace =3D=3D
> > > DRM_MODE_COLORIMETRY_BT2020_CYCC))
> > > > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> > >
> > > The Colorspace prop can be set independently of the
> > > HDR_OUTPUT_METADATA prop but this only enables the bt2020 gamut
> when
> > > in HDR mode
> > > (intel_dp_in_hdr_mode() =3D=3D true).
> > >
> >
> > there's only two states in the DPCD register Standard gamma and bt2020
> > now this case here is specific to when we are in HDR mode and do not
> > want to write in this register when not in HDR mode.
>=20
> That doesn't seem right. bt2020 gamut is completely independent of 2084
> decode and segmented backlight (i.e. HDR mode). From a uAPI perspective
> when the Colorspace prop is set to bt2020 we need the sink to expect
> bt2020 content, no matter any other property.
>=20
> The question really is if on devices with the TCON are you able to get it=
 to
> process bt2020 without setting
> INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE? I don't believe so. From the
> testing we've done it looks like DPCD is ignored unless
> INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX is set.
>=20
> >
> > > > +
> > > > +	if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
> > > > +	    intel_dp_has_gamut_metadata_dip(connector->encoder))
> > > > +		*ctrl |=3D INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > > > +	else
> > > > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > > > +}
> > > > +
> > > >  static void
> > > >  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state
> *crtc_state,
> > > >  				  const struct drm_connector_state
> > > *conn_state, u32 level) @@
> > > > -248,6 +321,7 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > > intel_crtc_state *crtc_state,
> > > >  	struct intel_panel *panel =3D &connector->panel;
> > > >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > > >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder)=
;
> > > > +	struct hdr_output_metadata *hdr_metadata;
> > > >  	int ret;
> > > >  	u8 old_ctrl, ctrl;
> > > >
> > > > @@ -261,8 +335,10 @@ intel_dp_aux_hdr_enable_backlight(const
> > > > struct
> > > intel_crtc_state *crtc_state,
> > > >  	}
> > > >
> > > >  	ctrl =3D old_ctrl;
> > > > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > > > +	if (intel_dp_in_hdr_mode(conn_state) ||
> > > > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> > > >  		ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > > > +
> > > >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> > > >  	} else {
> > > >  		u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> > > level); @@
> > > > -272,10 +348,18 @@ intel_dp_aux_hdr_enable_backlight(const struct
> > > intel_crtc_state *crtc_state,
> > > >  		ctrl &=3D ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > > >  	}
> > > >
> > > > +	if (intel_dp_in_hdr_mode(conn_state))
> > > > +		intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
> > > > +
> > >
> > > I think you should call intel_dp_aux_fill_hdr_tcon_params
> > > unconditionally and in there have the logic like this:
> > >
> > > if (hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > > HDMI_EOTF_SMPTE_ST2084) {
> > >   *ctrl |=3D INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > >   *ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > >   *ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > > }
> > > if (conn_state->colorspace =3D=3D DRM_MODE_COLORIMETRY_BT2020_RGB
> ...) {
> > >   *ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> > > }
> > >
> >
> > I'll be dropping the condition inside the
> > intel_dp_aux_fill_hdr_tcon_params As writing to DPCD and filling in the
> params does not make sense until we are in HDR mode.
>=20
> See above. I believe HDR mode is just one thing you have to handle in the
> TCON and the gamut processing must be set independently.
>=20

Sure got your point will rework it to have bt 2020 gamut set regardess of w=
hen in hdr mode or not.

Regards,
Suraj Kandpal
> >
> > Regards,
> > Suraj Kandpal
> >
> > > >  	if (ctrl !=3D old_ctrl &&
> > > >  	    drm_dp_dpcd_writeb(&intel_dp->aux,
> > > INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) !=3D 1)
> > > >  		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to
> > > configure DPCD brightness controls\n",
> > > >  			connector->base.base.id, connector->base.name);
> > > > +
> > > > +	if (intel_dp_in_hdr_mode(conn_state)) {
> > > > +		hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > > > +		intel_dp_aux_write_content_luminance(connector,
> > > hdr_metadata);
> > > > +	}
> > > >  }
> > > >
> > > >  static void
> > > > @@ -332,7 +416,6 @@ intel_dp_aux_hdr_setup_backlight(struct
> > > intel_connector *connector, enum pipe pi
> > > >  		    connector->base.base.id, connector->base.name,
> > > >  		    panel->backlight.min, panel->backlight.max);
> > > >
> > > > -
> > > >  	panel->backlight.level =3D
> > > > intel_dp_aux_hdr_get_backlight(connector,
> > > pipe);
> > > >  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> > > >
> >

