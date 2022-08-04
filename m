Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 263B7589759
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 07:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450538AC29;
	Thu,  4 Aug 2022 05:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7169C8AFB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 05:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659591176; x=1691127176;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qms1dY7qSlEEkhtPRX4J1YHqIlVlelqcq8UA+jUZeWo=;
 b=HQYhWKl+hb6yNZ8+1z2gqScFV05CUDE7F4f6Q0j91t4z/+O0FuMjl3xl
 rtZnL9dTUDhZXmbFPjyWEvYzMu7gXT6P53LH7qji/Dv5Mmk3mVhxqlmIy
 EA0wi6JiLBAVQBzVs/cm+QUvSP/ZYKSaAOHS6SeDDGcgU8s+U3HzdT9jN
 JUH0QRh2ITsa5gLCqpT7MwzyQq9/98/vspnf0NRgOycVz63Z5bfOqUs9B
 NpPkQ6D8isoJirRJ+17oVvufw22V6LJxdzWHPsNvsLAQohOEX5HL9HWK/
 34+X7ICvo4t5Ix+5/fLIgH0L8mkRD3F97n+yrRG2Q13bOnFP/zKfYG75j Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="287405602"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="287405602"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 22:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="848833836"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2022 22:32:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 22:32:54 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 22:32:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 22:32:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 22:32:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YniKYi7sTzEIS8RKFVkFcV/LTW72QXj4/O8xtKknS9bzK7oBI739F4j1YwOE2ZaMjG3tzILWJ1uxKYv8ZiagYdGcVxfaQy7mDjrjTICGYD7W+PqGtm1nsYg/NTKXzr0+/fkp7VD7w2bfiobgChUs/4JXJ7w90e6/4zAWqJxjMnghnDuTS/x1wMh9V79ZRo1cRmNzdP56QJkZ91CRiqqSkhoJjdpk0I0tl9UioIHAkHtImTG2iuCkOp62o/F6ge7G/QT3DBO2Ngb/kXsUr3XCc2rGppXoVy2VYkQq/fkdsqZEDHXJVqExKxvV8KiLhHGLtfw9PHV1y5cn23UioMH1tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vmKcwsoq6vPMSiBd7WDDKqy5aVFsKjlL5Y9ImU8KU9A=;
 b=dXhBq2Mjag2yXQvfqO0MiJLDMTDFn7TiTmIXag7RQajtmlUKAmr2WZ2OqCkmn5QjjuSIOrDwU1gxHEi2R5R8TzM/qj0Bpno9rB+dZhXO0+r3wl887G3bFI1weQMqsQcvb9qq7OGJVQBTq1fOI5wTj43qKzML93+auwXuJXNA7xlOu4qW49e9A8TlWwuxZXA2vpBblqTGNw/qcF79OtzduJCZ7rZhJZxYAj1q/Bsxrgyh+n18+nHHyt0/qy9kV8rJjrVdySMu3OIXtKbv4QnRD/aUu6ovoIqT16qLFcjEC/rpLBml7nlOKfBRpzbtREjUnov0bYsxRfP/owYce8ls4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 SN6PR11MB2829.namprd11.prod.outlook.com (2603:10b6:805:62::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.14; Thu, 4 Aug 2022 05:32:51 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::ac0f:1148:6c40:f38b]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::ac0f:1148:6c40:f38b%6]) with mapi id 15.20.5504.015; Thu, 4 Aug 2022
 05:32:50 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYnOb/nXPKOQaUxEK3uszLKYKWSa2dtiSAgACS7CA=
Date: Thu, 4 Aug 2022 05:32:50 +0000
Message-ID: <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
 <YurbEfhNA53uoNlk@intel.com>
