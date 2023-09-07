Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBD2797081
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 09:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CF910E77A;
	Thu,  7 Sep 2023 07:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D14B10E77A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 07:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694071645; x=1725607645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TE5amLtEVeK4T1bJ/1nYrBIQMrSQdbAbGLEiZei/tc=;
 b=QbMgOnNENzSeqw8ijnFiFe8t1HrqXGMvNBzsMb9yB/T84IgQZ63ynud8
 wBMmugrZ0KmXSoXRTXO6k0v9MFbTulKoK52+rn6BZaebN9VZt9LIN+ONG
 5iZyYXJA9bg0kqLEkgbeepYn6u4sAtnqh9phC6D3Oc+Zt7kUeIZWOtU48
 uTGsc6sj7242NvxeL9wciZnxrhdlBsgTABgGS4lVUOUleiCw7QlZ8SmW3
 4E4ptl9ujI9pM/pXMVEyeMg6137Bogd+9rHY+2+yj251B5lj2io1VqLLt
 6LGLP5sv5tbDK/3l5FHA1vQ0vzW5Y0HfPevLYahN/Z+C2bk7h55PUHU9j w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="379994174"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="379994174"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 00:27:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="741919150"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="741919150"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 00:27:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 00:27:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 00:27:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 00:27:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 00:27:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JWah1mHLyCjFg03fIIjBUT4X27lzn5rJz6Bb8I2cRJ0BnbPi7Fkzd2l7SIwQKVelAoZUgcD/KimN2+HKt1ahZiLKGiLKtQ8FCeBVHR1YX1FCUgUhqxPMBWqS7faZI2FAxQm4PBv3lRAnPDxFLxELya1RfWrQAmnVnqalcmi/l+Rdp8VmFhAjJwxhb3BhR6Zi3L1F3+WZcglzVt5Ix3dULoyFvQiCJRh1TY/LpA7lzpKn2eqeS9dtDl+Gc/3aXW/wFLzKCmM3VV+oPn5s+VxNvZt6Oh/h4U0RpyUc6WGV16ucK7pZoA8K5jRQiRNrvXBb7W9I3qd+Q5bMCKKhqAZiJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eVYlPstGpF1emFEK7Z2Ml/o5TtcyUx808TjsYPYbBZI=;
 b=Mq91CFM9ntqKxI+vHpZpzZw3maUAhpYBB/+TtmsU2pYwZfC3SqV7EXKGqPC83nUK6zhoMM5Cyniz9Op4PUvDY5bENCZ2ghz8/EavwYdHWvu8EVfH6zqvfhZmrOEXSmBRMSCtiyZOmqzh3PPBusubL37lGtce0Ww2Qm22NCiQ4TshKnP2+jpr1OZFH7Y5wX2FYzQU23MSyl012QjywFXpQKxRGUH4Vki9rXP3P3gbJ5TToLobxyiUnGCR5oEyLiFWDppW0oIoe6p+wNF26P2IIc0P1cmwBs8lTmVtF+CFcQGns/+HVUTaqz3+lWU7ah1uCQe0STPXqXlEMaN1nzMDDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6833.namprd11.prod.outlook.com (2603:10b6:510:1ec::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 07:27:20 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::dadb:f898:6bb6:7e82]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::dadb:f898:6bb6:7e82%5]) with mapi id 15.20.6745.030; Thu, 7 Sep 2023
 07:27:20 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
