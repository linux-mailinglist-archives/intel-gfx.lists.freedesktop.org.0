Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F57C7C5F32
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 23:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5078410E1FD;
	Wed, 11 Oct 2023 21:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 194FB10E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 21:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697060286; x=1728596286;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PaBL+2y183+dkmm17R/crnUWkcNq41ZvQxqrfAvxnC0=;
 b=VkCQooPviNkrgNGxA/OBHp5Cvt2suqIuyAaJBlWku3uRVBoVvgd7CM03
 mPgNysX0nePS4OXv2RMTVIYbkkED7Vmyn+hhgYXM+gKpjHaqijh9lagQL
 qmqvSRW4UZUd7J6A3V6/E3dmMSPrk8XCeCjFSBd0x2YfMhxVIoIsQOp5a
 QtRlMeGX/aH/GWumnegJ/IwyjgmahntJLX97UE8vIPG7b4TsL/C6GwhHm
 FcXyqAav2dR5lNYlmMZJJECxQgM8o7d82uufeaagNTKeCCWy88W+OYWQh
 1yG2EcGtvSLOrJlJIZYjmJrkFdIpfJ5MSQQxHbm/hejJ9Rh3o4i/Hgi2H A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364138739"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="364138739"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 14:38:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="747613477"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="747613477"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 14:38:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 14:38:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 14:38:04 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 14:38:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NfT1uTyj2jC45WM1chC6mTJKmjXD/QB4djvBJqz8BwZcAWemQr1GsMS12o9ktbUty8X/59zRBa/04550rub3wbebay0gL2lPyQmlQZZx/2NL3Wt0VC9FgYgzNuh3mjt81isjpAaNCHzTRrtR0FEELOUmWXJEvu62EqaqS27rhp3CVr74fzwOG6l9LjbFsgP4NT55iyciExAKN6+9p+DlbH9JWUeTPqxROZEQe/iDC3WEjxRolkGK7FgP/OC7i7NxjPu7GyEaZCGYyODz402hhXMrZJ+ICFqvUUI9+iJq9NdKJtEDIXezePVn1l2uasTQIdULEU7JhZiwyz8sYNeBDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1eJh3ZMUb7a8G8f4AodFKGPm/J6tVlHUAEbCmefBo6M=;
 b=IMmCUCscLPV9KZgPngP7LDBe7vA/gkIswiVxg5R7hEWtDetcxPICp9lSCawe18w8PahQ7JdZgCGiXA92OOM9iySZ0xRdHhrEPuXJWCjeyCpl3tkVovrjE0VgywNQZJqnijMazavJDmYiYNIrRgoDUF/5ItmIZYuDSB2vURSD2p+470fNft6bIpBg1mZkfhsIcFNPykFySTO1F5jpM5njSpvOVG6LbLQLkdSSNDdiB/eaPTQSPJ1FvvfehewFzvb6ZH46JrpmHN6MBNfvXba9WeX/Zx/4Vt8LN56U1rT2n7ygHdExh3WYLxvLVsc5TwFth8b5TARVQw2J9uuPpwUoLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY5PR11MB6416.namprd11.prod.outlook.com (2603:10b6:930:34::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.40; Wed, 11 Oct
 2023 21:38:02 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::1f11:8a4b:655b:589d]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::1f11:8a4b:655b:589d%6]) with mapi id 15.20.6863.043; Wed, 11 Oct 2023
 21:38:02 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v12 3/7] drm/i915: Define and use GuC and CTB TLB
 invalidation routines
Thread-Index: AQHZ/IZyNYgtzYr/XEuhZLPx9/hubLBFHNSA
Date: Wed, 11 Oct 2023 21:38:01 +0000
Message-ID: <CH0PR11MB5444435F227B5D9BCF6CB1E3E5CCA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231011205259.2295032-1-jonathan.cavitt@intel.com>
 <20231011205259.2295032-4-jonathan.cavitt@intel.com>
