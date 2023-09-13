Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC21B79EE44
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 18:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0193710E125;
	Wed, 13 Sep 2023 16:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACA610E125
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 16:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694622637; x=1726158637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BdHKJ8m+3eeFX68jJWw0cbwEj8m7TjpbPhtD0ZjBXH8=;
 b=Dgbb5GUvy6v5E9xJvlk/Y0koctYJY6xGOI4DoBEET6GoTIMnRZ1+Jygw
 JNbOGbGAHqCFeRX3NuCQPethxmwrpvLSYgMT0JSxcM+N4oufguOnKC+nv
 aRcPyMZSlhjsN+5HRQx7LXZPKbJtMvff1LLnsnlBjr5GOLISQnnSbIv+Z
 K/Mw9IimRrKe1xkT3OZn+06ev7EE9bLn4Fw71Qvgvf7pCf6RIbQTFBN+x
 Vu4IhqDkRAt5GJZZr3/4qx5OE8zquJ6oZ0guAIUH5mgfNWVHsblnylh1n
 337gofaLyjv6tQpEbXz9GznsIxKQkBESP7Ep4rOf3KGU5sF58/i4SWGTx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="358143861"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="358143861"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 09:30:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="917892399"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="917892399"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 09:30:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 09:30:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 09:30:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 09:30:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EthLXiT5sqbuSYKs/4O8IHCwgIWIj/abegFaVaJ8twCT4YwyDU8xr2BOOqRn/wlBemaPG0gpq7JbsywCGnckYbYYMn+tl64XJb4fwgj5oycScAGrd43E/N+HPMaWcX7ef9Z3USk3aBOoPuBmYdOExuJrWgPBOA2k6kuCZFDs1KL3fI+w9iDOhF3VLAm4aKKQ93M5wRWgnJIb+Tht32mn7iqVx4hEDPy4UaDWbg+kNXkJwhic7ri6kDytp5N3SpQXBF94p2SRcKv2WJgn0x+WxlGb3zRNI3KjZJINmYjkj1AD4u3oxnNTaRrYRYnWoNRCWM7KW7qPIzqGMoLBCJtaag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QgWJ3IezYyearjzjsV1yrb48wMFaVyGgvdLcacIRszk=;
 b=n2nUTPpy1Ncfz3vUpMhSF99mjld6oBtIg+S6hdeKrhVCO5MTbpzzN+x1I4XRq5pg/IuVIavplwps9Zfa9MZE75ug+/TrRQK4oaEI1AYDSn/MLWv1mtySUm70niLZr/3sPikABT1rZBXbquVynuN6oIw3oOTufkXr7fKOKtv026toJJMIKKrzJgMoMC8zbsgLujOxPfHyCqPyvCC6K1X2gl8FUaFBwNkEubvYM1PMv8bVGJ5hTSUaXPde0/O8Ahr70KNhOcs5eSAAoSMnrE13VerbQnVj7lLlKQ6nPk92OCuP5by8QYTrFUjITHnlXPFv51CaawS10rMm563ietuF+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by IA0PR11MB8335.namprd11.prod.outlook.com (2603:10b6:208:493::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Wed, 13 Sep
 2023 16:30:34 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 16:30:34 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/7] drm/i915: Create a kernel context for GGTT updates
Thread-Index: AQHZ5kOaHrt3biTn9Ey2hOqfK1D2ObAY8mtg
Date: Wed, 13 Sep 2023 16:30:33 +0000
Message-ID: <SA1PR11MB6991B337C78C5D409B35D6A892F0A@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
 <20230913130935.27707-4-nirmoy.das@intel.com>
