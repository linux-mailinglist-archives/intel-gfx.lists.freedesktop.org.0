Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED953FF371
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 20:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7256E7EC;
	Thu,  2 Sep 2021 18:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0209D6E7EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 18:49:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="206435450"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="206435450"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:49:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="499941213"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 02 Sep 2021 11:49:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 11:49:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 11:49:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 11:49:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NO3/M/oCdq4UhWxSx6ENEhwSLU1fj8JKlmLKgCsgQWt1KLo/3CUbuh1oZq+0c1sGmX4U+GnsOQZHilwryasewfE/qsoDzOFvQr5L1T0kVHu+Tezy/rOoIZortY3xuzFlGmq5G+wyZ5pZgVPLs5uflucGeYNGzcx0c+D/3VYhNlZkD09s/pUJz+EJTZLgZBEOBY4T+WsLn4JcLAww0yTZrSterebJa0301kL7UTUgS1N1xoBB9KKM2EcZ83ghN6GFpe0w419j4OFVuUXi/Ok2XuDNnXxhP/FcWb+fjG5u0xoqnGo8rYfuurc4cGNZ2Gwc61hvmKBff0vB/PcitT44jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=plb8wZZUqonUyvpQ/tbS56MI77bdFepMyOxWFYMiw3I=;
 b=Bsgb0YXBtjr2nm+Zg8Ya9PxZp15QM8sZVQVDjyDH2sl1XyLS6AybogJx7kW1IKB2+aCdBEHdJYX3EGpJ4YKVGJv0JVNhaFQ8KMvwxE383WpgkFtSJtqSEPnXhIPzC93a0QTM3yTS7f8pU6T0CtA/2+6q0fbW7QSicmRf+F3WSUR7SnVATjfy6scQJRR79pYjseTDzQD5DpMqRz6fu3yj5yTIRBOdS8WZzhNOF5Z7lji7yY1jYr2fAmEhj+zPnKWEyV5/K0iOwZRCsPV1h4Ip3Z8pZ8wUnBFgJx8zkKOCGcSarw2Gdf38wlt1XpVEJ9YUlEOw7iAmSJE2pd9nh/YVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=plb8wZZUqonUyvpQ/tbS56MI77bdFepMyOxWFYMiw3I=;
 b=YqRMnfJDht+wlvFjGeQv3OCIwowaKYDptKEdEA7b5oHIro2kehhZv6gxu8u7uWLNBR8w2ZiK9QJKTA8Y4lgz3k8o97Uk2r8KTRI+elJtsmQOMsUi4RyaFoWqFWTH8anZuYwnlj7XmnJ3of1O8avDv8aWrY4BedWoC8i7i11maT4=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3647.namprd11.prod.outlook.com (2603:10b6:208:ec::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.20; Thu, 2 Sep
 2021 18:49:02 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 18:49:02 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Srinivasan" <srinivasan.s@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Thread-Topic: [PATCH V3 2/8] drm/i915/gt: Add support of mocs auxiliary
 registers programming
Thread-Index: AQHXnbvCi3zSCk0JLE2Qy4oxeayk+auPtAoAgACjPlCAAJYZgIAAK2rg
Date: Thu, 2 Sep 2021 18:49:01 +0000
Message-ID: <BL3PR11MB57460D33DCEF3D3D86D793D0FCCE9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
 <20210901212432.GC461228@mdroper-desk1.amr.corp.intel.com>
 <BL3PR11MB5746236A4243D4B2CD2C9958FCCE9@BL3PR11MB5746.namprd11.prod.outlook.com>
 <20210902160601.GJ461228@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210902160601.GJ461228@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54e25298-d0aa-4526-62f1-08d96e4254f1
x-ms-traffictypediagnostic: MN2PR11MB3647:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB36475854CB3F9E8128B6318BFCCE9@MN2PR11MB3647.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /yGIZOGlt3QtaqY4xQceiwfFsyMPTSFugIp4E0tVSm0N15Pa6Iu476CpG3ctf17cKIkNlnpaVBnlBE//+Lxsj2AyYIzsOta/xJxfGiEhx4GPItrZsJEb8kKmeiw0hGfA2aHYa414BLSKoYZ9Hwcrv/1lIplpCTzPVIgxTT6e+7ZXFSpPRNc89DXSIZH5pRULp1XJCDmlNb8H0hjNsIzakxtX17MgKl14mnw3AV45rmiy/Yz5O4bklkQf91BuxPAyqKBiue1ZzH9B6b2F+RIQmES7DeIyeFPRbRp5zrdjtUW5TGpRJe5jY4atfSKXWtdfyNDKOqk845xxI0lYJqcc7RgghK4/dUfOuSStyaEpiMDzPIpFJiVg+3C8g3rUnUGF498LqE6P9LjzXLVLbqrTuQeGcHhHP1QEERKRERaGy70S9StARSUTzNSWCxvdFY5cfK8azMdt6VA/npnS4S/NJw/H+j8NM3oEVn/WpGDJ4ACKTbOkCKN7B47V+S1J90J2eFHB1GU+mQzB+teeojgVti8i7qysxuhKqeMwWKHvZ9HxbSeQzzqbcmIVSSg7nnhYMPZR4X2IuOTJUOpzzpVWWaoBhsVnfvT4EEcPhQk+kBrOGZ+a3so78USNn3MT5hEA4/mY7wC8hBDDuIJG5Lq36tf9vY56ANbK68hDRDUBakCqppKkSYjgjbcUDWs8gGDoNTv25i/vJMyNpi37xXkbgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(186003)(33656002)(83380400001)(7696005)(38100700002)(86362001)(38070700005)(9686003)(122000001)(8936002)(107886003)(54906003)(53546011)(66446008)(6636002)(6506007)(66556008)(66476007)(4326008)(64756008)(55016002)(26005)(478600001)(316002)(8676002)(71200400001)(52536014)(66946007)(2906002)(76116006)(5660300002)(6862004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fHLloAFEH+p/118dyL2OPXBjc6CFh7KH3WBsrJHSEgICcg3NyBgKLMybJ1je?=
 =?us-ascii?Q?wwmN0UaL0IpsMHWWXuGrqh09cDtLVWpWBT5ogpj+cFa8f7v8ixvn0CRdfGZH?=
 =?us-ascii?Q?mh5QcGMWiLV0Y97gXYLKJ2OW7GlAt0+ac4VlvWVtgem3ly4D2TlUtSb7mscL?=
 =?us-ascii?Q?hbGLLQmhise637eSd8lX8DteW1rRAS2dQ5RuteJEOVI/ZIaEyPzfEM9lZIiD?=
 =?us-ascii?Q?kBpMbmUcDsvlubSh196CNFpGp/OzsOHCqWQ7FeKIRuo+rBw1JY4Bv7RdqGn9?=
 =?us-ascii?Q?vuNxBz73QXbaPAt+ZliKdkby4RfpnF9cUhO5n3b7bQ8/sdO5nIKlya9iTe64?=
 =?us-ascii?Q?CN+IwQUtiT/ziUH3jg6EiPWTonOraOJo3/1+DIjX/Eshg60Y6V6b4wJGjq3L?=
 =?us-ascii?Q?1rUGAg41H/7k4Ko90gDmyNvAWXXTcm/CjIYPtYJK+38Zf89aBv/rPmdTTDNH?=
 =?us-ascii?Q?WTfxuZ/M2unycq3GxFA3MmUW1Z7H8qTMHL5aBzuoK/Dmg9XISgBL8LWPQw8f?=
 =?us-ascii?Q?f4HtulFlaZhjYf4hsabDxqPe028DpnoSVITZ2VOu+8aFelWQuvn8Ds/HsEkd?=
 =?us-ascii?Q?lsCa14NwGlS8bnMHIb8kdkJus2hh/9X8dSQlifAEbYKcnL3dQbjTwz1SnpdY?=
 =?us-ascii?Q?psArJwYmfdFOmh0FB9kUpDFfmwf7njNNGEFHFghGMdKpCcPKKk986Dor/XU6?=
 =?us-ascii?Q?9RV+jbryMlLfWhJv8AsiFw2CQvItL0BCpilm2kC/3wAZ/l15XmuH1wHsL+AO?=
 =?us-ascii?Q?kQs7eOHf3YvZdUd00Y7H548ZXqkerXHRREhn9QdvR0EEsY4zilTh/odQAEHj?=
 =?us-ascii?Q?tzbJt6xR/9qoINzOX8Gx2CUlAh622dSWlrjmdFxPsIy5DdIRUaOmGL76UU1q?=
 =?us-ascii?Q?drczkIIZ1RIR67A5TsjriFLKFu+dCNXzGPaH92Bv7HE9ipgh0vDlQkYxnN4W?=
 =?us-ascii?Q?wkAzp8UNPVUuGsH5ID1y3H7ssC3IBFQqKGiTCraXbh4r8PYTPw5E/cEXTkFv?=
 =?us-ascii?Q?e5cWhfO8Dqbw0kz6QF9bkvFI9sbnMGzVC16wbNtyCpyVs1lwfYjuqoaEP7il?=
 =?us-ascii?Q?xYPLn4BooKjTOYD/rk467/fda9DgmyLKxIMZkmAfsdC5pllX5S0F8Vr9K9jg?=
 =?us-ascii?Q?ebT7aTc71iUBy3WIZt2p9p47cF9g9DWOjyl7PZk0AH1Fkf+iYc8cGme/lNg7?=
 =?us-ascii?Q?FZHd8yyN5Ha2FAmLJz9ClyOur7WC2AEm0YY6YIQC0KXjNn8FJG2zuUUt6APV?=
 =?us-ascii?Q?YU7YAqz8G8bmiUxxLLUYIkE7GX2smOQxMxoUU2Qpo+EVsVrUPZ2MYm6caXNH?=
 =?us-ascii?Q?hjWxr5T8v9P6b3n3re51RLZ7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54e25298-d0aa-4526-62f1-08d96e4254f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 18:49:01.9896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lh1MS2vZGv7dt0T+mnkYNWCuuAJfdigaSBs54Jb3K+j39qnHaq547V/QdWpliMR9pRU4Q5MFyX0x+kZrml2W4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3647
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3 2/8] drm/i915/gt: Add support of mocs
 auxiliary registers programming
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, September 2, 2021 9:36 PM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; S, Srinivasan <srinivasan.s@intel.co=
m>;
> Wilson, Chris P <chris.p.wilson@intel.com>
> Subject: Re: [PATCH V3 2/8] drm/i915/gt: Add support of mocs auxiliary
> registers programming
>=20
> On Thu, Sep 02, 2021 at 04:56:18AM -0700, Siddiqui, Ayaz A wrote:
> ...
> > > > +static int check_aux_regs(struct intel_engine_cs *engine,
> > > > +                     const struct drm_i915_aux_table *r,
> > > > +                     u32 **vaddr)
> > >
> > > One other concern (which is part of why I didn't really want to see
> > > this framework handled separately from workarounds) is that the aux
> > > table might tell us to program a register with a specific value, but
> > > we may also have a hardware workaround for a platform/stepping that
> > > overrides that with an alternate value.  Our workaround framework is
> > > smart enough to combine multiple entries for the same register into
> > > a single operation (if the set of bits being updated are different),
> > > or will warn if there's two conflicting sets of programming
> > > requested for certain bits. Right now it's not clear who wins if the
> > > aux table wants to program a register to value 'X' but the
> > > workaround lists want to program the same register to value 'Y.'  In
> > > theory the workaround should overrule the regular programming, but
> > > at the moment these selftests aren't checking to see if that's the
> > > case.  We may not have any such conflicts today (especially since we =
have
> so few registers that are going to be on the aux table initially), but it=
 may
