Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B847B7A0A8C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 18:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5004210E1B3;
	Thu, 14 Sep 2023 16:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539B210E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 16:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694708071; x=1726244071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RLQ5bIhj7nDdobMcHdkGf3GSL/fiyrO1B7wpzX1l+NM=;
 b=eCpNpFxuyKj9CmpJ2tNfz4TqPEsNl20s/eveFF3Fujq1abKXcnGD4V42
 ciTQpocQ3o7Yy6LfsvzU6Udevvqvsa3uHJqCXHF373ouzNvOgBDj+Dlaw
 TTzu07Nb/qHnTZPINXIKvsl7Ns8osIsLyo+yD2gjDf2ZqOQdXUiUpA/OS
 4aYCP33wuvIG+VwKrjsR0nfz+zraIQWb5uSDRiXYe5wxdg5aHM8FSrNP7
 QMY1hFMsZ9vgK86dergaMJcdE+Q+mf0fO1fVz6f+RKINlCnzRIokALVnw
 YhU54/Dsoq+Rnr8R8a+IbCIbMOLLviC+QRakgblQJUHzglnRtKMovOkAf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="376338856"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="376338856"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 09:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694360562"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="694360562"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 09:11:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 09:11:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 09:11:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 09:11:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbL7zzogBc8dJ7Bz4IoODzO3IOU1Jf/gvq40j1apIXRtTYeeCgF9H9HvuTX1qZSVLI/B0aSJ9Q0R1vbw0kHvxjcw/XxMvNql0SXheq20y9pz+ddcIOEB1g5a7kymSoCApa7pxzA6qcmk54Q3PaJb4Pga8LH4CIngRoqCLl+hyCRf9p+EBUqvL+GSwkVBuIqlcpcmLxm9jUuJ2SozaP0S3zL2EqSdWbR/5XQEghDEfT/TreRMmalpzBUpaHRWKo+BTQ1+mkfrn6HYRIdeYelhuR++PV7hCJGRt4ZQq24qQMnQKgI6Z3855V9lDN6SIOsviEPJgDOq3Q5KjEquGDnboQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfIPEUMBOCx48Sjqs6dD3oYnWPN66ZpD0p4qTwltCes=;
 b=CV+mktYOm+SC6ZEgcCmkTdZKclBiInsZxB6X0phbeOTZR+WlYttAH3PChL9lIjp3WfUWVBfBNtxXu6eHVyM/r3ovNmegr9fuXhuYbrMoHSNurOwkL7jGaxMjT11qXY06ZN8vWMGxk8EJemW8Leb6SnNIBzRIpWzl64aKvZGDbtpIhdoJobRYi4FRDUcG73uK0UX/u6jrawWao0Z35q86BQvn17KO4/fLZ46tlLbw58fS+qiO5AH+mbGusX0fQ+bG8RY1NDIRJaVIRJQp3ouTRUCuAIdA0hyTobiWtUoBpn/ATA0XVgd5F1e0nWCEH8RDvcRKjxY4Ay4/Lg4LSyVbbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.38; Thu, 14 Sep
 2023 16:11:29 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6792.019; Thu, 14 Sep 2023
 16:11:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5] drm/i915: Added Wa_18022495364
