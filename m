Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D46784E2D2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 15:11:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5522F10E7D5;
	Thu,  8 Feb 2024 14:11:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQx58lx0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A296510E7D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 14:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707401491; x=1738937491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PrVW9CM5aOffe8q9vpvjqjDQ+CvtigfX/iS2mbFaA44=;
 b=LQx58lx0cgmo4vqMsqsSEaIM4toNqbQ1DUHbAfMn7TrKJFOV/69QmY4J
 9Jvst4dFnyjy2FMHep/WbMos8M6XSHxUxLR8JfaJZRMZhHDKAkF52MPcj
 M/fg/BGR4jKhZh7ffNea3GkGRRpNJvm5BRctgRLWm1eTMsaquGci9Z8iM
 3c5uJ1qucyiUFaPIbjxpZDAxMG/o3hmnXRouRzTMUq/A5zg5TyV2YdCa6
 HUB/SGpVPpSwtmhs0ItP7R0719AK7j2xDg+6AwDUWJwJ9KTIgCnPi6H25
 oD9YKex24psyp6p17RGKZyDNMJ6OQaxnWhCZ05sqaiIdE4z6iLKtBdTe3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12300530"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="12300530"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 06:11:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="6285844"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 06:11:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 06:11:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 06:11:29 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 06:11:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6jxsEruiXuLukHGwEWHKzXlqm9nhJ8SbwxlOxdkYAy35ukH6FncGdZ8sXAmBfTmIWwM9Wk539yDx7jtX+RwV4/LRYVyA3ktUkftNSW8L+Zm4rIHqE9ges7jEIUdfyPCrSmclpoVNEqFDGBtgTB0YPWqXCU0ZBTDgBBgi4mxPGSI0rqEYcW52Vy9wvxZmIc3+DYUvcnwyRdzY2HBATQhxllQ79zvBFrA8DbeRZh0osFG6VngTigoLNZOFOczwBPhBfNEYOwwOmDNaOY+PlhKh9t3JY3U+vt4rOcHlNIoB0pDkv3+qfrfxCC2l5mUjvl89xhnViXkm9Dp67o1CeZElQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iaGJFg+LKEr6QVAOmFiFmGz/N6MZ4Zjsp8FNbEXaHfM=;
 b=dFpcskCC5gPW4n7StCJZZCbMOcIBASm7VWlm1OhhBSk7vejbwbCHsww9bMYA8uJwktkylu5q/Ru08waP8TS1aX3NAicsT14M/Q48BrlPSnmstpL0Sc/S8ZN3GrQyil6RQJs/AypLDXSIy4bAR9GYihi1dN58qqHX4Tb1IEYO0q/vWiGR7b2rbqK5JGaKSaxevZ0g1c2DOKCkPTSZuqAT1iN2cPk+x2v0HKIbQeFFeRMV4UEn91bOW7q9qnskqXaA5p3iYGqethAMObDoZ0/FQ89rgvWOC0m5W696csoSYzmKppaCA2/+iziFUU46/Btk7PbvEpsg/jnIGsOG0BwX7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CO1PR11MB5155.namprd11.prod.outlook.com (2603:10b6:303:91::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Thu, 8 Feb
 2024 14:11:22 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::35eb:1d4b:b90f:e584]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::35eb:1d4b:b90f:e584%3]) with mapi id 15.20.7249.038; Thu, 8 Feb 2024
 14:11:22 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Poosa, Karthik" <karthik.poosa@intel.com>
Subject: RE: [PATCH] drm/i915/selftests: Increasing the sleep time for
 live_rc6_manual
Thread-Topic: [PATCH] drm/i915/selftests: Increasing the sleep time for
 live_rc6_manual
