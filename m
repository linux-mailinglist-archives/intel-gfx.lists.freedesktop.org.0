Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 020D7788F51
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 21:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A0E10E6DC;
	Fri, 25 Aug 2023 19:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6E110E6DB;
 Fri, 25 Aug 2023 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692992825; x=1724528825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ISaVbrSiGXs8kKEnoRSomAHI0EeNUKtQpkzfKP7CGh4=;
 b=fHw54LYijefa5cR3kurdfzSq623ZyOW8lV41Fg88Ilop23aRu8tx948D
 30873I+yjxVvD4GwDVSQ9Ope+tB+/jo0vI4Q+S7H+ya5T6e9xaTz9C9E8
 viOGmHouhDoaIBeoboh3TkoglA9ZLSyLl6Q/fkdaJ9Rl8VG9HuxZFXsBy
 DDG47/OUIdaGcTd69HhcNZ1qoinoBtGEKUwoGCYJ3j8Fx2jBuzefnMHtd
 lKgym+pXvnigynfozQ2cVNn6N2l2AROvHcm0FLKhFmiDClniMQaiqok1X
 sV5PAudm7Vt66HHO/iNP37TgjYzUhoeAK1vD2BleBYUaCLfHeshEZyt7+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461153545"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="461153545"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 12:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="740719864"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="740719864"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2023 12:47:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 12:47:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 12:47:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 12:47:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mVRFHmUufhy/NuXX+26vL7CulgyPcakh40CYBhcUVidWuL4bFGTwovuDrD1MdkMBGvt14dgC21wLX1vvE9vuvRbC5N0oCY7itZuitLm/VLFJiyDp9PyyTaxtvf9Wd0tBI1WtOxlV6jCu0Ml+SMg7Z/nOegAgFvdZ/n9rdXPxrhGgNA4Glrurd0nAo8TVUTIBWVFnJ1iedHXxPN36dHhDZtpR1dnvRbc27ec+F6dm76vMVST6X0W3C4OxjrGqGkoBZQO1g53xeirl3ymwTlV92Fn0NIVeUNudZJeoltiuHr5KZivOHLxAp9bJDiUqwdKXRC4Scs/hn9zBUUtWJoG4vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PL7Jk2WfV3EGkEZxFusR8D+cEUFe1r3vIDoca4JmV/w=;
 b=QTY7Lw+l71iLbxSzKHGGaZVwkf6TAZn+FGfqAMDXsJVKY0LApHfjHj+KiF+A8b4sd9yO322CmcfdL6OFTsscu+Peqx2gjrNlzRcBHrff62c9n8xoXRlZd12gal5VsSNnrMs4ikKfgAudVZvJ3MnMKfs7a3rlJEW2gm2XdOyyeMs1YlQ4U3oe7WMtx9mLEPt3SgYbAP/rVerMK+ZJ3PBhZ9SapPGt+uF4rEI7/1O1wnBPXQgrzFXxW+NRKAK8p2OSCNKVi48kN+ZhpdUE64GUcTYTS9cdKr/KjiTVzDreZ/mToGLdtCg2eE2D9zP1xEyv8aEseF9IrZlKn6DvpRoZ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS0PR11MB7632.namprd11.prod.outlook.com (2603:10b6:8:14f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30; Fri, 25 Aug
 2023 19:46:57 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 19:46:57 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 22/42] drm/i915/xe2lpd: Add DC state support