Thread-Index: AQHZ4Vin5aIaXKT/qEiKJ/AWg+gj7LAO9nKA
Date: Thu, 7 Sep 2023 07:27:20 +0000
Message-ID: <IA1PR11MB6467D4FFF79187E38A473B6DE3EEA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20230907065734.3871575-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230907065734.3871575-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6833:EE_
x-ms-office365-filtering-correlation-id: 37b09c0a-5090-4373-4e38-08dbaf73df51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUvHBcu1BIKMoHDafK05r6AAE1p8BT/8VIxUcb9jbF4spIIQ72V3nuqU4Ue9RZECUyY0WbrHY5NXrT625C6NoYQNokoJA2/2nu66L+I75GHjKL/tzkyapFON3+4RTNkwlgJkOkoOEPAZxpLYY77LN/vxd4iFrw4tQU+9fimehHaKY1cOPOMAgj6qClR35yVITJmckWSonkOtum6O8wujjUqm/p0EQQLuW6mRF05z64xkf6jW6bELUWt2iwITWUGJ/G+dXdrq12pAjLTjplCzlUQLRRefTORad/xhJ3sbaq6He9odrDB5/WkoxMfKx4ICRnSHQYnnTZZFlJDNCYIFKbZuKtU8zTkqgmLMAXDLnoLATBKmOjONHIJ26JsvCOcE7dIflRTUwG7lL7y/MH2vMKfFVU49ydVS67jScH9ltOhr4vIpmy3dq4Kb5eHDtA2AZIPlmf4a4v6wa4K0vP8zzd5eGZ4rkeTFwP7YASA5AcCPx0M/yVD3zkOQIsG9xcj6RZcKcvmdebSxatC/9JnX3Lujw5sz1QxisH1ugxk/f2Ay7LftU5Cwa0k+q6msWDkqeBQpmE4Je/Ty6AqngVCQNHzfLigXtRKWEDntF1JXqpgryiY1aYe70wLQnMzLaq9J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199024)(186009)(1800799009)(52536014)(316002)(478600001)(107886003)(64756008)(8676002)(4326008)(8936002)(55016003)(66446008)(122000001)(66556008)(66476007)(53546011)(6506007)(7696005)(76116006)(110136005)(66946007)(9686003)(41300700001)(5660300002)(83380400001)(26005)(71200400001)(2906002)(33656002)(86362001)(38070700005)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/yRr0goZnJ27LZvfQNXrrRrEA5SvMBP49hG/5iK6riyR2Mae+rgUG1dgPfiK?=
 =?us-ascii?Q?Ln+lgtbRLpUxbx7e3Yx88LSKleQlG0pErDG5ajUljwe0GIWUOa/Bn9ddEE4t?=
 =?us-ascii?Q?Q2LSxScC1r6XNrvxCQavULPobjJQra+Pm1GqAXkEYQR5DaBucIc22Epoma1b?=
 =?us-ascii?Q?fYqtGMWTb/sDgM3JEJfMI0thrfqzGQ5Y3sZxHQBMez6370iOE4X3o2EhV4zC?=
 =?us-ascii?Q?mUxUphUezKvFMBBHVfp3ahSFz8mS5jH7ES/0+fMWCT59ZJe5Gp18UBf+yMc7?=
 =?us-ascii?Q?1hPntoy0tNXRn6wvhAGfQrhrBl3tqvfPhgruLj/njvRBl/L9SnQZZ+Nf+gh9?=
 =?us-ascii?Q?M9b0yyW1ZKoPvLTzTWBttPqVxmTor0bEd4JZRbcGW80gpFECkoVWvqkx/w/x?=
 =?us-ascii?Q?w5FmGk0ftz5oMmY4ZlQqB+RHbiniK5xqeVgyUR2VYJWg32rWhgwvKfoydq8I?=
 =?us-ascii?Q?eyB00aAAWIblrxi5wFDxYiygvMD56cweLWVV0c/oa75LuKO8d3EN7J8ABZ3e?=
 =?us-ascii?Q?eTcJRZmOOHxopYVKs78eFwbvpxdokrUGuRBw9TGSw5MzVdMP0wri0V6nKYe3?=
 =?us-ascii?Q?s/LWCHLFjh4Zwp+/KXVhzuu5g3C9L5PNKCsIrFG2MSbYFadtyWQIQJG0NQmv?=
 =?us-ascii?Q?dEp7S4iKzy8Mmv4milBaeU+535kgAswxFldZJgM8vttXvjJcR5OZmlvtkiPD?=
 =?us-ascii?Q?0ELCFuSo/1Eh6G+Nc0hDimrg0z9xGBDsC7g42p7r7KgAWrapvn3X7tPuh0iY?=
 =?us-ascii?Q?q2SVdumOQhtVNOVPZMJTCsah3gPt0rW7BwkGnFzHb6iDPJVWFGea1ctcsPi/?=
 =?us-ascii?Q?SzsTELykEIufjbQU0YCHA9YRIaukPyQ08LeJ/+UFJrx4zcVLXvCQbjbstBVj?=
 =?us-ascii?Q?sHgYhF12wv1GnC7tuwdCm7+Cn3lqaYHXlBkNkZPCJpIXZTSi2x7ntYzOYhH4?=
 =?us-ascii?Q?hgVyb7vPsMS+oaruc99mUfZmG9IKM/d50GC2AFgFU/IuJ8mU08kKzc5aAOxO?=
 =?us-ascii?Q?E5kSdd6VBYjOexo5o/paq7YLfqEpPpxz2Huag45zM5/A7BwHG8ElRaGnRNI3?=
 =?us-ascii?Q?+mHCCjfRgdbjdQP91TCmMdct6EPkB0lSVdG6Y6OQ1oMHo5DIzmarrD2lgi//?=
 =?us-ascii?Q?s6LGB6dqiwB4lnEYIRGCdBxhhBh9p0CnHzGTvzCJm/OxDxtFnfs5MIpffWsE?=
 =?us-ascii?Q?hgVF2fJFD46Dc/EfgnHnTLi9OvdGfAWmvHNzd2OGx9qAuGcnu/pLFAYdBJ26?=
 =?us-ascii?Q?qWlEDHGexO4Qgvs1RhgXKYLdctXaJrlShkndWme0iNGJmeVdXwCY1D+ekMfX?=
 =?us-ascii?Q?4YaJIggAx723vbGFPwkNLL+KgBaTvB4a8PrQ5GfZf6h1YoMLsGOlNEFqIth9?=
 =?us-ascii?Q?OLAQuEKCDYrAOQuIOrHPC1HY5A9dA2vdPSHqFNyrEt78kkQ0/JW0VpMt7i/e?=
 =?us-ascii?Q?mFvD9mXnmQCK0i/2kpa3/ZsMAP8zJnD/B+OC21w94LGb/4njxcfzUsc6lZMj?=
 =?us-ascii?Q?JIED/fwtXgE1wrIprdvcwAP8esXF3Wg4Qp9wo3ADzDMRugUN6b7CHmnJWYPB?=
 =?us-ascii?Q?9aNiLvtmSdJTjtaLnTZmto0HUAggs9Mi3udwTTOV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37b09c0a-5090-4373-4e38-08dbaf73df51
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 07:27:20.5550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +PAe9BGXMbKcjCEsb4Skx79Ydq5DnDxM4aubnljXVL0MEFGCC+lSuhQSUw8FY0AA2aKK9B8y8rItHN9qktwa/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6833
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Dnyaneshwar Bhadane
> Sent: Thursday, September 7, 2023 12:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
>=20
> This workaround has two different implementations, one for gen 12 to DG2 =
and
> another for DG2 and later.
> Bspec :  11354 , 56551.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 4 ++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  3 files changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 0143445dba83..fee2712f81e8 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -271,6 +271,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u3=
2
> mode)
>  		if (GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70))
>  			bit_group_0 |=3D PIPE_CONTROL_CCS_FLUSH;
>=20
> +		/* Wa_18022495364 */
> +		if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70)) ||
> +		    IS_DG2(rq->i915))
> +			bit_group_1 |=3D
> PIPE_CONTROL_CONST_CACHE_INVALIDATE;
>  		bit_group_1 |=3D PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		bit_group_1 |=3D PIPE_CONTROL_FLUSH_L3;
>  		bit_group_1 |=3D
> PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..4c0cb3a3d0aa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
>=20
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 864d41bcf6bb..1a026d4d7ac5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -712,6 +712,9 @@ static void gen12_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
>  			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
>=20
> +	/* Wa_18022495364 :tgl,rkl,dg1,adl-s,adl-p */
> +	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
> +		     GEN12_GLOBAL_DEBUG_ENABLE);
>  	/*
>  	 * Wa_16011163337 - GS_TIMER
>  	 *
> --
> 2.34.1

