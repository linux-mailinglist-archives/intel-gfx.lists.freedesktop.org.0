Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B346EFFD8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 05:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FE210EA7B;
	Thu, 27 Apr 2023 03:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF7F10EA7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 03:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682566304; x=1714102304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SMi13zSEWDCBsX87NEgyY1mXsb7MWeWprYXB6ZP/wT4=;
 b=eZmQMjNc/HHwm8GcCfEiut12/4zG/2llltC0HB+YskHGqaxVKFamO3e8
 1HRki4HwAEx3cfDM4otqpsae61dPckhnvBqnxf3VPXXcumilJgJDmAVzr
 ShyBw0Dw46Mgp3dPvI9VJ+kPlkUL8lzjGsrGYscKqsr+RQzSaB5l+i1h5
 c9YKx3//PtCwreo5hKbm+DeDEDbBTqSGyU4/4LtCflhtyc1hrYhjuqcza
 ZBFPFb6tzlr3L/LDS0UOxAUb1L3TCFRFN5kH8VtLpciEvMr0qYjz8kFj7
 Ej24k1BKlUxTToyEmT6IRn9WXlMxzBCvFjDHxrJ8e29I7LqyBTZ92r3FK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="344759268"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="344759268"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 20:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="783561621"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="783561621"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Apr 2023 20:31:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 20:31:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 20:31:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 20:31:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 20:31:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PWT3UKtMd0hAyINPh2cmblNeXAEAsqJj13OK+bObPApe5kC5+aV+EUm7e6uzxrrj8ngd2XE9KaoK1kEVfAdLkBNlKIYt3r/mLRX8vMmv2JRRpMTBaM6R3AkuxFPeJtUbBPak1oGRVL9Ii1E0JjohohprKiWrHNxgNksFe1gQlzFMOY0aoAtkShwf3RDdmLpIw5kOTlFV009DoqxCVX+xuu1sKgQzwrPTb6Rr/o48d2Hvta0MroVkIbXCTL1FvGza/oDwYORsLJCaQWcjmVKs9/uhhXT0tDD0wofJoEXWALvXdJ5Rj4b418qw4/85P72ZHt0CgtS5DZ6LQfCdnaK9dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EnwKbwc4oIFSmcp452/P+J1q68zAbtgmG7w8fBQUNJs=;
 b=LPm2vbcBIjidnnXtS8hZ3JU75g0YXYVvvmtv0NaiMbH5SD+P8qTXfpTjA6oF3TV3aXnbhZXZc3a0d+icrNf+if9ZhivHlDgutqlZhefQ7E4ZT88sG1MPIHUvFGTiV8L5w1qiEaI1twPu4a/IsLH2+jlMY9M6grX8AYGS1/0IPgJFecCwzhrqWoBUObuR8CnzKLlWefz45oRP1BT9YaqEJvEZ1D8+K9nBGaxUTBK2/X/tA7ZY4lLY2q1W7QPuc62pO1mCfdWZig84dc4Y9ApJ9P/kYMOSQL1pXLTtWBTt4+EVeq/L+pS2K4HtdppXC/VhjhOWqkjPtDJBk2SOHP7WNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH7PR11MB7643.namprd11.prod.outlook.com (2603:10b6:510:27c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Thu, 27 Apr
 2023 03:31:22 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 03:31:22 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 02/13] drm/i915/mtl: C20 HW readout
