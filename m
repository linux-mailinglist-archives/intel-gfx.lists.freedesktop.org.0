Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5D48C3EE9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC04F10E67B;
	Mon, 13 May 2024 10:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXZ2KMAE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652F210E664
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596165; x=1747132165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iXRi66ikaNI4jLf/ypxlwl7f2p/08b7HQ71BCpHpwZ8=;
 b=CXZ2KMAE2ws/mRJ7NjQnHZbgHUjSQe46C6gbWhuR+PcJB7HYI4aRRQrk
 XJGESoKzHtTIUikbeWRIw9MJxv9RM5a4zRrW3JE27PxjOVlFC6U/pYUGQ
 UWrWwpvoCDr8KeNvERWSBp/5RwseLEvQF6nqXlcjk6dlwlxgdpDy4fTVo
 SlcoZ8dv8SMNVA4TEYkE8/0WjDCGeH/9o1GJ7r7Iv3Yod43Jz3oUF3hhy
 yFS8+aptPMg3Cg6+cYxyXLMhrst5fvh74LmU9Wa75Is+8sxakT7xDoK55
 uVznUeKjIIUT1ZzW2YH9bIs4AQlfAvOETKzz/y8LFJlsLdAYMd51MA4hS A==;
X-CSE-ConnectionGUID: 7Jjz5TRUSgSmhxrCTs5x9A==
X-CSE-MsgGUID: JNgZC8nhS7CgilK66VJipA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11683518"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11683518"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:29:24 -0700
X-CSE-ConnectionGUID: u84yUeTgRBWj+7YGwKOZ5g==
X-CSE-MsgGUID: 8FbKPv5hS52PhZsBFUX91g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="34716707"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 03:29:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 03:29:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 03:29:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 03:29:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 03:29:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fd0MeedITcQ7+2DgPz9T10yRS2kzLNkGiw+Z1fFYAlyt1DB0ShVCnGdelpeSCuuuIp9v796Kn8I9lVTq5jhyKl0EmKcR1lV2dVcHrt0OiVMk/lD9G1J08ss2BNJAnRkRQ7SePv43GMiG9xgyZpiw7UwOLwktZpwObgMFsKxrOPrs0gBppZk5F+4hTzXbrRFAsWSiZ+oYaYC460VB969q0QthoiNTq3ogOu6NOyHAhHxhjdJBFc0Zs9hNoDOeiXML7GLxJ8P1a8kfK4XqJ9aLXurzcORiPTRcj2wJeMiQTZGfqtJz+xHAZyTcohU3QkZWrpsJ6pT+bkjrd9tyVQaKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uOwXpX3DpA8XHVmZUA5VM/uScfeb5dSJ0wlSj7wto40=;
 b=U7Gsq8i7OJtIidhUmsapMjiC1aEGcKRtPGJSMHzc98uwGKf67FvwFgn4qy/ywFuOUkGp1DN6Zr7Qw3+a4oIE4PleHd0NqdGzKJFV35pNbB+YEvElfsIXEp3fRzkPF8A/ii/+fNKGY48alf1ZyIEOtOVuCIs2ZKYSAk/vk2tYt4b8jSbbeYI5W1FJQzRCu7Y8lidRHyWy/joZC49SV8cjwxZXzoKN887tz/C0+6xfVerG2odoDMK2mLG/h3NpchOJPwObJphknOof2ZP/ciaFSJmR2izlrlJ6eVK60Bm4vx66lz7/ybr5nqpf4lXSKm+SKoap/BLbo3P3MvEZ7UPN1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH0PR11MB8142.namprd11.prod.outlook.com (2603:10b6:610:18c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.51; Mon, 13 May
 2024 10:29:22 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 10:29:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH 0/7] Enable Aux Based EDP HDR
