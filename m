Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EAB86727A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 12:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3644810F06C;
	Mon, 26 Feb 2024 11:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IlbObG7H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E4B10F06B;
 Mon, 26 Feb 2024 11:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708945312; x=1740481312;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=quQJgbGxeFM3TTP4mUKQqviSAON69wcuiHFNkLm1a1M=;
 b=IlbObG7HNr3dtV+0TVNwmTq0WPEp//udbVZVQcDgLE6HuP9HzwcWT01U
 ZJuSLGwEQ3RppEuulHyMLG5/6yenPb9zfb5UuwnbUAOVPvh8ZhnBAMZAM
 l5mO97HowqUQ8GyzGCAFAqwhesf6KxxkiFTCBV01OG4A/yP2IPgwRCt7P
 IboKHzHB84+3xY/EperMOmQJgVhjeiV8lpMHfZkn6VTO8Tr7qEYAp7vVA
 cNfGD32Y5VvuVhN5uRiTpIDDlEw0gf4+U3wFT9I8O8WoGmecPXqTM3ZXy
 7Iqt0SFZOhB5qjTMaBsC8RZsgmfrgpa+ckdbzWnGXTCWWRea7KfNqYTy8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="14656651"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="14656651"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 03:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="11348069"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 03:01:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 03:01:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 03:01:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 03:01:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LE6YvqQo0p22qirWYWTtWpj8aLDgg7bp3Krg6XNJie4H5WTjy8Nx34OaUfjSELLI5X9vFMo+xAG/EOzot5NmVo+MiQCOavzaJJ9zIFGTO/hNIpZ62zlZBrnJYynaxfwTslDjKce1VHH2ghAP4r9OO7w7MiI5QII/wJzLQk0kRRcvmbKB6AzixU1kNtqf+MwP3WkvLiRX/rzIBXvRFRm7GEak8teqLc2POc5D0uJfKHpQxD10sZq4JrHg7gyfsF8OcjQJ/MFUfCH4rW1NIP7jnOm9Rc1izzqEVHwq2mJtSXxcX/q0jptC0oVVFwzP1xjlXmvaI+lxabMi6D9HINn83Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vfn+5gnnnLCyRoAMGaSGPGMbImTtXEujcyhybuITn0c=;
 b=Y6heDlhZawHpKbxjBAG423ciaOSCQRhuIaPvyw9H2gtluaJbTO7WPSEk7RzF2WXQrPWzXiL/5+/duwnk8R+iwQn2Q8I8ECwBWoK9LAoDkrIkxPaXZ/hcAVGUK1alGndJtwcFGviFtlG/2sKVW3qUfbPMpA2t/jrp4jf2sfoQWbct8Mr8r0tOH9S4nLSN65a+4Q3lx4AOZbxmE6b9eaux/hH6ChF8cr3qACvcAJ7BzjFS2rg0+W2brBoxYnEynPutTGhUmt7v7B32xdRYF7fzExjMMq5azdluetXt1b8mZGtYScnh9YI2msQCAUwKiXGYvLtXZrUna0BS9dT9SjWLnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB6903.namprd11.prod.outlook.com (2603:10b6:510:228::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Mon, 26 Feb
 2024 11:01:47 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7339.024; Mon, 26 Feb 2024
 11:01:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
Thread-Topic: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
Thread-Index: AQHaW0FOh+Ya/24R9Ueh+59VOasMXLEK9XuAgBGPMAA=
Date: Mon, 26 Feb 2024 11:01:47 +0000
Message-ID: <IA0PR11MB73076A20D88D6F77BF3FFE95BA5A2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240209101412.1326176-5-suraj.kandpal@intel.com>
 <20240215061247.1427312-1-suraj.kandpal@intel.com>
In-Reply-To: <20240215061247.1427312-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB6903:EE_
x-ms-office365-filtering-correlation-id: 3bacca29-5507-43b3-5dcf-08dc36ba53c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZkNxzy3cVoRYnZrrQYjmJQSjWd2UcSi5uVNC85nm/folkqlEDfwxGFEMHuPv6C4zgyLD6k/MQ1r1Bstqs4TXsdALRrj9BNPWFaBnhXvPtD2eDHg/2+54hAr3CwRgMmhlxG7H1bxODjcdPZNVoHsia6k3bc93tEY7j+11+4Q0zhyPCVfNw4CmnTUMHweQaWAcXVyf2TRk4Edq+IenWtWaV3rO6dnkswGLIBKlvsLgBEp3scpkjzWVl1NJrr2gv6YXfxFYVOrZYcr9ctVhUIAfACcjAvR4OoOVe43VSGmNt335vg7SlZsr0pn0Iu94/R1Ciqdu611actl0kBj7HnVhcRZ27+UYpulK8y0JtRP298zdCU08hYX5fRjVyP41QF7w/AEyuI5zq3QY/x/6a3H5T+8yGPKq4JLxZzaEq8UT38pQltlJCQs6wQPSv6axI6QLOvYlkycZ2mdd3Q4Si29+JfcrZ7fCUTlNIGDUiPdxusN/mBxe5WfDVNsCzzSHDaE/cia6XflMqtT4D3bzagnrajsa/q8/4abfpn+p5MdJSKTK29oyptBQsq9JuRIKhOlMJ9NmOxr6mX/n7BMZAQJVauvIU493c3MdiSR4rh+FTjztESEdMHZSpoeOlTNCTcVfqUHHO57Vy3jBs5QShSg+1nqumUKvotRYHkKfft2zcppT0CGAACYxiVKgrK37rN2gOXVNcuYDfJCikTcLseM8cjLv1TNHsNhl0VicAb9c68k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?olACYJEXOKK9a17lC9CWCYxeY9JzVBAN/rvzw8XFQaOQmkbWW15ka/t9pnMg?=
 =?us-ascii?Q?yWN6gxb1qqlHqB7/FbD5FcqFs2KgkOHQ7CIJ7XN4Vdn//9g9q4DpvNqe2r5t?=
 =?us-ascii?Q?0OiIWflfdHbcXhw+njfzMhGYNV5tVtWHg88zQzDKRpDj8rNV4p1QZIgXHJGw?=
 =?us-ascii?Q?TeQx90C2KoBypO9f33rCBj1CRBdV6ZQf4NsSaTmPWsdIN+qxOmRGoQPIN3TF?=
 =?us-ascii?Q?x0r6kvynri4fAZNQCcMQk30AhOsZA0p+B131Xdr4EmvlOGLYS2mzbyj+ha7t?=
 =?us-ascii?Q?HxmSGO+Z8eEToH8alokXYFOewDFuItNh9scQWdC7Ak5r0fKh8V83TsnaRdUe?=
 =?us-ascii?Q?HCZyqIpBpeoNS1yB6JH4qrwpA85dkpBiD0Si3ePvumrgvm20W6JE4J+zjQfN?=
 =?us-ascii?Q?hr3f3dANWMDTh/v5zNQvll/rN5d2cSfQLd1OBsHkNCOnxxDR89ox2grrssGb?=
 =?us-ascii?Q?9v+ViGq/Ve0zs39L2XI+1fdgwMEIMic636KTDQ+raItrlNnaKa8/EtrgCXj7?=
 =?us-ascii?Q?x2zJOWSbngUl4TKgFGbkQFwaiHJEns1Jc4dlZhauFRkEWpVbQYhEAOOwV45w?=
 =?us-ascii?Q?JxnyMVA8SdPVhA9hMD9O0SqMvlh9kKhgRX0GcM7XwASC9VO99BouLXF/6Kmf?=
 =?us-ascii?Q?F0JpCPxSh8neY7oWSB2hF/SQcsieGCtE9FpP6BvYtf5gI2Tm3qjXHaXK2DtQ?=
 =?us-ascii?Q?nIIUjvnag97YQQ4CVBZVhuI8Lj4yOayRQL/Qjm+j1zutC6vT7bmMLJMDN8rz?=
 =?us-ascii?Q?1TOWHGwvGOwFBYFBLYheQZDrWeZAmjH9WL1WlaCSbibYA/EfMwYIc0+XVR4j?=
 =?us-ascii?Q?7zQSBGkp3TJbLvUkdky8/uZWH8WzE5FUPVjUeS+6mWX5UyiGb5DNyPrwwOzD?=
 =?us-ascii?Q?mnLAeT9vdtDdLdR0W+EumFSWwZahZ5uQVulzgCRmjvzE8Kqx2951ZeFqyNiS?=
 =?us-ascii?Q?E39x+JihvDL687+piNyJF1gGnVU0SEErTzZ8wfQCS8S5OC2k7KFCrMaPj61N?=
 =?us-ascii?Q?jnbpwZgDHwecSpzrtwN/vUjGpDhIlXnTzo8yv1H/ySuuFXhksroRUW91RN8G?=
 =?us-ascii?Q?bo7+R7fMDuk0i4l/oAT6ugZTAP1UaWgyuuBf7ucEbawR8pdMmyoE12WqZoA8?=
 =?us-ascii?Q?kvL9yTF0jnnqTcHOfKcnmoMbYg9xlyvAsENK7WF2L+nCd2ubphXelAEtYhdM?=
 =?us-ascii?Q?9s3KZPU1sqH74XX4q3ANe4rD9Do/9ueO9RDmZm6fl9XroN9aJcq0hJ7HstJX?=
 =?us-ascii?Q?ZfyWv5ZSDN2aRDqfnuyTugs4rGr6i3GpUz9xnQzavaYKCUNp5WTLExASQUj9?=
 =?us-ascii?Q?t/vwBu1Vij4PG2x1EqVVdMCq/Tog3CZ/7ZOesJ3l5njZalmAXUtxQOWbiAnv?=
 =?us-ascii?Q?N3+ILtDrDedW8lpnX5Pj/zOZcBlzG0i8zQN2M0IDIJVxNkWgv6Asr4lmcT1t?=
 =?us-ascii?Q?Nj74wG88eL5t9Ps13gZ3rfwmnFeU/oIAUVhDTlX+QQ+/xMBxp+oyvt1s0v7a?=
 =?us-ascii?Q?Kz/m6rWbDGFx9YUR9lbk7jKNv1VEnAxnnnvlzV4MZTnQodF4uweLIFIFSJJh?=
 =?us-ascii?Q?LtInuQZSpNzvMPKyrCfxN2UN4xsS5DYHldt4hBMC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bacca29-5507-43b3-5dcf-08dc36ba53c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 11:01:47.6988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x0xSxtf4GaRJCul9d6FQmRtwErUkkXKOQ/3gp8GbZPbO0aVEUk0KzYPFh4Wati13sRXeqhzWPWqv2G7+hN2o+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6903
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, February 15, 2024 11:43 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Kandpal, S=
uraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
>=20
> Enable HDCP for Xe by defining functions which take care of interaction o=
f HDCP
> as a client with the GSC CS interface.
>=20
> --v2
> -add kfree at appropriate place [Daniele] -remove useless define [Daniele=
] -
> move host session logic to xe_gsc_submit.c [Daniele] -call
> xe_gsc_check_and_update_pending directly in an if condition [Daniele] -us=
e
> xe_device instead of drm_i915_private [Daniele]
>=20
> --v3
> -use xe prefix for newly exposed function [Daniele] -remove client specif=
ic
> defines from intel_gsc_mtl_header [Daniele] -add missing kfree() [Daniele=
] -
> have NULL check for hdcp_message in finish function [Daniele] -dont have =
too
> many variable declarations in the same line [Daniele]
>=20
> --v4
> -don't point the hdcp_message structure in xe_device to anything until it
> properly gets initialized [Daniele]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 180 ++++++++++++++++++++++-
>  drivers/gpu/drm/xe/xe_gsc_submit.c       |  15 ++
>  drivers/gpu/drm/xe/xe_gsc_submit.h       |   1 +
>  3 files changed, 193 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 425db3532ce5..ba362d0732db 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -4,12 +4,27 @@
>   */
>=20
>  #include <drm/drm_print.h>
> +#include <linux/delay.h>
>=20
> +#include "abi/gsc_command_header_abi.h"
>  #include "intel_hdcp_gsc.h"
>  #include "xe_device_types.h"
>  #include "xe_gt.h"
>  #include "xe_gsc_proxy.h"
>  #include "xe_pm.h"
> +#include "xe_bo.h"
> +#include "xe_map.h"
> +#include "xe_gsc_submit.h"
> +
> +#define HECI_MEADDRESS_HDCP 18
> +
> +struct intel_hdcp_gsc_message {
> +	struct xe_bo *hdcp_bo;
> +	u64 hdcp_cmd_in;
> +	u64 hdcp_cmd_out;
> +};
> +
> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>=20
>  bool intel_hdcp_gsc_cs_required(struct xe_device *xe)  { @@ -40,19 +55,1=
78
> @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
>  	return ret;
>  }
>=20
> +/*This function helps allocate memory for the command that we will send
> +to gsc cs */ static int intel_hdcp_gsc_initialize_message(struct xe_devi=
ce *xe,
> +					     struct intel_hdcp_gsc_message
> *hdcp_message) {
> +	struct xe_bo *bo =3D NULL;
> +	u64 cmd_in, cmd_out;
> +	int ret =3D 0;
> +
> +	/* allocate object of two page for HDCP command memory and store it
> */
> +	xe_device_mem_access_get(xe);
> +	bo =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL,
> PAGE_SIZE * 2,
> +				  ttm_bo_type_kernel,
> +				  XE_BO_CREATE_SYSTEM_BIT |
> +				  XE_BO_CREATE_GGTT_BIT);
> +
> +	if (IS_ERR(bo)) {
> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming
> command!\n");
> +		ret =3D PTR_ERR(bo);
> +		goto out;
> +	}
> +
> +	cmd_in =3D xe_bo_ggtt_addr(bo);
> +	cmd_out =3D cmd_in + PAGE_SIZE;
> +	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
> +
> +	hdcp_message->hdcp_bo =3D bo;
> +	hdcp_message->hdcp_cmd_in =3D cmd_in;
> +	hdcp_message->hdcp_cmd_out =3D cmd_out;
> +out:
> +	xe_device_mem_access_put(xe);
> +	return ret;
> +}
> +
> +static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe) {
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	int ret;
> +
> +	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +
> +	if (!hdcp_message)
> +		return -ENOMEM;
> +
> +	/*
> +	 * NOTE: No need to lock the comp mutex here as it is already
> +	 * going to be taken before this function called
> +	 */
> +	ret =3D intel_hdcp_gsc_initialize_message(xe, hdcp_message);
> +	if (ret) {
> +		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
> +		kfree(hdcp_message);
> +		return ret;
> +	}
> +
> +	xe->display.hdcp.hdcp_message =3D hdcp_message;
> +	return ret;
> +}
> +
>  int intel_hdcp_gsc_init(struct xe_device *xe)  {
> -	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
> -	return -ENODEV;
> +	struct i915_hdcp_arbiter *data;
> +	int ret;
> +
> +	data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&xe->display.hdcp.hdcp_mutex);
> +	xe->display.hdcp.arbiter =3D data;
> +	xe->display.hdcp.arbiter->hdcp_dev =3D xe->drm.dev;
> +	xe->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> +	ret =3D intel_hdcp_gsc_hdcp2_init(xe);
> +	if (ret)
> +		kfree(data);
> +
> +	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
> +
> +	return ret;
>  }
>=20
>  void intel_hdcp_gsc_fini(struct xe_device *xe)  {
> +	struct intel_hdcp_gsc_message *hdcp_message =3D
> +					xe->display.hdcp.hdcp_message;
> +
> +	if (!hdcp_message)
> +		return;
> +
> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> +	kfree(hdcp_message);
> +}
> +
> +static int xe_gsc_send_sync(struct xe_device *xe,
> +			    struct intel_hdcp_gsc_message *hdcp_message,
> +			    u32 msg_size_in, u32 msg_size_out,
> +			    u32 addr_out_off)
> +{
> +	struct xe_gt *gt =3D hdcp_message->hdcp_bo->tile->media_gt;
> +	struct iosys_map *map =3D &hdcp_message->hdcp_bo->vmap;
> +	struct xe_gsc *gsc =3D &gt->uc.gsc;
> +	int ret;
> +
> +	ret =3D xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in,
> msg_size_in,
> +				       hdcp_message->hdcp_cmd_out,
> msg_size_out);
> +	if (ret) {
> +		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	if (xe_gsc_check_and_update_pending(xe, map, 0, map, addr_out_off))
> +		return -EAGAIN;
> +
> +	ret =3D xe_gsc_read_out_header(xe, map, addr_out_off,
> +				     sizeof(struct hdcp_cmd_header), NULL);
> +
> +	return ret;
>  }
>=20
>  ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
>  				size_t msg_in_len, u8 *msg_out,
>  				size_t msg_out_len)
>  {
> -	return -ENODEV;
> +	const size_t max_msg_size =3D PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	u64 host_session_id;
> +	u32 msg_size_in, msg_size_out;
> +	u32 addr_out_off, addr_in_wr_off =3D 0;
> +	int ret, tries =3D 0;
> +
> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
> +		ret =3D -ENOSPC;
> +		goto out;
> +	}
> +
> +	msg_size_in =3D msg_in_len + HDCP_GSC_HEADER_SIZE;
> +	msg_size_out =3D msg_out_len + HDCP_GSC_HEADER_SIZE;
> +	hdcp_message =3D xe->display.hdcp.hdcp_message;
> +	addr_out_off =3D PAGE_SIZE;
> +
> +	host_session_id =3D xe_gsc_create_host_session_id();
> +	xe_device_mem_access_get(xe);
> +	addr_in_wr_off =3D xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo-
> >vmap,
> +					    addr_in_wr_off,
> HECI_MEADDRESS_HDCP,
> +					    host_session_id, msg_in_len);
> +	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap,
> addr_in_wr_off,
> +			 msg_in, msg_in_len);
> +	/*
> +	 * Keep sending request in case the pending bit is set no need to add
> +	 * message handle as we are using same address hence loc. of header is
> +	 * same and it will contain the message handle. we will send the
> message
> +	 * 20 times each message 50 ms apart
> +	 */
> +	do {
> +		ret =3D xe_gsc_send_sync(xe, hdcp_message, msg_size_in,
> msg_size_out,
> +				       addr_out_off);
> +
> +		/* Only try again if gsc says so */
> +		if (ret !=3D -EAGAIN)
> +			break;
> +
> +		msleep(50);
> +
> +	} while (++tries < 20);
> +
> +	if (ret)
> +		goto out;
> +
> +	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo-
> >vmap,
> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
> +			   msg_out_len);
> +
> +out:
> +	xe_device_mem_access_put(xe);
> +	return ret;
>  }
> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c
> b/drivers/gpu/drm/xe/xe_gsc_submit.c
> index 348994b271be..9a18f5667db3 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_submit.c
> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
> @@ -40,6 +40,21 @@ gsc_to_gt(struct xe_gsc *gsc)
>  	return container_of(gsc, struct xe_gt, uc.gsc);  }
>=20
> +/**
> + * xe_gsc_get_host_session_id - Creates a random 64 bit host_session id
> +with
> + * bits 56-63 masked.
> + *
> + * Returns: random host_session_id which can be used to send messages
> +to gsc cs  */
> +u64 xe_gsc_create_host_session_id(void)
> +{
> +	u64 host_session_id;
> +
> +	get_random_bytes(&host_session_id, sizeof(u64));
> +	host_session_id &=3D ~HOST_SESSION_CLIENT_MASK;
> +	return host_session_id;
> +}
> +
>  /**
>   * xe_gsc_emit_header - write the MTL GSC header in memory
>   * @xe: the Xe device
> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h
> b/drivers/gpu/drm/xe/xe_gsc_submit.h
> index 1939855031a6..1416b5745a4c 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_submit.h
> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
> @@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,  int
> xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
>  			     u64 addr_out, u32 size_out);
>=20
> +u64 xe_gsc_create_host_session_id(void);
>  #endif
> --
> 2.25.1