Thread-Index: AQHaWoGHDr5sj5xcU0yrQBkcOEE7U7EAexgw
Date: Thu, 8 Feb 2024 14:11:22 +0000
Message-ID: <CY5PR11MB621167EF05CE36440538317295442@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20240208113420.489967-1-sk.anirban@intel.com>
In-Reply-To: <20240208113420.489967-1-sk.anirban@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CO1PR11MB5155:EE_
x-ms-office365-filtering-correlation-id: 0d2e777b-ac9c-45ae-1a07-08dc28afd435
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: so99wh5oLuVTporD5ZAOyU8e9aeVMnYkcrBIdWPdhKQOOqwiDt50ZaK/RUZlovqfiCzhMM6uU+8UuoO5c+h6LH0EtGgNUiSlCT/8LZ4ecxTKXcDwcklhvc0Tk818flkzW31hIZGeyb2+y5JJSjDi4MUq40S70atuCT9BodSz5Ed1APFZhY8uM7vLXgiBsf69Z/rjY8ndHg73MiJLLXwTaK/9dVmMAEZrbqxZlk19qVG+7ZgAADDqeCs1zFYd3sv3j1M5q5MD4n1cdfUZ/+Yio7yh1VC3qxnyL1AinZTT0w4qTJ0dZC4eriixc98Ce4i+Ttg1dDmHD4BbJUxILArjR3uxd8fVbqcREYwJn+gXvF19etpSFd3YX1GIwjkzrZih9vpokLWTj1bU4irB5YFdDFEYDqA/uXELrb7uTp1cft7Pt1OApahl1+zA/89+qgYBL8ckUd5N2mJsqSGJGTfGaM8I++CEg4R7F1//eA/4CYbx84eiIOQJdiQiMFAH1z/oYRwTtOVR4swfK88ff63XR6gppZPDDXmIfflyPPV9EIgMgXDmpUHSe3+c4nD+kPHkfng9laykIIcpmePTjM9509NZ12YAMyf8y4yWwA2eiwZAAHTRhTaLvaojAYblvhjW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(366004)(136003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(33656002)(82960400001)(66446008)(66946007)(66556008)(66476007)(316002)(64756008)(52536014)(76116006)(110136005)(8936002)(478600001)(5660300002)(86362001)(4326008)(7696005)(2906002)(38100700002)(122000001)(107886003)(9686003)(53546011)(71200400001)(83380400001)(6506007)(26005)(8676002)(38070700009)(55016003)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NF7gHD0OnuWmwfgKIkcvfNwOzy7uR2ucslLG1RsiHmkwrT1fiF1CBfBUwZ9d?=
 =?us-ascii?Q?EnxxfLvl0QwRT9zy1Ba3kRKgG4zuVVNRI4f4uryV1IlOWyy4FxztNiw4jUJN?=
 =?us-ascii?Q?IYyv0bOkFxeOziRvbwNFNRBYQCcaz2qt0IrYDx++tHGW3NmfGHKHVuKG0s/o?=
 =?us-ascii?Q?PgV1bc9fTn4vcm4T2FndphMhQgD8FErjbd/Voxc2BQvflvqNPsIERsCr1DU0?=
 =?us-ascii?Q?wJbPgiC0WUTEuZY4wUos+TwC54VfYPidJmci26WNWYTHhbG3Lq4QVYDpLdtY?=
 =?us-ascii?Q?71HjpR3i+J6ovv3RArkRRcu0YVWjVOilbwTsRLv57RIKLPN9X+G3OE1C1Art?=
 =?us-ascii?Q?O+S1MWiZdWw+lQ1lUdqEncTNkLKxHgcun89/1DTzpO1yRdUexcy3AbNb02oo?=
 =?us-ascii?Q?6roU9+91bMQIDdVypZzoN+eXVtQeu4N0LKf0EYrts7lPPTQYwrjw1RAjY+/Y?=
 =?us-ascii?Q?RATlOZ04Swe6mKdKJRPNYri29Y7SBgXlF3yPjjMHj7utnmPgWxSfhGU67u04?=
 =?us-ascii?Q?3MDbMXRcNWnpY2OFkVVfcaOI9iKRThUnt/jejIoCdztjDni2QjH3uqYbbYck?=
 =?us-ascii?Q?+8kqLQAPQVkOqWjnH8tF4Tszvvypdw5e0VgQsWGitlcuernNITYn9q9NlFHI?=
 =?us-ascii?Q?SEVkBLN7uhehqWIW6Qe60kqaNMUibg3lQr4ykl9piPN2yxuA0ADLLZnD4X8P?=
 =?us-ascii?Q?ALooir4UQJ5+uIPxVGrJrFunAUPoUyjPPR3TABO9Kdq8S7cbaHBCnrc7C3xL?=
 =?us-ascii?Q?57fsXY+0gaYG+7qPAzstnBhbnCioedPqaKcKc3//t74fK9CBeEwVvXliw/E3?=
 =?us-ascii?Q?VXnOiFTLPQeMlQ0B3UiZprvZaPA1GXG1BFjoA23zNTQVeTIfMn6RpYKdN0D1?=
 =?us-ascii?Q?e3N3fO/nVODVl239HUmTiQFsbgbRI8QE0fRv3LSAC2tnJpqzu1FyUv0R8Uho?=
 =?us-ascii?Q?9pVHta1paoOvc9FeVDle15tLnK+5sTlTsCe3jr5k03dmI1afQv8Q/fNGmZfY?=
 =?us-ascii?Q?MWiEdEj5TRKUGRss2cFo66Id+X/kGdzHsi2OJn9NV1JVGuC2M5Zr2J5kMUK8?=
 =?us-ascii?Q?BxGVDbAwshS/dsgiTf8CJQe/S3UnaV96q1tQtSdP/cKRhI8ZQbrJf6vQapoy?=
 =?us-ascii?Q?f8WhpkG0GGE4jxj65ytji2DB0KpEnlGUvuYagHdd6w4AqPcYQ2ur6AgNDbUy?=
 =?us-ascii?Q?aJ8E8beKqgpEMca7bNrOG5KQ/5BcDwPt6xMP7jbtn3gVd+USNoRWkCzxsT6g?=
 =?us-ascii?Q?pjBB0QLeA3zNVGrFIBob2RVsAphVq+VQIGBOQvrDVs1qpgsq+x1pweYz8iJs?=
 =?us-ascii?Q?T6ahD+HNZ8g72WRA2Er8ZYdBfDOAdis8JOCos09md+XBqhHBhVampCp92Xew?=
 =?us-ascii?Q?jEZifHeevUPvnmYkHqI4PMG9demcn+AhlpOmPJsLTX5OpCwc6mBHcq1nKmpe?=
 =?us-ascii?Q?GIsUhHujhhaYbDorO/Vn+gB3SY9QSPqwilKFMhlpbxpnvSXK+5KWu8diQ62G?=
 =?us-ascii?Q?2kjdiIIfoeyB2BJg4onfXkutoCy0X5Iuuu9oTjk9dICyU8JExlzq0ysKUzJ3?=
 =?us-ascii?Q?yHxKQEYQdMbUnXINOETUpsMYOzYqNlGDQo2auaN6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d2e777b-ac9c-45ae-1a07-08dc28afd435
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2024 14:11:22.4047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3FUU3ErSeSJ/6QAvRl6jo91W2i0t16JS6uYheiHeXhMnrlHSRZ9RVwfKu86LIbvKOo5/oC0ZtNfvQRSIje4IJVnannvnFRYo8wlWSyvF5L8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5155
X-OriginatorOrg: intel.com
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
> From: Anirban, Sk <sk.anirban@intel.com>
> Sent: Thursday, February 8, 2024 5:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Poosa, Karthik
> <karthik.poosa@intel.com>; Anirban, Sk <sk.anirban@intel.com>
> Subject: [PATCH] drm/i915/selftests: Increasing the sleep time for
> Sometimes gt_pm live_rc6_manual selftest fails due to no power being meas=
ure for=20
Period for which rc6 was disabled. Therefore increase the rc6 disable perio=
d to 1000ms to
rule out such sporadic failure.
With that change.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Br,
Anshuman
>=20
> From: Anirban Sk <sk.anirban@intel.com>
>=20
> To rule out the sporadic failure, updating the sleep time (time period to=
 measure
> the power).
[Gupta, Anshuman] Please provide more descriptive commit log, something lik=
e below,
"gt_pm "
>=20
> Signed-off-by: Anirban Sk <sk.anirban@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rc6.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index a7189c2d660c..1aa1446c8fb0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -62,12 +62,12 @@ int live_rc6_manual(void *arg)
>=20
>  	dt =3D ktime_get();
>  	rc0_power =3D librapl_energy_uJ();
> -	msleep(250);
> +	msleep(1000);
>  	rc0_power =3D librapl_energy_uJ() - rc0_power;
>  	dt =3D ktime_sub(ktime_get(), dt);
>  	res[1] =3D rc6_residency(rc6);
>  	if ((res[1] - res[0]) >> 10) {
> -		pr_err("RC6 residency increased by %lldus while disabled for
> 250ms!\n",
> +		pr_err("RC6 residency increased by %lldus while disabled for
> +1000ms!\n",
>  		       (res[1] - res[0]) >> 10);
>  		err =3D -EINVAL;
>  		goto out_unlock;
> --
> 2.25.1