In-Reply-To: <YurbEfhNA53uoNlk@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65111eaf-180f-4487-26c5-08da75dac5d2
x-ms-traffictypediagnostic: SN6PR11MB2829:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XO2JZ/mMrB5uNoccmlbFSr0+y/uXAiePNg/X71JRONoCjAwj0m/XQ6z+cTlT2f4A4dETt1R3WRIylCoMXCIH5fx/NtBTInlCIRU7cZwEGJxZZ2t69Na1IXOqkM3NxVlkUdTyiBRTVpIdrwRXVMWebwujXGRcssxUa4+tlpHaxfxSzZqZvi0n1GCWofAMpK5MBit1b2+EsZJet6pLH41tJwZIiQblQkajH2pSMFyOUNONEs3Mx2OWY2DYG3uYEjLXbKmUKGweTdjayo/RAKfPDwBXV4RCzidLkZR1/DXSu2sHrazQrx7zorq+hYzbsEEigMpq/ayfzRqlH8msHCGAuLvSg438qZqNMX0wOsiDu5kLgodiXdnAc0q6oidAcOPgDblZbVYMhhJPcacqStB5tLjJNmpf7XcKzleYgkIwXA0HzgG8O8xbUk+N5mV2+QU/k3YzEJu0Nuhxzyyp4fWLhYugWJap1GOC70gHMVdldWNeodTlqneAIrCrCWlxzKqkkFuelEA83kgOPqeZ/WM062DpuTTb8/gvgOTKIEmCHbBlEoIstEDJnrTrMZXG3Zg4536RZTfAl/8AmqG/drZtr+djgd6JCorDPxfP/FsUpa49t40w0qbIqlT25Mz7gY0UPt63zpxoNhB+N0R2QcYtqlA/oWCaK7tkwaaemazOhcQ9UQqGi00yYfUeHB6kQg1XyWsocMyBLaLBbCYsxyzWHW/z5dhn6b0yB++++HNYrgGWS1vhQySkXiUtCQI+zGv7CtG523ZPSZtBzJEaMZNAMoVZRXeQMyuHQY2/OK637T8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(376002)(366004)(136003)(396003)(316002)(54906003)(38070700005)(76116006)(82960400001)(6862004)(8936002)(6636002)(2906002)(52536014)(66946007)(66476007)(83380400001)(41300700001)(66446008)(66556008)(5660300002)(186003)(64756008)(4326008)(9686003)(53546011)(8676002)(33656002)(38100700002)(6506007)(55016003)(122000001)(26005)(7696005)(71200400001)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pu5jSpYTgq5vyLqtHUjXRP7R3981jQrh+OMTed4VPMACq+ekX+OsKmgJJHcH?=
 =?us-ascii?Q?e9BSgB/4X7wGmq+f15in3tVcS/Uh28n2Dx8vQ+pjldqeIw4kGgKVBbgV862d?=
 =?us-ascii?Q?U2thWpLJjbGioD+Ygg51rrQCh6JiDE71bqcyreMbqksHdAfu/jfvPMTjoX9C?=
 =?us-ascii?Q?PqeVQB9qO1R+11YADh1HTKRa79beFumC6bu1su5mQffkp1ys60/GZJekjhOB?=
 =?us-ascii?Q?GAQQEpJjWM7mWy8UCWA19td5uCwCJ2D3K+AXU+64An38jwXCGCKY5WxKFKoR?=
 =?us-ascii?Q?mb+doJJSWrUi+HzrsKy9mc7DwK8HrdldmioF3dvQIusPrbw0++Vngpni3VUI?=
 =?us-ascii?Q?NCPukmggfJQQgvk9Jo6C7Bue0BUXMHdKDmQT1nKqd+FKgbFH2yiVd9Igy6fC?=
 =?us-ascii?Q?PCz4UFEZ78I8segWvFvqTM6CoHYuSBAB+b0L463cZIG9POcmAvzl/PKPsBOk?=
 =?us-ascii?Q?xeExgWWa1cDFcd/gTcGx3T645IhFqfCida/0EszLRq5v3dXn7GY++zsvKyIm?=
 =?us-ascii?Q?k2R3Okln0/S/9IBlyGU3O8ehcQKUILor6ptra1m5BRAzZFPT+EtT8x5nlzmq?=
 =?us-ascii?Q?/G6rras5XSsZGKbn1mUOtj6peZ/t/gW9qqomiWovA1eJDdnNN+MtIUEthld+?=
 =?us-ascii?Q?phE/5FrPHKh3/1KQJKmemAXxTgxUKoUQB4v6nN+SULE5Hnb6lS6s8K9kRXOa?=
 =?us-ascii?Q?f2EO3TPUqQFN+G7yeUcCZJShWN+9sn08N1ElgLWB+GIRG0lBnZ6yOiXjt9rz?=
 =?us-ascii?Q?DCbKBCpBctoBGL3qnq/MpstVYipL4ckWowKgXwUG7UeV8doNwcjJ8PWUbJAe?=
 =?us-ascii?Q?71Y0KItcdB1hDCnu8d5ddcd3PhQD1O54DgcwEgqe21+xyvD9o9VTLOPxk/Lq?=
 =?us-ascii?Q?B33J15j8CMtTyYxJwAXbRfyl111GPJ6ZAe/eCyxrueKQqa759RJIt9OmSqdy?=
 =?us-ascii?Q?UPNO5llGVTtEB74Sf2ObMnrqH/R68J9unxlgtKutmGCG2V2OtciO5VxvTHUY?=
 =?us-ascii?Q?SfWlUbJtORE2Eep/LzlKNKECZwdkabcf0ZOWuxG4BLEdBz44NwmIq/G1BkK7?=
 =?us-ascii?Q?VrekyPT3qVVyrz/rFnG/oKnuAAi43thobStSBgjvtVjLuKJq163rWywRuPbv?=
 =?us-ascii?Q?uAiXzqPZyP8MCNsy98iKC9DaPMr4+9GbFBpePb53NQa5SV6ZCD1BY0KKK42W?=
 =?us-ascii?Q?/Yi5jmSBL830fw3NRo6a3Rt9HEbDEiXxIvjbAleiBsw4SW6L6vc0Xsr4Hr/3?=
 =?us-ascii?Q?KorlhZKT77OqLZm43bmq0w792CW1iXJy7KWp/UM5MAS+vWaGq/C/3y85msJ3?=
 =?us-ascii?Q?5Zi8tzA0zSyUoc5cJWF7IT1MbB6DvpmPJto6NJZzQpQere1PPjPahkG/GCQO?=
 =?us-ascii?Q?YFqXy7BlBOK2H9fEXCwOMlMPcPnlHTLuhTA3pLD39hc6/tLXWOVAs8uaIdaf?=
 =?us-ascii?Q?bUhU0h+hFitLHmWPK+TCCr8PAJzZLipsbeX2ApT7/Y6DP3kpKynkFoErLiPf?=
 =?us-ascii?Q?yVcq5cChO3/dtC3eTezfAEOt5g7zakq9yD8xa3kOLxGX2AWWSKW9DW/Uqyvt?=
 =?us-ascii?Q?KjjEGMKwGXpdssKyqSf3cps9ho+a+rOzgegQhQES?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65111eaf-180f-4487-26c5-08da75dac5d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 05:32:50.8238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: buv0QI+kADm/R9O33AWLW/iCSSe2ddStYRSiUt6HSWK5bqeU48D+hZ6xVGVRGz6uPLJIgHRqjsr62bRO/v7uiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2829
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Thursday, August 4, 2022 2:01 AM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>
> Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Deak, Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
>=20
> On Thu, Jul 21, 2022 at 03:29:48PM +0530, tilak.tangudu@intel.com wrote:
> > From: Tilak Tangudu <tilak.tangudu@intel.com>
> >
> > Added is_intel_rpm_allowed function to query the runtime_pm status and
> > disllow during suspending and resuming.
>=20
> >
> > v2: Return -2 if runtime pm is not allowed in runtime_pm_get and skip
> > wakeref release in runtime_pm_put if wakeref value is -2. - Jani N
>=20
> Should we have some defines instead of the -#s?
Ok will address this.
>=20
> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 23
> ++++++++++++++++++++++-
> > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> >  2 files changed, 23 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6ed5786bcd29..704beeeb560b 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -113,7 +113,7 @@ static void
> untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
> >  	unsigned long flags, n;
> >  	bool found =3D false;
> >
> > -	if (unlikely(stack =3D=3D -1))
> > +	if (unlikely(stack =3D=3D -1) || unlikely(stack =3D=3D -2))
> >  		return;
> >
> >  	spin_lock_irqsave(&rpm->debug.lock, flags); @@ -320,6 +320,21
> @@
> > untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)  }
> >
> >  #endif
> > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> > +	return rpm->kdev->power.runtime_status; }
> > +
> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)
>=20
> why not static?
 We need is_intel_rpm_allowed for rc6 helpers , the helpers use pm_runtime_=