> come up eventually.
> > Yes its valid point, I did not thought about it. Do you think that
> > moving to workaround will be better option here?
>=20
> I think there's a short-term and a long-term aspect here.  My opinion is =
that
> in the immediate short term we should add these two MOCS-related
> registers (one of which is a context register, one of which is an engine
> register) as additional fake workarounds.  Despite calling them
> "workarounds" that part of the code is already more of a generic "GT regi=
ster
> override" framework, and we already have a number of things programmed
> there that aren't actually workarounds.  Trying to spin up a completely n=
ew
> framework ("aux table") for GT register overrides is going to take a bit =
more
> time to get right, and I'm not sure we want to hold up the proper MOCS
> programming while that happens (especially since ADL is about to leave
> "force probe required" state and we really don't want to miss the boat on
> getting MOCS programmed correctly before that happens).
>=20
> Longer term I do think we want to rework how we handle both formal
> workarounds and non-workaround register overrides in the driver.  That's
> been something I've been meaning to work on for quite a while now, but it
> just keeps getting preempted by higher priority tasks that show up;
> hopefully I can get back to it soon.  But such rework is going to take a =
bit of
> time, both to get widespread agreement on the redesign, and to do some
> extensive testing to make sure we don't mishandle any corner cases around
> reset handling, execlist vs GuC, etc.  It will also probably happen in mu=
ltiple
> steps rather than jumping from our current design straight to the final f=
orm; I
> don't think it makes sense to make the MOCS programming dependent on
> completion of that long, multi-step process.
>=20
> I think one of Chris' concerns about re-using the workaround framework fo=
r
> setting these two MOCS-related registers is that the programming would
> wind up getting verified by the workarounds selftest rather than the mocs
> selftest (and thus failures on these specific registers may not get the
> attention they need).  That's true, but if the concern is great enough, I=
 think
> we could make the gt_mocs selftest:
>  - scan the workaround lists and ensure that the two MOCS-related
>    registers truly are present on the appropriate list (if not, error)
>  - check that the register programming still matches the value defined
>    in the workaround (if not, error); this would duplicate the check
>    also done in the workaround selftest, but that's probably fine to
>    have both tests fail if there's a programming problem
>  - lookup the programmed MOCS values in the platform's MOCS table and
>    make sure that they really have the expected characteristics (L3 on
>    platforms going forward, UC on the older platforms that we can't
>    change now for abi compat reasons)
>=20
>=20
> Matt
Thanks Matt, I have modified that register programming using workaround fra=
mework.
I'll share the new series soon.
Since we have already planned to rework on framework so let add category sp=
ecific
verification in scope of that planned activity instead of adding a temporar=
y
verification in mocs selftest.
Meanwhile programming of values are already verified in workaround.

Regards
-Ayaz


>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
