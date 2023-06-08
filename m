Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53652728619
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 19:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D299F10E5FB;
	Thu,  8 Jun 2023 17:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 574DA10E5FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 17:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686244608; x=1717780608;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q6JZQrbaSoNnYig0/OhSeqe+dP0y/27MJN8tJsyIlbg=;
 b=KG7C/BXQzZtGKEFJj3+FtM0MP8biOpixsqEABQOQ+aIQf9ZtLV9hGp0V
 F20Ynmw4IpZjW4qhmOmyaWqEAcHI+wPGb3twuP9kg8Lcjw6ymwZHHJ9Rv
 A1WnmpzTHaRLCovBuJtatC8J0fJHHb1anMMEdniiaWB+iSeABcZyip5qL
 RppcdSXXfUaMm6zKu8T4/FE+JLcUFUNWBQT1MNF3JLrtF9FCcW5cmm4hb
 DMw/ugPmkeHBbsK1xAY7vDKgTxfaKKbJWoi/BpEmdGYo73NHifHbkb0DO
 yH86jeHI+sjt9E8DpzFYB1RGPIO8YKiuyc3z022ChDkE7o4BcKLznt9jc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="443743330"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="443743330"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 10:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="743175368"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="743175368"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 08 Jun 2023 10:16:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 10:16:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 10:16:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 10:16:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CuB/3fM7jbgitwo+4GQQ4wNYPv11EuJM8ePgTHy9ewWYAMGUTk3+u5wc17nrvAu3lV+xAyzdnA+M9xVW9TTGL7cEDgV+kGgEnXYIanm5EFeW15rSk2hpYFVhkzVNS99es7TZikxLse92/+vmw8I6+/gdvYxcets6KaIiNMYagdTFRizHopDa/ripHeR6nRUrelmykNENtaahqm955XBOnxO59Vur4+RIC0XHQDl9Tm9AHTPhBVrIw583YuVIDrTfNPoCAJW3I7L6O7EZZPXO80NtwPZmjYR0oE9Vjxf+h+EGYhmxDAXyUHuh4/izz7tMjkf94lu4q637754tnfv+UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YdsyKgzbLz/cpVSXKGB+8vntjscPiCs8d7QWInrPL1s=;
 b=oJwLQe/Ou0evKfYRNoAgXa2VvYfyJhZA8Mp/7zvr1AW+lMRJtAoiee7Wxld3Zt1C7RylKa1q1GrQK9OPAJW5Y6saRfwrdK+bEWPlyNGBwUODb8aFW7493/IbI00XBB59oLmbENGDuM7zey1oxnhSKu5MtBFbvq6CbRQY0STEXsZ8UF3B8P0hT01n44cZn0vv8Tp1LUBL7cVfgOqrQrgEE86DtYFCrt/vWCbUG2h+0viCbo8CvbIDefKrd1ZTxqYw7yDEq19H+ftfgNYiagxlyhrulsCBIDYlNFi8ZADCpob4mxBUmgmwROGQy9Fd31gpSFGyoBd+6bf80oa1jcSkfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CO1PR11MB4963.namprd11.prod.outlook.com (2603:10b6:303:91::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.41; Thu, 8 Jun 2023 17:16:43 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6455.037; Thu, 8 Jun 2023
 17:16:43 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v3] drm/i915/mtl: Add new vswing table for C20 phy to support
 DP 1.4
Thread-Index: AQHZmc7qd0eZ+T85XU6jzpX5JRtdSa+BJfkA
Date: Thu, 8 Jun 2023 17:16:43 +0000
Message-ID: <DM4PR11MB59714C08D0D64B7979446F998750A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
 <20230608060158.27907-1-shawn.c.lee@intel.com>
