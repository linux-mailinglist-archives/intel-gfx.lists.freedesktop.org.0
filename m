Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63903A005CF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 09:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FBED10E454;
	Fri,  3 Jan 2025 08:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OhOpdfbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A89910E28E;
 Fri,  3 Jan 2025 08:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735893296; x=1767429296;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a+SGvxRndpytDFMPXZ5S8sB3DHTcdb2/GAYc2ScdPOA=;
 b=OhOpdfbcqCw/s0ERLVmQe5GD5/zGV0c+dnzbETdcTBGax5p695zMY+Ew
 FAsP9roWNm+F+ZKvIuf/l2SA9t9wgUpb/M52Ym0QIAAsveHw3bug5LyGG
 YAW6A/0mDi6gVRm5OHIyYBdoA/F+R/GYRWbXPYeg3vCdvYX6cIVOShUhU
 xEaao5/CFtRDTjL8kl9f2T4JE/hPKMsleE9vvtzaLqxBKmYDLLcdIR58I
 3lwOzjjZrZ7OhUsp0jSzoF7hA3EUB2HyQ606K9aEiYUG68gaOklKSALTc
 3nq24vx9X5lsoDyErp8CaDTnllR4XjZ6oQ12PzaGCG47RvIsSqJib56bI Q==;
X-CSE-ConnectionGUID: 3/FyTg8NSG2SD3/PlkOWUw==
X-CSE-MsgGUID: ahIJ6XgqRbOS2K7m8pX7hA==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35842774"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35842774"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 00:34:56 -0800
X-CSE-ConnectionGUID: 4i7IltaHSBiFwtqkJQksbQ==
X-CSE-MsgGUID: ofAHO/8TSR65Z27wGzndVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="106597963"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 00:34:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 00:34:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 00:34:55 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 00:34:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UYuQ/hJY1WQwlyVjaiTn/PcE8BnNKy1fQJyZs6gt2dj1MiRgz6HdZJP9epABo8OQVlCXkR96QekirX4wUJbZEla4IZDsikvuwYHfLLe7CVRbyzKh7pCUiY8wMmtYIleHyteXUkSu4pTWT0EnxwVvKvpva0qHTKaeqWaFmkNDC4YMVkPz34vTQZ19OM26T0moe6G8SuwidVnGxzGaqdsbHPymE/SRYpxcY51hhbkwoHoGWurJ8YkXmyVKz/2wQTuxCgtHDjyldU+X2uD9XR3JCgA7zRl14mMAGUpnC2JSGclhap/CaOeXzivIZ0xPk8vqanGyA3FmRSu0LOzLhUCyJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eWbHbJgJJ7CsMRkXAfAgQ8rmd9xXwAhLk/VRfqqM4Gs=;
 b=RXhN7grbl8zHnnHuUmGbcqcb+oFsARZOEofN2bDWe7Z+kWU6uREJnXu52hsiOyh/mD2BrnjQNRIU07cYgfecdbSO2NyX4nD74vfwoKyz3s1a9yO39/IcDEWt5ZFm2GlmAJS/LrXwIIAN4xC8qXJFo6ndXXqiFD4tq9hmtGGHW2Dx4CKap0MYS3JwTyF8DkG5tQ5lQabKupvyZueYbVh3EVqBLfRJD5Sm0N/a+UfZWGD7OPEYMulB9baEWbE1T2ACyJnEts6AbKANIdekKsC+zDlI80jL/1+DTNfCDcjxpiNMLIXr+q9CoW/3v2alqI8ooLufHLnGZIWuGI91YgImjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by MW4PR11MB6570.namprd11.prod.outlook.com (2603:10b6:303:1e3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.16; Fri, 3 Jan
 2025 08:34:20 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%5]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 08:34:19 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly from
 check_link"
Thread-Topic: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly
 from check_link"