In-Reply-To: <20230913130935.27707-4-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|IA0PR11MB8335:EE_
x-ms-office365-filtering-correlation-id: e4b3da53-9b3e-490d-9d47-08dbb476c0fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4qMzMwPWQLD0o22VAvvbduDDupGnyRfqIsncjsBJzckDj6ebKCdwhXorfTl+bevYDraI8PrLlwSlie7z2vhtV95gxIKiUPPC++6kyWKJHACx1pVd/ZM9ftQIY0WvFvfB1BAkosVi8EhIyDztr2TYADVpNy7Oiz+RYt0HXr9XnE4oxsBnuD2rxCcbK2HCgBM/1XJpMc97knaQFARDC3uf2/ph0ReS2+K4asWHUwEeJDL0wyLhGt8N6BFqqQ2rxg3HmbrUVwKGapjTt458UuyA4c2Qf+PdaT963H89SEQHtaxerY7pzSn8d+gsxu87NK1wpXEerjiSSxR66FGcNf3CNU7EGjiGbp/Dr8iwZzY5n9Hf/LpX0xZGT+uMq/Clh2L8CzSmGG3H0gMwFadaGCClpa2/TmBkqJKC9j3TpHK4uSWDhpsHioZ5kMz8DrDiDSXykicJ42HGgWDXS2biPAMHTJ3d/CRMnIuokYj1v4dJWUP9JQ5O4iDohU35Dd0l7T/Gl5A4UbtYg8U590Ufaxx9izxHf5E8dCrk5wwjA8vfHJl+G9Rhm6yy74q2US7iIjgghTLnVl9FbRsagYxygYFmRc9AR+t38DnqSCeNtnVRBQGRTz54DjMjEKGsGkbfmyM6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199024)(186009)(1800799009)(122000001)(86362001)(478600001)(82960400001)(5660300002)(54906003)(64756008)(66946007)(316002)(66446008)(66556008)(76116006)(66476007)(38100700002)(26005)(38070700005)(110136005)(55016003)(33656002)(41300700001)(4326008)(9686003)(53546011)(83380400001)(15650500001)(6506007)(8676002)(7696005)(8936002)(52536014)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i2mADiplaMsXi36l67Ga3O/+z3Onq3l9aCad47EaBiBPjpd/gVaqXsSjJDgz?=
 =?us-ascii?Q?okTxA5RDJn7kKnbMMwCtW4PyU1/LXJBk7vjYe4obJJ6BD8iyfi0b9cPxSc6x?=
 =?us-ascii?Q?sXlScU9nGNekXkBsxbJ5mt1Hg0Q/+9OS6nWjax+Uwuz4t18TJL5emU+qIK/o?=
 =?us-ascii?Q?QRuNF347al6SQW2w8deDYD5UGDUBRsiCjnRPfEPfmt0nYZiKqMs3rSvzAAGK?=
 =?us-ascii?Q?ET2PePtfq7+P3sizG0ub7tM5EJSAIUgOk9pYZCCYNyC3bLP9tjtN/v+3ILrS?=
 =?us-ascii?Q?0P9aXAegaxG15lpd7E2ZOFdvl/VPAezoyTqw9ZQIwh7Wi/JL/cv8Ns/P4rZf?=
 =?us-ascii?Q?BxPhKB0zofobi6FVZHnTMyr+wSdR/2Ak76yDOXuLoDmoZbBDb+Qqdmi4DlVq?=
 =?us-ascii?Q?qHJ6b6Y71z2tvIjBybPeGfM091IqMT1szPJl7b4If8Nu+V+YzPCYqstTrzt6?=
 =?us-ascii?Q?aMyRlkFOL8aIfHsWACVYST/FQZNcfax6xlHP3gh8ELKGwTTzEctTvyBiRwyM?=
 =?us-ascii?Q?1vIPyfmpEXKvdHe7a6TsI80pxz/wfChLBEf+Ao0Cud24zZRedg0AAsq09Vsn?=
 =?us-ascii?Q?calNUFYZfcfU0lKtc6dIwCHjZRLwAb2UA6QG7Mmu4bp+eMgxolk6oez21bmr?=
 =?us-ascii?Q?9U4/Y67E1QEXg4gpMTdCJn39VxVVb8XZ9xriJsp7ZNHVUoiDJ+Spa0WQqDeb?=
 =?us-ascii?Q?ykNJDyBmYXAbcuuuvuwO7f1hsu6/nzLOAKLNU4iquftJZ7q4b08gKa7WLjyL?=
 =?us-ascii?Q?5sW/fE4pWSXRyxV/rkfxfF7RzpOu/ay+agwd+3MA7D3RjTnlaBr177RsUPbN?=
 =?us-ascii?Q?kGmvk38Ln9rhHjsPG0M7LrD2M9vyh9EqLsOCdmKmHbzcYUIyBuUEGGZ/qpwv?=
 =?us-ascii?Q?i+EDlghebVqn2RbJ1sRhQmCZL+SGy3FReHCTmg6zaV5UtdRQVlUUru9dz/C7?=
 =?us-ascii?Q?ErsZv1xfXYgmB89JWouChn+hROyMHRHjwFYqMwHsRsqruwBQVBZUS5+HVGSI?=
 =?us-ascii?Q?9/FDeUDBsbB8USYxcGVlYCym54SqFX5Q31nXq8FgDjfbDGU+TOZgM7DD9d6L?=
 =?us-ascii?Q?tRDP8YCzPvZvmQzMqHBCo7vz8i5w3UomCkjf5s2IPytMqXF8bAypMKxeI3gH?=
 =?us-ascii?Q?u4cSr0zM19ZgUkBMq7uhGEDweUekNYjb1BRX6mtdbDKdDNRWcE7vpMNE86Jy?=
 =?us-ascii?Q?xLz4DyGsbCNJAUO6nctdhJQ4XdZeKpax4x0K9TjeZlajUqun+pBdPb2RJgBf?=
 =?us-ascii?Q?KtEAqWo3flbUC4TCItCK+BhU/qiq8H/sKLX48dHRvZFYElYwkk1+Qlz8hYp/?=
 =?us-ascii?Q?Gb20/DAExAqvVQoYvWo/S53HedOiGx8dmrE/ClkhNcdZy2qjMxTgH55grGBL?=
 =?us-ascii?Q?qOsGG1KRS1QQl6UYyPexO3P2nUgGqQTnJYnbPB61bAWKgn6QDnuP45gR7TP5?=
 =?us-ascii?Q?oz6/xq3FPvPMJJiLef/weLiZ1rT+U8HLvs89LXMfP2Fry9Z57/t4PA2KtpbG?=
 =?us-ascii?Q?yABVugk3Ct+2PGKTDUtFEyyCWkWYhWfk99vtJJgm3BFdYuDwO271wIdqKP/g?=
 =?us-ascii?Q?Zk02KBW2lolmtXyxqtI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b3da53-9b3e-490d-9d47-08dbb476c0fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 16:30:33.9675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SuFzLWkxqUshSK5zZS9Fh4CR5ano0/ck0NNaFxFkutXrI3byjnUb7m690oSZIZkxHvVg46XeNYvsVUto46XlKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8335
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Create a kernel context for
 GGTT updates
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: Wednesday, September 13, 2023 9:10 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piork=
owski,
> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; M=
un,
> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [PATCH 2/7] drm/i915: Create a kernel context for GGTT updates
>=20
> Create a separate kernel context if a platform requires
> GGTT updates using MI_UPDATE_GTT blitter command.
>=20
> Subsequent patch will introduce methods to update
> GGTT using this bind context and MI_UPDATE_GTT blitter
> command.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h       |  2 ++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 33 +++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
>  drivers/gpu/drm/i915/gt/intel_gt.c           | 18 +++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h           |  2 ++
>  5 files changed, 57 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> b/drivers/gpu/drm/i915/gt/intel_engine.h
> index b58c30ac8ef0..40269e4c1e31 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *engin=
e,
> int reg, u32 value)
>  #define I915_GEM_HWS_SEQNO		0x40
>  #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO
> * sizeof(u32))
>  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> +#define I915_GEM_HWS_GGTT_BIND		0x46
> +#define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND *
> sizeof(u32))
>  #define I915_GEM_HWS_PXP		0x60
>  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP *
> sizeof(u32))
>  #define I915_GEM_HWS_GSC		0x62
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index dfb69fc977a0..52a24f55cb57 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1419,6 +1419,20 @@ void intel_engine_destroy_pinned_context(struct
> intel_context *ce)
>  	intel_context_put(ce);
>  }
>=20
> +static struct intel_context *
> +create_ggtt_bind_context(struct intel_engine_cs *engine)
> +{
> +	static struct lock_class_key kernel;
> +
> +	/*
> +	 * MI_UPDATE_GTT can insert up to 512 PTE entries and there could be
> multiple
> +	 * bind requets at a time so get a bigger ring.
> +	 */
> +	return intel_engine_create_pinned_context(engine, engine->gt->vm,
> SZ_512K,
> +
> I915_GEM_HWS_GGTT_BIND_ADDR,
> +						  &kernel, "ggtt_bind_context");
> +}
> +
>  static struct intel_context *
>  create_kernel_context(struct intel_engine_cs *engine)
>  {
> @@ -1442,7 +1456,7 @@ create_kernel_context(struct intel_engine_cs *engin=
e)
>   */
>  static int engine_init_common(struct intel_engine_cs *engine)
>  {
> -	struct intel_context *ce;
> +	struct intel_context *ce, *bce =3D NULL;
>  	int ret;
>=20
>  	engine->set_default_submission(engine);
> @@ -1458,6 +1472,17 @@ static int engine_init_common(struct intel_engine_=
cs
> *engine)
>  	ce =3D create_kernel_context(engine);
>  	if (IS_ERR(ce))
>  		return PTR_ERR(ce);
> +	/*
> +	 * Create a separate pinned context for GGTT update with blitter engine
> +	 * if a platform require such service. MI_UPDATE_GTT works on other
> +	 * engines as well but BCS should be less busy engine so pick that for
> +	 * GGTT updates.
> +	 */
> +	if (engine->id =3D=3D BCS0) {
> +		bce =3D create_ggtt_bind_context(engine);
> +		if (IS_ERR(bce))
> +			return PTR_ERR(bce);


Do you need to destroy ce before return?

Oak
> +	}
>=20
>  	ret =3D measure_breadcrumb_dw(ce);
>  	if (ret < 0)
> @@ -1465,11 +1490,14 @@ static int engine_init_common(struct intel_engine=
_cs
> *engine)
>=20
>  	engine->emit_fini_breadcrumb_dw =3D ret;
>  	engine->kernel_context =3D ce;
> +	engine->bind_context =3D bce;
>=20
>  	return 0;
>=20
>  err_context:
>  	intel_engine_destroy_pinned_context(ce);
> +	if (bce)
> +		intel_engine_destroy_pinned_context(ce);
>  	return ret;
>  }
>=20
> @@ -1537,6 +1565,9 @@ void intel_engine_cleanup_common(struct
> intel_engine_cs *engine)
>=20
>  	if (engine->kernel_context)
>  		intel_engine_destroy_pinned_context(engine->kernel_context);
> +	if (engine->bind_context)
> +		intel_engine_destroy_pinned_context(engine->bind_context);
> +
>=20
>  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
>  	cleanup_status_page(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index a7e677598004..a8f527fab0f0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -416,6 +416,9 @@ struct intel_engine_cs {
>  	struct llist_head barrier_tasks;
>=20
>  	struct intel_context *kernel_context; /* pinned */
> +	struct intel_context *bind_context; /* pinned, only for BCS0 */
> +	/* mark the bind context's availability status */
> +	bool bind_context_ready;
>=20
>  	/**
>  	 * pinned_contexts_list: List of pinned contexts. This list is only
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 449f0b7fc843..cd0ff1597db9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1019,3 +1019,21 @@ enum i915_map_type
> intel_gt_coherent_map_type(struct intel_gt *gt,
>  	else
>  		return I915_MAP_WC;
>  }
> +
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
> +{
> +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> +
> +	if (engine && engine->bind_context)
> +		engine->bind_context_ready =3D ready;
> +}
> +
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
> +{
> +	struct intel_engine_cs *engine =3D gt->engine[BCS0];
> +
> +	if (engine)
> +		return engine->bind_context_ready;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h
> b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a4..9e70e625cebc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -180,4 +180,6 @@ enum i915_map_type
> intel_gt_coherent_map_type(struct intel_gt *gt,
>  					      struct drm_i915_gem_object *obj,
>  					      bool always_coherent);
>=20
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
>  #endif /* __INTEL_GT_H__ */
> --
> 2.41.0

