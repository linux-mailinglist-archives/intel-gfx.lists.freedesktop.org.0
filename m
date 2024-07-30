Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25229406AB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 06:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E6810E4BB;
	Tue, 30 Jul 2024 04:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LL4TLLa2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF56810E4BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 04:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722315353; x=1753851353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u6eGFcdwrtpoDwz+EwSh7qkPZ3yX7AoyIvqxaziYT6k=;
 b=LL4TLLa28FxpByMGhubTabCquaQyHoAaopj2PHWjQod8sdisbsC+2v8P
 TtWs94jMoxRG4BgAWwgwnqesWtOFNfHnL2cRmr1aoCpWr9hYsAHnmVM3M
 r3tujW16qI94sN96igAbX/B3kTKhTCT012sXAN54ibuwRKEqljnGUjSY5
 KsjOhcUNpHQkUIn4qP36AhnBYGgKW/R4AzwyeF3MpERW9EnMM9VVt51ul
 pjK0lFyLtjL8THgEDVHdo4rT4cNTLANtRug3l08aF472lxNy6zm+4JUr7
 FAUfKiX6BlZDkaDrp5c+xjmCmhZwSd3OHZ4SZMrgRRMPn/8uMHWSwZ78S g==;
X-CSE-ConnectionGUID: vin57oGYTk+GXskXTF+kqQ==
X-CSE-MsgGUID: r/i61VKDTzK2WlTlNjmI9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19707887"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="19707887"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 21:55:53 -0700
X-CSE-ConnectionGUID: S5WbZS67SCqV79NOFrtv7w==
X-CSE-MsgGUID: SRKa2syeSKC5/zQiQYyv+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="54457252"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 21:55:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 21:55:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 21:55:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 21:55:51 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 21:55:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WNQMfTvJMwwIedVwLqHXe8ovjJmCbTtGi1UZk/k1ZhX26hwyGW4kRN7LTa0dCnMiUQxmCkByCaHf/J2++qIVfR059GEEtRvVudh57v6++OcLlzdhWWkeK3QPzGwqWKscwiGgcJOKh4yFZwVp+J+SLHY5Sr+yQsVScp9xigWaI0W9F2xdgp9kw4mbMyknsuz7aDAq+2LN3nT8zuvePGFeQj8wpTLNv/c30duB3vxpdGB8hXPe9P2+I0EZOuoqXOBzvX6bHbFGfRxydfQv8yrEelnIC1l2DduAE49PDS56XADDjxvtWKoOBi1/vMMso2V/0tinB7tDE/V2dOtzzz8knQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/bE+kscKpVpbaxpaWNdp0vhXG2QVJf9MEJy6J/mT9y0=;
 b=soIe7UdHFxKD5NOjsCnVs1Sy2xRoBmvYDzr6BNdkRaGkQyvwYt9hnfT9hkk0oQkz4444sfbHhOr6cazAqPqa+6uKe6kZhiRBuehDHP2dwFVLr0OG3WHIl2EPXxsS4JHMTAU7H+z7bsyvBHPaKbVg9VtBQZdsQ5sNslgCIMXtl4He3YtW5AFfeVrjKzKNuWLaiFqABNIzg3xCSNKxDj6ALou5+c6oawMI3o7fp5QntBt2hHSHzH5+jhswyiv/iUdIrrOIFPewgaY118U9bx6lAze6ycRZ+ZFJh8gGSK6R4eoMNt1czCxNoHJD76isLxQtpHSDj9GeCyHoWSXc7V6cqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by LV3PR11MB8483.namprd11.prod.outlook.com (2603:10b6:408:1b0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 04:55:48 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 04:55:48 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH v2] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
