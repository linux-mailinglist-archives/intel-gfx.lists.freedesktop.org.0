Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F3717CAF
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 12:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D29E10E1BD;
	Wed, 31 May 2023 10:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5A910E1BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 10:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685527450; x=1717063450;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1CK4LEfNveqK+peQjFlaErn0BotoOz3T9eqRnl435c=;
 b=ggKcVgy8b1BYXL7tKUSChPq/763CcBW+C6WsSMtePYx4VoQOWtrLXCd/
 l9HgolnwX7spSDalc/nvMj7+fb8G+C61wHbiNPdH6IrKdBTM1x8PcQ8By
 9TlpQq0seMldtYNOo66vEbkSsMrY6zCTvsScZRkf47q2Ff5Rrfsa6/4Bh
 2EqEzaCvnX/91IsYxyWGiEkVmP1HZSCzd0qxj99jHkTwm5J32LAhXaTZ9
 UYAnmvaLCO5Z9wJMB8aFVo0dDhoBV9Ec6WxaCuTNR8QxqWLzT2MV88rJh
 fxQQMC/g05/flLeE3AIHgkz2chrNr2Aou+Kdn/0cyTRc0l7NTO2U8Jpu6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="344702251"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="344702251"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 03:04:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="701048810"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="701048810"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2023 03:03:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 03:03:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 03:03:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 03:03:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 03:03:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBsTVERbBWJlfLGjpXmjpkbvdoyCUAkcH7Iye0MccRayWnjbgUSCECAHpRFDsYS0EmQI2Xx5boAARu4yujHMfwXGhBHRFhjOwg7lXWVatg2FGx10o105z22sMkyXYhGMYhYb5NrkINSjFBnzbaBYpV+biHHqjE6gG5CVx51HW5+h9EejhdlPSXYAvRLzm44gyQy7RIEiqVEYieLjUkAvkEQXNq1HKcgUcMVfLd1tlp3kbrMfAlrKaHKtNpwn7TifyqnFYUNSNTz1q2zAKFE+fA5T5+FK2+czlDtchM5jYAkk8p5Z0UyiV2fNDBqm7haPZiKfylkb8k5wXNgWD49IfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VEihLPnS2ufS6Wfss4tzeiw1bXdZZHfClzOsSWde/pI=;
 b=HHtuBbYcTLcavo8swL5eJUqhl79m0aoWOcZgTrnFL6BWVuo7sK06/6/QiqfLHIO3Jv8iy1dmFpcSX6r+u6qWscDM6UL+3sUDZgHvY4gp17Z1f+SrMRmKTz/bT7qX77Xk62ZsBEhacZnedz9ZLMRSaINXJZ5Bx5gtuyCJwGNiffvShWJ4AqYKBH/9pZDEyD4BiQhcAP6TDVjuJOI9Rnp0XZgu55lEm3whqMzrB/etw9GzOc8eocAWvH9ur7yQ7v196UMJMPRqvu4Q6ycVeb11aFXzVV7x0f8DftSrIr1TgfYjlz7OTpxVDWTWn4gBaWALkNDhgFtn9iSHxvhFMkkkDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Wed, 31 May
 2023 10:03:47 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::3204:9161:6e53:13f8]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::3204:9161:6e53:13f8%6]) with mapi id 15.20.6455.020; Wed, 31 May 2023
 10:03:47 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for compute
 contexts
Thread-Index: AQHZiMblsfAYXd4Vh0SlC9leYSNKQq9zZSMAgADXmNA=
Date: Wed, 31 May 2023 10:03:46 +0000
Message-ID: <SJ1PR11MB6204AEA9A0C1D19CE18D582181489@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
 <ZHZmlEua2XSISMEG@ashyti-mobl2.lan>