In-Reply-To: <20230608060158.27907-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CO1PR11MB4963:EE_
x-ms-office365-filtering-correlation-id: cc53fa89-de32-4ecb-81b7-08db6844216c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tghAe+v86YkwbltS3Sdw2e3kpDOIhvuVE+46o7Kvxn8+OEeO3/mr2gaaXE+uDsXNWyZ8scfvxVCagkxhgG0Rk2MYFLcnJL3JKuOvAeS0GmGiLJgnASk35QOQ6prrbfids8TRJv7kseSP7XQp8GJ/ewlRkfTdm2R0uJeucmyy3R1J4WgQoMHmvbHiXMyzuyXF2rHflwNuJ8kc/8brBHziEz86RXWE+gXA08OhWm3lFdxadQGXenwYz+JXjZB0ruPi3peQYT7awkvyfg+Mp4JiF6b8w1ilcmL/ar4MFi2EGwSqQg1bVocrudGV9/zmONGA5NYciLX/3JLBwuawMZ/13DSDnzQErTnySN9q6Some7LGojJnC+5Gx8V91kRQifqhE5A/4V0Znkee5LKEu66KQXHROud8dTTyKDzEt5hBoi/qYOxZoIvGw7QrtZN8ydjwMe29pqvOKLsYZ4x6ziZyhghpGqdDT6jfQDTSsTH017f+ih4UVTeZXVR4djhQ9LdKMgt6wtX/GiVS0zU4Y9OSgaBSFAah9SoN3Z9zWxntFpzJpS/rWvdTtKURWKjRNdDyAClrVqJkaEWDD4silTSMM7u8/Dp2fz0YieGR4OtS2Xgok+YDRhpDDFc39I6dxijC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(366004)(376002)(396003)(451199021)(38070700005)(2906002)(86362001)(33656002)(52536014)(55016003)(71200400001)(7696005)(186003)(83380400001)(107886003)(53546011)(9686003)(26005)(5660300002)(6506007)(122000001)(82960400001)(478600001)(110136005)(54906003)(66556008)(66476007)(64756008)(66446008)(316002)(4326008)(41300700001)(38100700002)(66946007)(76116006)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BQixe2OkqBk3Eu7PHFF9jDtRl+m7mJg54JdKQ4euo0GXhsGxJ3Gut/0w7R7F?=
 =?us-ascii?Q?Fqkalm6VSPLcucdNViOJ862ve1cUFFq/NxkUU5JeGmkvQzImyJiKu2LpjOhW?=
 =?us-ascii?Q?tSUy/F+Hqyla78bOcyze6AZFoPZyN4KGNvv5z8JwhCCyT9D+g6oG+M6oRMu5?=
 =?us-ascii?Q?Mv9JZjwO+bUT5fEEOockrXtSg8Ofmeop88AYe3+BneLRZL97Dlj0spFwemkx?=
 =?us-ascii?Q?gcZA9I4QItbsWP+VcMQ8+btd7GL5/QQJiBX78g86qdLGi8UNnDmdpIfhrGbd?=
 =?us-ascii?Q?bnSte9fR6OWWGb3Lxl2Qa7LiwL7TcoSp5PfonCjHp+X0u6syFDagDKohurJC?=
 =?us-ascii?Q?9ILe2C0LRJAws9XMJagZxv8v8lomFM4OfGRY7KtinyD4Usud19n23ZH0Paqk?=
 =?us-ascii?Q?jB5nsFZbFX2KDsD1e5nIxF0wtfQ0r1JuAlaeeXrbIJrp37q0ULBkIIrX0GE4?=
 =?us-ascii?Q?URYcmm8TN4wvCwdSdoZDbQVF7FpY8lu9cXu1N0Zhz924QH8mnwbA35/v6kM6?=
 =?us-ascii?Q?bNsqTje8j0bJMV1F7IF70/88fyOlOzHgTb8E/7FA9+TCG+FI7jfk7AmrPzl9?=
 =?us-ascii?Q?j0WNF5gYVFe/YjcOkzTtMm0llhrL9O6wy02MIBNDtjrtjg786iY/0K1z1a83?=
 =?us-ascii?Q?lyPd9mPO3uZRF+NsH3nv+dUeuD4dQNT74VKye33LWdQcQdTgI2gLLlOxGCHT?=
 =?us-ascii?Q?4Fi1YF8FSzwTqmISQK6Uhwu8ORNcdf0eSc9iPrmxfovPOPb/MhUBEVSNaqM/?=
 =?us-ascii?Q?RTs9MgWX2rR37D77i209vOKerYBh+JVMdiR+qyg8fwhtuhiIqvGV7kaJ/PC3?=
 =?us-ascii?Q?H2bpXwC/r8VvWCYmBplpC9F+gz4tmlmOcPht3Mtgi7VYS4XpUZuqr0uZ7dXz?=
 =?us-ascii?Q?e70e9jbCKzeGbWq4Jg9CTO//hfrsOi/3tAukzjPlF+AnjpenROQxsnOL+2pR?=
 =?us-ascii?Q?Un4rt/kw5A7KoWCQpYGG1yThaV7uksqcHYLOp6J3fh4XboSFnkKn0/FhlgjN?=
 =?us-ascii?Q?JksretBcJpg+eme0GfnNrazA5HAuMfjNaf2zzb5KlIvABKi9ms6+I9UfEbUL?=
 =?us-ascii?Q?XCz/qqPJBBcVDqnTg+G2tASek0ETaANbQj0SbN5j0Z6LXrV/Lmm+rQ5RiVB1?=
 =?us-ascii?Q?8RZ4UUM0m6fRDeVkXCI6gDZkZ3PYhMFJjjyYHM7f42bprOTt/v1O3vKYUfUj?=
 =?us-ascii?Q?8xYtgHWdCRdrLmthV6vcQ1uAEsofUDrUBhOHGFEbUHCTpImqgtlJxowMBqGf?=
 =?us-ascii?Q?tHGK6h7sipiwn2SC36wE0Urix78QHgw/t0Q5YtuqE7mcBZ3kU1p7w2gxx2tu?=
 =?us-ascii?Q?F/52LCj/DBtkN1fQewBe78k5VTkk7HjN1MOvH9VMFfo1ykTDVVjbl2CKDHQF?=
 =?us-ascii?Q?1aSrEgAdv+qgykI/+vM6tBTh5cfhUJgBdwrx/nFdTQamaLXYKk/A38xvzjqC?=
 =?us-ascii?Q?urqQyc1pWv7FN76GkCOcWqSU04xC9yqqNDJjUQx92cYG5uEpQtBsVEZBvsrg?=
 =?us-ascii?Q?CoDija/lQjb1SV/HBmEmaZNlflIVw1SA/YL0nygi8B1wiQq8u/HUy+HvvuAy?=
 =?us-ascii?Q?bKpB/syA9qXlZOBMS6BsfZ+5wJAHsl6+CtdZ2joG6/AfFOOZSTsXbM7ZHBF2?=
 =?us-ascii?Q?QA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc53fa89-de32-4ecb-81b7-08db6844216c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 17:16:43.0358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g0hd35D5VOYYpvfuK5Zy29WbEavP2yz259pCFVDYiVFVQgJOdyV74SY9gyAaik95mpu0ATT5+DnQtDnFcuyZo/5GINKH+9ZU8EcPtUb74Wg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4963
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: Add new vswing table for C20 phy
 to support DP 1.4
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
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Wednesday, June 7, 2023 11:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Taylor, Clinton A <clinton.a.taylor@intel.com>;
> Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [v3] drm/i915/mtl: Add new vswing table for C20 phy to support D=
P 1.4
>=20
> Add vswing table to support DP 1.4 for C20 phy.
>=20
> v2: rename mtl_c10_trans
> v3: add default_entry into mtl_c20_trans_dp14
>=20
> Bspec: 74104
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 26 +++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index b7d20485bde5..d7301f13c5cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1049,12 +1049,26 @@ static const union intel_ddi_buf_trans_entry
> _mtl_c10_trans_dp14[] =3D {
>  	{ .snps =3D { 62, 0, 0  } },      /* preset 9 */
>  };
>=20
> -static const struct intel_ddi_buf_trans mtl_cx0_trans =3D {
> +static const struct intel_ddi_buf_trans mtl_cx0_trans_dp14 =3D {
Kindly rename this to mtl_c10_trans_dp14. Cx0 should not be used if it is n=
ot
Being used by both c10 and c20 phys.

--Radhakrishna(RK) Sripada
>  	.entries =3D _mtl_c10_trans_dp14,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c10_trans_dp14),
>  	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
>  };
>=20
> +/* DP1.4 */
> +static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] =3D {
> +	{ .snps =3D { 20, 0, 0  } },      /* preset 0 */
> +	{ .snps =3D { 24, 0, 4  } },      /* preset 1 */
> +	{ .snps =3D { 30, 0, 9  } },      /* preset 2 */
> +	{ .snps =3D { 34, 0, 14 } },      /* preset 3 */
> +	{ .snps =3D { 29, 0, 0  } },      /* preset 4 */
> +	{ .snps =3D { 34, 0, 5  } },      /* preset 5 */
> +	{ .snps =3D { 38, 0, 10 } },      /* preset 6 */
> +	{ .snps =3D { 36, 0, 0  } },      /* preset 7 */
> +	{ .snps =3D { 40, 0, 6  } },      /* preset 8 */
> +	{ .snps =3D { 48, 0, 0  } },      /* preset 9 */
> +};
> +
>  /* DP2.0 */
>  static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D {
>  	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
> @@ -1090,6 +1104,12 @@ static const struct intel_ddi_buf_trans
> mtl_c20_trans_hdmi =3D {
>  	.hdmi_default_entry =3D 0,
>  };
>=20
> +static const struct intel_ddi_buf_trans mtl_c20_trans_dp14 =3D {
> +	.entries =3D _mtl_c20_trans_dp14,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_dp14),
> +	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c20_trans_dp14) - 1,
> +};
> +
>  static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr =3D {
>  	.entries =3D _mtl_c20_trans_uhbr,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_uhbr),
> @@ -1678,8 +1698,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder
> *encoder,
>  		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> !(intel_is_c10phy(i915, phy)))
>  		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
> +	else if (!intel_is_c10phy(i915, phy))
> +		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>  	else
> -		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
> +		return intel_get_buf_trans(&mtl_cx0_trans_dp14, n_entries);
>  }
>=20
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
> --
> 2.17.1