get_sync,
To avoid lock issue we need to use it here too.

See this patch " drm/i915: Guard rc6 helpers with is_intel_rpm_allowed"=20

>=20
> > +{
> > +	int rpm_status;
> > +
> > +	rpm_status =3D intel_runtime_pm_status(rpm);
> > +	if (rpm_status =3D=3D RPM_RESUMING
>=20
> I don't have a good feeling about this. If we are resuming we shouldn't g=
rab
> extra references... This seems a workaround for the lock mess.
>=20
> > || rpm_status =3D=3D RPM_SUSPENDING)
>=20
> and when we are suspending and we call this function is because we need t=
o
> wake up, no?!

As we have re-used i915_gem_backup_suspend, i915_gem_suspend_late
 and i915_gem_resume , These functions use runtime helpers, which in-turn c=
all
 runtime suspend/resume callbacks and leads to deadlock.
 So, these helpers need to be avoided.  we have added is_intel_rpm_allowed
 and disallowed rpm callbacks with above condition during suspending and re=
suming
 to avoid deadlock.
>=20
> > +		return false;
> > +	else
> > +		return true;
> > +}
> >
> >  static void
> >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
> > @@ -354,6 +369,9 @@ static intel_wakeref_t
> __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
> >  						     runtime_pm);
> >  	int ret;
> >
> > +	if (!is_intel_rpm_allowed(rpm))
> > +		return -2;
> > +
> >  	ret =3D pm_runtime_get_sync(rpm->kdev);
> >  	drm_WARN_ONCE(&i915->drm, ret < 0,
> >  		      "pm_runtime_get_sync() failed: %d\n", ret); @@ -490,6
> +508,9
> > @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
> >
> >  	untrack_intel_runtime_pm_wakeref(rpm, wref);
> >
> > +	if (wref =3D=3D -2)
> > +		return;
> > +
> >  	intel_runtime_pm_release(rpm, wakelock);
> >
> >  	pm_runtime_mark_last_busy(kdev);
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > index d9160e3ff4af..99418c3a934a 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> > intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
> > intel_runtime_pm *rpm);
> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
>=20
> if really need to export please follow the naming convention.\

Ok will address this.

-Tilak
>=20
> >
> >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
> > intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm
> > *rpm);
> > --
> > 2.25.1
> >
