Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CCC787325
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3063110E579;
	Thu, 24 Aug 2023 15:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5EC10E57C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692889278; x=1724425278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mFHJFSoBcwdsc5zG6kCzwVEEo1/mKAY3clraxRgHaiw=;
 b=Ys/YECHi5fKTlMTMNfp72KpISpcc2GkVytA0Tuf5to+ZVCACxYsTsFQ6
 YIPKiA12a7ei3Q/SIqejjjWCUKIsTdQNqo+3WixrcvyTjIKm+G5TJ5yoG
 ush/MA2xV1GPIrDfMod4HSJ/B4BR07zQ4JXiHY1y6BTrVIlB1VqOI6pPj
 +gVNWZ08Ij1CCObRi86kenl4N9SISR+Pe9qrRN/TlUOvFcJJcTY6TRL/c
 JeTf8AKINlhTe5C6CxbVCfqpQVcBaBRyWW12tWZftTBFlc+qF8VE/pul6
 Z3ic6SUWEIwaYtG3TckLG+JUIiefOWk/XyLNxKQvJ7+TsXE1r4WYNCzct A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="353995044"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="353995044"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802569764"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802569764"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2023 08:01:17 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:01:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:01:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:01:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivpWyPRXL5qKXlLSoZZhIgxkLJD9khpWn6PGoSgi8dGysG2fxhmTlSDLxOxst4w9AmMJIQcqB2FNxIYwvVqcEfB0v3+Xt9r324DGr6VBkX5/FupK1tHI1Q7017KZinK47z9iZn3KoEa0oP8fSWJpK83bppAyxsL45e8UJfdTz6gjtLVVDbHbb0UMFZJmYGiaNiotEVAURozvXAYaJnjXZDGNl7ShIWqlhKujiBsZGQgYhTZGp4CeLAovIH4GSVgv+MHfBvimGGtwo7ZliGyxNd32YW+5PNVhoqLKVARM5cHjJsap8r5orqkXqdIyyokRjPK+IS4aAe2xdT339Krb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B2EDoW1lpAGmvRQLGpxEg3vm2mZHaWzBOA7K1wfEeS0=;
 b=TIYJorGem2q52hz2Gp/FpdTwIa9x3Eqnw3eUS3ReAXKvoxOOIW0V7p8RLcrvWtk480f/SVrVfcrjJxsbGiIVYU0oiseHUD0XkHPFgff8Z8fz31V1ikKXFDTAjZU4q/CZ/VWCEAjEw26rr7ErDy9DOsJchACP6kmfh4HZIFNvMpmDbYbAX8r4p8ZldYemN2VgruFx97Tpak9ka+6u2V9pIKxUVlNZGP9iieJhgwCc4rJ7nNgUAxzCzDfg3Bs9zyicKicmZwF8FKcJf1YdtVlFLpSEqKTR0CaR2/XfET6mD8a0zKOyJB5eQZm2MjysSdmeiCf4c6VC4DuvIBRpZvkwCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:01:12 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2310:f2f4:2f8c:83b4]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2310:f2f4:2f8c:83b4%6]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:01:11 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
Thread-Index: AQHZ1fRMlrKXvfA/uEK72cMIDcdm2q/5iaKAgAAAkyA=
Date: Thu, 24 Aug 2023 15:01:11 +0000
Message-ID: <CH0PR11MB544439ED52E4D3A7DB87D851E51DA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
 <20230823185104.1994138-2-jonathan.cavitt@intel.com>
 <ZOdu9dtMSeoErFFx@ashyti-mobl2.lan>
