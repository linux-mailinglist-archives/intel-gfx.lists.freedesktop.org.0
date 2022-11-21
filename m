Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B2C631B16
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 09:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB5010E164;
	Mon, 21 Nov 2022 08:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB19A10E15C
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 08:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669018474; x=1700554474;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MXx7DLsmH07s4XWGe9sS2aGRN8xUqezXb115XXzsdLM=;
 b=QV77oDT+u6VHHgznYYes9t075ooZT/xx5Ewkp9NVE0BIG5HyKlY1YL6E
 yBOjzgzMxJOIkYQkS8oIeKeM0ptAlaJfL/97NT4oJ3IBATlM2MlmLovMJ
 ixCVsedSwCJBcNUNHKB4adO36CZ8zGCH7/q/gTOWmSX3DE5NGjwPQWZnu
 xUs0AVI+ig91AUHKyN90ZNGta0VrY756bL5X5ffOuXsDqdPU+FxSLNQhG
 BvfOWeiQ0kRbtVFfFvrc159s7nnLl52tPlu2rDAY7RMj6+qfLFBHmTaJq
 egFWdOi8Stpwxo5SJWekFbid8UTOH9Z/IS5/V3YlRTM6NRAwUYyLoJwyd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="313529035"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="313529035"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 00:14:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="783359059"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="783359059"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2022 00:14:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 00:14:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 00:14:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 00:14:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 00:14:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JPd/TquBqne5RFxm1h19WUKgY2RhzL97ZSQafN6nrdgpM3oZJM9sXCXXjnBZtNFM8TuGxCfbIJdGqpeLq+qHcgYHoXey8CqcGDMLdcRvo21Nfu/OuP8xf8XvD35Vso/fZhjPelWC6yR04Sc8IFZhbxsoVzqMnvmYMgnU7cSjOSnJObjgxNBpejxhsU7xyB/HNXmi1K2cfr7gMQDqEWNKPeK2t2uKoNNzHmOJMmVW9JpMJW34ynj7fe1wEjYz7fG7Xl8wtO2+Ll/yfM30045fHOfua7bRAIJrXT8l4yFG0DGZ3P8UDZxxlBWMKkaVncqRwlBrtRvi47a+uMRb6yA9TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jn9nnbtSreyfXU0VaXc8xLVDaYF6PlXCdqHhZkLb9tw=;
 b=HYkJLN5XNYhip2GjLedgS9ntRh9aws44rnaPv1g5qyJ9GbmDhFwoTILCAgzGHG4ow0yUufzbG7JzvikdLJVEMKWSlsNnzYRhJ7O4heRnHezSWqpWbmm+RVmWUXaMQrobERV/66LyBQpGEAVWFgxHvvvGxKs3RHU8yYC/j1SxkGSE5P17wrbveVsV4/ND2Xcu+YXXUfOQElEZf6Ns6Nhj1LOzeLp6B/QpdC/QeffZgM74ykqOMo7/KuM0WvmGKwyMVOBFuFp4GVxiEV5xk/9FfaohMAC9wQ1CgdGpQ0tDAhsIhkgy8QiW8fR/mblYC+tINZ0WcLLrGmbV/UvNTlX+sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BN9PR11MB5340.namprd11.prod.outlook.com (2603:10b6:408:119::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 08:14:18 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Mon, 21 Nov 2022
 08:14:18 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tauro, Riana" <riana.tauro@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 3/3] drm/i915/selftests: Add hwmon support in libpower
 for dgfx
Thread-Index: AQHY/Xrn5jNkOVv7v0yeJfZeSaJrcK5JBHfg
Date: Mon, 21 Nov 2022 08:14:18 +0000
Message-ID: <CY5PR11MB621154D68AF389E19BAD145D950A9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221121072946.1013463-1-riana.tauro@intel.com>
 <20221121072946.1013463-4-riana.tauro@intel.com>
In-Reply-To: <20221121072946.1013463-4-riana.tauro@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|BN9PR11MB5340:EE_
x-ms-office365-filtering-correlation-id: d4f60b57-85f2-4c43-2a0a-08dacb98631b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bX0PL3SsiOkWi3SVUUevgDQ7D8PhbQ0tN2vuDnjbfigZH1TJ4KNgNGrf93tZn+wO5J5b5k/YcGPCB6jFsDhXRcxEWXbr4zRMA+WP+VhhH8Ps3EmD+4lEXmwxjhIvEDA74C1mnhlIu9LmuaAGiKSei3It313S+c+FGrMGHTKIR0dM8Wg4JbUTLwVEjKDOve2TrVOFTf39e5BM8Ij1Y6SQE03h0YSysPHm7N5wTSjLHeObG8M3iIPt4wuylXsI1FeHgbVgekut90NPXgWRmjfPSLbQ/PEhR0+oIFJWA0xh/8PPqNbcjN7xgCxQ5x51Q716cxm99dAIcXTXyN7Fya/TM7OryxehRkA9PXRZ3XwdSFGYnPmvNK/9Trn8iVdWo3ahn4jf7rsmXNOmsbPOUoPdbOlOIfLU/rcLqmOQWKZBxFknjnn8lJXEv5oXhkRaSfi4Pj6yVCZJpfeKnYcjGmBajYmI7IE3dcE9V0yKFpjJbnAq2Mz8FuaXX44nwQ0MA8Wdv2oyebgmfmtyH9WDiq/LEZ0SdgwAccfQc6naoaMIgG5HxxQUBeId/gz17NdALOzLbEfOzH8UwEbVBwwkAIIy8/9VfzAmu+gF8NY9vHF2MG49CNQUCQ2nfHcFG2CBhueeA5aKjOXLw1odBbKYnkGLRy5vni4RAikdYG5TZMe7A9qjuvzZhJ/f54Kx7oG3n7rnRKF+/ypNP+x9XBIkdY1XyQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(39860400002)(346002)(451199015)(86362001)(66446008)(4326008)(53546011)(33656002)(55016003)(41300700001)(76116006)(55236004)(66946007)(66556008)(66476007)(5660300002)(52536014)(186003)(8936002)(64756008)(107886003)(478600001)(71200400001)(9686003)(26005)(316002)(8676002)(54906003)(110136005)(6506007)(38100700002)(122000001)(7696005)(38070700005)(82960400001)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7O3oSej9t72mJBIOGqzrGyy5MC3DTFe2QupVvvQV7qbIMDMw0dazsK2GyifV?=
 =?us-ascii?Q?3yhJ3x2jH/1PjX93+tkJelLyioKLZs9gmw9JXqdA1XwqdjjHVrgJhETvs/qg?=
 =?us-ascii?Q?N2x0za/bksPhkUHGgEZSLHNQfboEBfKhmOMN6GAs22k6GMO+RUmKKOU8TIEf?=
 =?us-ascii?Q?mPHffzjmIApQ8dyXXGKpwXK4ziUPgU0037ozVf6inrY8iXtcnb+OeIAEpKjV?=
 =?us-ascii?Q?2279YJq89AJMTw+BvA5qap/ngj9H5LN6gNUSd8M/rrbmgdPGh0Vxx3/oa5xv?=
 =?us-ascii?Q?+lcoTpniwz4pDqM6pFuIBMPeGvN8ivXt0KUvu8OFhG/aFextKrW1wO3O+ej7?=
 =?us-ascii?Q?4rw7CdTt0V4q0mmsZOTmavhYZpVf93lptGC62KmvghodrLGdV7Qk9NTJ74rZ?=
 =?us-ascii?Q?gaAzX1hcgD3CM1upDehe5923Qvfl8XiurAVNG1rkvgoN2L7qrcOqcuKOmy3+?=
 =?us-ascii?Q?m32d++cwpwTN0t9ou1Jb7krO50y5l9PAVjN9SkfTnqGZXznwLwCLyyu+ma6J?=
 =?us-ascii?Q?tBw5oLp6GZ1DdgfqNP7PB159CRbI2C0TuXLOzgcaHuXm0R7yyTIQ1DHgFLXr?=
 =?us-ascii?Q?e161AIGTNxNG5eQDBGY54LadmRYTKMJEze4hj++WZTCKpSslm8vH7RR1MS10?=
 =?us-ascii?Q?erxE8u3FnGFEg4fuUqoX65xMCW8itIGkJqU/y4TvVU10sJxaTHR5bPtEdJew?=
 =?us-ascii?Q?eSLBBO8sMikjgTCVqiDbQNtU4jGq+mYH+4uSDlPZ8QXWeef+yYb9tllYvGew?=
 =?us-ascii?Q?bZYPH+KfzokqPuv2Gluch0Fa8FGKClSQlBZjNkarnR6mSXFfc0oOfaED0hzD?=
 =?us-ascii?Q?Y7Y0Z1h0wUxUkaqC4OGErrqIndIPmAmnZiWTYbodc10A9aRWmNPgTa1r88tA?=
 =?us-ascii?Q?TddxTVyZWEZgcthzK8ulw8fsTQOz6zWO/2TjvK+uUwF/cF6c4ld+jmGV3vAT?=
 =?us-ascii?Q?zkbD2+Q3Uq2LtDCMTHqSJRrLTT23cTNH8mBZCb3sahSk+bkb9sBXyIDf+vMW?=
 =?us-ascii?Q?8BKC+nl7z6brjGvAJptGz4KQ8405CYqwi8ZY4WaMGXgz3mmxnsC4ACqJ2Mbc?=
 =?us-ascii?Q?g1P1bfAutkSeOOINLl3HDayDIDdOiaZ11IqO9jp4k1I/YjzKvbxeiZHF7kN0?=
 =?us-ascii?Q?eD1CH0wBEqy2knWZoc7au0rT4oAEOUfKZGcBaH2XgAxc/CW/4AIxtTOE11Rb?=
 =?us-ascii?Q?83ANl0ipUDSZnrWurR4JJKQ6oQpxhjCUODG0hLe0KMpE+VIjTf8mLFkZZR/7?=
 =?us-ascii?Q?DJtVmZoiXHdq+PiAFjEkaZQCG/rbatvZa6b0SV0fWFEKHhDxzIlnL4xC67bK?=
 =?us-ascii?Q?2COkMJjj5gRJh5vILxZhF/71Nk5wnZnch65fky+0IVQZ1Cv54y7FhKoyPFbH?=
 =?us-ascii?Q?6w3x/PHoDSZuC+1PAQWLI1FKjda89wzsGwL3Onq/8+rtLs6n2BNxPPDdYRyt?=
 =?us-ascii?Q?u1Lsa/J3J+EjrM7vQZFh7EDii6uX7sr/LsXCkRWuvkroIm57sG210iMtGwkF?=
 =?us-ascii?Q?zDhzc8V41h6qdMEOtRDLc9lv69gY6TArElc/BZi7Gc0YJt1iPpTMEjtr+Mdm?=
 =?us-ascii?Q?CFCC/X961xmSof2vpZpsQxEklAM8FGJzRlscCyR3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4f60b57-85f2-4c43-2a0a-08dacb98631b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 08:14:18.3899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Xwazn59225LSrM5K6gAxloF5uN55a8vWU9Ni72Ve0OJrG3GvDv+D0bikHSeHRXtvC3K9yAik+/H8bwMLO0miUfmRjupWAMuUy/kRv2Qb1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5340
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/selftests: Add hwmon
 support in libpower for dgfx
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
> From: Tauro, Riana <riana.tauro@intel.com>
> Sent: Monday, November 21, 2022 1:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tauro, Riana <riana.tauro@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>
> Subject: [PATCH v3 3/3] drm/i915/selftests: Add hwmon support in libpower
> for dgfx
>=20
> From: Tilak Tangudu <tilak.tangudu@intel.com>
>=20
> hwmon provides an interface to read energy values for discrete graphics.
> add hwmon support to the existing libpower library so that it can verify
> power consumption values in different selftests.
>=20
> Changed prototype of libpower_get_energy_uJ
>=20
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
LGTM
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rc6.c    |  8 +++---
>  drivers/gpu/drm/i915/gt/selftest_rps.c    | 22 +++++++--------
>  drivers/gpu/drm/i915/gt/selftest_slpc.c   |  2 +-
>  drivers/gpu/drm/i915/selftests/libpower.c | 33 ++++++++++++-----------
> drivers/gpu/drm/i915/selftests/libpower.h |  8 +++---
>  5 files changed, 38 insertions(+), 35 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 15b84c428f66..845058ed83ed 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -61,9 +61,9 @@ int live_rc6_manual(void *arg)
>  	res[0] =3D rc6_residency(rc6);
>=20
>  	dt =3D ktime_get();
> -	rc0_power =3D libpower_get_energy_uJ();
> +	rc0_power =3D libpower_get_energy_uJ(gt->i915);
>  	msleep(250);
> -	rc0_power =3D libpower_get_energy_uJ() - rc0_power;
> +	rc0_power =3D libpower_get_energy_uJ(gt->i915) - rc0_power;
>  	dt =3D ktime_sub(ktime_get(), dt);
>  	res[1] =3D rc6_residency(rc6);
>  	if ((res[1] - res[0]) >> 10) {
> @@ -89,9 +89,9 @@ int live_rc6_manual(void *arg)
>  	res[0] =3D rc6_residency(rc6);
>  	intel_uncore_forcewake_flush(rc6_to_uncore(rc6),
> FORCEWAKE_ALL);
>  	dt =3D ktime_get();
> -	rc6_power =3D libpower_get_energy_uJ();
> +	rc6_power =3D libpower_get_energy_uJ(gt->i915);
>  	msleep(100);
> -	rc6_power =3D libpower_get_energy_uJ() - rc6_power;
> +	rc6_power =3D libpower_get_energy_uJ(gt->i915) - rc6_power;
>  	dt =3D ktime_sub(ktime_get(), dt);
>  	res[1] =3D rc6_residency(rc6);
>  	if (res[1] =3D=3D res[0]) {
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c
> b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index b8b0b0c7617e..6732aa7d4792 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1090,38 +1090,38 @@ int live_rps_interrupt(void *arg)
>  	return err;
>  }
>=20
> -static u64 __measure_power(int duration_ms)
> +static u64 __measure_power(struct intel_gt *gt, int duration_ms)
>  {
>  	u64 dE, dt;
>=20
>  	dt =3D ktime_get();
> -	dE =3D libpower_get_energy_uJ();
> +	dE =3D libpower_get_energy_uJ(gt->i915);
>  	usleep_range(1000 * duration_ms, 2000 * duration_ms);
> -	dE =3D libpower_get_energy_uJ() - dE;
> +	dE =3D libpower_get_energy_uJ(gt->i915) - dE;
>  	dt =3D ktime_get() - dt;
>=20
>  	return div64_u64(1000 * 1000 * dE, dt);  }
>=20
> -static u64 measure_power(struct intel_rps *rps, int *freq)
> +static u64 measure_power(struct intel_gt *gt, int *freq)
>  {
>  	u64 x[5];
>  	int i;
>=20
>  	for (i =3D 0; i < 5; i++)
> -		x[i] =3D __measure_power(5);
> +		x[i] =3D __measure_power(gt, 5);
>=20
> -	*freq =3D (*freq + intel_rps_read_actual_frequency(rps)) / 2;
> +	*freq =3D (*freq + intel_rps_read_actual_frequency(&gt->rps)) / 2;
>=20
>  	/* A simple triangle filter for better result stability */
>  	sort(x, 5, sizeof(*x), cmp_u64, NULL);
>  	return div_u64(x[1] + 2 * x[2] + x[3], 4);  }
>=20
> -static u64 measure_power_at(struct intel_rps *rps, int *freq)
> +static u64 measure_power_at(struct intel_gt *gt, int *freq)
>  {
> -	*freq =3D rps_set_check(rps, *freq);
> -	return measure_power(rps, freq);
> +	*freq =3D rps_set_check(&gt->rps, *freq);
> +	return measure_power(gt, freq);
>  }
>=20
>  int live_rps_power(void *arg)
> @@ -1187,10 +1187,10 @@ int live_rps_power(void *arg)
>  		}
>=20
>  		max.freq =3D rps->max_freq;
> -		max.power =3D measure_power_at(rps, &max.freq);
> +		max.power =3D measure_power_at(gt, &max.freq);
>=20
>  		min.freq =3D rps->min_freq;
> -		min.power =3D measure_power_at(rps, &min.freq);
> +		min.power =3D measure_power_at(gt, &min.freq);
>=20
>  		igt_spinner_end(&spin);
>  		st_engine_heartbeat_enable(engine);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index fc1cdda82ec6..c4b14f2b268c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -78,7 +78,7 @@ static u64 measure_power_at_freq(struct intel_gt *gt,
> int *freq, u64 *power)
>  	if (err)
>  		return err;
>  	*freq =3D intel_rps_read_actual_frequency(&gt->rps);
> -	*power =3D measure_power(&gt->rps, freq);
> +	*power =3D measure_power(gt, freq);
>=20
>  	return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/libpower.c
> b/drivers/gpu/drm/i915/selftests/libpower.c
> index c66e993c5f85..df37cba30353 100644
> --- a/drivers/gpu/drm/i915/selftests/libpower.c
> +++ b/drivers/gpu/drm/i915/selftests/libpower.c
> @@ -6,29 +6,30 @@
>  #include <asm/msr.h>
>=20
>  #include "i915_drv.h"
> +#include "i915_hwmon.h"
>  #include "libpower.h"
>=20
> -bool libpower_supported(const struct drm_i915_private *i915) -{
> -	/* Discrete cards require hwmon integration */
> -	if (IS_DGFX(i915))
> -		return false;
> -
> -	return libpower_get_energy_uJ();
> -}
> -
> -u64 libpower_get_energy_uJ(void)
> +u64 libpower_get_energy_uJ(struct drm_i915_private *i915)
>  {
>  	unsigned long long power;
>  	u32 units;
> +	long energy_uJ =3D 0;
>=20
> -	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
> -		return 0;
> +	if (IS_DGFX(i915)) {
> +#if IS_REACHABLE(CONFIG_HWMON)
> +		if (i915_hwmon_get_energy(i915, &energy_uJ)) #endif
> +			return 0;
> +	} else {
> +		if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
> +			return 0;
>=20
> -	units =3D (power & 0x1f00) >> 8;
> +		units =3D (power & 0x1f00) >> 8;
>=20
> -	if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
> -		return 0;
> +		if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
> +			return 0;
>=20
> -	return (1000000 * power) >> units; /* convert to uJ */
> +		energy_uJ =3D (1000000 * power) >> units; /* convert to uJ */
> +	}
> +	return energy_uJ;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/libpower.h
> b/drivers/gpu/drm/i915/selftests/libpower.h
> index 5352981eb946..03a44611f9e9 100644
> --- a/drivers/gpu/drm/i915/selftests/libpower.h
> +++ b/drivers/gpu/drm/i915/selftests/libpower.h
> @@ -10,8 +10,10 @@
>=20
>  struct drm_i915_private;
>=20
> -bool libpower_supported(const struct drm_i915_private *i915);
> -
> -u64 libpower_get_energy_uJ(void);
> +u64 libpower_get_energy_uJ(struct drm_i915_private *i915);
>=20
> +static inline bool libpower_supported(struct drm_i915_private *i915) {
> +	return libpower_get_energy_uJ(i915);
> +}
>  #endif /* SELFTEST_LIBPOWER_H */
> --
> 2.25.1

