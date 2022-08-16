Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F87594F27
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 05:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B85BDADF2;
	Tue, 16 Aug 2022 03:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70166960CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 03:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660621547; x=1692157547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0kqM7c/moxeMdz0Ph4xVL/NeChT/s2DBJJbWk9mhh+w=;
 b=UYGOHkPQSOu6F/4IGKc5qnx4uYrubjU2+UuSmTiwEk0e+EdprrXKviya
 k5khshsCGXXJUYNfMbbAVlENnITkJ53tgGt0nn7Mxaxn2e7ulQQwn99oi
 KV7CFiiSIHTcqFBaJ9rEF4WQN5WuqO4DJ2LQ3/eo/qJNyW4aeYOiMVvsh
 FVUfNcZNNNlCp7dEzxmFIUlHAWEstlblCFwIYsQbz+9SdGK0xviUIPKrS
 j4cJFW8BpCC0T1tAI6hJSW24jlNvdZAipXMY63gvtuSHpIdZ4ojM+mAZ1
 1gJ4yid2/OnBsibPKKCW7qGb7d0ba5HS1WIYX9MTPmQrs6O6qM1z+Mwsr w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="290869260"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="290869260"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 20:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="610121889"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 15 Aug 2022 20:45:45 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:45:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 20:45:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 20:45:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nVA5X/Y4hOa11VEX1H593k2QeJiO1IdYuTBnbagHudMCPAgIzrSr8EYax/nXz60gfB3R4rlUSPNTCgHV/P2DNEgn4yYo8jefP0CiGCAhFcuEYjeO1s6kMJH0Pd2+JMPUx/7dRnE4VA7UEePtJ1ryglTfadMPaLLBY3rV3syMJoKBZou6rm8FNZEeAOwjbU5eLgZFpnqcdv8P1MRU1QI3WUmOsDONAkuqOKy11T7ZvDUQMNlJrd7wLzWLoDGW16zfcv4movUIkFaekrqIIAip+cJcgoAme/wupWsrVs3n7AN0t4v4JGwmsaq7S0YmtSuehrQoiItfxX7z98ef9pPiWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=328dw0/tsSd2WbA4B2V4YOBWl82np6hy08F5rmcwUq0=;
 b=nQVair8xurvPWwvy6sPqTAq9MXKZwXOCmMIDA/L8lZ2cBFznZMwm1d5qcdUMTeYypFBvxXVcWIw1Ta0+A/4Yffe4gkLaq5ERjcYm2isAN5cHxWuBtccbrrkSia5TIYjVlboprsi7J9prsJDC/X6xtnauwF1R3pZ4I8kKxQjRKqjwfC4fSql4p6yzm19d3Dxi7Dn2/TJr79RPNmXLDEk4LFZ9fgIPGRPDrwUGb9IWEMUwO6dwS/vXd56hf/r3usP6NG8/crEettmUeF4vVM4QG+Ju9SzYlAPeR4mKpx405fJCX/V+/38zFT/g0Cf9JoCELpViudYkqtBdNUc1L/pRlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Tue, 16 Aug 2022 03:45:41 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 03:45:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
