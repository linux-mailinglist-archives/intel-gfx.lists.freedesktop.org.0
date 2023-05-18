Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5545708B88
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 00:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C48310E568;
	Thu, 18 May 2023 22:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A0610E568
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684448785; x=1715984785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lIfw7eYQuDJyIIgwfxK0gEHq+53PgRaoLIKPdITrN3c=;
 b=GTHc8m/vFfWdS3EsOnPy32OKDHVclUdU/ERBjc4vlov9mqLod1tKRj/s
 Nb1OmjqN9Q/9MzaMa84Ybnlvbc6BkW103Bdr9xVGDi2i4VzPq9gHaoUAq
 OrHQgGRfVxcnKzzXepLqwSdrKIiXVZh5MCaMfpd6PoLa6QnM+oLHpJUNR
 dF6Hi1oKvB7YdCUoGIM7QFM3YczO8bxg5phFDQ3OhxYkPKDCROAvzamtm
 smdmoCOPWPIthh+GlORtYpSjbZJl7S0U5xFS8x6kjGVSiKbdPAJeZ+OLu
 16P4ojOmsZXR0FH7fJpIH/Vlh9xhfLg7KAXYRhe7JYbetoCOBQd7poRaW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="354557822"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="354557822"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 15:26:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="814493444"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="814493444"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 18 May 2023 15:26:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 15:26:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 15:26:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 15:26:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 15:26:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bx27tbhjdvIl1U004DXAKXh3RPwdhqTGlfMdkrW/sJYwCILzaIltyDiDNGxZtikUbo27SCrB7Jaxa5qzdpfd0gBafAGhbuR1701+DPuTC8EZiSsrc/4hFQfkNrdQXtawE2ROFvrJOUDBCmITKxpP3KNhRjHhurnXibG/U+KUL0MupuD/kSB7t5B4OVq0Qu5UoH2pMqLDQV2RBtitmho7BYYnQ7c5063qPuCZ8ASWc4N/RswSDlSW51JPIdgu/yd7Vaw4e13oeD4QapZXAKVrOLNiCbiYgePw7mfnF7RXcGMT9/dHRGKGojp/x199nLB7bUiOA+FyrRpjABbPrrnmwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmy4cZTuB2G729P4CFTkw22e3M8YS/FiTOyC4AWk7J4=;
 b=JvMY9WIkaXztuDW2OIPvJIK5gKR78YGcLqTC8xs2fE1qghMqtL3K7nSXqyVITUb9HkxcZqsSZXQV45XyCSOGR4vta0cR5IeqX4Si6dNNENOh7PdkrsMW/hw4vc9Chc2bhOor5DFxM+akyDx63l4tjdLeZkk2eCb1I0Z9abcWxmgsLARntJuwmvUdXHkej9fx1NY3oLaVY37nknCXgxYrA2Fru9yJE23WCijO3LLTfkt0Xw1z5CnRl3/o/9/q+JDx8uFrCFQodDixpFnavgVIu5m5ChOtY+aC1dI0V3dvOfDGS7ZPoy+r5CgH2D62AbyYLySg7BtV+ZLMgO9PCdktIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CO6PR11MB5617.namprd11.prod.outlook.com (2603:10b6:5:35c::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.19; Thu, 18 May 2023 22:26:21 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 22:26:21 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Fix expected reg value for
 Thunderbolt PLL disabling
Thread-Index: AQHZhMoXElhalj+og0O/YNF8zZ7LQ69Wre4AgAn34FA=
Date: Thu, 18 May 2023 22:26:21 +0000
Message-ID: <DM4PR11MB59717C9AA5675DFBDBE676BD877F9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230512120003.587360-1-mika.kahola@intel.com>
 <ZF5JQKK5KRo+oIXT@ideak-desk.fi.intel.com>
In-Reply-To: <ZF5JQKK5KRo+oIXT@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CO6PR11MB5617:EE_
x-ms-office365-filtering-correlation-id: 1099cb5b-735e-49b6-2ac3-08db57eee847
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fRB0HAqBzjdfxfXlSsDlnxYS+CoY+KUXAbhUXpIlHtMRL/sv+cErrc4FpuiDxDgPX2EpKUH8IaDFvjywe/3BLNufF35UXJ9StnOvZU1Qj0iPgUmeA0a4wiSzP4bnVwWa57vD7LTTy0ki9Sftzv+2QqwMyxHwOvwf7dQROLizz/SKrMc53EMgssC1ki/+U7WU4ViduBVS34JjlhAdC79cgzPd7Th4x8cCkU9H/FuFVSmbWEOKFHV1YrIqhKmuVEQwvLB0tCtSiS3DQtQXVzFlKYlBuwXpcWf01BmrK+hGwY/XE9VFo3nCEsuExF2O/FpZu1WEO4n19jau256EYemRxvv7jDGLjhmId/doV4rAWrjmhtaUplBUKwab/yCgF9rFr99/JebvbMGg1pcw2K+jKmWRilyO/0gPJc81PwUEgXeM3aYdmHLGMRZ4AQ3BC0BrtAlqlcbxFA5cTUN1bs+pC52wNB5sLCW1NxRfvqVuMsDEtFqw+EuAm9EywWIo8SYsJDbgit6VaXAGtra/7KJdVn8SVzWeliTB7lEGkp/rumeMHGw99I7gKARF7HVjPKgdEPnHfudsNZR3/Lvw8gKtGdGjnRiUAPLCC7sLCP/vDBvnJASIoGV0Xl7rSdOLwnhZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(396003)(366004)(346002)(451199021)(66556008)(76116006)(66476007)(66946007)(66446008)(64756008)(6636002)(4326008)(110136005)(82960400001)(55016003)(8676002)(8936002)(122000001)(316002)(478600001)(41300700001)(7696005)(71200400001)(33656002)(2906002)(86362001)(26005)(6506007)(9686003)(38100700002)(53546011)(5660300002)(83380400001)(186003)(38070700005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WYwwXUxnfQhmeGqDIbrVeFdGRbzabCjIswTBlryZBMc3OOCA3u61EP1tFb1c?=
 =?us-ascii?Q?zPCEDne73TRlb/Idgbrmp5XC25q/9Gp1lHwk+tQuPIpTAVqbCPIvje48QTrJ?=
 =?us-ascii?Q?7EmZKGDfL39Cb/pfS4ae0a3mBHapdl68+wCI0kdmYPgiKXgIPnVc6kSkMUNA?=
 =?us-ascii?Q?zY65zvV8M6QfPJQY565VQWsAqTd+NVSNcfKdCu4u9iExUeMTGFg7r1/D2cNE?=
 =?us-ascii?Q?Dh8KZxM713GzQOm762gitGZlQNZIMp+HmYCAzrQp+UIS5oAbd6hMYXS3At5k?=
 =?us-ascii?Q?9e063WXVpf1tzp+QYZd9/9XQM3eRmLf+zUR7YzYfFiiPfomlFw5MksfIlBF7?=
 =?us-ascii?Q?zMcwSWki/F1P0969KhmCfaFASiJZCACGyDy5tefHFHQSoa2cecnk7lI92MvQ?=
 =?us-ascii?Q?0Px4Gz04IiFsPfVkwF9sKvyNf+lRz3KezdhqTzmodjv7QDJnx/LS6S61aq/g?=
 =?us-ascii?Q?BI+XdPgTOhgBZCsarDMmb77sM0fv28Rp9hXUifNXJ1S7GcfLs1/xxQuTG5bc?=
 =?us-ascii?Q?SGp1y0ZoUk2f0bqsb3ti0Y+xUXm26xA0xnL/ivIxKiVwqqOVvoB7sZSxMVgl?=
 =?us-ascii?Q?TO965Qu9erQrrHlhCIcq3zwq0DBfdR4Z1SKIzqmboJ5+hXzkSUeFvXHacaTB?=
 =?us-ascii?Q?YmQB6vRCrDdgdjGCl8Ma/ZOpp2sqSwF+OpruY/Zcbk2EIXjcq5KFVQlX+rns?=
 =?us-ascii?Q?sculvr9w2qV0ZCimRPQnvoM1Qsy7zx54QvZgx7FppCs0VmKVqrurLvPOwHuM?=
 =?us-ascii?Q?jW5OEdGBhDRyem/CkunS5SSqGMQupOKknLx/XxX8wmL2cR1alQSwRTor/7Ui?=
 =?us-ascii?Q?hvHCzeazK+66wkU1yH0H17viz65U0uvKsUF7N25Wi5TnWRGOBUNi/8ifpKBC?=
 =?us-ascii?Q?z03yZj+4yElQ2AyoC2DoSRnlqmdwos6u9NoKZZilNNXxGsiQNuB4PsbjmBkP?=
 =?us-ascii?Q?NZcX8b+uGf7dCmj1CexKhnqAI1vwb8bMRrA1lNGtr9qNhrmQN2XPBnsRbwV4?=
 =?us-ascii?Q?60IB9pkWHwJny1gv7yLW6SmSILZTpVorW0r1NAXPLB1aGgF7Om8w5yh++d2J?=
 =?us-ascii?Q?EajCHRjhdMzErwqSING9r+AcViL0jTQdSHCNxCHB6F7fyLHJvLJl0O0gGwD2?=
 =?us-ascii?Q?+DKPLqbssEi1MS+6wdhYimUAp/Nlnbkp6jadkMKwYeQjBgyDWfnqaSDOnK4c?=
 =?us-ascii?Q?T/B6vJl7FE4AazI8Cj2smCnx8n7YzKBxur3NMnq8ShE8tF0NZWD/ZxqMFAcY?=
 =?us-ascii?Q?FupuAwrG3MOPWDvBQCyEjsFoy7mcS8Fg4piLkBPzlJamgmiIw60dGUXPxHPp?=
 =?us-ascii?Q?2GzOIzodx91SjbbP2sI86Hgtt7Murv4wdVqhhUhZQi66HUneo6nbCV7DY0XJ?=
 =?us-ascii?Q?2zwH3aZ4TOd+XyO53/Y80vSesjAKOq9O3z4F7VUOCi0aJ588uVIrtt6702KA?=
 =?us-ascii?Q?5oChaxnEB4c6r2SjeoK2Grrs/d6zk7/VX7voSu0FnepP0UfiCRvioK2VctDG?=
 =?us-ascii?Q?1yiXPiKG2i+sTMdrmVKI/IEUK87oHPgn/PoyBnwvkk4nsD4i+oToVbCSlU54?=
 =?us-ascii?Q?WW6hf5aLhAv1cr7HTYCoEtg+UDsqJNQfayfvEFeyZjfn1Cv/LOuPFN5Gphnc?=
 =?us-ascii?Q?aA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1099cb5b-735e-49b6-2ac3-08db57eee847
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2023 22:26:21.3686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UyIUDvdp93EhgU5ezH2TpToQWodn6+o+jsA4vZMClw5RNYyLnysqpTAxzxqVRsof8rzPo3Ef7Y05tQT3ETMbTjmhX469eODEbemuH4wZudQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix expected reg value for
 Thunderbolt PLL disabling
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the patch and review. Merged the patch.

- Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Friday, May 12, 2023 7:12 AM
> To: Kahola, Mika <mika.kahola@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix expected reg value for
> Thunderbolt PLL disabling
>=20
> On Fri, May 12, 2023 at 03:00:03PM +0300, Mika Kahola wrote:
> > While disabling Thunderbolt PLL, we request PLL to be stopped and
> > wait for ACK bit to be cleared. The expected value should be '0'
> > instead of '~XELPDP_TBT_CLOCK_ACK' or otherwise we incorrectly
> > receive dmesg warn "PHY PLL not unlocked in 10us".
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>=20
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index d94127e7448b..c64cf6778627 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2861,9 +2861,7 @@ static void intel_mtl_tbt_pll_disable(struct
> intel_encoder *encoder)
> >
> >  	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "0". */
> >  	if (__intel_de_wait_for_register(i915,
> XELPDP_PORT_CLOCK_CTL(encoder->port),
> > -					 XELPDP_TBT_CLOCK_ACK,
> > -					 ~XELPDP_TBT_CLOCK_ACK,
> > -					 10, 0, NULL))
> > +					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0,
> NULL))
> >  		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not
> unlocked after 10us.\n",
> >  			 encoder->base.base.id, encoder->base.name,
> phy_name(phy));
> >
> > --
> > 2.34.1
> >