Thread-Topic: [PATCH v2] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
Thread-Index: AQHa4fZ0CzAmNcyAAE61/WVojA/rCbIOtNZQ
Date: Tue, 30 Jul 2024 04:55:48 +0000
Message-ID: <IA1PR11MB6266E0AE8C19642DD94CEB5BE2B02@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240729203451.2392398-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20240729203451.2392398-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|LV3PR11MB8483:EE_
x-ms-office365-filtering-correlation-id: ed00875e-a6c8-4a79-24e8-08dcb053e13e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?99m0loXwQANBkAz2Vq6uy1cVGeh5Uj8lX6YFQjP+Za8NIP4Z6ukoiGY3kR1l?=
 =?us-ascii?Q?j2V7YgeWz66tuv0KmYUWwSGlPSO/VMWLTNtonEk/DvWhHrbrVDVG/PDBiQgv?=
 =?us-ascii?Q?e8METGLJOR3IARzeUmpaWpCWBAJ5u4nrnMJwPzu2KnjexO0Htgcz1Y8XoDec?=
 =?us-ascii?Q?kyosayF72Y5l9ebbxI2y+3hykBWp/wXjyIMxPhw6OxC9vtzA85or5NWQCsuy?=
 =?us-ascii?Q?JQo9rhKbcgsfYnjazOvjHm9FrG2tNXmVHFWLBUWBhdrkEvIZHUPV/CcZL8Pl?=
 =?us-ascii?Q?CLvbNMzJakTta/1mMG2B5bTQRDrbHZYa5AWY07WWOTFnbIngvyKX8qmxtrEb?=
 =?us-ascii?Q?LpVGVtyoK5vcv6xkuJXgml/GxvAG2bOg+5aZZIfhAQbm/0JcYNPpXxufoFgV?=
 =?us-ascii?Q?fxn8Lmnus9FSfo6Q1T8Sl0EElnIU4BvWL02iNjocTQMJaQNeQehKfQ1B7pL7?=
 =?us-ascii?Q?+xQ6Tsan4vaJoZS6li7dja22/r7yaghX1pzxIkglQXmYoWlVljngr7Iz/3Fn?=
 =?us-ascii?Q?2t8XF+9UuuQShi0h4pyAhjyLSRYXLf74qlzhcKN8mpXQd1+2FIM4Ispl0qfI?=
 =?us-ascii?Q?NzfPnkF2N1VbafD5clVEOuXJBXYPspnD2HtDk/6DjFPZfjYfvL8KTd6W6liV?=
 =?us-ascii?Q?tn6UH/FqGJbnikcPysFE5dMtGGBdl/UEZBBukSs3BiEVzEYRinUW5y58dsm3?=
 =?us-ascii?Q?jHmk0Tp9L3MCdmLSPEJVp96xbaph0nsx29xyYLAv6sirnf++6zy53yzR+ANP?=
 =?us-ascii?Q?Pc9nK4muznS4fQvSX0ZqpJojvKAb+qSbgholmD8FAFcxVX5CTeUuTHVuAr3k?=
 =?us-ascii?Q?Fr51lcp6uJzxTL5gqr8X2HANOyFBWaNO0Wg0v3ZzNvxVf+/FcerLmehisXVj?=
 =?us-ascii?Q?UhBlfA3lICpGJJ4PJ6FqgXW7KYNYak9UEJOPmEqkUVO/W2pBclFML2VvQY7J?=
 =?us-ascii?Q?RxJERXUZFh3LhA4+FzgYr4xWDDnrB+6ZBHZc/1G7UnpZLtj7GhxSb32zVo3k?=
 =?us-ascii?Q?+72RcPKL2MhLWdhMvUcgcy0rbISKMlCBpOuap1n4Btardgtb6gxR9AeJnbQy?=
 =?us-ascii?Q?OReSptkam1GsM2TMvrGlQuc7/XwdVnQdPwUnRE6ioW0oaf3Pd6GGcN65Ffj2?=
 =?us-ascii?Q?Z7LUCi0/QGRMT15Nh9ck7SFlPDLouWLOVH3UjM7WTWf5BIMkf0O/emexlk4n?=
 =?us-ascii?Q?ug7yGWpo7VIjoIXDGmVwnrKgYjJA0rjss+GSrvE8aYMcIIZaOiQeFr9+IOhR?=
 =?us-ascii?Q?wgHHSLtQ6f7fkLNT8qxvsu+AqDW+EX9N1sOsvEpmXWH4vXxczHez96dtG3A6?=
 =?us-ascii?Q?daP1ay5fy3OV0fI9Y6iNe9ZYv1/bo0DgxgGBy2BlkzSfYtLDrOs21w96UEnq?=
 =?us-ascii?Q?MK9hwHk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8oTqkocfLWB6c6N9kLRdU3pFt39eohlG7q+pVDD2l1yrhyrI9AXMfc6+PIOf?=
 =?us-ascii?Q?0G0QJjuaCAT8/txCLdQomN0yPZjOn79q6q6227089WhN05Ch+nhtrWhY4X07?=
 =?us-ascii?Q?/65eAXnOyxRifxMq43K4ewikGRQn5WD7I3hgOumtlmp/IvOZkMtEIkl8M/vh?=
 =?us-ascii?Q?tFIwjIe02j/LPg85nTiwwqOWxfCDG5V9ZpoByMHa/v2NTUr4pu30JIO2eJPD?=
 =?us-ascii?Q?dzmY6/F6Cd02UDzvbaUyAaQgvCXTCzaSJnx1NOVLPPoWuU+nstoAADOAJjzp?=
 =?us-ascii?Q?62nCZD+Xpt7VrO7uP1cuhONMI0IOITH5Zz7K3deSEdCycVGwPN3G/pcokcqq?=
 =?us-ascii?Q?NRLgfFUwghgA7PjFTSjWmdNn7t5MsLlvi1hDAuaTKu/W3G/Ec1EscET9T+ef?=
 =?us-ascii?Q?5K1YxpKtAwODopaAPWYPWvtKLUxUqT3ZEiNlQ59JGdBp59F24Hniva1ob/jg?=
 =?us-ascii?Q?UJI+vsFibgOXRrL/fnhchH0tKeGQ/JEhO8h4VqLTuGHXcaPuKqb4XCgFKNrr?=
 =?us-ascii?Q?CtPxUBELNE/G7FWeNLs6T6lL6PYGFlEUCwbJKI8D6ENolmeWGiCM4Np60oSd?=
 =?us-ascii?Q?3j50cwgE/UFj6IW2Q7QTnoddgb7JEghcJitfoa2Z9PdhrRkCH0ICiXOv/AIt?=
 =?us-ascii?Q?Ysr7IheXMB7Va9KoGJYXEIEjUoQF4YV8ZF9B1r3bdrYDK2k/qxP1RcSWE59w?=
 =?us-ascii?Q?Wt2oXT3IPb6VaLm5Kj5xf599/0op8iiEqvMBP4+YhFnF95Fku0YCJU77b63H?=
 =?us-ascii?Q?hAlIl00LffjW3YQ8SvlEotGVfGGdKCcOxW+MNCaHi8rr3Kt1f6ZORPUqzjYU?=
 =?us-ascii?Q?tcUO0/WPwPhFvlb5uRBZA5hqhua2GPOk4IEZCPhor7+7A5IVFWIuVeFf/+7m?=
 =?us-ascii?Q?exKtrAfmM5EngCXNbDUNwrE1z6JIHeJsAzhgiu2RHBg7cH2iF1yrHKPctwQ8?=
 =?us-ascii?Q?U5/MjGi9S5LuSBM76ZZDMaVaVpzaBiNbWqJJNqxSdYaUs0YEssdZAKqb2Pt1?=
 =?us-ascii?Q?+iSzytuwipoiZpW3bgFx07p4mthM20tQWqvBfVZLAHghsbJBcHsX6kFDTtts?=
 =?us-ascii?Q?bVNzp7Ou8truJMRm5eI0b19JfpqsIAMVViP96xQ+Q0MRkgTa/bdch9eJZuQR?=
 =?us-ascii?Q?txMiiBrmzbvajVw55BTANc4AXwcExOKWmXWBIPLLiKUMHpQHDhpMRbzSyrMJ?=
 =?us-ascii?Q?BOVAh8UcdOxJtYiS1Sgl0i8henSCf5EHu0FJtm9DebXPVbUui/MrSRgt4OwO?=
 =?us-ascii?Q?xekvTk49q17INcnfqLo4HxOt2XpgvjbjCxXQdiYsUoeRdsUmzL7wjCCb7BDO?=
 =?us-ascii?Q?HD3EtLeE5r63CMqE81OnURLKawN94+HCr43yk1/jXPGehvt+6WWD68PW6BWj?=
 =?us-ascii?Q?4n1p+UN8p23uLtca3Z17o+ziIJ3SlTk/+jofbRAJpwyn99dZ1pH4V9ZtUrOp?=
 =?us-ascii?Q?D2ebcBrnMSszATyJo2S8o+IxkGueCk+oU72NhOX+SeHMnZrrJHGJ5jkHBJE/?=
 =?us-ascii?Q?Q8+Pd5AX3aGlh4q6AiymAn8YA2EHMkaje2VRUhqqP5v8gNDrYRj642cdCZKM?=
 =?us-ascii?Q?7nL5mKtN/EEdR2DGPL306uyBoNF+HDIMEXuPhB+g9FdXNF79sgDuHw3GMZPH?=
 =?us-ascii?Q?fA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed00875e-a6c8-4a79-24e8-08dcb053e13e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 04:55:48.7353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kNocn1d72n9ByMhYgZF2wdL5RClWIoowboS61+L9HZgvt0QTNfCCJ7wSosUgt2To7k2ajrvlHRLnJgDIuwJZPjLr645r48W8qjsSJQtPxTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8483
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Tuesday, July 30, 2024 2:05 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sousa, Gustavo <gustavo.sousa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v2] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
>=20
> NOT TO BE REVIEWED/MERGED
> Hardcode path to DMC firmware for CI purposes only.
>=20
> v2: Update intel-ci firmware directory path[Gustavo]
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 73977b173898..b6c58b932d58 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -119,7 +119,7 @@ MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>  #define BMG_DMC_PATH			DMC_PATH(bmg)
>  MODULE_FIRMWARE(BMG_DMC_PATH);
>=20
> -#define MTL_DMC_PATH			DMC_PATH(mtl)
> +#define MTL_DMC_PATH			"intel-
> ci/i915/mtl_dmc_ver2_22.bin"

MTL is loaded with versioned mtl_dmc_ver2_22.bin=20

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136633v2/bat-mtlp-8/dmes=
g0.txt
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136633v2/bat-mtlp-6/dmes=
g0.txt

Dnyaneshwar

>  MODULE_FIRMWARE(MTL_DMC_PATH);
>=20
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
> --
> 2.34.1