In-Reply-To: <20231011205259.2295032-4-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY5PR11MB6416:EE_
x-ms-office365-filtering-correlation-id: 5ebc5391-0f7c-4d4a-b28a-08dbcaa25874
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HqbFoOVjWUmVi3YJjRwibEo8GdXERc/sN7/97Cko57X4++i13fXSUIO3J87tTl8sSyrJAww0NzDKtybdihiDmQjS3mvAzjofNgjFnEUSSla57PMTWtlc8/76kbboOceNuXIQZEXFxFhetux+Q21baTDkT0pqiUHTYykxTfHBz0BCx8QoTtUGCyHn3fP12CTYkUHeTd2UbA1gMSRQjLKNY6c6m4gCfadW9jm3jEiBUIEiU/9Z12SVDi62j7yl7+kkP6S2/uRtAIiV07doZ8EU48075Iufna9DOAYi2WYOPhGIGv2g/a/FSkK0x0aWa4yjpf+Ac4R2iy/DsUcyecYfnFcjjqLVkW0EIb2BWY+s71Nur+gxFpBZuR2yzhPfAcMampCcvOvO8ZAPQFxav/V8EzpvveT68p0w9/0Wyeq1aKuXT3izWz8oeKsZJjsIlv71RS4xuNd4yiE9x5W/HLWqvR0TDnGx2hiWeIE5Pb3F91N+y/JHtS5lrJvNEEMc+r/TRBlWIEmh4E4omiCm5hMCGtMweGBiWGN2Duuu7rZBnRRrn40/NeClwIf3+lrS80dthVKZtqOEAUEtQy2oqQeuKUZgpgxVAl+fxCM8Fy+e/kelIo0NoOGn46YJPk6DUJ8m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(376002)(346002)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(26005)(316002)(64756008)(478600001)(5660300002)(55016003)(71200400001)(7696005)(9686003)(38070700005)(86362001)(6506007)(52536014)(53546011)(41300700001)(38100700002)(76116006)(66476007)(66446008)(66946007)(66556008)(6916009)(30864003)(54906003)(8676002)(82960400001)(4326008)(2906002)(8936002)(122000001)(33656002)(83380400001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Woo4GL3KGYYGRVBthqgkgwA0+RoHW+k9x8WaA9pqra8EyTkiESQYduTmZFX3?=
 =?us-ascii?Q?Uf+1jA9iqVHFfHxrv8LOteyh39Bw6BKDPkQvuL2fnNgXyM+3wjRztliFJGc7?=
 =?us-ascii?Q?T1DSMftDSqNBDrZQC9o2aum0sbgeTCR9LmVHtHKorbYm5BQQSbZx5SgMMFdf?=
 =?us-ascii?Q?ZMGhPwoGh71OIokrmALF3l+KL6XvehJEF3qU0Jy1yWWKrdz0tNJQzbBMHunp?=
 =?us-ascii?Q?X3XVWsvE1NlTXEeLKRuLn7TAmeO9SMLNFeT+DoDXaCdj2kf6I2OF02Qlpj60?=
 =?us-ascii?Q?wpSNAr6/Hn8GuIoJEi/7T2w2ECntRq1VPNiMfrWpq5NLZgQNnnDCGJTtXHxT?=
 =?us-ascii?Q?Gz+j+uZAevsBKpvW8heQJ3xHrFSYkxs7pcikHy2sB2xF+iuV+ysK7bmuMcu7?=
 =?us-ascii?Q?rmza3uan3A8ghD6owA28a1wFnU1b6XNBrWxZoBl/mjMCFzPV/O/aEfh8kIBD?=
 =?us-ascii?Q?OLQqasItQBprjfDQq+tu+ba5wb2tLnlsVw7Dqku5o+33b4RKobhTnIC+behB?=
 =?us-ascii?Q?IOO7tBUSvl/i2eJuDaF12nf42ct50Uijjn1L6R2gpjas1Re9CyWwDp5H+5Sa?=
 =?us-ascii?Q?Po7SnVhB0wefCVxuB+tTNyQKbA8CMdvV6vTgcMHOxkpJzkf2nEBIQYN41qf8?=
 =?us-ascii?Q?khpJ4jCa0091C7V56b1CzBmwHALU07r8USq1MsW7LNHsmz491AdjyPmHOziu?=
 =?us-ascii?Q?zDtvLRNBuB+IPbLWdPly39UWJLiKDvI4QWmyZ9VMpuQ6Mmi9/cV+4B+j9PjG?=
 =?us-ascii?Q?r1fWwn9gF+lfV0aF+7encogAk/vx+K5vpE/2ENcIXEsdIDDuLnRIfoEM9FxI?=
 =?us-ascii?Q?BZ6P6SjypAMeM9K7yUy/aqmc+/5/MNA2a8CFqTG7v0+1oYTZHiHszhyPsuWs?=
 =?us-ascii?Q?WD727GFp5B45Xj8ziQ50SZSXoSyXMCkW62CDitb/lM6ZNrq+rRQxglLbJ2Is?=
 =?us-ascii?Q?QRqfmXk+hSpJUGVoxEuVhQ9GFqER1Q3ORWKSEFZ3kYWcP7ubpwxoLieVaJwl?=
 =?us-ascii?Q?gTyuIWHMLECtz+E9hFQkSy2vs3zYN0nNibCnXjQsYPhvkuLeJV74nS8JeZ1Y?=
 =?us-ascii?Q?9kkQjAFv0Ph2wLXrfeIi0xDnSvE+PF3qleRf5mE6WhSKBeC6tStoXk0aZNBs?=
 =?us-ascii?Q?QWgNAkt0YmOsr6w8D18qm1FR+3Tcqc8po2DdxDxDzooMPrWBekGe59sq8Eru?=
 =?us-ascii?Q?y2m1wzZNybYC+PT1e81D3JYIoov4jqzB2pqr4qXiqRO/B6LKEv4R+Z/M8pdS?=
 =?us-ascii?Q?DjVTcEaZT0evkg81TS2GeKrPXBedFE2kiAwlTniU/XeOVkie1o7PQZFixfL9?=
 =?us-ascii?Q?7Is3JRU0h1oPtyx+EhkQKNjAZQRidHdXPJFSe4mWIPB/Qc/RJqQltsXCEUTi?=
 =?us-ascii?Q?y52bTKfBqa24GyoZJW/CL4JZ5x6QA/60in2S2+MlSblxzcqTeoBwngunUI96?=
 =?us-ascii?Q?dL/y6KK1CNyvAmHZdujPk8XqC61fSTO8QvQDwsM7eQr/nQwfGJ4i8pBbh8Ux?=
 =?us-ascii?Q?LPReR2yeL140oWWOBO7pK/yG5MYhU5L/oOlQ5aX69Yp57tSiAFoIVMZhdm4s?=
 =?us-ascii?Q?Zi0LluzOQX7f3t+lpAA2rLijQhyo0xnMdtDBaExg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ebc5391-0f7c-4d4a-b28a-08dbcaa25874
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 21:38:02.0240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vR+T0XoDfuixC+7DJcnBne168G/aRjdji9nfD5OLWTgm1MwC/1BPGxLhzhL/33dnC0Mp4OAZGPDl2f0Bpl2fdiFG2GE0+Uba6HgQkPd63FM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6416
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v12 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Wednesday, October 11, 2023 1:53 PM
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan <jonathan.=
cavitt@intel.com>; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <ara=
vind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; Shyti, Andi <an=
di.shyti@intel.com>; Harrison, John C <john.c.harrison@intel.com>; Das, Nir=
moy <nirmoy.das@intel.com>; Krzysztofik, Janusz <janusz.krzysztofik@intel.c=
om>; Roper, Matthew D <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.int=
el.com; jani.nikula@linux.intel.com
Subject: [PATCH v12 3/7] drm/i915: Define and use GuC and CTB TLB invalidat=
ion routines
>=20
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>=20
> The GuC firmware had defined the interface for Translation Look-Aside
> Buffer (TLB) invalidation.  We should use this interface when
> invalidating the engine and GuC TLBs.
> Add additional functionality to intel_gt_invalidate_tlb, invalidating
> the GuC TLBs and falling back to GT invalidation when the GuC is
> disabled.
> The invalidation is done by sending a request directly to the GuC
> tlb_lookup that invalidates the table.  The invalidation is submitted as
> a wait request and is performed in the CT event handler.  This means we
> cannot perform this TLB invalidation path if the CT is not enabled.
> If the request isn't fulfilled in two seconds, this would constitute
> an error in the invalidation as that would constitute either a lost
> request or a severe GuC overload.
>=20
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
>=20
> The additional complexity incurred in this patch will be necessary for
> range-based tlb invalidations, which will be platformed in the future.
>=20
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>


Hrmm... It seems in my haste I forgot to include John's RB here.
I guess it's fine: this patch got updated enough that I should request
a re-review of it anyways.
-Jonathan Cavitt


> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  33 ++-
>  drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>  .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  11 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 191 +++++++++++++++++-
>  7 files changed, 295 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index 4d7d88b92632b..7d145b2d3cb17 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,37 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *=
ggtt)
>  	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>  }
> =20
> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
> +{
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
> +		struct intel_guc *guc =3D &gt->uc.guc;
> +
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +}
> +
>  static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>  {
>  	struct drm_i915_private *i915 =3D ggtt->vm.i915;
> +	struct intel_gt *gt;
> =20
> -	gen8_ggtt_invalidate(ggtt);
> -
> -	if (GRAPHICS_VER(i915) >=3D 12) {
> -		struct intel_gt *gt;
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		gen8_ggtt_invalidate(ggtt);
> =20
> -		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		if (intel_guc_tlb_invalidation_is_available(&gt->uc.guc)) {
> +			guc_ggtt_ct_invalidate(gt);
> +		} else if (GRAPHICS_VER(i915) >=3D 12) {
>  			intel_uncore_write_fw(gt->uncore,
>  					      GEN12_GUC_TLB_INV_CR,
>  					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	} else {
> -		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> -				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		} else {
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		}
>  	}
>  }
> =20
> @@ -1243,7 +1258,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  		ggtt->vm.raw_insert_page =3D gen8_ggtt_insert_page;
>  	}
> =20
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>  		ggtt->invalidate =3D guc_ggtt_invalidate;
>  	else
>  		ggtt->invalidate =3D gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/g=
t/intel_tlb.c
> index 139608c30d978..4bb13d1890e37 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -12,6 +12,7 @@
>  #include "intel_gt_print.h"
>  #include "intel_gt_regs.h"
>  #include "intel_tlb.h"
> +#include "uc/intel_guc.h"
> =20
>  /*
>   * HW architecture suggest typical invalidation time at 40us,
> @@ -131,11 +132,24 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *=
gt, u32 seqno)
>  		return;
> =20
>  	with_intel_gt_pm_if_awake(gt, wakeref) {
> +		struct intel_guc *guc =3D &gt->uc.guc;
> +
>  		mutex_lock(&gt->tlb.invalidate_lock);
>  		if (tlb_seqno_passed(gt, seqno))
>  			goto unlock;
> =20
> -		mmio_invalidate_full(gt);
> +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +			/*
> +			 * Only perform GuC TLB invalidation if GuC is ready.
> +			 * The only time GuC could not be ready is on GT reset,
> +			 * which would clobber all the TLBs anyways, making
> +			 * any TLB invalidation path here unnecessary.
> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_engines(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
> =20
>  		write_seqcount_invalidate(&gt->tlb.seqno);
>  unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/g=
pu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..33f253410d0c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,8 @@ enum intel_guc_action {
>  	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC =3D 0x4601,
>  	INTEL_GUC_ACTION_CLIENT_SOFT_RESET =3D 0x5507,
>  	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF =3D 0x550A,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION =3D 0x7000,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE =3D 0x7001,
>  	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION =3D 0x8002,
>  	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE =3D 0x8003,
>  	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED =3D 0x8004,
> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
> =20
>  #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
> =20
> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
> +#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
> +
> +enum intel_guc_tlb_invalidation_type {
> +	INTEL_GUC_TLB_INVAL_ENGINES =3D 0x0,
> +	INTEL_GUC_TLB_INVAL_GUC =3D 0x3,
> +};
> +
> +/*
> + * 0: Heavy mode of Invalidation:
> + * The pipeline of the engine(s) for which the invalidation is targeted =
to is
> + * blocked, and all the in-flight transactions are guaranteed to be Glob=
ally
> + * Observed before completing the TLB invalidation
> + * 1: Lite mode of Invalidation:
> + * TLBs of the targeted engine(s) are immediately invalidated.
> + * In-flight transactions are NOT guaranteed to be Globally Observed bef=
ore
> + * completing TLB invalidation.
> + * Light Invalidation Mode is to be used only when
> + * it can be guaranteed (by SW) that the address translations remain inv=
ariant
> + * for the in-flight transactions across the TLB invalidation. In other =
words,
> + * this mode can be used when the TLB invalidation is intended to clear =
out the
> + * stale cached translations that are no longer in use. Light Invalidati=
on Mode
> + * is much faster than the Heavy Invalidation Mode, as it does not wait =
for the
> + * in-flight transactions to be GOd.
> + */
> +enum intel_guc_tlb_inval_mode {
> +	INTEL_GUC_TLB_INVAL_MODE_HEAVY =3D 0x0,
> +	INTEL_GUC_TLB_INVAL_MODE_LITE =3D 0x1,
> +};
> +
>  #endif /* _ABI_GUC_ACTIONS_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.h
> index 818c8c146fd47..0949628d69f8b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -79,6 +79,18 @@ struct intel_guc {
>  	 */
>  	atomic_t outstanding_submission_g2h;
> =20
> +	/** @tlb_lookup: xarray to store all pending TLB invalidation requests =
*/
> +	struct xarray tlb_lookup;
> +
> +	/**
> +	 * @serial_slot: id to the initial waiter created in tlb_lookup,
> +	 * which is used only when failed to allocate new waiter.
> +	 */
> +	u32 serial_slot;
> +
> +	/** @next_seqno: the next id (sequence number) to allocate. */
> +	u32 next_seqno;
> +
>  	/** @interrupts: pointers to GuC interrupt-managing functions. */
>  	struct {
>  		bool enabled;
> @@ -288,6 +300,11 @@ struct intel_guc {
>  #endif
>  };
> =20
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
> +
>  /*
>   * GuC version number components are only 8-bit, so converting to a 32bi=
t 8.8.8
>   * integer works.
> @@ -515,4 +532,9 @@ void intel_guc_dump_time_info(struct intel_guc *guc, =
struct drm_printer *p);
> =20
>  int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
> =20
> +bool intel_guc_tlb_invalidation_is_available(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len);
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/=
i915/gt/uc/intel_guc_ct.c
> index 03b616ba4ebb7..89e314b3756bb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1142,6 +1142,9 @@ static int ct_process_request(struct intel_guc_ct *=
ct, struct ct_incoming_msg *r
>  	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>  		ret =3D intel_guc_crash_process_msg(guc, action);
>  		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret =3D intel_guc_tlb_invalidation_done(guc, payload, len);
> +		break;
>  	default:
>  		ret =3D -EOPNOTSUPP;
>  		break;
> @@ -1213,9 +1216,17 @@ static int ct_handle_event(struct intel_guc_ct *ct=
, struct ct_incoming_msg *requ
>  	switch (action) {
>  	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>  	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>  		g2h_release_space(ct, request->size);
>  	}
> =20
> +	/*
> +	 * TLB invalidation responses must be handled immediately as processing
> +	 * of other G2H notifications may be blocked by an invalidation request=
.
> +	 */
> +	if (action =3D=3D INTEL_GUC_ACTION_TLB_INVALIDATION_DONE)
> +		return ct_process_request(ct, request);
> +
>  	spin_lock_irqsave(&ct->requests.lock, flags);
>  	list_add_tail(&request->link, &ct->requests.incoming);
>  	spin_unlock_irqrestore(&ct->requests.lock, flags);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_fwif.h
> index 123ad75d2eb28..8ae1846431da7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -22,6 +22,7 @@
>  /* Payload length only i.e. don't include G2H header length */
>  #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
>  #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> +#define G2H_LEN_DW_INVALIDATE_TLB		1
> =20
>  #define GUC_CONTEXT_DISABLE		0
>  #define GUC_CONTEXT_ENABLE		1
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2cce5ec1ff00d..cf145e5c4e632 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_conte=
xt *ce, intel_engine_mask_t st
> =20
>  void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask=
_t stalled)
>  {
> +	struct intel_guc_tlb_wait *wait;
>  	struct intel_context *ce;
>  	unsigned long index;
>  	unsigned long flags;
> +	unsigned long i;
> =20
>  	if (unlikely(!guc_submission_initialized(guc))) {
>  		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1826,6 +1828,15 @@ void intel_guc_submission_reset(struct intel_guc *=
guc, intel_engine_mask_t stall
> =20
>  	/* GuC is blown away, drop all references to contexts */
>  	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	xa_lock_irq(&guc->tlb_lookup);
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
> +	xa_unlock_irq(&guc->tlb_lookup);
>  }
> =20
>  static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1959,54 @@ void intel_guc_submission_reset_finish(struct inte=
l_guc *guc)
>  static void destroyed_worker_func(struct work_struct *w);
>  static void reset_fail_worker_func(struct work_struct *w);
> =20
> +bool intel_guc_tlb_invalidation_is_available(struct intel_guc *guc)
> +{
> +	return HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915) &&
> +		intel_guc_is_ready(guc);
> +}
> +
> +static int init_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	int err;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return 0;
> +
> +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> +
> +	wait =3D kzalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait)
> +		return -ENOMEM;
> +
> +	init_waitqueue_head(&wait->wq);
> +
> +	/* Preallocate a shared id for use under memory pressure. */
> +	err =3D xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> +	if (err < 0) {
> +		kfree(wait);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void fini_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	wait =3D xa_load(&guc->tlb_lookup, guc->serial_slot);
> +	if (wait && wait->busy)
> +		guc_err(guc, "Unexpected busy item in tlb_lookup on fini\n");
> +	kfree(wait);
> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>  /*
>   * Set up the memory resources to be shared with the GuC (via the GGTT)
>   * at firmware loading time.
> @@ -1966,11 +2025,15 @@ int intel_guc_submission_init(struct intel_guc *g=
uc)
>  			return ret;
>  	}
> =20
> +	ret =3D init_tlb_lookup(guc);
> +	if (ret)
> +		goto destroy_pool;
> +
>  	guc->submission_state.guc_ids_bitmap =3D
>  		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>  	if (!guc->submission_state.guc_ids_bitmap) {
>  		ret =3D -ENOMEM;
> -		goto destroy_pool;
> +		goto destroy_tlb;
>  	}
> =20
>  	guc->timestamp.ping_delay =3D (POLL_TIME_CLKS / gt->clock_frequency + 1=
) * HZ;
> @@ -1979,9 +2042,10 @@ int intel_guc_submission_init(struct intel_guc *gu=
c)
> =20
>  	return 0;
> =20
> +destroy_tlb:
> +	fini_tlb_lookup(guc);
>  destroy_pool:
>  	guc_lrc_desc_pool_destroy_v69(guc);
> -
>  	return ret;
>  }
> =20
> @@ -1994,6 +2058,7 @@ void intel_guc_submission_fini(struct intel_guc *gu=
c)
>  	guc_lrc_desc_pool_destroy_v69(guc);
>  	i915_sched_engine_put(guc->sched_engine);
>  	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>  	guc->submission_initialized =3D false;
>  }
> =20
> @@ -4624,6 +4689,128 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx=
_id)
>  	return ce;
>  }
> =20
> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seq=
no)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->tlb_lookup, flags);
> +	wait =3D xa_load(&guc->tlb_lookup, seqno);
> +
> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		guc_dbg(guc,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len)
> +{
> +	wait_wake_outstanding_tlb_g2h(guc, payload[0]);
> +	return 0;
> +}
> +
> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long time=
out)
> +{
> +	/*
> +	 * This is equivalent to wait_woken() with the exception that
> +	 * we do not wake up early if the kthread task has been completed.
> +	 * As we are called from page reclaim in any task context,
> +	 * we may be invoked from stopped kthreads, but we *must*
> +	 * complete the wait from the HW.
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout =3D schedule_timeout(timeout);
> +	} while (timeout);
> +
> +	/* See wait_woken() and woken_wake_function() */
> +	__set_current_state(TASK_RUNNING);
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc,
> +				   enum intel_guc_tlb_invalidation_type type)
> +{
> +	struct intel_guc_tlb_wait _wq, *wq =3D &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	int err;
> +	u32 seqno;
> +	u32 action[] =3D {
> +		INTEL_GUC_ACTION_TLB_INVALIDATION,
> +		0,
> +		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
> +			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
> +				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
> +			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
> +	};
> +	u32 size =3D ARRAY_SIZE(action);
> +
> +	init_waitqueue_head(&_wq.wq);
> +
> +	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
> +				xa_limit_32b, &guc->next_seqno,
> +				GFP_ATOMIC | __GFP_NOWARN) < 0) {
> +		/* Under severe memory pressure? Serialise TLB allocations */
> +		xa_lock_irq(&guc->tlb_lookup);
> +		wq =3D xa_load(&guc->tlb_lookup, guc->serial_slot);
> +		wait_event_lock_irq(wq->wq,
> +				    !READ_ONCE(wq->busy),
> +				    guc->tlb_lookup.xa_lock);
> +		/*
> +		 * Update wq->busy under lock to ensure only one waiter can
> +		 * issue the TLB invalidation command using the serial slot at a
> +		 * time. The condition is set to true before releasing the lock
> +		 * so that other caller continue to wait until woken up again.
> +		 */
> +		wq->busy =3D true;
> +		xa_unlock_irq(&guc->tlb_lookup);
> +
> +		seqno =3D guc->serial_slot;
> +	}
> +
> +	action[1] =3D seqno;
> +
> +	add_wait_queue(&wq->wq, &wait);
> +
> +	/* This is a critical reclaim path and thus we must loop here. */
> +	err =3D intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDA=
TE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
> +		guc_err(guc,
> +			"TLB invalidation response timed out for seqno %u\n", seqno);
> +		err =3D -ETIME;
> +	}
> +out:
> +	remove_wait_queue(&wq->wq, &wait);
> +	if (seqno !=3D guc->serial_slot)
> +		xa_erase_irq(&guc->tlb_lookup, seqno);
> +
> +	return err;
> +}
> +
> +/* Send a H2G command to invalidate the TLBs at engine level and beyond.=
 */
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
> +}
> +
> +/* Send a H2G command to invalidate the GuC's internal TLB. */
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>  int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>  					  const u32 *msg,
>  					  u32 len)
> --=20
> 2.25.1
>=20
>=20