Thread-Index: AQHZ5xU0a5nC/uqTUUGhALneKpcJILAafTpw
Date: Thu, 14 Sep 2023 16:11:29 +0000
Message-ID: <SN7PR11MB6750C2963328A9D214BA4FF5E3F7A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230914134724.657957-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230914134724.657957-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB5116:EE_
x-ms-office365-filtering-correlation-id: 873e391e-c5e5-4db6-871f-08dbb53d4135
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ccu6MCLt6yq6Yd7R6o1xlxwHxOTLFiNO5dqAcLsx7RcS32WkfEebWWZwAXmzHWpheyxZkkr5AQswIDH6/IB7FH+ZoEebQdvBadvSU4RS7infYvhtlwTPZTsauPg+NnBnLAte712z6M0jmjaTFa2j4Uhgo4EXVNjUKit9GYRt1zaLijiRmJAp0fvJqNzZffUVCoDbs5qwnmUnbw7KAd7GRtiYT1Z1OCSxpBzUif1xf4XXH8nuYmbqdwJWCnbLHszcMBsTd3SavLvRs4tFfBUFOsmVqy57G3vKoNNwmhxplmCYIZju6BYcivYcX+8uwFpGkGiR3hPIre2rS7HotDKkmRpegdLkuEadgJxVHtUnxlucazeNOKcKNb7SEk26QQNva359hFtfgTmbMD6fgcep+CVx5B7cQyXuNyPFQNICNiiAQevfz+FBjqEqmw+x5dUU7sBAclt1TXbBM+QTV2lDUVwvQv2aSAMlGmT/foNi+bZOSOAFVmAE0cJhQ9IZBIzU5YcmuZh0LKeW+yANe2EPyZIhkyJJX6Q1JwueqXO8hpf1XGXeD8lr67jZDYfGSwuVQqAVjasSPSpf65QjYqfcE8v0OhoQiBBeL5x0YtBZxIkOtiGneuCJopJOY7MTcv4z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(136003)(346002)(376002)(186009)(451199024)(1800799009)(7696005)(9686003)(55016003)(6506007)(66476007)(66946007)(66556008)(110136005)(76116006)(66446008)(33656002)(86362001)(71200400001)(38070700005)(26005)(54906003)(83380400001)(4326008)(64756008)(5660300002)(478600001)(41300700001)(8936002)(316002)(8676002)(52536014)(122000001)(2906002)(107886003)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5H8QOTr/DdnZzvbFte7eSpefBMufj0GU9r9Pkjx09gPZeRU/4UoPmlhISHI7?=
 =?us-ascii?Q?PPl2FQ7GSlRz5wd/XY5vsR65JAquytuq8i2QD3anxVN67WVO0NQNd34hmjzN?=
 =?us-ascii?Q?rMakXTe3JfM+LgHGhtthSX2ZqGE4gamG57suy1SttV6VP0cPrhgS6m3WdaEQ?=
 =?us-ascii?Q?fOO+gJVpm4v7jHLcVV+hjQo+EaFYBUpIZb4clUCLObMwO9XpY/zyUrjAgPKz?=
 =?us-ascii?Q?eFLl4vc0bllyAMJnpYmgls0S/sBgPoFSkJr6JoGuDDY1+XDqnLFGrJJo5v80?=
 =?us-ascii?Q?DZQtncEG98qnrBVkvr1XTIIlEWPdijpHX8koBbzhJ8hFZYZ7tedzoqPHbAeQ?=
 =?us-ascii?Q?ViKcRl6tGMKyju0lgHTbggBALGqQC3ssxyArtHcxx1p8ulmvyNv2/QyX8LK+?=
 =?us-ascii?Q?hJc2XV/QIUGLuOX5cRJzIWyqw/j4jnnSYm1VY7853II5FzngDBACCH/0D3Zj?=
 =?us-ascii?Q?Z4qAiRYT/LmIf/9zvZRcoBuAUMWGgDrdkC7XxGd95bINsNiVjVwGiB1kMcvH?=
 =?us-ascii?Q?UpOUj9doTg8l6ps4BQxvy1PoW7Mecgr+AuWcYTSy6zIgMe4h87jxAKL54bV7?=
 =?us-ascii?Q?EH3FpIgAqJWipRI7b+tqmOJKGSJlEWYORHYF2U5CWlXKzD+y+GbAKu1Vj8yb?=
 =?us-ascii?Q?RKnutSZWZd0tJB/twIDG0PZB59drvVELVxgZxCyJXYIiMAIJWcjDM3OOenov?=
 =?us-ascii?Q?QA18StNDoLZXb0Zv/zhPApDUF+2suk5HsmHka1OzBEujsrmXsHCPAWKuR69Y?=
 =?us-ascii?Q?n60dYD9t8pzZ6xXVP0iRzlqF+HlVuT1Uky1frGy20Y2gwdx+1xA5FPGrcNlR?=
 =?us-ascii?Q?mS6BtfpAS+MG+80eb6TEuOETOYqBc4qE0BLo11rlWakmgkJqBR+1lAn+6kWm?=
 =?us-ascii?Q?q73j9NmLBxeQAtIYl8tbGWeNQFZGOXnt0XuAUDOI2aMUPujxjvGm9qLDxmzL?=
 =?us-ascii?Q?usaoj8bpHS46sp7Zrdw2KfTV0DzYUYScvc8cMn9aVLWTKSARfgQEGBjdzk8H?=
 =?us-ascii?Q?yZZGebcaHmAjU2o36+ZN/zw20F9nMXXUF7rdc1ayJ/Nv+UYmTCs66xcNjI3y?=
 =?us-ascii?Q?1zw9k6Jegd5nslQdPy8/895x55qafLq0ntvfuVMtSAgNfhdacJiK2rNs0Sdu?=
 =?us-ascii?Q?LW856xxPIoZfu1cs4CL+bqWuAfNVhQUWveTV4fZFiNfG9Op3Qz0ajVVYltLQ?=
 =?us-ascii?Q?JtqWr6l94pnpImbglndFzMYox8M5aRSIQhYDmns8XhrkTKBEDsb9I3e4eUOt?=
 =?us-ascii?Q?T/+cNDw/DtptIglAw5qon8ns45BrM3p/l5/nw4NbhbCGz9yvSKe1TIJ+R2Jb?=
 =?us-ascii?Q?r+d4qprvpwGuuUaxaw2ldUuWD4mUKdVwqP00vqi9Fi0imFeFInHans7jm1nm?=
 =?us-ascii?Q?ACuPQFf1GBdYgN2wqmn7O/xVd/CSOrDYURZwIcJjJYy6fnlsOIpmqGFIisqz?=
 =?us-ascii?Q?vwl5Vu4FMtGGpjsKiozOia05/cK1zpRanLrkGAvPBnugHjKCM9T6ANx5Tmhz?=
 =?us-ascii?Q?lKXtw61zGYm64J5Ux4DP0g6jp2fq33+NIs22gklpDequfj512rpqbJcRVQRg?=
 =?us-ascii?Q?gV88QRncB1q+ZjtapagYUNXIPWdSJ/zUdYAwjnNX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 873e391e-c5e5-4db6-871f-08dbb53d4135
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 16:11:29.4288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T2HySenCnPctZJNA+PCHuUGuUqv0YYe7h/ZZFuukxrym0T0fLMd+vaHp+u4YYCVIrzmDq9ldBUENLpkyUHhGhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Added Wa_18022495364
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Subject: [Intel-gfx] [PATCH v5] drm/i915: Added Wa_18022495364
>=20