Thread-Index: AQHYrZW72R06oemnFU+48ZVYG86SoK2qr2kAgAAkeICAAADSgIAGFMAg
Date: Tue, 16 Aug 2022 03:45:41 +0000
Message-ID: <DM6PR11MB31778B48973A51C8568B91E9BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177BF763F96A723B5505415BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <8735e2t0sk.fsf@intel.com> <87y1vurm38.fsf@intel.com>
In-Reply-To: <87y1vurm38.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 9c7299cb-5711-4011-43b2-08da7f39ca5b
x-ms-traffictypediagnostic: PH0PR11MB5657:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oRg69RINzdPpgzP48z444VkJXMTFFyMjGkVCPqp1EI9rI4XXDypEE7NYsWxPKYvMpM/jM8lBVjb6P9ozAsqJKnrSvA1vtP5SIM+Rsu8fqjavyDbKK4sVTSh2/GyG5DV+wd77vytJAPUjsSD0pwYDy/ucma90mExicZ5goOOx/1wsCJ0Tv4dxV/5ONZbJAYLa+J9F8NCpdq+CjyQGPMRVgWnHhveREc/pDYsIhNEjOHlZuWPqPpUL5+kfP/B1QbxBfga9EC916q1Y0hOnjHZnY/S8qo04bOWjuBSEtNtrsXseAsX5nOZCTV/VwUbB5/dKuyd27l4cMQ7ztTBftYs6XuYE75jymTCftpMPXYcLIRQAZv0p8hVTAp7qYY+1Ez8qXKqlglca79z2BDHvjA9cY1eqLoIgyoWo4f6KnoIG+88poQhqLbF14+zaCn/gWxniLapzOjW2AeOoGnET6wrYJESDOHO7xHHUpTlto79FKWqa6HeLlD5qOVPUaFeigsxhyV4NJxK9nZCllSkzsuza2D0jbKdN6hDCLPwPcIrpkElmCIttTPLPqETsMo1VrJyJBYcRBKAmPkSmw8g8a6vihO3hy/H/s/LYGBQDctoJOBSdx5DlTYkzeNMw0gwwDuWQVoO8kVP9zQ5z2fkY76TzJ75nHfNDlOtk8+NM/udWSAtJx22fDnz7LwWCJDsTnJzsDRW1umhRz4RpNTKwAH+Te7CzoCvtoNRh4tED5mCmxshU5SEEAd+K8++is1X4mfCOEjSphWqSDap7tHElxeqyQy2DNkcDAUmFW5ciB04ozIL95kDn28jHvXgj3wQKQg+r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(136003)(396003)(346002)(76116006)(52536014)(66946007)(26005)(8676002)(64756008)(66446008)(4326008)(66556008)(8936002)(9686003)(2906002)(5660300002)(66476007)(41300700001)(55236004)(33656002)(7696005)(6506007)(478600001)(107886003)(86362001)(83380400001)(53546011)(186003)(38070700005)(122000001)(38100700002)(82960400001)(316002)(55016003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qB5DTY8Hh9ERxrCzuFbOgBfz71qQhqK8eWHS09FgeI5GhJBy7MGpxplJtBqi?=
 =?us-ascii?Q?imxQROywMyXJbXBcnqkvb6sktYQrcLsUCxj1hIBninJgI1QpsKdl6MzGRURB?=
 =?us-ascii?Q?8D5XQunxZ5yue4wRhgeyYiH3FuwgozzrfYADsaYjqslByQQ1wrsBzhh8zH5b?=
 =?us-ascii?Q?l1gKivQJxVbdUWSMsPHjn2CFiv3GnRIyC6h30YmBSrxO6n75rokrgIXiJRYg?=
 =?us-ascii?Q?lxwaZkzr0pFApR6Pdi+8pzlwFzHvY/UchK6vU6IGlwt8C3V28fc+PZ68A9EK?=
 =?us-ascii?Q?dcE3rtl6Y8w9a8at7cHa5c6e1yVsp+Ndg3u5JNhftpWXXsChkDmhvPTrLfcZ?=
 =?us-ascii?Q?dim67VjuSebXlBVdiD0eR91YwXtd46t9J6z/zNhFy9cXQGQqRF+Q9s0qzEcy?=
 =?us-ascii?Q?bHeZs5vMTGws9IUDkZ41yIe9QDqrra5MrGdrMkE/KbBpEZzwWe++93LqvHT0?=
 =?us-ascii?Q?oU6KV2Oh9aqDNB4T0Ct0Bwdo1lUj8aBNVCbwILqQQXvGNI1jktEKFHTksvON?=
 =?us-ascii?Q?EX7K7/k+E2l/xiVqKMWnTgY13syEuK2RokpohAMSFuIRuNbz0wECEjRUSPQA?=
 =?us-ascii?Q?20q5MP3gam03Og46AdzbmY5+Vbh6W3iLmNvTtOFdbSlDAJiPTHc3fYJqSwlN?=
 =?us-ascii?Q?xJ2knpe+m3Douu/qZyPDFcETi1NTIYHlF32Fgsh22Sy077IFd4EeW3JwVc+O?=
 =?us-ascii?Q?1o936vtb0yVPweazaYLL0+s7UEtMbhHNHKjNMBKYmU+GqceJYp8QtjHQFXtp?=
 =?us-ascii?Q?JY/utVXJ5RpSzPAUfRq4Ta4TxnStLCckIyZ/sybhv+o4AaVXMBvgXeyvdWWH?=
 =?us-ascii?Q?zKIaFn1nodeesZn3NkX3B+bTdTVD+LsVEw0USlLNYU/lKL4O86pReqVVxiTi?=
 =?us-ascii?Q?xYAYYtgXdUhxM5TQTpCKTmZGBrZIwszGpsmbfrzUt5AmMOuJuvga0SUbE1Lp?=
 =?us-ascii?Q?R2WKggq9UQk8dPL5CUBAuO9P/Hpbe+L9tTtm082aneEcZSy2QDD6Pd9RbPXZ?=
 =?us-ascii?Q?zWF+cEaMhYuxtxejOEKkkLQJ4Ip7QmOii9jldaED3xORob2rHyV5mfGB0hw4?=
 =?us-ascii?Q?f34sjbi8xNh0THKZTnqHriuNP+EAyjRxmPtH8mC1ukxSfY2zgaPdbXOlgxXh?=
 =?us-ascii?Q?YZsxDqu5h9UYdxiE7pjjlJL+UZA8EyQM9/Ca4MHDjEzCtu9VvPmaKwSLu1Gu?=
 =?us-ascii?Q?rk6Ju8Dg8SBahKJrsp+Hu9N9iBdRHQ0yP063K1YMDwcYDXyNH4HdgNNsJja5?=
 =?us-ascii?Q?mnLGDgLjI4i2Ti6NgkgA+TEAxmnjfZtxyTKAjXwVDGO7zReCszvXJOmDLvoW?=
 =?us-ascii?Q?pMBGOs2W9qCCRQkxFBb2CdB1sXFILItNwbO9UuSVRBldgVQ8NODmMrlR8dor?=
 =?us-ascii?Q?T+sYlQjk8w2xV2PYlvW8dJ0aWzU6fxn6nqHlz4Ldz6iYqSPrv3PFshYztatU?=
 =?us-ascii?Q?uZQr0aUD+4ypV3aU1ItQ9+kIL77t5GIJ0OE5fRashjgT5ildqZ7pyu6d0FiW?=
 =?us-ascii?Q?DGK2JK25yY3TCLv7zZCt6SeKf6pHnxwHUS13dBxWcLzVSx2bbdBLaW0y7BuM?=
 =?us-ascii?Q?qow3iMrt2i/237YxKLzocLXhPDh/+RbB6dzMv4E1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c7299cb-5711-4011-43b2-08da7f39ca5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 03:45:41.1032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e5IgBX0gSDlVpDMSokClSYnufJ2eC9RRXbtifH5Xsm5j+pJJORsOgT8VWUL0rTJ3My8g7vNzmZV5Hwx2axiHeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, August 12, 2022 12:21 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs =
to
> display.funcs
>=20
> On Fri, 12 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >>> -----Original Message-----
> >>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >>> Of Jani Nikula
> >>> Sent: Thursday, August 11, 2022 8:37 PM
> >>> To: intel-gfx@lists.freedesktop.org
> >>> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >>> <lucas.demarchi@intel.com>
> >>> Subject: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs
> >>> to display.funcs
> >>>
> >>> Move display related members under drm_i915_private display sub-
> struct.
> >>>
> >>> Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs
> >>> while at it.
> >>>
> >>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>> ---
> >>>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
> >>>  drivers/gpu/drm/i915/i915_drv.h               |  4 --
> >>>  drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++--------=
--
> >>>  3 files changed, 33 insertions(+), 33 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >>> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >>> index ff76bd4079e4..98c6ccdc9100 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >>> @@ -10,6 +10,7 @@
> >>>
> >>>  struct intel_atomic_state;
> >>>  struct intel_cdclk_funcs;
> >>> +struct intel_clock_gating_funcs;
> >>>  struct intel_crtc;
> >>>  struct intel_crtc_state;
> >>>  struct intel_dpll_funcs;
> >>> @@ -44,6 +45,9 @@ struct intel_display {
> >>>
> >>>               /* irq display functions */
> >>>               const struct intel_hotplug_funcs *hotplug;
> >>> +
> >>> +             /* pm private clock gating functions */
> >>> +             const struct intel_clock_gating_funcs *clock_gating;
> >> Likewise having struct intel_display and all display related structs i=
nside
> this, can this stuct be moved to intel_pm?
> >> This is more related to a pm!
> >
> > I'm undecided whether it's eventually better to group the functions
> > together, or spread the functions by, uh, functionality.
> >
> > But I'm pretty sure I want to first group them like this, see how the
> > *other* named and anonymous sub-structs of intel_display shape up, and
> > spread them around if that feels like the right thing to do.
>=20
> Also, this series is going to be a lot of refactoring, and I'm constantly=
 trying to
> *not* incorporate too many changes, and mostly just stick to straightforw=
ard
> movement. There's a lot more that should be done wrt actually hiding this
> stuff within modules (using opaque pointers etc) instead of exposing all =
of
> the data to all of the drivers. It just can't all be done at once. This i=
s the first
> step.
>=20

Can we have a TODO, so that we don't miss this and it would be on track?

Thanks and Regards,
Arun R Murthy
--------------------
