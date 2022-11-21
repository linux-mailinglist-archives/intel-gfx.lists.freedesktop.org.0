Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF49D631ADE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 09:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C90F10E15A;
	Mon, 21 Nov 2022 08:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013C610E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 08:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669017603; x=1700553603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AHUFlsVqg4hoUTXJ2hvoz8j+d0xdEKTbbXBcuc/kbV0=;
 b=NTYuFb1PpzPNwiGEael9o5+PwRkD0e55mHJJDK/QZ6YFc7/YRSrBJdQ+
 hRyoJ4WR9wawEiyUBF0CXad5pf6gsiHqxSePQwrQkYljK86zZbydcUorV
 fGybLuWp9gD0MxYHYMxTvXB8vkOklqn3waINGLohCCds+LMRAj5pdZeif
 vAcpo3qEfuB5Pe7m+Hr0oLbmb4L8JZwOh6yORp2SWbDqsga6Mad6PDPau
 HxGSKFl7ABClXjO1KwKJEdRIwsFR5wqVJc/nnf5B1w1BbqCwiDSVWk0Et
 azvkKZpNE2RFvsuNaZbi3+9MwYsF5J+kImiXcKkJRYZt3mqGn7Me8+1vS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="301040958"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="301040958"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 00:00:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="709709575"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="709709575"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 21 Nov 2022 00:00:01 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 00:00:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 00:00:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 00:00:00 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 20 Nov 2022 23:59:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LSFzJaZCBUTodShJ6jtYU6bfDU7Ayz7ZvKMCXbi18fASZ6Kj8gMTW1nybVausm21KV9hFGxDwrBOJms1U0p1cwv5UF/jp6qnacjDT7kG4FnqPxYLNsezfpYZGmcNza+5cQDCG1Avxy+XB5hXArp/qONey4iPILgHg6m6juOgByLZpvBkKod55cHc9vt2Z+jt6aGaEAUOgDNuhv+Z+Tr2hBjjjRtO+sEMmXGG+zEoZnsDt/Oee/kWYmGyLDqK1VFiFPs18pP2RZpUmrSGJXwumQZt3kcpMtJRD3Es/dJ+YuIxtLkMRPoeBK0IGNdQPNeV4bb0rUfEmm73mosTGvH3kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JXXDUY+ohTdCbDeTqW7azSuIzbOJPsLNn0mJeui3n0=;
 b=g6kuiL2FPCLBRRHc6XfBBiqmUb0rZFsKJpwp0o/tY+0ZxQtcJlmM3egjxOwEyEUb6iVUTaigqHO0a39rxVMp8YWaJUmN3urFRN1AovLdudnWrYtKkQW+9MTvahLkPWx69RaHpuABN3j6rPuGhTDrwmGrbEhuxdeqJTWptRdT1ZBdqVGUa39K6mD29onFxKS22CevLGRGpgtxzk/mqD61DIrf4MBNrhVi8uaSbjpQr1Ze5oyKFf98qHYiop9HBnTY7pX+hnVPQVfLO7Gj2txZfrSuILhbnIDTvBjqGN4W38UdmcUlKrbkNQ6SqQvALRbWN/fx8KENoOQpmC1bnaXIzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 07:59:57 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Mon, 21 Nov 2022
 07:59:57 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tauro, Riana" <riana.tauro@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/3] drm/i915/hwmon: Add helper function to obtain
 energy values
Thread-Index: AQHY/XrqVTV8N3GnTEq51IrOMPIGeq5JAUgg
Date: Mon, 21 Nov 2022 07:59:57 +0000
Message-ID: <CY5PR11MB621182136F7BFC968368DDB0950A9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221121072946.1013463-1-riana.tauro@intel.com>
 <20221121072946.1013463-3-riana.tauro@intel.com>