Commit message style should be imperative so the header becomes something
Around the lines of=20
"Add Wa_18022495364"

> Set the instruction and state cache invalidate bit using INDIRECT_CTX on =
every
> gpu context switch.
> The goal of this workaround is to actually perform an explicit invalidati=
on of
> that cache (by re-writing the register) during every GPU context switch, =
which is
> accomplished via a "workaround batchbuffer"
> that's attached to the context via INDIRECT_CTX. (Matt)
> BSpec: 11354
>=20
> v2:
> - Removed extra parentheses from the condition (Lucas)
> - Fixed spacing and new line (Lucas)
>=20
> v3:
> - Fixed commit message.
>=20
> v4:
> - Only GEN12 changes are kept  (Matt Ropper)
> - Fixed the commit message for r-b (Matt Ropper)
> - Renamed the register bit in define
>=20
> v5:
> - Moved out the  from golden context init (Matt Roper)
> - Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)
>=20

Same thing applies to the above version fix description
Remove, Fix, Rename, Move

Regards,
Suraj Kandpal
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>=20
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
>  drivers/gpu/drm/i915/gt/intel_lrc.c     | 15 +++++++++++++++
>  2 files changed, 17 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..38f02ef8ed01 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
>=20
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
> b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 967fe4d77a87..fe98039499c5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1332,6 +1332,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
>  	return cs;
>  }
>=20
> +static u32 *
> +gen12_set_instruction_state_cache_invalid(u32 *cs) {
> +	*cs++ =3D MI_LOAD_REGISTER_IMM(1);
> +	*cs++ =3D i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
> +	*cs++ =3D
> _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
> +	return cs;
> +}
> +
>  static u32 *
>  gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)  { =
@@ -
> 1345,6 +1354,12 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context
> *ce, u32 *cs)
>=20
>  	cs =3D gen12_emit_aux_table_inv(ce->engine, cs);
>=20
> +	/* Wa_18022495364 */
> +	if (IS_ALDERLAKE_P(ce->engine->i915) || IS_ALDERLAKE_P_N(ce-
> >engine->i915) ||
> +	    IS_ALDERLAKE_S(ce->engine->i915) || IS_TIGERLAKE(ce->engine-
> >i915) ||
> +		IS_ROCKETLAKE(ce->engine->i915) || IS_DG1(ce->engine-
> >i915))
> +		cs =3D gen12_set_instruction_state_cache_invalid(cs);
> +
>  	/* Wa_16014892111 */
>  	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0,
> STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0,
> STEP_B0) ||
> --
> 2.34.1