Thread-Topic: [PATCH 0/7] Enable Aux Based EDP HDR
Thread-Index: AQHaoDP5DRhpmyhkx0ajPRSu1RCLOLGU//Gg
Date: Mon, 13 May 2024 10:29:21 +0000
Message-ID: <DM4PR11MB636092531EC3D2612A605050F4E22@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240507040407.1056061-1-suraj.kandpal@intel.com>
In-Reply-To: <20240507040407.1056061-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH0PR11MB8142:EE_
x-ms-office365-filtering-correlation-id: 9f81be87-2d50-4e07-a9f1-08dc73378dd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?qftfWg0/rkA8+uq4DJXvib0nDEla0TwfQLplMTEYeaaGEbs9gfKu3GPOZKHc?=
 =?us-ascii?Q?00Jrsmq4XJS6XhPv9pWjWtALmJo2FeybYKhyrl01MgIsTVEnO3g2pZNEFo7j?=
 =?us-ascii?Q?NC10OOM1GhWDjwpMPzVHyzkZYzeWi0du489XnscE8ruR7cSdZ0+QKS9Uee1r?=
 =?us-ascii?Q?1RU79kj4+byLkysv1L9Np5pz3mNE0uwu3O6pp/lzA7cqCn2Zs1r6y3udQvdW?=
 =?us-ascii?Q?CfLgT4mSDWKa8NIxdL10E5qOM2/xeZ13QQBNRR+8EEjmLwhyOstIQCKCLuaO?=
 =?us-ascii?Q?pUjwVxlji5sBxCOVaBqGSo9oc1ryLcXdTQwNe/VfyPnH4wJDgqeRdudwlXpS?=
 =?us-ascii?Q?nt3bLjdHU+8C0dzb15sD1uN6cP/LZWAL1sFpzUHbZOx7EYY87eXWpgqAylfq?=
 =?us-ascii?Q?/xn7dVz7c6c8RnD68xdQxcxI4r3mWlV/IJnJSzxVZqEkeMPSZgng5gAiGXf7?=
 =?us-ascii?Q?wJYtmWBaIOMqIAwyaLjBar62GXcI5daovApghyGkx6zb81RbXRd3X11RCYDT?=
 =?us-ascii?Q?o7SN5WzZ1ixVN0Jj+TR87kR9kzpIyBWwLqtKKpkj30zYsh5jSYriFK9W0TuG?=
 =?us-ascii?Q?T9qJuXLtrQ49zhcwoOrZFcr+82tWuxQf8mViQP9xyZh/CKYEsY1E/dbo2b31?=
 =?us-ascii?Q?x9X9mnrYXsqIc35LfCRtVfANOcAkLJkALefjrxmhHpwiNWbUIW7yuCXFcPcF?=
 =?us-ascii?Q?XL77nrIgh29rl2b3d1Hx6P23ika0cbxfLuLHR0im3s2zVSrPhpkbdyzqVI14?=
 =?us-ascii?Q?pXu52jQDOZGgQLgpBiYE8ptf1zXX0uSFkkj5OCxAHZ6po834rLUoyP2av9/q?=
 =?us-ascii?Q?7jMG9IuFqwRZLUwUR0kXeF5RorZkwkcKLh4JUPn64iaUPwjufmh7ZHwh6OVE?=
 =?us-ascii?Q?08nf6WofN5Oh7ppMJmvstmHGiqDPKv5rnKsOGLxmKboFfBjW3KKJCoOoNVVX?=
 =?us-ascii?Q?9folO+jQY5qQnJYynuU4y1VdpD2hD5qFRtqIvWqlzKPKJYW6sEMRHBzjr0aR?=
 =?us-ascii?Q?fopZdBcehC4RmeHgeemhWLzCW21MkErLp86gI3A4QoMVAoSxxMnnOOEXeguP?=
 =?us-ascii?Q?SEMUpmH8ONpT1KtuMFC5G2iyz30yz29naGFrcPMk7X8O/KhhsHqoY2oV5IbV?=
 =?us-ascii?Q?fHDUn90TQqpjsnr9bnneRt8EKwInCde/hY7x0Sc0l3ZTwz9oOI4o3M9IxnxC?=
 =?us-ascii?Q?xsna0XyHgZcPh+n0hm/CCR2NN3hvNepV9a4VZkUZpTTjLDa/NtkblUZYkpgV?=
 =?us-ascii?Q?5HIoPJX6KMZBC3zfM9ee7Mku5Sb4lTO8DLuLnm/MsIY2XZrSl0d2OHB8nPns?=
 =?us-ascii?Q?wE/a9e72qbBqjU2EPlHZozG5T12cV3FB9jM2eHqhMwJnqw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rZUZAHHextdF9tT4shxF/uorPD/Oj/iAEaNVL3s8e44AyNS4KLag8s/fhlw0?=
 =?us-ascii?Q?b4I2pUkj96gIgco/5DWkmgfwgffdMNspv3DDeiJOJDBQ981jxlUZnSbTX6cW?=
 =?us-ascii?Q?BkphQH33QQ6mTRKol2+FbQeHUnKoSG/9Dhcm2tnYCpcqkrEEB2Xxoq2tJH9v?=
 =?us-ascii?Q?qvNwvr/haJBOiQ6gmOQw6IBi4heBO5taFlMt+MVbKd60DJgsJby1wv9TTXjl?=
 =?us-ascii?Q?pGgfuA8jL2mHRdW/Usnimtzrnx/FfVy8wsAoWKqGl2+RSkxTRnrvKkbMncYe?=
 =?us-ascii?Q?ksqxC4QcTux6jZX91ZZhIX15MmCzUZPsrMarObi6nl2pV9zNWYG+nUUHNEHa?=
 =?us-ascii?Q?ICJXzc8Tl5qoo0f+VnisZiVZsPPvtrNxk1CdhqDUsDhN9YAHeu078M6j6YN9?=
 =?us-ascii?Q?HoJ02yHTKsp8JMU5mLFI9noCEecqydFWmZO8+N1W6AqwD8j7gd/UhktxDJO2?=
 =?us-ascii?Q?9Nc1s6m2kvEXM4yR6cZ8YhT3FGPt3RPp0U9Fs4qD6d8+fF+oQyfNq/5XI2il?=
 =?us-ascii?Q?Q/2mIT2Lf0MiFmMV5MEaTHIiaQyuYJzoyJjy0UoHfdGPY2Xdlx2M7KS/4nJd?=
 =?us-ascii?Q?yeyALYZvqWu0UQBwj/Yt1NVr/v2E2aKOZ5ingJI2Wejw628miEguiaiXrpY8?=
 =?us-ascii?Q?3EFnn3y22JENSiqOUgO0IvLX9Bih3m3zn9ryndViRv+ocYomr/ow/zBkUMiN?=
 =?us-ascii?Q?eNA+cc38eF6s+0dZTLdbCp6nyn7nnaGkzpd2U+Uq8JGwSSwC9M5UxDf4AJCA?=
 =?us-ascii?Q?FXl4jypk6NUMvIeLmJA9X06Rm8uMcYxLZ3SO9cc84P4Iw6IJLpm8UO0XQYJR?=
 =?us-ascii?Q?waKbFfc8rZIkyAMEDhmht/ANyboeGPD1T6Qt0pUVKNp4tc7xrpWCveeLiYly?=
 =?us-ascii?Q?JSIv35Uv5wSF5ucCeAYJZHi81YZOKxQBemnvQvWA0g/Pg7R3RQhZuISEl7lF?=
 =?us-ascii?Q?3QoXMtKayiIvbLFlLjaJE6C+qkl/8iYxKpZNOIEiKzFcep0y1uuyc8Nj5Emp?=
 =?us-ascii?Q?aFeaiakJee8WS3xPyWHleCCxs6vNZz8sm1V43FvCpOxaMXgHrEIlBCaboveR?=
 =?us-ascii?Q?kwtCJSEHJtBwrHYIpnwfLZvkPTKeNr2hvg2abgZWfcNhTefRuylqR22TdqQ3?=
 =?us-ascii?Q?410m1uirPBiJO0kvLS2x4iDSMJV1bfeiuexym9TcJwfdGp4fg2JWQPCo/l97?=
 =?us-ascii?Q?tMrUhs5RYmVYQxKy3gnN2cPa0bOdRhm0I5o2FZWpSEkvhlZuNzLv5N0Q6W4c?=
 =?us-ascii?Q?hEP7fmBZ82kzCwYwYiva2LLiG4W9iobl8F6U8c/BRjAILEhaGJz5YkoMhWQF?=
 =?us-ascii?Q?vOOAs2Ljlewzsd1MRRPTp1zOHTWlv3POhwUNYMBQe6DA48Ya7gd8Mthi818n?=
 =?us-ascii?Q?v7h6911Ucwn06bB58o105f2yzWbSWbvieU2Td2uusdz8XjFqVgZOo2DDkfSm?=
 =?us-ascii?Q?zD8NlSWTJZ5dKYaDGb+aRbxGgMv1eg6O5brbiarFYYrvUW8L8/aE81FhH/J4?=
 =?us-ascii?Q?ZI7P69kwETX1TqZoOTw82V6pKwz9QqFSLKsQCW0byl2csj2DW8f3h317ua8o?=
 =?us-ascii?Q?I/h0Ffp/UWhJxZSNobIW/EmHyw2mBk3YKY24+lKZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f81be87-2d50-4e07-a9f1-08dc73378dd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 10:29:21.9032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dV/kmkrlCGzs9IyiYvfVA9cxfWh4NTKSeA57PRGtFHEFdSAAx/Fs74ZsYTcJnGkATtOPmCP0JqDuuLBooeBCLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8142
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, May 7, 2024 9:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar, Um=
a
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 0/7] Enable Aux Based EDP HDR
>=20
> This series enables Aux based EDP HDR and backlight controls.
> The DPCD written to are intel proprietary and are filled based on the spe=
cs that
> were provided to TCON vendors.

Merged to drm-intel-next.  Thanks for the patches and reviews.

Regards,
Uma Shankar

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Suraj Kandpal (7):
>   drm/i915/dp: Make has_gamut_metadata_dip() non static
>   drm/i915/dp: Rename intel struct inside intel_panel
>   drm/i915/dp: Add TCON HDR capability checks
>   drm/i915/dp: Fix Register bit naming
>   drm/i915/dp: Drop comments on EDP HDR DPCD registers
>   drm/i915/dp: Enable AUX based backlight for HDR
>   drm/i915/dp: Write panel override luminance values
>=20
>  .../drm/i915/display/intel_display_types.h    |   7 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
>  drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
>  .../drm/i915/display/intel_dp_aux_backlight.c | 149 +++++++++++++++---
>  4 files changed, 140 insertions(+), 23 deletions(-)
>=20
> --
> 2.43.2

