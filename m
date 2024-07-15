Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B089930F81
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 10:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1FE10E2AA;
	Mon, 15 Jul 2024 08:23:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMydwcF8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADAEE10E2AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2024 08:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721031822; x=1752567822;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=km1yqYurG4NXIi1I2WfthzijXenodnkS7LRsPlYG3C0=;
 b=dMydwcF86wNrgyhh/fYREqclWTTR+ECdEsn1L7Ru9wFo3cfpRDxslDpN
 HxRbKALn5jQHCsPFki7q+3z8ikIzfmtQvc7fMDVYpJ1Dln20ql+Z2B5YH
 F7YI6OI4zmMv6NnN4GIBN7TqsPL+7DVwYsZqwDfSwTg2M54wuoMtyyldF
 Am+lfoO6C2cXKvBzgT/gxuB7sc/9LjEiw0C43fymIRr6QIyD/+Pk6Xqvm
 YdkSje/AZW0+xjRtm5Ypi9DeSrkzS9UE4OyjHQjRGZaCwLO2vGeBRRpDE
 aWZ93DtSZCT72yd//2TS2g+3XxK0n12qQwch52c+qxl4+stJI+pf/9x42 A==;
X-CSE-ConnectionGUID: g7YgcgpcR5SaFZspkgwwrQ==
X-CSE-MsgGUID: +BPqHSkaRGuRhjXFDOLSeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="18110012"
X-IronPort-AV: E=Sophos;i="6.09,209,1716274800"; d="scan'208";a="18110012"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 01:23:42 -0700
X-CSE-ConnectionGUID: FYPOc9KNQVul5bvHWiecZA==
X-CSE-MsgGUID: xyxcOqtIRRKMn60cSJHZdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,209,1716274800"; d="scan'208";a="50185622"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 01:23:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 01:23:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 01:23:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 01:23:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JCT94WeBGISf/Aj3Go1EcwfPnPVkveq/RBxqgFiOtxx6JRtLxjHe2UPdTQJpXWSSRV+rQiJ2J3p7VxDO0I0ERkpXRxZtV108gLDJvq/4Gf4IexGW5HNcUxOyDETLQHUVqVEuBcX30OqyIsjWgmiccb47JU8I9VXLyeH44dn01DHh3reJXs95aZEUbJgVgpUUlgB+oDEITcV2DWvqZQYxyoxs+gL8nr7laT3KIx8agTM9V1fr6FFELbZ8NXU212s+59gROxc7+2zFimoZH/q3eVO6RbWY1qnRA1nCMw1N70OGgDoLaYIj2bo5qbHUa93AD33xiefr1RxRKhaV/l/+lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5tFvwgquUU/BXhSUwLEPemAO/oqXqZ6FHYjrGePvSCY=;
 b=wpjqV03Gp3bgPrQV4K+cWzAL5ZUVSwsSk9Dx4fVVqWc+cDqoi+JgpzULvLj/Xv8s042dcfzvCluZV/841uleXZdqJO4f0chHT38zpNQhaTn1RwlhWmvv/ykzBPyv8O2R3alsLwNjIBcpovrHw+so+gfnaIgDpKuJnE/v1zTOHmvN1rSF+qJd9nBbjcQW5OYbgQFp9Kw1hPexZwdncQlaCSixGxsVwKdUM/LIqjZzm6cZHq6tCjsssCjATt1dCyqvRDkBPxi0P2fgM8XgT/AAnor59sZd2y93QjcWNxFKGRYGEYYjml4nA4Y4A2b+Ktczv8s7iRaRoNV/77Wzq3T+OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.23; Mon, 15 Jul
 2024 08:23:39 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Mon, 15 Jul 2024
 08:23:39 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 05/10] drm/i915/hdmi: Use VRR Timing generator for HDMI