In-Reply-To: <20221121072946.1013463-3-riana.tauro@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|IA1PR11MB6289:EE_
x-ms-office365-filtering-correlation-id: 6a752ca3-a29a-4e0c-9d25-08dacb9661e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jyyj5jxeYJbw05Pf9ZWaa7R5yakj/pHd2mWPUgomNlVU/D6VrgwghbmaPC28i7CTFt37UHeQOa6lw8ysNQHaD3t5ypMxy6hB/N/yqxIawAcnGpF41PyCmMnpD2cUNxKBi90GqmP5NMTqf66OtQauuqDDMY5RBhj1MpYIh7P49XqHD0Hpmura93L8WKX7m1dNUgJJ+G6teziFP0bG4o8TUeFM/Y+GnrgKkR62kSudPib9fisS6eyZxi4qEbbdOxGfaL5UJP4DxuV6OFz8HHyUWTf+A4evAQN9X+vvmNkvMQbJiK0Zx5vRMXxJdO/51obcS+FaqkvgYHXAOdYfmEcKkse2pv7zrFkN+XFVRe4fE7qgXQFfDqWNzz2/ByYcj4lIJR2nPt1lqqGBOe2zVM42SB7oD7OazK9bLjRSwRc+lFPte2wM0ORO2TwJemqsIN6xz3kfjnMojMVVFVbOo55eFNA+9Y5kKF8eguz7a7vxDW1o4NcXRjlUg4eZz7ncmHGsbLkxFPKZn3Di4YhpkKU7kcFeY66qYXs2yxN2m5SRRwiS5/6xr8jRBnLFqA7q+cSRElDALmTmKT9Om8n5i2sM0SM+yrW84QMLeuPcZhX1iRrQ6iRz6OBqT5M5iaFesLhXgFz0ruv2r118JuGWg2/EUOT8ZZxipRuAxCDKEf3w1QpC+tLeXsxpVC0F3s0pbXxSK/uvPOhStSWV+rB+WBcMk6LsXj3G01pZGZxfWJHgEHY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199015)(33656002)(38070700005)(86362001)(64756008)(55016003)(5660300002)(2906002)(53546011)(55236004)(9686003)(186003)(38100700002)(82960400001)(83380400001)(122000001)(26005)(7696005)(76116006)(966005)(107886003)(71200400001)(54906003)(110136005)(52536014)(8936002)(66476007)(316002)(66556008)(478600001)(41300700001)(66946007)(66446008)(8676002)(4326008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LWloyira3wf95QH4Y1Ms4SxHlyxqReWzDLPahisL2fBdjVHRnW/5pkulu/AI?=
 =?us-ascii?Q?8E8nFWU+AtHhVq3NUigBgbPAfBf94i+lhl1ay8Q4ne0qJ0xFzifh6VwOIbGK?=
 =?us-ascii?Q?0Lvcf3FSPkVvWqAFDcRetbeQgCVwGmHngpl3UNyHPJ7J3zPMg1XSxuss+bRL?=
 =?us-ascii?Q?rHZjzkLMv+XSQ7Ug2pEio7Pj8frd7LXPn+iMmO++ruu844l8fdxeCu2SlxMs?=
 =?us-ascii?Q?ShWYJZ+K5HVP2YJdQvSnTUOD8Jk9eS7s3UbcZetHfQYZGbDuzaN4LN/KyX4h?=
 =?us-ascii?Q?oZuy1tkcsBfQL+FrFnfgmt9FBsGvzZy0a+gNksdsO7f9+QCWiEIlX8faen3a?=
 =?us-ascii?Q?UMkkuy/HVq5hA0EXT8hmleei20nRAepet53BnGknLwoKHUywiwA7/DGaTgV2?=
 =?us-ascii?Q?ViNNRQi65Al0r8rr/hrlg1K8uW07DjF/58T+E3cvwitf/Qv3MR9JWFLFS29Y?=
 =?us-ascii?Q?eFTRLiEudLUZmIISJVcNtWt8CCh4G9MVq4gSv66nPVC6KAIhc7An/XcMzHR2?=
 =?us-ascii?Q?GNuwo4kIn6/DyY4ojKQjoHYeXgA5EVtG8xEV1Esp2eNXL6d/WdNARm0AIjpx?=
 =?us-ascii?Q?/KFmRpqGk1jE5/pFAHPVoVYU2agC3TMbdgWyOnzHg9snzE5OnEyo2DSfAs2Q?=
 =?us-ascii?Q?+TA5LtWYgkotTd+6+wvCv3pS3q4N7Bc5zNYgD8G0iKdR9gBjUY4QVIH+05UX?=
 =?us-ascii?Q?83/l2wor4xC9mpPR85KtdDY3SS4J0T4SBNKviECVh/T61WWXx9AxQrQD4n6j?=
 =?us-ascii?Q?/Y9usz181jSLTJw2OgGsTtpq1JpT6efMYSmzks92auk2gwFdXPml04iW22Gs?=
 =?us-ascii?Q?UI35GsscWD+d4x5xaMyJs5l6PMKZ3AabM/YRAoGExwFLThCwCqaRDeJByRf3?=
 =?us-ascii?Q?U8+AXAQdWDz+wLefcV2gIvcj6h4MSSsoOl4OX5EURtqjM/K0ZrlfyfJluou9?=
 =?us-ascii?Q?JHkZHkbMsG73LTePgUpnJjhF+evMLF1FKWmC8QUExdmm8zmT/VRw18M1rCSt?=
 =?us-ascii?Q?7y/rIrP5QvT7IJ9H3XDnDE7oc0ARRMsoqF5x36eTrZlXjoGKiaEsnLnaIR+P?=
 =?us-ascii?Q?4daO4GvMifHAEx313XH7xw+T02ekXDqbes+JJrLFevaSmlg8sV9GaVZK+PI4?=
 =?us-ascii?Q?4ll4woKMZldKtqvwdpQy2JbMJkgCSoTyghIUDMub7ZAkT+udap9NM26Ts27r?=
 =?us-ascii?Q?WJLce6eZcgSk62UaYTGFC3EmTLq8dXXSZNZY1RKfala3COEOc2/qfkbnV/nR?=
 =?us-ascii?Q?snahubj5isWsfszBRO5SCNJz58phFtRQmDeH1KIa+K5Q0h+9c0dTShmetAet?=
 =?us-ascii?Q?QLqhDcCKIo5hKLoZ7De0TrzDpcptgkGQ2dwIHmMpg7+LnIfQSoBjqHmc/65e?=
 =?us-ascii?Q?qeDoaazQFUdm+WzPgZeT2IVOPCAMSPvTSmShACnjdDIg6FaYCr6JJrPp2KOB?=
 =?us-ascii?Q?67tIgGNox8V4fFmgVUMwVcuoTG7Gnq6vpnDbIlajN+oU9tNkDzU5UFhz3RNw?=
 =?us-ascii?Q?wBwjidiUx4qkiheNp4U1iMX0CpdWUqw//2TybdTY56usYEQGsb6AkaUNH+0j?=
 =?us-ascii?Q?KQkPOZgmnxu/p0UMZ/FtnyS5wIzqO2tenCIYCa0d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a752ca3-a29a-4e0c-9d25-08dacb9661e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 07:59:57.3691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aCKS7fOl5i4k15vKXy8xyQw2/xhIQcxeoIyqs6Ki63FNNCBDp0YfarpbMZ2iUuLueBqaV6idemPEvpvYYSHrfIoIsJZeL1FCQv4q+90YCmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/hwmon: Add helper function
 to obtain energy values
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
> Subject: [PATCH v3 2/3] drm/i915/hwmon: Add helper function to obtain
> energy values
>=20
> Add an interface to obtain hwmon energy values. This is used by selftest =
to
> verify power consumption
>=20
> v2 : use i915_hwmon prefix (Anshuman)
> v3 : re-use is_visible function of energy to remove
>      redundant code (Anshuman)
>=20
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 17 +++++++++++++++++
> drivers/gpu/drm/i915/i915_hwmon.h |  1 +
>  2 files changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index c588a17f97e9..d45d1cbce886 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -442,6 +442,23 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32
> attr, long *val)
>  	}
>  }
>=20
> +/*
> + * i915_hwmon_get_energy - obtains energy value
> + * Returns: 0 on success or a negative error code  */ int
Adding comment for exported function should be Kennel Doc comments.
https://docs.kernel.org/doc-guide/kernel-doc.html
With that=20
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> +i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy) {
> +	struct i915_hwmon *hwmon =3D i915->hwmon;
> +	struct hwm_drvdata *ddat =3D &hwmon->ddat;
> +
> +	if (!hwm_energy_is_visible(ddat, hwmon_energy_input))
> +		return -EOPNOTSUPP;
> +
> +	hwm_energy(ddat, energy);
> +	return 0;
> +}
> +
>  static umode_t
>  hwm_curr_is_visible(const struct hwm_drvdata *ddat, u32 attr)  { diff --=
git
> a/drivers/gpu/drm/i915/i915_hwmon.h
> b/drivers/gpu/drm/i915/i915_hwmon.h
> index 7ca9cf2c34c9..a6c8efeb868d 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.h
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -12,6 +12,7 @@ struct drm_i915_private;  #if
> IS_REACHABLE(CONFIG_HWMON)  void i915_hwmon_register(struct
> drm_i915_private *i915);  void i915_hwmon_unregister(struct
> drm_i915_private *i915);
> +int i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy);
>  #else
>  static inline void i915_hwmon_register(struct drm_i915_private *i915) { =
};
> static inline void i915_hwmon_unregister(struct drm_i915_private *i915) {=
 };
> --
> 2.25.1