In-Reply-To: <ZHZmlEua2XSISMEG@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|PH7PR11MB6332:EE_
x-ms-office365-filtering-correlation-id: f0228224-81a2-4081-a95c-08db61be5310
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ABqhkRPAspMesmnvdALSiRuQoyo7faBNenN6ZPxagftnd2+6aTdfOT9QEM8h7Fpkt93rCjLky+Sf96piXCoMs3k6W+H15d48+AS8RuILYVcJG/Y3g7ShGsWBVdtnGoAKQg/glBiyf9W1PxWBnsVpvL8mENkFoT/eE09w9nVSwGDWp217RcG0L9HZqWBnDygSbNW4/CVzOwi6OiWmW+9/prGgUV8hqc81ZG1sgEaeQQQXpmELvkQOBOmcDFU5jTBC22ROsn4izXz8nYfvQ7XDmv4iimxJ2T++crApObJipbu2M499cgIVbh9S/bxZeKWtV17xE3VkLK/tPQQd5eHXps6Tt3n782sCGiZHBwKe4opUM/AoojcEecvOeFQovY+MWj1nqa73ozq55g9d1D3RNxqMQNUxUulDacbfay3tR3OQubAkVEm3pAPRpVe7pju+1JW9Vl4qkykvZsVqYUnT0OeTQWkckwhIWe3bQQ5DdlP+VByUfuAbKzBHEXhS005OC9aH6toWsojvk/ra1iRY3x5ygmsJZLhUNUH2aGAfF0amKq7kj5rVmXC73FiyKyxDx9nTTuj1Av13rnEVLBnLIQzATNlnPFH82/m3wc7gwsALH1luXMt3leYb/mGOI649
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(376002)(346002)(136003)(451199021)(316002)(7696005)(41300700001)(83380400001)(86362001)(53546011)(38070700005)(26005)(6506007)(186003)(9686003)(33656002)(2906002)(82960400001)(122000001)(38100700002)(55016003)(8936002)(8676002)(52536014)(5660300002)(76116006)(66446008)(64756008)(66476007)(66946007)(66556008)(4326008)(6916009)(54906003)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uRkuPT3kYa5f2wlfnGksDH6VrNZN97C85x16BxI7XG3GRz2khf6bCCUAYsy3?=
 =?us-ascii?Q?HbSpx9Z+Vq302AA3FK+8IvuPMb/hyXCrjR3L19on6EszT+p2uZayjA332DZl?=
 =?us-ascii?Q?eB/xs9NtHb0WxB9Qkte2CjDGri513S5UBiRx/IS8M9uPZ90i7TjrbEDCvLgH?=
 =?us-ascii?Q?w6DTQA5mWVrOqR/vESAtYh1/dEk5sRkjjpwnDbobbve+jmhxz6yxOIZDPUkI?=
 =?us-ascii?Q?YnnZ/EwWUsC+kaTfHzfUQzOm/pIIWOhHoJdRLCAzmceWp2KCq3TzccXISJxv?=
 =?us-ascii?Q?SCKxNE6vxOV6qSnSzpMXa++0Ko1x0OYYG8FczeA0KebXojHflrZwrIzJNxAx?=
 =?us-ascii?Q?wmt5X66AOSPFfNX0EpruuQgrHJPEsW0wKFSGzbMNnUJYmKlYHyyos/mdGBml?=
 =?us-ascii?Q?dYIfEnYnRNQhcE8tKX0Jnx2waHIz5tqMxqOGEcnp9nZAgrRUB0OOXe6DOqzh?=
 =?us-ascii?Q?hYBTevoeivndVRJYTk6UGMu2x1255chWAvj0P4ctYUY2ceq7t6XXADr30Vxn?=
 =?us-ascii?Q?VMSEbvtEJ+Yf8xxFxW7CN1KaS4r6OUyMD4F9WLEpMr1uUsqRxe82tKTVikMI?=
 =?us-ascii?Q?sEa6NiU+I9aSRNAJHakVAfTK9g1zVV4wBbTJbIfedJkhD3NqY/KWBPcSCsi2?=
 =?us-ascii?Q?KgGIRXwBLiRjmYt8kVdi40gEdh223XxL0kNaWJBWs9Rc/HIwSqjfKEH2JCTd?=
 =?us-ascii?Q?QAtwhvjlx+EgIhsxLO+mBSZTbEN6UnKbwY+wwejKc4gPeiSnbL/9DZcGehFn?=
 =?us-ascii?Q?ncInZee6j4oEs61Dp5ZbabWH4rfQowaSfmhPuSrWAw2MyRlxMoc+yLxvjDg8?=
 =?us-ascii?Q?r+xqSAr/RE9oG2z4QojeV52xuBH8ILMfjs5QuBFoN4w+maAbz6+bF6tGtm90?=
 =?us-ascii?Q?X0pxu9flz29Rm+8w51CFCyjPxLhOVsgYkzXTNEkbu5t2KGA6Mb0X0HNyHeVC?=
 =?us-ascii?Q?d7UZP/qc5Tks9KNNQt89h+PqMqgt96kvInGEf7MtR92F2Oix0CMkm+ERAKrP?=
 =?us-ascii?Q?0xn6xhgBmNyAS6Wjwk6UhKBh6PCc7jCqGRq+ARWHyudJVbYIUHJ0OtNeSAww?=
 =?us-ascii?Q?fq77oDIBZndhL2r1lfk42Vru7EPUx74QI8NFiuuyKMaao4FSrisEZ7cwIreG?=
 =?us-ascii?Q?Mk0y+W0wvrslmGZmQqFRbeoaO09tSma2jy/hXpbiXOW+BCGOBto0rplxBymd?=
 =?us-ascii?Q?7lmaVwALe7Cro7QEi82IefebRICSt7ZCyU4ROWfLHsdKrBV31he/UYHYxUB8?=
 =?us-ascii?Q?PzGJMmmOiuv+jydUDdQ6AIUXlMIm2g4GzYH8GUju2L83vTLXiRh8S4H9nu9W?=
 =?us-ascii?Q?a8AL+CXe2sTdFFjHwjHCzi/FpVYcnaqczCMo0kUtTGddQ1IHes9EqfQ1USVU?=
 =?us-ascii?Q?cb6PzDlZ5CT3LrmBNnsnqvcI+eeyJLefD0h7nPKMFa2z1SSrnTuvCXOuAi6b?=
 =?us-ascii?Q?kR1fclxt1NfD4gyNY3hXWwYhPUHJJHeJnS0Uu/mazDWKfMwNDKY+Ho/yug8+?=
 =?us-ascii?Q?3CCpk3F5o3Kb2Bl2l9THCwFsQSt9GsvCaZFSbQsMUhp3UPBVG+vjTny2qfFG?=
 =?us-ascii?Q?7f9nobBgpAqbzXM3SKtclJASrZHRVcffUbp4U58N?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0228224-81a2-4081-a95c-08db61be5310
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 10:03:46.7949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YUMzbJttEVUXOjVsEBUqlFaTN7KP/Huwzyjyh/QzXS/lVwGxYVAHceA7Z0BlDFaMx/M1uZQ6Seqph8eM7Ljl9c3YTbv2hg+DokJY78qZFe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for
 compute contexts
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
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Wednesday, May 31, 2023 2:42 AM
> To: Upadhyay, Tejas <tejas.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P
> <chris.p.wilson@intel.com>
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for
> compute contexts
>=20
> Hi Tejas,
>=20
> Just one note...