Thread-Topic: [PATCH 05/10] drm/i915/hdmi: Use VRR Timing generator for HDMI
Thread-Index: AQHa0a/OUq2AzQX/uUOZPVs9vXpO57H3fSdQ
Date: Mon, 15 Jul 2024 08:23:39 +0000
Message-ID: <IA1PR11MB6348D1E5E78E93EEAD171F25B2A12@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240709032651.1824185-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA2PR11MB4812:EE_
x-ms-office365-filtering-correlation-id: 2d9a9a8e-1749-4a5c-7fba-08dca4a76e3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3I+FUpW05Z+jStgU8Vl9CBT2zmEja0s6vHgAwCbbmkJGE1OULLh4d15p6SbA?=
 =?us-ascii?Q?+rfvBHlyN4/H7/4aMQ6ZobWZq/hUvew8VCyJEsjQdVpXzjfFwsMii2WBSp7h?=
 =?us-ascii?Q?j8jaQ7xfKEiNASSTWPZLlNx1LjRl+yjBFfjrjvFNJO17OVAIt/E35Qg6KxQO?=
 =?us-ascii?Q?lpylXYQICMafoHgkFe1N2/UfKZm4Q/7hHnUMBh8prIV8iQbwaFyuMSQMGGoB?=
 =?us-ascii?Q?zOeFSlwc3FY9MZQQHn20o30kgSchmMOBSZ9d3VcLxE3sAu6681465f42WorL?=
 =?us-ascii?Q?wzib7QFiMIcJK/lSpJS0GQgdnipHq3/i7CaMHR+tkp4HkDFPJ7TNs78kIFnI?=
 =?us-ascii?Q?HuBEDInHqVCeQIWeAad8/e5+McNZVuiYAqvSa+rpW0s/No8eRHVatIG/yAZM?=
 =?us-ascii?Q?Lt12fr8QjY/whg/koxW89uWVv8PZw35J3yFEa6fTb7NamEIiKm3oA1A3E8lv?=
 =?us-ascii?Q?2iIYR1+LTqKRJEbhAXI559ZoEJ0qz4gcbfgN7jaI3mGQTQQgb8KuivlFb9/S?=
 =?us-ascii?Q?XGLd6XtHBxAzyBrSEZ/sqww3coP46VA+ZbCLaViyCqHhMUxhK+DnWVGTC1lV?=
 =?us-ascii?Q?D2Akc34kizjv7S25DO53xUQSRWF+wsbQR6QGWOz+0ERoZgeMMs07eClT2htB?=
 =?us-ascii?Q?xLkYpXCaIWTsq4LR/Ds1ygKf8UEmKY29K+CGRHMtxvnwiiOBBY/rkXu3wSuH?=
 =?us-ascii?Q?W63BTibr+W4TV96KFaB9WyzrpjxlfE1FbOzOxlOIK403w8YK7JiuNHQShDRZ?=
 =?us-ascii?Q?ejMsD15gABhGTSErEtpAwpbQSfia0IslwKae35JHqJ93aivf9tLdP9SnyjQK?=
 =?us-ascii?Q?EBidQ4PxOG/u4RWqtV1e69SuHiOpBjPvptgduLEPYRSHRevwj1UsoM1bBoU2?=
 =?us-ascii?Q?yb4Vbb8Bllxn2sdW0CekmDIfYiAX41H8p+uUElvMM9EcPxpqabSRV2FvWdEd?=
 =?us-ascii?Q?L0CaZdMxJcIfTnETBJP5OkghpL2xgp7T3P1OKRlM6IkCMRR4cb4GYi5RFacn?=
 =?us-ascii?Q?1hyIMT5izvq/h8Ew9RfBq4kgu2Y+tZJ59BsL2mzUOzIGKsyZn+Z9zbGBbfKe?=
 =?us-ascii?Q?BaG2xj7v9OH/23ko4zOJXdMFK/z5l7Xwfy7Ki3JgN1HO/TPPXFwzqYKZvXOJ?=
 =?us-ascii?Q?9l1jjA3QFIePw8/0EAb+N7lE7v5seECDMUGWVdpcp+2z7ttdL/HkRRhzWEfk?=
 =?us-ascii?Q?gjYXT4G2OJVbWHfL73T1KG8tvuO0PK6QATlYTJyT5oG3xk81pUNg5sLomXAw?=
 =?us-ascii?Q?LuXWT3tCoI+rMmjKqme5ivwZouTzoKxbfcakW+JnS2uxDjVuoGjDp+HPcDbb?=
 =?us-ascii?Q?FuFvafpcP6/bWDZ0P+bym7N8s9g5mdl3wBtUy8LztJZFBOSddhdaPb5LX+P6?=
 =?us-ascii?Q?dAebdIFl7FIOPpTiuMD2OHgFQODWPdak7J+3eDoN+r3ZvLSrBw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q6UlmRjfGYBhJhcJpjpwhdQX5dgiOuKh4bPQCJtYA+JOp4fSI5s87Na9FVGU?=
 =?us-ascii?Q?rVovqghATx//DdFCujDpeRiyH1OCqeMexS4AT/q5FBw/qawqKO2dqZhESNoV?=
 =?us-ascii?Q?kUYqPZlKYRodfRHy9gqax9ogcyT1mvhZu+ALV4ToiCZZkuqwh4xiZ29teuD1?=
 =?us-ascii?Q?2nIfxoqSjAHWvyqj/CnHsfPMXUIIJWkM5atergXXHZOzAcSinrOIMBDWU+2L?=
 =?us-ascii?Q?xlWRQBDJnsthW1uPqN/MI1DBCR4+74CkkgyZVpOVZtPdMCT7F5QxOZdhSZ+n?=
 =?us-ascii?Q?GJWOsGlAoPc0VYHIpjEe+lvumx+exQTTvEn1YRMIALpiaR/2L7CwVA6dI9pJ?=
 =?us-ascii?Q?iMYDcsHvviZLSoKIMDiA18V2iUly/I2sMsIFT6WQ6keIJjMCWhuqdPX/tFkv?=
 =?us-ascii?Q?orEZE5FkOk6MKRAdXkRva9xikETsmmMagia7K5GGJC9pl5k8eR/6Pgu99t7q?=
 =?us-ascii?Q?bikE0NpY6C9xYQh6cBSxSofukWO6Zwfi0rWsPSPiJUPULKy3sWspCo5e77us?=
 =?us-ascii?Q?NL0zE+16v22jhrm7wuJDy5+tPYLw1Mh4291ji+CCXQobyqmzG6q4UtaIO65e?=
 =?us-ascii?Q?V7OvRH1SR0kS2Ly1uMFH44LFmLbNV9yKujox2iyM3FoGQ8fTMOy55Yx5eNUH?=
 =?us-ascii?Q?oQ5gO7RmmVFHZ27hm8AnBiVeBvGabN0/Y2JSrgEcGWU8Pj85cM399y8jD2In?=
 =?us-ascii?Q?7AxpVfiRG/pMP77niKbo0T0Iyn9syg87p06AWWtCXRmlJxcNVmkOc/a+VHMD?=
 =?us-ascii?Q?AfouS1xfq8+B9UZNzDIaL2xx5tnw3C7oQoRZlfNv89wp8w6Haa96qtSR8AmI?=
 =?us-ascii?Q?/gZ5ntHnpL5Jkfx+6UMhsMuNGMiNsPMnllQjHnRqw+cbU+BnrFDmZvqxAWv2?=
 =?us-ascii?Q?M/rD0Wn5za2ASn9EGKAQdEWHl31KUpGRS1h2HQlhgwSpToqGriqtBpbCJy0t?=
 =?us-ascii?Q?v697cllEg+eMXQh51Mvgbhf0ctEgFYOyQ2VfZ/LU4cH2W8z3AAWx+Fcn9gQ8?=
 =?us-ascii?Q?5NVDCVyYTngg//9uqe9baQNBzfHBS1Ho3pyIYDz7jMdy6RhN9CxuwXZjGPMF?=
 =?us-ascii?Q?YoPdWo3i3L7nmwBRzH+pFjo7OtaGtJxBx7AnFurofKIuHlQGsquX4CzRzwBU?=
 =?us-ascii?Q?s68RCKE/ULAmSuhbWqh6DI58l3Q1dQaQh1X38Nx8vSuTAS8uNPYUaEUnHYMl?=
 =?us-ascii?Q?R0GGLvRyMu03QV490i8i7AMfAgVrYLkoA5XrJ55KTkGpOZLsz3+Pm+fwnMbs?=
 =?us-ascii?Q?pJLN8td/TSGk8XFUPRk+TFTM1AkbZcaE8cRSBuBmCO/4paNEau8bPX33Hb9N?=
 =?us-ascii?Q?Dxs+joiHd/TnOYr69rVKf+8ksd5OZAZnC0w+tj0Y/7ZjtsUU6tUTysZgry8v?=
 =?us-ascii?Q?nE+BJjXKvsDROV0UGCXpAHeuisUTwWSrf9YII8QZjibO9nGcwJU00kTday4P?=
 =?us-ascii?Q?TTOMebZrMY2fCFbHtFmCRMjz/zTF6yvTGpGoK00IjB05CzNH0QQhkvVNpiYN?=
 =?us-ascii?Q?35v2SR7BpywfFMk6rNbeX6sGsPgpV1MvJULIl4rwX9KYISUS+9Mw194Awlpp?=
 =?us-ascii?Q?Yo6SJQzXO54t4b0P7LShzsFDv7aLVb3jjB1GRqSbfgjx2+7JUdhOzMClzSVS?=
 =?us-ascii?Q?ZUVf6D+DmVRRQQL0UKAHtlU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d9a9a8e-1749-4a5c-7fba-08dca4a76e3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2024 08:23:39.5748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cMWFLRZUCMF7bn0d97ATfsaYg8ojKvEQvWhqU1CIMy+6QiaDdmx4oQqq13qz2Jtn3RWHVmUV5++KESh1OuiSUubHQLprJ+pwk//Sansj6EkNkf1S6av9wAhIj9+IPmV1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, July 9, 2024 8:57 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 05/10] drm/i915/hdmi: Use VRR Timing generator for HDMI
>=20
> Add support for using VRR Timing generator for HDMI panels.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 19498ee455fa..c8442772bacf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -59,6 +59,7 @@
>  #include "intel_lspcon.h"
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
> +#include "intel_vrr.h"
>=20
>  inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi
> *intel_hdmi)  { @@ -2366,6 +2367,8 @@ int
> intel_hdmi_compute_config(struct intel_encoder *encoder,
>  		}
>  	}
>=20
> +	intel_vrr_compute_config(pipe_config, conn_state);
> +

Changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
>  					 conn_state);
>=20
> --
> 2.40.1