Thread-Index: AQHZc4YQQUTlwBzgWE+IGFlW66Z9nK8+iM0Q
Date: Thu, 27 Apr 2023 03:31:21 +0000
Message-ID: <DM6PR11MB3177BF5E53A899D5B3DB3EC3BA6A9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-3-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH7PR11MB7643:EE_
x-ms-office365-filtering-correlation-id: 80e3a96d-c486-4098-fb57-08db46cfdf27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sA1FDYFgSIHfAsY4sLFJSCYglP0xtxoAIfsGJOu0duCMFcP2m2kl6AZuYVUoIerMfxMLWd39b4JdQ4HEMSpo1faB0ZyxFYrLQlAPwpyKhkut2TNFMWBmIfknO8+AvowKA8n7qMQiiJJrJ98wHXXGQc9QKQfQLcBeh27tpZkhOso+C/nP+X/Gv0trJ6XqpXUzlzxFVIIvL3Stx6qJlZT8svrZH6rZQDA4t2lOLpJGWs0XeAUwN8wnz7X7nR9iUVJtG27lbT85VRXwbnTRwPrs1y01oMaVRs6j+fRdaOSDQXtQLsCnZ9l5De8VAp3ETGLNta/Q2NvExEDF+7GCK7PAWaGFPaw7u+SBgE3wqIlWI9dlGPlOG56eYxzUIvHgdu4IdDEBeGmZKns8h2tfdaUuv02UXyRnKgRENEXHikLtaaRrnHhvtlo4/vlY05WBO78bnDQGDtvHpvM/bvA4FtWifiabK6U/GwKeP4mbe+GwzjehWMt+NKi6myvsIwGoL1N7e957Z64FNKYjRO7vHfRX7LHcN1atnv8ptVHIm3JTr/l6Ca/2CaAqWcvt5NW+DWn4IhHbms2Q1DPNBv1CO59gQgoZPZVum38C1BOEwqSf4AF0zdl89p/hNlrE4gjftN95
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(478600001)(186003)(110136005)(52536014)(86362001)(107886003)(53546011)(55236004)(26005)(9686003)(6506007)(55016003)(66476007)(82960400001)(316002)(66446008)(66556008)(71200400001)(33656002)(64756008)(76116006)(83380400001)(4326008)(66946007)(2906002)(30864003)(38100700002)(7696005)(8676002)(122000001)(41300700001)(38070700005)(8936002)(5660300002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5hfAgl0S2RcyKdWk4BngMnWs0c7jMCnI/kq+V6fUzuDC03VPpByD8KQo7a4O?=
 =?us-ascii?Q?8q8G2kKMILu7PB4WU/1mFbygFrBSLEcVyfQ9gpAiqxpCyBh9akQ2OJ5tI38H?=
 =?us-ascii?Q?36WGAz0TSRPzkpksCU75Tdf2jBZH+yG6kKsaAwbYGEMWsDwCjv+3hgOzc4kW?=
 =?us-ascii?Q?SIMfrpRCAdHvIm4ggGFFUOXPr0lIu0koBUAyjigz7bFGKaTVwiw/cgUb6QtA?=
 =?us-ascii?Q?9IdrTuXCN9dX6FbP17NdXarENtdShFzjYyP1yi4UDGG4xtVkjd5nVFT5bPz5?=
 =?us-ascii?Q?hhI7bs/0OxZ+wOcNpLmdvQrVWlPGCSkJ5l/7oONJPbmv0OgmUbB3JccC3foq?=
 =?us-ascii?Q?ecH5lNpT5zS9692dxVcg0v05N2xNP+T3f2C+ieOC/3dFPj80X6qNIz9rJRNc?=
 =?us-ascii?Q?ZWB9aWE5z+OSZVeJ3TPDyjau1dXYz7oIamWP5lbMJBlheYk/IL7FuubHA8iC?=
 =?us-ascii?Q?aUeIPZQIRZByWls4z9YmTqsFmLazaBotwArhcsofHXRl95sxL65TsEUgT5kb?=
 =?us-ascii?Q?vpSOP/A8pHNXlYaW04Q/PH83D8tlm2VfmVNKzJTX8KlXzprTtcsfW56JC9kr?=
 =?us-ascii?Q?ghbdi6KVjkCAQV6cRQTmlZxMFtGg4/L9fqNp3L641M/hJj6xXN1snXeUE/1H?=
 =?us-ascii?Q?84NIM2b1b6yDCG7Bwtb/+u2sfZNj4UNICzm7Kj9lBYA9rZwi0oNre3sqeLwW?=
 =?us-ascii?Q?4VLL56GSfX9JE9R44manxJsmao2HkYPZe1+MiHAAPMRJf2vQBk70b7CHoqi5?=
 =?us-ascii?Q?v/Zy7byioGX+uX8jrCiMcf1RmU4G2qL6KzEz5pU9cHF1LphLuj1Ot6QRtU15?=
 =?us-ascii?Q?fzTIT1WB89qWGCpzxqraE1BxeAtdhY1xRdB7kEdv6Al/v8dAVA4tgkxdSHf9?=
 =?us-ascii?Q?fLJVR0wb3OPor/YRpuFK+59ksx88hAx6hpAYAd/nWg/0fI4iFveX+Go5wzpx?=
 =?us-ascii?Q?a/yPMblTqn4rjkY1cJUV9Vojb8b04spZ6q1SYikDp/0yMT7qZyZ/Xk13GNd4?=
 =?us-ascii?Q?9tgTug1djIOOcsik+jMEPPZDDQuxGK9WdPCtCd4rlmsy/u+cDMiWYB4wWnZp?=
 =?us-ascii?Q?ngOa+MGPpT1//EKCnHUBq+vKNlZ+hfh1T12PbqI3yAl5bEX00lFR572xYq3r?=
 =?us-ascii?Q?XEO8KRBfI5D7u+wdPvafvnNMRay35PF0+yHGrgG946vJ1vG17Q6wJ/8TRy1J?=
 =?us-ascii?Q?eM12tMKaa98e9QdxIj20qbT+BdSWHNbM2HFww2US8FoPa5J3jDmxn45G3VR8?=
 =?us-ascii?Q?e3seD5DwajMe0jZWoqG9tTY+cnzlXA6zuMwhoB8GGkYJ1bjVhEwk0JuhTqzH?=
 =?us-ascii?Q?tSb9oG4ScwyIW7M6z1Q9dkFuEAOsQPSqS24RmxJ4FZumrLyCFmcSk6ehMFMI?=
 =?us-ascii?Q?QGrxrxkj2v4NChyIuwFq3q+CKCYSic0Zhs8lp2mcoZ9yAtFxjHtZm6xp3m2b?=
 =?us-ascii?Q?rX2ZSdhxEYMsmPJ29VcU73vX9JYbez19ZkHWVZRXr/c8/CGVCj/idD1NrGJY?=
 =?us-ascii?Q?HOVBCBzwgSJSJjHOBXvO4Plcv0rWacex/5JxG8fIYPQ6D/0VM88w48WRdPMj?=
 =?us-ascii?Q?YYJQq8ND5BFYwsrQEqdvZtDdLZbIV9ifSjfZg6yU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e3a96d-c486-4098-fb57-08db46cfdf27
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 03:31:21.9113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Me7utefrRBdmqm2aiLUftOOfFfjE0uKIXk8yRuDc/IGj7YZqMswC9/DWDCYOTzqA2kkBfHzif4Z1kd/s1kx3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/mtl: C20 HW readout
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
> From: Kahola, Mika <mika.kahola@intel.com>
> Sent: Thursday, April 20, 2023 6:11 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 02/13] drm/i915/mtl: C20 HW readout
>=20
> Create a table for C20 DP1.4, DP2.0 and HDMI2.1 rates.
> The PLL settings are based on table, not for algorithmic alternative.
> For DP 1.4 only MPLLB is in use.
>=20
> Once register settings are done, we read back C20 HW state.
>=20
> BSpec: 64568
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 623 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   9 +-
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 +
>  6 files changed, 628 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index dd96bf5e179e..61428c5145e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -11,6 +11,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_psr.h"
>  #include "intel_tc.h"
> @@ -285,6 +286,23 @@ static void intel_c20_sram_write(struct
> drm_i915_private *i915, enum port port,
>  	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff,
> 1);  }
>=20
> +static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port
> port,
> +			       int lane, u16 addr)
> +{
> +	u16 val;
> +
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, addr >>
> 8, 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr &
> 0xff,
> +1);
> +
> +	val =3D intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
> +	val <<=3D 8;
> +	val |=3D intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
> +
> +	return val;
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port por=
t,
>  			    int lane, u16 addr, u8 clear, u8 set, bool
> committed)  { @@ -659,6 +677,199 @@ static const struct intel_c10pll_stat=
e
> * const mtl_c10_edp_tables[] =3D {
>  	NULL,
>  };
>=20
> +/* C20 basic DP 1.4 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_rbr =3D {
> +	.link_bit_rate =3D 162000,
> +	.clock =3D 162000,
> +	.tx =3D {	0xbe88, /* tx cfg0 */
> +		0x5800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x50a8,	/* mpllb cfg0 */
> +		0x2120,		/* mpllb cfg1 */
> +		0xcd9a,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x5ab8,         /* mpllb cfg4 */
> +		0x4c34,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x6000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr1 =3D {
> +	.link_bit_rate =3D 270000,
> +	.clock =3D 270000,
> +	.tx =3D {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x308c,	/* mpllb cfg0 */
> +		0x2110,		/* mpllb cfg1 */
> +		0xcc9c,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x489a,         /* mpllb cfg4 */
> +		0x3f81,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x5000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr2 =3D {
> +	.link_bit_rate =3D 540000,
> +	.clock =3D 540000,
> +	.tx =3D {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x108c,	/* mpllb cfg0 */
> +		0x2108,		/* mpllb cfg1 */
> +		0xcc9c,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x489a,         /* mpllb cfg4 */
> +		0x3f81,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x5000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr3 =3D {
> +	.link_bit_rate =3D 810000,
> +	.clock =3D 810000,
> +	.tx =3D {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x10d2,	/* mpllb cfg0 */
> +		0x2108,		/* mpllb cfg1 */
> +		0x8d98,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x7166,         /* mpllb cfg4 */
> +		0x5f42,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x7800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +/* C20 basic DP 2.0 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr10 =3D {
> +	.link_bit_rate =3D 1000000, /* 10 Gbps */
> +	.clock =3D 312500,
> +	.tx =3D {	0xbe21, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mplla =3D { 0x3104,	/* mplla cfg0 */
> +		0xd105,		/* mplla cfg1 */
> +		0xc025,		/* mplla cfg2 */
> +		0xc025,		/* mplla cfg3 */
> +		0xa6ab,		/* mplla cfg4 */
> +		0x8c00,		/* mplla cfg5 */
> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0000,		/* mplla cfg9 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 =3D {
> +	.link_bit_rate =3D 1350000, /* 13.5 Gbps */
> +	.clock =3D 421875,
> +	.tx =3D {	0xbea0, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x015f,	/* mpllb cfg0 */
> +		0x2205,		/* mpllb cfg1 */
> +		0x1b17,		/* mpllb cfg2 */
> +		0xffc1,		/* mpllb cfg3 */
> +		0xe100,		/* mpllb cfg4 */
> +		0xbd00,		/* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x4800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr20 =3D {
> +	.link_bit_rate =3D 2000000, /* 20 Gbps */
> +	.clock =3D 625000,
> +	.tx =3D {	0xbe20, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mplla =3D { 0x3104,	/* mplla cfg0 */
> +		0xd105,		/* mplla cfg1 */
> +		0xc025,		/* mplla cfg2 */
> +		0xc025,		/* mplla cfg3 */
> +		0xa6ab,		/* mplla cfg4 */
> +		0x8c00,		/* mplla cfg5 */
> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0002,		/* mplla cfg9 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_dp_tables[] =3D {
> +	&mtl_c20_dp_rbr,
> +	&mtl_c20_dp_hbr1,
> +	&mtl_c20_dp_hbr2,
> +	&mtl_c20_dp_hbr3,
> +	&mtl_c20_dp_uhbr10,
> +	&mtl_c20_dp_uhbr13_5,
> +	&mtl_c20_dp_uhbr20,
> +	NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -1243,7 +1454,281 @@ static const struct intel_c10pll_state * const
> mtl_c10_hdmi_tables[] =3D {
>  	NULL,
>  };
>=20
> -int intel_c10_phy_check_hdmi_link_rate(int clock)
> +static const struct intel_c20pll_state mtl_c20_hdmi_25_175 =3D {
> +	.link_bit_rate =3D 25175,
> +	.clock =3D 25175,
> +	.tx =3D {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0xa0d2,	/* mpllb cfg0 */
> +		   0x7d80,	/* mpllb cfg1 */
> +		   0x0906,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x0200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x0000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_27_0 =3D {
> +	.link_bit_rate =3D 27000,
> +	.clock =3D 27000,
> +	.tx =3D {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0xa0e0,	/* mpllb cfg0 */
> +		   0x7d80,	/* mpllb cfg1 */
> +		   0x0906,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x8000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_74_25 =3D {
> +	.link_bit_rate =3D 74250,
> +	.clock =3D 74250,
> +	.tx =3D {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x609a,	/* mpllb cfg0 */
> +		   0x7d40,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_148_5 =3D {
> +	.link_bit_rate =3D 148500,
> +	.clock =3D 148500,
> +	.tx =3D {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x409a,	/* mpllb cfg0 */
> +		   0x7d20,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_594 =3D {
> +	.link_bit_rate =3D 594000,
> +	.clock =3D 594000,
> +	.tx =3D {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x009a,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_300 =3D {
> +	.link_bit_rate =3D 3000000,
> +	.clock =3D 166670,
> +	.tx =3D {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x209c,	/* mpllb cfg0 */
> +		   0x7d10,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x2000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_600 =3D {
> +	.link_bit_rate =3D 6000000,
> +	.clock =3D 333330,
> +	.tx =3D {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x009c,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x2000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_800 =3D {
> +	.link_bit_rate =3D 8000000,
> +	.clock =3D 444440,
> +	.tx =3D {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x00d0,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x4a06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0003,	/* mpllb cfg7 */
> +		   0x2aaa,	/* mpllb cfg8 */
> +		   0x0002,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_1000 =3D {
> +	.link_bit_rate =3D 10000000,
> +	.clock =3D 555560,
> +	.tx =3D {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x1104,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x0a06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0003,	/* mpllb cfg7 */
> +		   0x3555,	/* mpllb cfg8 */
> +		   0x0001,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D {
> +	.link_bit_rate =3D 12000000,
> +	.clock =3D 666670,
> +	.tx =3D {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn =3D { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb =3D { 0x0138,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x5486,	/* mpllb cfg2 */
> +		   0xfe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x4000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] =3D=
 {
> +	&mtl_c20_hdmi_25_175,
> +	&mtl_c20_hdmi_27_0,
> +	&mtl_c20_hdmi_74_25,
> +	&mtl_c20_hdmi_148_5,
> +	&mtl_c20_hdmi_594,
> +	&mtl_c20_hdmi_300,
> +	&mtl_c20_hdmi_600,
> +	&mtl_c20_hdmi_800,
> +	&mtl_c20_hdmi_1000,
> +	&mtl_c20_hdmi_1200,
> +	NULL,
> +};
> +
> +static int intel_c10_phy_check_hdmi_link_rate(int clock)
>  {
>  	const struct intel_c10pll_state * const *tables =3D
> mtl_c10_hdmi_tables;
>  	int i;
> @@ -1319,17 +1804,6 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	return -EINVAL;
>  }
>=20
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -
> -	return intel_c10pll_calc_state(crtc_state, encoder);
> -}
> -
>  void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_c10pll_state *pll_state)  { @@ -
> 1427,6 +1901,74 @@ void intel_c10pll_dump_hw_state(struct
> drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i +
> 3]);  }
>=20
> +static int intel_c20_phy_check_hdmi_link_rate(int clock) {
> +	const struct intel_c20pll_state * const *tables =3D
> mtl_c20_hdmi_tables;
> +	int i;
> +
> +	for (i =3D 0; tables[i]; i++) {
> +		if (clock =3D=3D tables[i]->link_bit_rate)
> +			return MODE_OK;
> +	}
> +
> +	return MODE_CLOCK_RANGE;
> +}
> +
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int
> +clock) {
> +	struct intel_digital_port *dig_port =3D hdmi_to_dig_port(hdmi);
> +	struct drm_i915_private *i915 =3D intel_hdmi_to_i915(hdmi);
> +	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_c10_phy_check_hdmi_link_rate(clock);
> +	return intel_c20_phy_check_hdmi_link_rate(clock);
> +}
> +
> +static const struct intel_c20pll_state * const *
> +intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		return mtl_c20_dp_tables;
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return mtl_c20_hdmi_tables;
> +
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> +				   struct intel_encoder *encoder)
> +{
> +	const struct intel_c20pll_state * const *tables;
> +	int i;
> +
> +	tables =3D intel_c20_pll_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i =3D 0; tables[i]; i++) {
> +		if (crtc_state->port_clock =3D=3D tables[i]->link_bit_rate) {
> +			crtc_state->cx0pll_state.c20 =3D *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_c10pll_calc_state(crtc_state, encoder);
> +	return intel_c20pll_calc_state(crtc_state, encoder); }
> +
>  static bool intel_c20_use_mplla(u32 clock)  {
>  	/* 10G and 20G rates use MPLLA */
> @@ -1436,6 +1978,63 @@ static bool intel_c20_use_mplla(u32 clock)
>  	return false;
>  }
>=20
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state) {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	bool cntx, use_mpllb;
> +	u32 val;
> +	int i;
> +
> +	/* 1. Read current context selection */
> +	cntx =3D intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0,
> +PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* Read Tx configuration */
> +	for (i =3D 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> +		if (cntx)
> +			pll_state->tx[i] =3D intel_c20_sram_read(i915, encoder-
> >port, INTEL_CX0_LANE0,
> +
> PHY_C20_B_TX_CNTX_CFG(i));
> +		else
> +			pll_state->tx[i] =3D intel_c20_sram_read(i915, encoder-
> >port, INTEL_CX0_LANE0,
> +
> PHY_C20_A_TX_CNTX_CFG(i));
> +	}
> +
> +	/* Read common configuration */
> +	for (i =3D 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> +		if (cntx)
> +			pll_state->cmn[i] =3D intel_c20_sram_read(i915,
> encoder->port, INTEL_CX0_LANE0,
> +
> 	PHY_C20_B_CMN_CNTX_CFG(i));
> +		else
> +			pll_state->cmn[i] =3D intel_c20_sram_read(i915,
> encoder->port, INTEL_CX0_LANE0,
> +
> 	PHY_C20_A_CMN_CNTX_CFG(i));
> +	}
> +
> +	val =3D intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> PHY_C20_A_MPLLA_CNTX_CFG(6));
> +	use_mpllb =3D val & C20_MPLLB_FRACEN;
> +
> +	if (use_mpllb) {

If mpllb is in use why is it that the data read is copied to mplla of pll_s=
tate?
I assume that the change is for only context!

> +		/* MPLLA configuration */
> +		for (i =3D 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +			if (cntx)
> +				pll_state->mplla[i] =3D
> intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +
> PHY_C20_B_MPLLA_CNTX_CFG(i));
> +			else
> +				pll_state->mplla[i] =3D
> intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +
> PHY_C20_A_MPLLA_CNTX_CFG(i));
> +		}
> +	} else {
> +		/* MPLLB configuration */


Same here, should this be mplla?

Thanks and Regards,
Arun R Murthy
--------------------

> +		for (i =3D 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +			if (cntx)
> +				pll_state->mpllb[i] =3D
> intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +
> PHY_C20_B_MPLLB_CNTX_CFG(i));
> +			else
> +				pll_state->mpllb[i] =3D
> intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +
> PHY_C20_A_MPLLB_CNTX_CFG(i));
> +		}
> +	}
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 509d1d12776e..9760c6292c81 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -30,8 +30,12 @@ int intel_c10pll_calc_port_clock(struct intel_encoder
> *encoder,
>  				 const struct intel_c10pll_state *pll_state);
> void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc_state *new_crtc_state);
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state); -
> int intel_c10_phy_check_hdmi_link_rate(int clock);
> -
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int
> +clock); void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder
> *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       u32 level);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f445f2613adb..44f07011245b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3853,10 +3853,13 @@ static void mtl_ddi_get_config(struct
> intel_encoder *encoder,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>=20
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	if (intel_is_c10phy(i915, phy)) {
> +		intel_c10pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state.c10);
> +		intel_c10pll_dump_hw_state(i915, &crtc_state-
> >cx0pll_state.c10);
> +	} else {
> +		intel_c20pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state.c20);
> +	}
>=20
> -	intel_c10pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state.c10);
> -	intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
>  	crtc_state->port_clock =3D intel_c10pll_calc_port_clock(encoder,
> &crtc_state->cx0pll_state.c10);
>=20
>  	intel_ddi_get_config(encoder, crtc_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c9927e12b95e..4eadf45c0a43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -997,6 +997,7 @@ struct intel_c10pll_state {  };
>=20
>  struct intel_c20pll_state {
> +	u32 link_bit_rate;
>  	u32 clock; /* in kHz */
>  	u16 tx[3];
>  	u16 cmn[4];
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 8141d5184856..65a258507d62 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -58,7 +58,7 @@
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
>=20
> -static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> *intel_hdmi)
> +inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> +*intel_hdmi)
>  {
>  	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
>  }
> @@ -1865,8 +1865,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	 * FIXME: We will hopefully get an algorithmic way of programming
>  	 * the MPLLB for HDMI in the future.
>  	 */
> -	if (IS_METEORLAKE(dev_priv))
> -		return intel_c10_phy_check_hdmi_link_rate(clock);
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
>  	else if (IS_DG2(dev_priv))
>  		return intel_snps_phy_check_hdmi_link_rate(clock);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
> b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 774dda2376ed..492bd3921385 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -54,5 +54,6 @@ int intel_hdmi_dsc_get_num_slices(const struct
> intel_crtc_state *crtc_state,
>  				  int src_max_slices, int src_max_slice_width,
>  				  int hdmi_max_slices, int hdmi_throughput);
> int intel_hdmi_dsc_get_slice_height(int vactive);
> +struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> +*intel_hdmi);
>=20
>  #endif /* __INTEL_HDMI_H__ */
> --
> 2.34.1