Thanks, Noted.

>=20
> On Wed, May 17, 2023 at 07:27:54PM +0530, Tejas Upadhyay wrote:
> > From: Chris Wilson <chris.p.wilson@intel.com>
> >
> > Allow compute contexts to submit the maximal amount of work without
> > blocking userspace.
> >
> > The original size for user LRC ring's (SZ_16K) was chosen to minimise
> > memory consumption, without being so small as to frequently stall in
> > the middle of workloads. With the main consumers being GL / media
> > pipelines of 2 or 3 batches per frame, we want to support ~10 requests
> > in flight to allow for the application to control throttling without
> > stalling within a frame.
> >
> > v2:
> >   - cover with else part
> >
> > Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>=20
> ... please, next time add your SoB here as you are sending it.
>=20
> No need to resend, I will add it.
>=20
> Andi
>=20
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index 5402a7bbcb1d..9a9ff84c90d7 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -964,7 +964,11 @@ static int intel_context_set_gem(struct
> intel_context *ce,
> >  	RCU_INIT_POINTER(ce->gem_context, ctx);
> >
> >  	GEM_BUG_ON(intel_context_is_pinned(ce));
> > -	ce->ring_size =3D SZ_16K;
> > +
> > +	if (ce->engine->class =3D=3D COMPUTE_CLASS)
> > +		ce->ring_size =3D SZ_512K;
> > +	else
> > +		ce->ring_size =3D SZ_16K;
> >
> >  	i915_vm_put(ce->vm);
> >  	ce->vm =3D i915_gem_context_get_eb_vm(ctx);
> > --
> > 2.25.1