Thread-Index: AQHbUpxUnZTZNvUA+kqcLnnrJptvoLMEzxpQ
Date: Fri, 3 Jan 2025 08:34:19 +0000
Message-ID: <IA1PR11MB62662916A819B7224B6BB5E1E2152@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241220050153.3053540-1-suraj.kandpal@intel.com>
In-Reply-To: <20241220050153.3053540-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|MW4PR11MB6570:EE_
x-ms-office365-filtering-correlation-id: 03747cfc-96ff-4bfd-fe14-08dd2bd16acc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZhKG8EoD3e4ai+7pNEPHFjXS/98luronm9yoZd1wrrfZrcf2Ue5demf+L3Sw?=
 =?us-ascii?Q?xAbLMb2I+OyFAKw6nncFeW97CuCn2460mD2AzS3Yy2HJNcTU/NX4pB2wtuIR?=
 =?us-ascii?Q?4HHNISADFW/DeK29nc4lPJLsUd7oZChUIKVUOhmuvVlNXYUoKTsst3kBapiz?=
 =?us-ascii?Q?qtygsvVaAHLlr+II7mx53XEwoGlwzmOcHglAOYD4fOUlD8AUuUZku8th//zN?=
 =?us-ascii?Q?cP3zqIdLyeSTug50xI362Q4aq9dLEboEm6GNQEevwnQL6rL9tpySGzkbzAYZ?=
 =?us-ascii?Q?1Ho/K1ldRcIXIXWzvG3BuQd9Fqy0b9hBNH20zc1JDwFKywPBV6/LwJewpkDQ?=
 =?us-ascii?Q?erv5mNFt4V9ZofLstsCu3QZaNqNCBYSbmUwTV5rcUw9oiDXaE+hJ5N1eIR3e?=
 =?us-ascii?Q?xiaanpR0llynrREznXzhqcyG11PImPe/6+5EQiRErjoYD01D+rM5Oqwj/T5Z?=
 =?us-ascii?Q?vv7RuDQL3sfqW60BWP+/75auuQwA78fxDThiY+YTrFu6JbRYcW981LFg7Rd1?=
 =?us-ascii?Q?jQl/6Mj751sAILReVUlU6eUAwUvKC8Q+nce+xm2KMhMqzHYn5Eg9UqBLdIfr?=
 =?us-ascii?Q?Emc4l5+jJDObh5Sp9MaRjwYau7CzOJiREczcMH+NvNRx61XF4tfkssU1d2Ya?=
 =?us-ascii?Q?A2YFLx84qZKZJbcwt9SwDXPlbJcRxUbMaqngKiDXTj+nXeCB+o2pR0EZ1Aar?=
 =?us-ascii?Q?ozIGOogV4LTziU29bIM9Bzj2rdyY5k0YzCo+yrkWf/2WJZR/KWXyNd9RYb97?=
 =?us-ascii?Q?LDnaUyR8WjrAMN4ahgO4LHqKi+qc3jbSQguDQqKQVSfiCU+l+7BWdEBULjdJ?=
 =?us-ascii?Q?V/TCQSoF8N+3KpDtTQB/+jI4IjaXzfPK8XtEAZ1oVqF8Y0FDlRQxk2kWP0/+?=
 =?us-ascii?Q?Ob31ZINgygtS2vTeTv8qe6SYZA24qDBT/50j+/GDN89UNG6eWMY2fTa0LH7j?=
 =?us-ascii?Q?tGy+qWDnppBqxX0HFmmKSGq5p9nGizExePZcQqfCvfWOgDxFPPiFZAOWKpYG?=
 =?us-ascii?Q?RmXL3aYSgBBfVG9BrOiOk9AFB2E75A9pfrQS7JNJ/NnROC9BhOOBDNImWi95?=
 =?us-ascii?Q?KgP7tjR+BJuHLAWb4FDgRu7IhIpN+lsCxATDtEZSTkM9XQ8kCjS6FZshq33N?=
 =?us-ascii?Q?AeHPK7rUdLUx7W1zRBVCAEMtj7HTiehkQ1gOJsQK09/QV4KnZ/IpXs1DVpkS?=
 =?us-ascii?Q?OGh0KpoJwDbeO0IceuM76y9YNtbI8s5JCE+CDcdjY5vfolwkdmSvq2ymix1w?=
 =?us-ascii?Q?4z2ANKys2wlGTEdhJJXs6uxh1x8TFiZPSjALPQAKD+k+awW18hsJtdDqdvPp?=
 =?us-ascii?Q?dvM0CWigtkiRnghyIo6PXsyC2uTMDQ2RH4rqZT1ZGnEjKsxiQMj3L3tTbVZH?=
 =?us-ascii?Q?UIv5L0Wx4LFW9tIBmoTsr4rMzHOG77hADlJBcwSQwz5g0IOVTp/nRvmBBoDu?=
 =?us-ascii?Q?9oXN2GJD1AI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ddez/Ds658pLCUv4WFqk4HmdrnCPbYol2+Z0BnHH3gdJWya2I3YTlN7FEsd0?=
 =?us-ascii?Q?kR8MK2co5dSTVzQ8gQDElk/KvqVUWp1Im4dXOkAqu4l9PA2NT1pTCw5EWK/j?=
 =?us-ascii?Q?5kfXwa2ByyOH986MElnoqbxiVyGiFFxWI2DGNJ+bnd1CG7zy7u08WMTa1N4g?=
 =?us-ascii?Q?/XpDpsDq/WTgbL1yqsVhziRfacOQ1IuL0vFUz1aLWXo97ycCy5inb39he1YR?=
 =?us-ascii?Q?OPHgt7s67fYxY3JOSWazU35IdulRFdf7VwHXpZHHRFbMz1kSPqIsL7XH46KG?=
 =?us-ascii?Q?VCZXD7uLkQy/VB/QlQkBld6n88q2b0/F3Rt4vi2sx/JY8N3CgRVtTOFj+au8?=
 =?us-ascii?Q?AxumGS9FPg/A4OBxHL1Yy8G/SH8cblj+EUltuLefQRYOR7uZEWxlGLkledZQ?=
 =?us-ascii?Q?mksPrYaqZQjNiD+mbeUtyP/VGlSivmOyAc1Cz31vx4KZ1cp4hNdalZrLlnYq?=
 =?us-ascii?Q?vq6WwEh5iUCvQCSP0yb6WfQohvAV6Ny+gampqNh3mEcV2XtT0RUyQsn44N7R?=
 =?us-ascii?Q?kszYhwOcuRivjNXGS2u4rWU+mbyJTyXLBSKcekrHumYA1udqboK1a67IYD4T?=
 =?us-ascii?Q?NFfhUNRnfxBpKr1StlJOSGyxJ9pZjB+/yCjZauJu8cpkhXFT5GPg8Ev6qJtv?=
 =?us-ascii?Q?qFhMkgWc6oyY+p2mTXsk4Bt+R8Fs6r2HvuRTAerwxMqIURnFV4Ac0i82CzwF?=
 =?us-ascii?Q?tce8hdI1dtqz9mTBevsj0zsK0XDNv2So8+cwbeMAJ1HzM8B5RCzRw/iwqN7l?=
 =?us-ascii?Q?w3u2DW/4EPjpsRmA2V3Qmn/5XHTEgraxEH7Go74RasPVm6I1hYhiSVpgLBgj?=
 =?us-ascii?Q?NgicKwF1oYsFX/aBO5k/Lp/us0dOzecCJB5pXVmqJf21W5Vli7Sa592x9OS2?=
 =?us-ascii?Q?XDc3daszwYiBUMJqLp6yD7Pt14eitUTj9jG9gzphOxQQr1MWiwbKYynuQNk3?=
 =?us-ascii?Q?2HNdneuEForzkOaA8pvkZ4/oXNrq28remuMoPrPOom3yh5K3RYcB5BV+bzqo?=
 =?us-ascii?Q?h88/p9NItI/2Z6Z8nD/Xa27U05lS97VOv0jsRTjc4giX8SHoxfERRVY15+EO?=
 =?us-ascii?Q?l7b1ggLxMtiGvd6HpxMnleR5Jor2vQ7/6q5yx/ghGZtPHJf4VztW+bO3WhvR?=
 =?us-ascii?Q?eYreDZBGQF85EO9d8cSTKk/KoGp3HPz64Ccp2Ft1D1wEXRnMHmB4mE+fMH2T?=
 =?us-ascii?Q?CbsYVLr7X23lC4SAUlSme7fzy7gLlaMJRicCQzvELytiCVK8IhhKOfom7jYG?=
 =?us-ascii?Q?I9m+nXVQ4yoCEEze69znz5ihvyp64LRZHE4kBOYRmmF77bMtSmLDzv6bDfdy?=
 =?us-ascii?Q?s+7+9AseAKfksWfYMj2JdPW72Uqu6MjMYwd2FoFvVyW4uRqL1OyVVKt4gKAv?=
 =?us-ascii?Q?bwxgq9uTq18e5ju5oNCF9ZGalTrHyP46MoM9sQFac8RkaYbwV45SwCmOdvUh?=
 =?us-ascii?Q?rpwjblJJXGt+6QBWvbBJrD/vfvw19qK+CaqdhRsNOg10PHr+xHeNi7w1se7B?=
 =?us-ascii?Q?DXFlX77JCmU9LjHz/rYnM40YdeScIw/pAz+XCT0K1DugHzKb/xuLkCfDMtdp?=
 =?us-ascii?Q?JQIZbYkAPMIdEBUPUzgtk8CnwAlk1S+rnH15uZ6hLko3fdSTNbF1CfBh/pnm?=
 =?us-ascii?Q?Mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03747cfc-96ff-4bfd-fe14-08dd2bd16acc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 08:34:19.6441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TmwFCbdfa1wv1q9Yn4LmO9JQyXQ0fLq33n3bF9LDrLMamPvMfAZuqYsyXSTV01ga2NsYxUnHVDFmaQ13j+h6Etc/GjWD/7JcJoJou6Qx0CU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6570
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Sura=
j
> Kandpal
> Sent: Friday, December 20, 2024 10:32 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly fro=
m
> check_link"
>=20
> This reverts commit 483f7d94a0453564ad9295288c0242136c5f36a0.
> This needs to be reverted since HDCP even after updating the connector st=
ate
> HDCP property we don't reenable HDCP until the next commit in which the C=
P
> Property is set causing compliance to fail.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f6e68a0e3b6d..33c705b5ee28 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1166,9 +1166,15 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>  		goto out;
>  	}
>=20
> -	intel_hdcp_update_value(connector,
> -
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> -				true);
> +	ret =3D intel_hdcp1_enable(connector);
> +	if (ret) {
> +		drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
> +		intel_hdcp_update_value(connector,
> +
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> +					true);
Hi Suraj,=20

The latest drm-tip no longer use &i915->drm.
Please use the intel_display structure instead.

Regards,
Dnyaneshwar

> +		goto out;
> +	}
> +
>  out:
>  	mutex_unlock(&dig_port->hdcp_mutex);
>  	mutex_unlock(&hdcp->mutex);
> --
> 2.34.1