In-Reply-To: <ZOdu9dtMSeoErFFx@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CH3PR11MB8210:EE_
x-ms-office365-filtering-correlation-id: 892b5ebd-0f04-43a4-6772-08dba4b2f471
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mj9g1vlUZrtiaugftljtS00bsLDI+TP3kvYwpx4fDEyIt1n5dOSndzlBr7Do0DbeLQR4U7JtBTgqVUxRv6hLff3dmHivgrl2iGD2taWucoaXvFsSa+7fJSCAmFsoS7mowQACAhzjjbhirZaNUjkcxUzk/XHBp4RmRt81AX2L92rCLonUs8dvPkiYQdbDJCLC3LsCd/DabrWOvmcxwcVqORK+u+VrKKkz7G9lJF5QExKkCNFq8CP3fxilCJDW3ry6USUGBM7UhabVrhOTJpabgYQ9yVVN8LlWEIWFyGzcNVzwg8/4x1TomJMMObnuqaK8/T56UBD7aGRtQDviYMol2Og07P2EVKRP6CPxcM6BnnSxM7aomgSA0MiQnAC7K+SY6tXtVWDnEpzPi2OwtEPpIl/zB8N7GTfWxdo6irrWKJ4XDjIXYi1rj/4I2LfEfiyZrQlDE4fFO9ICA3b37zQEO2T5xEQ/lANgOICGL0LON+btisgAmB18hb3YUIraLgRtEewMgRiQT8YcZgfXMQkAs/3vMiT9tqdpQdsDM/+gc9Y6CC2Nu/L/Z3zYwsZuzqamXY7KUMaN1FtMaS4Cn/G5CmeQIjlcEyZYfnVtiEsrQ/OhOkqvohdt+ZeNliM2SKVR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(186009)(1800799009)(451199024)(66476007)(64756008)(66446008)(54906003)(66946007)(66556008)(76116006)(316002)(6916009)(82960400001)(122000001)(478600001)(26005)(55016003)(38100700002)(38070700005)(33656002)(71200400001)(41300700001)(53546011)(7696005)(6506007)(86362001)(2906002)(9686003)(4326008)(8676002)(8936002)(83380400001)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8alkfz6DXh7MqJN/6mktwcfC+/LcOxbPNHC90m9KWU0NX5GcGMKfMXv9MdGa?=
 =?us-ascii?Q?smdI4NuTLsKRjce/BAqzYSqOXwEYMsa9zt+PadZhX75ZsFwMB2AW3yL+ZG5a?=
 =?us-ascii?Q?PzxuGxQAYA2vdPM7Dpllwig1f11Z50Q2xeg3yAwwI+7BIh6P+1/2uA5lvDGB?=
 =?us-ascii?Q?3FV6qZao9tVbhJM3brvitBUEzRCgDJWuqtWgIimrALt10k4MR16dlUcJwC/A?=
 =?us-ascii?Q?XNdriX5R7GWh55HOj1k594AUZDCtUJgBvqKK1/YbOaE+705kZ2wlRzOK/zVk?=
 =?us-ascii?Q?z/ou0J/aeA7ecHL3r5F+bmUAprTiTLkVqDDkQl2ZCJbyMAQ4Fxyykx9bJ2uF?=
 =?us-ascii?Q?YPiGX9JIOnMKDO3Ci6pk/iKlkE+FCmSQewaHf3eblTPKSgkTruSxaHmfdLsz?=
 =?us-ascii?Q?FzmzC0hMalB33ED19kfx0K7JiUQ/iwbBQr7qOElQQLHb15ToXaj6JoQ5Wl9P?=
 =?us-ascii?Q?dacWaW5K4WxFT63yk8AMWXiTkf6WkWglEFwIiN+1+z6p2Y4BPNfyx6Wq5+Yh?=
 =?us-ascii?Q?3ix/YjMgMHJU3llXiuwqDEN7m4V1AoOo167jROUj8L0T7Rp6JOlgluEO01iZ?=
 =?us-ascii?Q?SuxdzZZv9yO/0jqOU4Sb0IyyDoDCfACw4tjMoAuyLIthm6aPQt06hnGYwaxs?=
 =?us-ascii?Q?sv9Jd6WLNVk9nUAG99S7zENPNvwTDHJjE6Q/kDanswSNQ8iz6rRa/ZCRDjIW?=
 =?us-ascii?Q?SjSABkblKB6TmvA8Msa3mopdWox50G2++zW45s6sBIKB2nZkBLTon4Z9KMQn?=
 =?us-ascii?Q?jb1FNbqVsH6St1aOfbhGLCTM8okrVOfD//6CbeVeIDWrCjHggHX7gnw/CPbR?=
 =?us-ascii?Q?0MXu/wLwlLqC2ouy6xBDepHXnskClIvQEjfXBSS5AYpfbkaO9DaQ1wpStC0h?=
 =?us-ascii?Q?Z2Mrx9lRmk343wgCKje1NeVTFXKoUwiN2xdQBk9KVNm+/W9yewLajUBfRnnp?=
 =?us-ascii?Q?gvga5Bu27FAKkmn+iIU2ttN3imXr8wPxgv7Xm20xI0vTnp2HHG1P1KLbEy+B?=
 =?us-ascii?Q?bZPNCN9P7syn+Eq6ONrdqbRgW07/P4nL8goDb1BRTyB61Yuu0SQmgvKKAFdI?=
 =?us-ascii?Q?OnRGHbN6xmuqPZbTyHE30YgplEycdBFz4pvTGVROOCWJfvVbpBt1MK2ASM4d?=
 =?us-ascii?Q?njbERk7kWuR4/xVMF3amxS2KuVHV7bfVJyi7tjZHDmAEBPWqXZjsp6KQr6S/?=
 =?us-ascii?Q?v7rINL8ptHx3HEotpfN60bpTuTlQ4TeleaVph8mRtgajh+s+EM1pPNcZy/Tr?=
 =?us-ascii?Q?ctCCH0U3NtkfdAHqdOaWv7ZBr6G9CpH2TgGxpDWKSyj1EAJT+iJDnjaO22Md?=
 =?us-ascii?Q?FjQcpsJ/KJi5Hp7u4/EyKtaGMDnm1BYFIlC8+owMMYeRPPO8PoaqK0tY0uS3?=
 =?us-ascii?Q?X+H9KeK005XOyM2l9+MpEXHTQ9KrXpmqEtYhN0Ubs60OCUUpkcbY8chguHUh?=
 =?us-ascii?Q?j3iDmlngfQCumf/s52ND+4jomcCw3Thg12qSiLZiMiJWtp/6G1GXOi2UDnyR?=
 =?us-ascii?Q?c47ODuyDSeOcwlsUIWVojQVzlmNJK+M0kX8ep6WEfqzifjLmuqQk7YGHiEkl?=
 =?us-ascii?Q?w2JWRWSeeysPYnrwPsO4rDGdT7XYJfIX2Tdu6PaE1+MaX0RGS5GjDalllY6M?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 892b5ebd-0f04-43a4-6772-08dba4b2f471
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 15:01:11.5003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EFu6l5e4NL9uy1Aj8oeiQUrdB5LcrEEB8WqB7qERWrimFBQVMGJmGV8jW/51D3egpeLVrnp20tUrwhVnXtuuHgqgXCVw7OBkPA3cKFuRHFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Germano,
 Gregory F" <gregory.f.germano@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Mistat,
 Tomasz" <tomasz.mistat@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Andi Shyti <andi.shyti@linux.intel.com>=20
