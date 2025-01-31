Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EB6A2392C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 05:56:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FE710E181;
	Fri, 31 Jan 2025 04:56:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWf/xxGy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7EF310E181;
 Fri, 31 Jan 2025 04:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738299397; x=1769835397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YE+JX/fb2XE2fSNsHnqYYBQ0NG/Yg5q9wHK7IdL51ZA=;
 b=jWf/xxGy1ZYAZ1PvMl9ZjyQMnAy/RcjeIC6DGo/JA73ol9d+A++u9J4V
 z3wnBA9818n+6/vNyAT3RNw+JFcdd6FJcL7RRk/41qWXfJ5Ionb96QW5p
 h710DO8hRkXdZM4U4VngJ6VEsNCa+eo0yis9ks74tmUpI91uk8Ozr6MnA
 C+VvO/jCSn0eIK3PmMhIqP16sZ+IuOZ36aRq/nW7ZnZ+REd4HbSqMEgjz
 Zs/RXEMYiUFbrrlB1NqUs0nhi4L5UAgO5kY1TJWdtuTCIb5yOAZ+gcLHX
 LDmfYs4c456p3UT7BLzO/lZsjsOPigjEk17r62JTn9idMoNhF5m7xpqkI w==;
X-CSE-ConnectionGUID: OWs0Ws64Qpu7LzG7oZekAw==
X-CSE-MsgGUID: AG/1DomOQNOKtn4h7kvZDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38760810"
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="38760810"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 20:56:37 -0800
X-CSE-ConnectionGUID: Van/57RhQUm+wDEeJaY+FA==
X-CSE-MsgGUID: CPd+4DIkTJmSdldllsHFCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110410290"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 20:56:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 20:56:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 20:56:36 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 20:56:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K8DfOMVATsDVjNeRCINfieCdS+Yi6vU9jR2RRZlUImmambyFko9RXuNgEpPNw1PVNnM62utpd+K8dV117fZORmJT1DCMMqzPmySTNJaa7Poo0GM/6clUWI4D/WOU4RqggUZ7D5mmKGpOPBIcMKTPyU4qdWxaoRFaP9kH/2bqfeySHPHHOBmSi6sbw13BJvNhZWhNqEiN6t6l2yqbhC8UKcgZgZTBqtUzWgIhcBBJweCnqdm3SXS+HWA24t3s8kX2T5SK/DAtNc1bYOroLbvYpzjBIz83LzELmbNfC/QuNpUrMTAAqkwdo4xX82wAEpgcGZJ3Kc00J5CJzMnuOpW6Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qei6JcIWguznBc1KRtohlW/y3u6axxAwMTXUUTBzxXw=;
 b=IaFhLmkkeoh1PSVmdMbfNBJ1c03g5x95jp3QU8ng1dna1xgVlzSHbq07yaITuwPE0nvHaYbpQyaH0C0++09rW6lv/aQbyiK4Cb3r/oT44fn+sYbu5gfmvctDYLmQHYDvuALpio0208CI+XQghNPWYrel0zpQqELgET/anw5GLpbeAeB3zL+h6cHh0Vrr5ETYgF+umOCszh1b8PqTK8pcPgaLyofdH/OoN07vRIS82Vn3EiXUZpG02hAfjjXQKwWe2yUMSZpGVshQRSFR5OBzen/s+T5tU+uyis3RLTl/awctm7MJhaVVS0z/wY9kEB8F1t2ZQ6Mfz3weL7LExZWIsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6490.namprd11.prod.outlook.com (2603:10b6:208:3a6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Fri, 31 Jan
 2025 04:55:52 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8398.014; Fri, 31 Jan 2025
 04:55:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "david.laight.linux@gmail.com"
 <david.laight.linux@gmail.com>, "naresh.kamboju@linaro.org"
 <naresh.kamboju@linaro.org>
Subject: RE: [PATCH] drm/i915/dp: Return min bpc supported by source instead
 of 0
Thread-Topic: [PATCH] drm/i915/dp: Return min bpc supported by source instead
 of 0
Thread-Index: AQHbc5gVqzTjHwStuEuPPhCpe/fASrMwSYOA
Date: Fri, 31 Jan 2025 04:55:52 +0000
Message-ID: <SN7PR11MB6750CED68CC06BD96B9ACA0CE3E82@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250131041342.3086716-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250131041342.3086716-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6490:EE_
x-ms-office365-filtering-correlation-id: 82c17066-5ebe-4994-cd54-08dd41b38a1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4lMCRXN9uIiGVB+Vj2b012vNGyRdaojhsF2H8mg552kIBpbfXwujfDGgVDFL?=
 =?us-ascii?Q?0WjHVWxA//Xar8ZJuV24CL0KgF43mFgOIk0WUTU3M1NZscHWXO/RYDAHfW4u?=
 =?us-ascii?Q?iAq7bocv+FtMPb2VKFYB6pef4+oDM7YNh4CoZQgrJDItfwIHAHRKFkyC5/0Q?=
 =?us-ascii?Q?qH6e1HeNN5Y62iSb2Uy+dh/tr6PN8pJODaASSf9oE9d7mZTtM7PFCmXzboTU?=
 =?us-ascii?Q?+5L8ZQgjcMFIVkkC1x9hZUU/5ol74Q1KGU8jK+0y8ylzVKZZHC3lqc+LoqqD?=
 =?us-ascii?Q?ynu9NooEokdY/OrO7NhomeOhnYNI41yq5Y6SBuTlfpnQAB2nnpNEdKbSzSXm?=
 =?us-ascii?Q?uDAVZo6t58BYrYGAIkr6CIyEK00I5jm0T+ivV2AAy4mU0FU/rvamRFkv9JC3?=
 =?us-ascii?Q?njS7jmnu7k6aaWF52ErLU6b/4Tj2x3J77cxYI9PCtTWRDi5MUfHR5ne0k2AL?=
 =?us-ascii?Q?eYnHLuToy771IkSJaTqDVim8QJI3+gW0hXG0baS1HUTsA48NiyQU/5PQ33+d?=
 =?us-ascii?Q?0D9rWA2O4gcMlSw/31lFUcvaahcp84S1WF9qmRhcevYQoF8EN+gIG2znESqI?=
 =?us-ascii?Q?bcg0IvXx3/NBgCNpf1wxS1rWHS2R0V67Yof8Pi3PfOPabAkOwJkhBx4iAOCD?=
 =?us-ascii?Q?kknWQcneyE39gCcf49WAUly9eKarIiy3WgAm14qaMsgorEgNlI77SguY+GZc?=
 =?us-ascii?Q?DzxwixGXzH7COFYhRyji8o0qz5ejzifjDRidOY8cxXZvex7HDM3dEHN5q2fu?=
 =?us-ascii?Q?S9VXQBl5+iiBmvZjYnWWos3LFa+Y/jLakdD4pO6nzDX/P/L+qdG9G1gWfatF?=
 =?us-ascii?Q?C+/+Iv5n+uWXysFDWVTBhLrYnAfqlvhdGI4Gl98h2t8ztYp7ODRqgm3+1/QY?=
 =?us-ascii?Q?buvc/uM6qmlHTtW9x9XYo95Xb8HmlwdQDwica+QW5JBRTesJMLYE1wzZ+fbc?=
 =?us-ascii?Q?kGYi32eFjHwVhRr34WC+QrwGI1JrILHQlYDv9QgMx94+ojDAPdQJYnNH3i1+?=
 =?us-ascii?Q?yLZP7UqgZMOr/WwUorswSEnXZvQixdB9UAszzrEY34HVl1+no8hIDszpC7ZK?=
 =?us-ascii?Q?Ka/FrYYTdlykYY3GI1hNdB9T6vSkCYiGjTFM4KFJaSPsyn4U7sTsXeAeGorh?=
 =?us-ascii?Q?AetQ1wHVxhF/Q1+OdKlYo+gQrUk0R/9dYqVWdvRlCkehd1b6RXEzApktbdT9?=
 =?us-ascii?Q?l043YhnLcUDkB8pLfMjFNA7RQ13z99ifFlvASj4NDjPK+jqFy/yhC1cPZzrw?=
 =?us-ascii?Q?6M1lp1aFIxAASm+hcIio5qH+bed/SzbQWtQIOeipqpX2O/iRFFJPGZtZmQfd?=
 =?us-ascii?Q?pbrhGxjEMLrv/3/xNL4jQ3H8oX55XrOZuZXLsDoE/y0yGhJC3mq3bImH01Dj?=
 =?us-ascii?Q?EtuMJpjJW/bx3JzrHUEitLqq4mf8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BqUK1vQ58CmK1AB7PISIOpO/Mt/3n0/q8E5mmj2Pcrp5tPHQ9/gO6sCiV0BO?=
 =?us-ascii?Q?dFNapyDK2dsY4SrvTRGUYGuRtXmJt4KKD0JHCfoOIHufruouVf8V5nAq18P1?=
 =?us-ascii?Q?hp3YHKQ4V4Y11M7aej1I1MnFVS+FHsxiTeZiSi1xllLYhSBIbUS71y9ltr4r?=
 =?us-ascii?Q?PvU71eN9jQLxbsfD/3AFX2l/yAgzC0urfLfblnYidcZhimcUb4Lgkrn2aUMr?=
 =?us-ascii?Q?bX55QDMvOIfnhG+460YqqPbfwv6DB4oDFcJhrBBzqOvyaujuCldCWMbNIoo6?=
 =?us-ascii?Q?ftp33ZPg7kmW/GkQYBhO8D0otDBT1gsJHW1dFvfdNHpsK7n0+zgN7sYZopjz?=
 =?us-ascii?Q?V4S1i3FJ5rCjm6SrqBejIqu6+qoX3WKUTCTi6s/ASkgse0p7bA8h3FcOkSr2?=
 =?us-ascii?Q?fkID+Lc8BmTNBZrG+lpX24ZyokElY38sN8qYhY4bKkEqTy1JiKFV7Yfd62oW?=
 =?us-ascii?Q?qAKcsdZ6n/CFf/ZKxKD7o0Cojfmm7x/kk9BEBETahFKz7o/ib9zVzMXpu9Rb?=
 =?us-ascii?Q?x4c/9xh1h8D2m4Whnh1SLwji9AOWh2nyb53Qv63aO4VpsUSEOm0QKRM7tAYe?=
 =?us-ascii?Q?K2WqqSotnNUrNZ1pCJOaofkQ1OylPXqAtY/oJ4sYzUU0CkNMEfGC5Gvp/c+7?=
 =?us-ascii?Q?szNd34crVZFoqIYtMjaQ1joMvGzAoBYfA84omOP3XKJAYuc5EhTzlaV2dcwi?=
 =?us-ascii?Q?WcvTqI4Skka+Lk4lEtODAxnWAHlgqNxWKTrSXegxO9ptsVAz39ffp9ki1s/1?=
 =?us-ascii?Q?xL3yPj9V4fb4m7c2Wy/Onmi4KjXyrsAzqlQW9VV5Q0HDhgZyosJDuqw6xub6?=
 =?us-ascii?Q?Q+6ij/gvJPeII+ogJFJqCzbBoU9jMa9z41Q9SLltak/WZRr80Z3vi29wCfVf?=
 =?us-ascii?Q?7Frn3WhVZpsuBoQBFm/MIVitz5UMm5/SLUVFwUfy0YqsP/NMolZSgqpyyhBf?=
 =?us-ascii?Q?Iy1sW0mxejgWW88U1UEB7DpvIHDxtJFKbMrTEsSSZ/8vMJiGVruoMkNioP0x?=
 =?us-ascii?Q?pjVVlTiRBdaMtBljeze+/T1wNwVkK1FMvbY46pEJuxNsufMbxhOiai3qL293?=
 =?us-ascii?Q?6CajrVj8LbKPWfVaWf6IIcib3MExsMnqZeA9/RKtRUDvYrllqdRe9KIf46PR?=
 =?us-ascii?Q?RyRvEgHUYlNv6siJQJ2vHqARD7GwC9j6r6DdpHx3/jeU9k5pEpg3cD+EWSg4?=
 =?us-ascii?Q?nMCNpO1dsB5fQeTKthHUVLGtScM8Cq0PExc1cAmq8CUSA3GXoXYgyBqyAdNl?=
 =?us-ascii?Q?E5fhfTNfzaW4D1oRmn6mTTDvHoAEkNz5/34eZ88P+LlwMKrpwCXgbVOFPZ6W?=
 =?us-ascii?Q?CbzsmKUiDcXwWVKlfwVZlnRIhHVQLQDEVe1qRD4M98INbHxvQ9LPK8qx2cfy?=
 =?us-ascii?Q?2BQrEkzXf7Datgv8OqgjgqG9iFOv9NgNAlqekLappCUBuSRy+RaT1qAlJqSD?=
 =?us-ascii?Q?h/9fEECi7Se5V2fxFEPnjp+yUbdtyOSo+E7ij3xx5CdbHbtluakdiI8IgcTa?=
 =?us-ascii?Q?6tSNeSToJK/LNRUVDhTh516dnQ8AUtSxUrg/yyGnPjYJq03IsFpYQV3wBG5u?=
 =?us-ascii?Q?YaEFzCjD8ww2BkZqM6Dhcaq9yb+/vxuzJPA7J1Ci?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82c17066-5ebe-4994-cd54-08dd41b38a1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 04:55:52.8003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A3W3vdFjCbaxIKnHwFkb7sMnYySmJTXEZnAv5ujxistQ5EXzMxvWfR7rYTcL6J6z59+pYF39N/7OMexBd/JSMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6490
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
> Sent: Friday, January 31, 2025 9:44 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>=
;
> Vivi, Rodrigo <rodrigo.vivi@intel.com>; david.laight.linux@gmail.com;
> naresh.kamboju@linaro.org
> Subject: [PATCH] drm/i915/dp: Return min bpc supported by source instead
> of 0
>=20
> Currently, intel_dp_dsc_max_src_input_bpc can return 0 for platforms not
> supporting DSC, which could theoretically cause issues in clamp() due to =
a
> low limit being greater than the high limit.
>=20

No need for the extra line above
Rest LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Instead, return the minimum bpc supported by the source to prevent such
> issues.
>=20
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Closes:
> https://lore.kernel.org/all/CA+G9fYtNfM399_=3D_ff81zeRJv=3D0+z7oFJfPGmJgT=
p6y
> rJmU+1w@mail.gmail.com/
> Fixes: 160672b86b0d ("drm/i915/dp: Use clamp for pipe_bpp limits with
> DSC")
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 80214a559013..d28abf081844 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1791,7 +1791,7 @@ int intel_dp_dsc_max_src_input_bpc(struct
> intel_display *display)
>  	if (DISPLAY_VER(display) =3D=3D 11)
>  		return 10;
>=20
> -	return 0;
> +	return intel_dp_dsc_min_src_input_bpc();
>  }
>=20
>  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector=
,
> --
> 2.45.2