Thread-Index: AQHZ1eSTP3HYyiKMYEiHrRn5fW0NO6/7beEw
Date: Fri, 25 Aug 2023 19:46:57 +0000
Message-ID: <SJ2PR11MB77153EACEE615554FDBC108AF8E3A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-23-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-23-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS0PR11MB7632:EE_
x-ms-office365-filtering-correlation-id: cde00a45-82ca-48ae-09f6-08dba5a40a85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m8KlfuSfEOAz92P2x/GVbmFhawigu57b1S6/ef/xDHsPpe3Av3rROJfHuYnFiJZlw5nNKOsRw+xkXQfUIBQjLKBK/rAj2f3iHo0EXI0/EtPBF6Aui3eMI/m2keZdpg1G/TH8uydzxdFatgghOLuxg681ikzwU5KvP5QMdqDHfPlFx4kdXsFpxcfvx8j0qFqlFBThy9qKKyzzAxCNc4zQMrHj8LBojT1BEcLyg6yNeNYagy4HnnUHGAUWO6VJdte+DhmSseO/o4qbX+f693TCzche9bTdSR6TDQe9v/VYj0xhfI46Sk9lw+NsOs26tRoWk74GifbrwUG+GYheLtU3zlAa3Rbq2U2/lSUz6WM1UhqzpAKAzm9u3RG+GV5HFxaQE+S04Uen3SFEi9TDoVaAoTJ9K0ZUnkG8kr15XzSVk58KHMES7FUuGb7lE4tMnCA2SJnj5FKRdnTo4ITAXsPBcThestAnPE4s7UEjGI1lHgzis3EnoYnJkrHqJfluMieJMEDgBIx7FH5H2JrTYqXW20NA6b5/c7S1oyEnb7OTaQq+nG6hFAvgm4oB9GWhF58ou+PyGjuk3E8yWxdUGB0HjzzLm/NygmcHrPj6vO2wdMdG4J8n4Fem5su6faIwtnPs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(39860400002)(366004)(346002)(1800799009)(451199024)(186009)(5660300002)(8936002)(4326008)(8676002)(450100002)(52536014)(316002)(107886003)(26005)(66476007)(41300700001)(2906002)(66946007)(110136005)(76116006)(66446008)(66556008)(64756008)(478600001)(71200400001)(7696005)(6506007)(53546011)(9686003)(55016003)(82960400001)(83380400001)(122000001)(38070700005)(38100700002)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7k8syvb89dniy647vbjR3YprerLZSkNBmJjo+Th06wLjWrNCZ556atS+GJzE?=
 =?us-ascii?Q?17UecZDDVd6eW4cgrjZ2lfd7nDv7KtqDJ9KV4knKGKzbbZlxFv4wZ7QZQGEb?=
 =?us-ascii?Q?gk7deBcr184LyKMNy9L05yu6EXuyNlVXX0I5n5ohZ1Hr+g27a9IwZt5hKLGP?=
 =?us-ascii?Q?mtYLp7OJ0cdQ/rTn6UKAnf9LaB8d2Pz8uX1KsAMhl8qAujslk+0LDCiFS9Fu?=
 =?us-ascii?Q?SlWrnUW3eYdbDTwbkJ9Dh3t1YtuHsZy4mxOpsj+kFrWsc9HpCPgTs8NgGV9m?=
 =?us-ascii?Q?iAZ/Gfr33HBe0pSWrm9IhWkX99UDO7CQ3wQ3eEqc+pBhC/FjLZ8ymsPQKyIY?=
 =?us-ascii?Q?lF2AJCm7oaJFWx4m4/8Qn4JRTpjz0IMBmNiDLivdA1mcBpE95XLa/medI6wl?=
 =?us-ascii?Q?/8cP4oLmG1YjjmivcUUGwOri6IyvLRd1oiCL5Q+T7n6tMJY9QBZ0YZ8lAp9b?=
 =?us-ascii?Q?7nI3NSpAJy39uKuU4fcrYFGj5+DhoKQSBMFrgLTYGOZYoALNVM70MQW68Yci?=
 =?us-ascii?Q?+SLRoH6UDqCdhoOVL8Zc64Tw6gCWM8mC8bI0w/mb35DOTnHYQI7OZ4rMNtrE?=
 =?us-ascii?Q?aDQfDQaRm6Ay9ja0EZs1dJKVcqffdALbwmwKOooDGTKEu20ONNgQZyZUwFJ5?=
 =?us-ascii?Q?I3uuBvjYOfVOVxXeKZqC9pJLTO92ZE29g0/dr01QE/rxuDmw3EgKztiRIN4G?=
 =?us-ascii?Q?56SZs70MMaSe+q5W0y14K6GT4wed0Alut+eezn97O0W7xOhAdBHKu8Uxtw73?=
 =?us-ascii?Q?+IhdvZeJC6nCNP2/0hrSXXT6pMVQBd1X/hkw+GFRT7mjT7jMRU/a2a+oKkKk?=
 =?us-ascii?Q?7g4RqWRgncBs4A8hTz6h6cs9cP+1Di8ZNKoowD8hTEZOVFBEpfLTGSR6PJ63?=
 =?us-ascii?Q?bsoK82eTuY+ugcw9QON/qMDPNr35rkWgHU5bJ+E1mzOZ8HhS/XmwDGVLuN9N?=
 =?us-ascii?Q?CiyoO4duDkSCFSZTFkKvDzbM2Wrg8llISS44YThILp5dux1E76oImmMvHgkH?=
 =?us-ascii?Q?LGbczMVZYdR/Tysui6IEeM218QyUqWZ5HJWteMgyRqgfjPrrk72Z4rC0JrLW?=
 =?us-ascii?Q?mn9mgqUEf70yDMn+MguiG4SPYQl9G64EP3rLLJMprsq7WK4iTHYgbOh6pqwd?=
 =?us-ascii?Q?R3WOoFyZJllQ8NfFUQyaYIIN03p5S75Xs8cf/2GCjUFXrYH4g5xdNsLSUGKM?=
 =?us-ascii?Q?mNyfJmOrh1F9PmMshpO7STOcBa43nNVfC+y6asRwCFDL8dxocyMUdSbO3HVU?=
 =?us-ascii?Q?/MZKjKvQPVTqnqAamnrBmRS0iH3cTGgucEHqte8BkES5lKC3Mr/Mi2CBTPqH?=
 =?us-ascii?Q?ZrfPO8EzdLbAdGF8YMOJW+c09qGKboxk7hbWDyipN2Eni47qbCN0P/I1opMD?=
 =?us-ascii?Q?lySsxqM3AM9zXwHwMUU8P53V2mvaGx08SZbhQS5GSEpXc/ZRIvYx5XE4uh1W?=
 =?us-ascii?Q?a5K8VzGAUJUKc85HV77upCKj1TNa5kN97Bq1kaKnJ7Z2FzIFqeQ1JXhtr98s?=
 =?us-ascii?Q?WhUHyjnUo2cbCmhzvkCWZsjkoIA1jvVSjhTrTQSTlrDat1GRd6BJFkukqIhz?=
 =?us-ascii?Q?OEpuntULnSVUlSqOuvhKa+CYOpSK5lsYuUubXzfD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cde00a45-82ca-48ae-09f6-08dba5a40a85
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 19:46:57.2208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pDdB0d7vtk2Ahr+nS4FqYFY8wDKsvdMl5vle4/GuRQz0li+3RLtp8RWqD3u6Yb0+ZdfwzwP3wIfTZexbitvliS2+p2whwUVOtX6Yat0GR7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7632
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 22/42] drm/i915/xe2lpd: Add DC state support
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, August 23, 2023 10:07 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: [PATCH 22/42] drm/i915/xe2lpd: Add DC state support
>=20
> From: Matt Roper <matthew.d.roper@intel.com>
>=20
> Xe2_LPD supports DC5, DC6, and DC9 (DC3CO no longer exists).  The overall
> programming and requirements to enter DC states are similar to those of
> Xe_LPD+ although AUX transactions do not require DC5/DC6 exit as they did
> previously.
>=20
> Bspec: 68851, 68857, 68886, 69115
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=09

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    |  4 +++-
>  .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++++
>  2 files changed, 22 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 7e2059abae9a..508a3225d9f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -944,7 +944,9 @@ static u32 get_allowed_dc_mask(const struct
> drm_i915_private *dev_priv,
>  	if (!HAS_DISPLAY(dev_priv))
>  		return 0;
>=20
> -	if (IS_DG2(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 20)
> +		max_dc =3D 2;
> +	else if (IS_DG2(dev_priv))
>  		max_dc =3D 1;
>  	else if (IS_DG1(dev_priv))
>  		max_dc =3D 3;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index cef3b313c9f5..d74a742437c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1570,9 +1570,28 @@ static const struct i915_power_well_desc
> xe2lpd_power_wells_pica[] =3D {
>  	},
>  };
>=20
> +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
> +	POWER_DOMAIN_DC_OFF,
> +	XELPD_PW_C_POWER_DOMAINS,
> +	XELPD_PW_D_POWER_DOMAINS,
> +	POWER_DOMAIN_AUDIO_MMIO,
> +	POWER_DOMAIN_MODESET,
> +	POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe2lpd_power_wells_dcoff[] =3D =
{
> +	{
> +		.instances =3D &I915_PW_INSTANCES(
> +			I915_PW("DC_off", &xe2lpd_pwdoms_dc_off,
> +				.id =3D SKL_DISP_DC_OFF),
> +		),
> +		.ops =3D &gen9_dc_off_power_well_ops,
> +	},
> +};
> +
>  static const struct i915_power_well_desc_list xe2lpd_power_wells[] =3D {
>  	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>  };
> --
> 2.40.1