Sent: Thursday, August 24, 2023 7:54 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Mistat, Tomasz <tomasz.mistat@intel.co=
m>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Germano, Gregory F <gregory.f.g=
ermano@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; Das, Nirmo=
y <nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add WABB blit for Wa_1601=
8031267 / Wa_16018063123
>=20
> Hi Jonathan,
>=20
> few little things...
>=20
> On Wed, Aug 23, 2023 at 11:51:03AM -0700, Jonathan Cavitt wrote:
> > From: Nirmoy Das <nirmoy.das@intel.com>
> >=20
> > Apply WABB blit for Wa_16018031267 / Wa_16018063123.
> > Additionally, update the lrc selftest to exercise the new
> > WABB changes.
> >=20
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
>=20
> As the sender of this patch, your SoB should be last and you also
> need to add Nirmoy's SoB above yours.
>=20
> (Tags should be added in chronological order)
>=20
> [...]
>=20
> > +static u32 *
> > +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
> > +{
> > +	/* Wa_16018031267, Wa_16018063123 */
> > +	if (ce->engine->class =3D=3D COPY_ENGINE_CLASS &&
> > +	    NEEDS_FASTCOLOR_BLT_WABB(ce->engine->i915))
> > +		cs =3D xehp_emit_fastcolor_blt_wabb(ce, cs);
>=20
> I thought the trend was to have things like:
>=20
> 	..._needs_wa_16018031267()
>=20
> But we don't have a unified system yet
>=20
> > +	return cs;
> > +}
> > +
> > +
>=20
> two blank lines here
>=20
> > +static void
> > +setup_per_ctx_bb(const struct intel_context *ce,
> > +		 const struct intel_engine_cs *engine,
> > +		 u32 *(*emit)(const struct intel_context *, u32 *))
> > +{
>=20
> [...]
>=20
> >  static u32 *
> > -emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> > +emit_wabb_ctx_canary(const struct intel_context *ce,
> > +			    u32 *cs, bool per_ctx)
>=20
> just a little alignment issue here.
>=20
> >  {
>=20
> [...]
>=20
> Are the failures from CI coming from this series?


Yes.  This series has several failures associated with it, such as a module=
 load failure for
DG2/ATSM, and several failures in the new live_lrc_per_ctx_bb selftest.  I'=
m not certain
what's causing either set of failures, to be honest, so if you have any gui=
dance on what
might be incorrect in the way I'm setting up the PER_CTX_BB, I'd be willing=
 to try just
about anything.
-Jonathan Cavitt


>=20
> Andi
>=20
