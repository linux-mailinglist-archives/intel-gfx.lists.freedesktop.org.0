Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3F4B1BFD6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 07:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5588A10E2E9;
	Wed,  6 Aug 2025 05:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J8RIWk+y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D293A10E2E9;
 Wed,  6 Aug 2025 05:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754457392; x=1785993392;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oX87rDHRRnriQpTZR4KFd/vIqmRuBD07xRL5nEw7I5Y=;
 b=J8RIWk+yg4PHWPc/yvix6V7vN8vJWnxSAsTHsd1E7kLLorfMeW2oawjy
 cFaQ8fRzgyKmlWbuYXY+itToJKBn6cY1Lt8BdHqC56TXgTpEyC6w8AZYc
 R4LeT+Vq2qmbLjUNL3RinwMzEs7Y3T+bjTnOruQkQwqvo5l2Y8tEPIB4X
 4GYvAFn4/qasB9VWlpaVEYFDO9UqSQU1APemciIuT1oFWKf5URQjPK7q+
 FOQsVbHS8YeMVMZUMbhwLRKM7RaBnJTwVdNolCemGiCqwkatDTJ/r5fN1
 KyYkM9dchl+pwVs+s9bl/8v00ZNITGBbYsnuF5TG4AQeEnpuNGbDCUwV/ Q==;
X-CSE-ConnectionGUID: ffDu7qPxT4KC7xBz8WSQfQ==
X-CSE-MsgGUID: 7pWfNb73TT6sOP7MdHrEUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56679603"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56679603"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:16:31 -0700
X-CSE-ConnectionGUID: waTQ+/ZFTdqxzPzqRu4QPw==
X-CSE-MsgGUID: UK3oPuR/SsWZCrrzE6HuRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195643519"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:16:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 22:16:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 22:16:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.46)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 22:16:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v75g6v4ebqOsI0B3EUbyekcvkX3s9hVxoD6OSglVbgJxJy4yu+RMvYz+wVyj0VWihB1AQQqnnECgg5RMAZLWXXXJI8o1MHL7yLcmTcEg+h8VRDscvW6UZlidmL/Etr8mxwCn4xPW1m5fGbIvrn8NxVYRwXVun+5yIlKW3Tf5oBdd+nJC2iR4In5PMZhghNBB/EUAP20QRiP9xtkdbJEatE74tGp73cMt9lDTBbHLXIGUoZDAo2vvPrAR9cDYRo9IAiKcY3gisr5IQSlkOT+HqvWb/C9V7fqGTNxYYIf45fpJke5DbhgyhHw+4f+XV0CQ2olhOqUWTzSQmsgNJBm7FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zc6LBF7IiL6EWlH3JU+4nh+mc2o2g/HEVkYs8yt83cg=;
 b=je3ldtSbQbznYRXwla73Fd11eEfMcL9i0ELJKyXn4OVly6DzUcUeSJtNdt3iMB+QAUiPYjsGKoe33cX1EH57OXF0HVCoT1lx3tpRqsJbJarsvt1WDGJz7ig2IqFSQsbumVAum+6HMaqhFbccYpWdkL7JrRM9pFqpLunhCNOn6cOtL83ZpMtj1ha1l/wej4dxG0S0RahJz0Xfipcgl9YuEEY6eeIFfrrcedkeuDa8Sc3GbKyw475ys/Qyc+j+W+PzXh7BnAv4YbtJpGmtuhSV3DtokSlJfr5qTteNWk2SmNsUVN9M29ip1jOSBJbe3cwgjysepBBEOuXLW8QSDP709w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CH0PR11MB8235.namprd11.prod.outlook.com (2603:10b6:610:187::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.21; Wed, 6 Aug
 2025 05:16:28 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.8989.017; Wed, 6 Aug 2025
 05:16:28 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/scaler: Fix WA_14011503117
Thread-Topic: [PATCH] drm/i915/scaler: Fix WA_14011503117
Thread-Index: AQHcBn9/9w33Clf2f0WEYR5WOLqiybRVFWRw
Date: Wed, 6 Aug 2025 05:16:28 +0000
Message-ID: <IA1PR11MB6467BF56515F8C28E056280FE32DA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250806030856.3514127-1-suraj.kandpal@intel.com>
In-Reply-To: <20250806030856.3514127-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CH0PR11MB8235:EE_
x-ms-office365-filtering-correlation-id: adb4a809-e29c-4ddb-4338-08ddd4a865d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?l8fWnbSTxEkgDDNLBDApGDmFMN7EuAWBemlJcHZn2d61fHRcWp5N3vyUGKZX?=
 =?us-ascii?Q?rwl/yY2rWOnJ9K/fQ79BB3b0/g5/Q7D71t9lrbEPYoBi7L29e609LfTY6s8t?=
 =?us-ascii?Q?oaRDAunyUmr8552QYTTtx7sbSe+YlpwwACXaLc+2dQkze2fi6A9npz2rSJHS?=
 =?us-ascii?Q?oL3ByrKa6QZToVOkB7aAXGBrW0E6jDdmXP69Ref3BTLenWgZjAzSgA2spL9v?=
 =?us-ascii?Q?Q01Kj6+MuU/4k0znr01dVhxBFqqGW8gHYar7bdjl1C8qVzMFbsVxZPF7DmR2?=
 =?us-ascii?Q?cz37oqqj4GwoA0n89IpCe3BbavhePeqRtlGBeNq55hegOMzP3CwtKPbq2rW1?=
 =?us-ascii?Q?RJ6gEnQMQfa+YoVi6xJGaOfgWEidI0bv4Rp7CdV2d/olGEA36SgqIjwE47wT?=
 =?us-ascii?Q?63xUA6hlQrUHFprnllhbmz5UmRSFj+Xt9JqpKRsZbiygu3LPez2ib9g1enUc?=
 =?us-ascii?Q?9r9OlWfx/dCJat7UxMj2v2rT4AUdCQmxGsxLF2mgz9OwHER+0S2tiysj8kfE?=
 =?us-ascii?Q?ZCyPirJvMssVk4JKWNuFJNIe3OIdjMA7IZxaf5S6+TQ5f4629KOL1L8TduZP?=
 =?us-ascii?Q?4jq4m9HbpneEPt60ll+9ygMRiGPy9hUKFUyX7uUVcsi76CB9CPx3n4aeSxGk?=
 =?us-ascii?Q?pAzLfwijafmkCkeHc8q7B/O7PFmgU/yJKWjgh6h0BotgkaP6bBlKqul6T3zp?=
 =?us-ascii?Q?KUI9m8odlzc6IJb1aFHhYxFXb22icnXvNePO8H7FsXRB38YSXcJuP4kOkhnY?=
 =?us-ascii?Q?FlkNbAr6UQAhc3+JpXJ9/OMkrWCYXZn+/PIDkAy9TOpEsyUwVygMCXMg3aRi?=
 =?us-ascii?Q?KD+R64iCkWa+AYDoEiOlpcKWpD05scas0B8boiIAC57nTDh4CU852kQBdA0V?=
 =?us-ascii?Q?WtsGExWgkImIId8l2k6LyNXTe4ngfjM8MMOPPkCrPIgq50WY+ei7vxKccR+n?=
 =?us-ascii?Q?KLo6tNwWGH1oK0ZJWR5DXiy57XRLUt5jGzOrYhopRowPAS1BtkwIGl5si+zS?=
 =?us-ascii?Q?4u9TR0fTTikY9dmGQqJGsOAQx8i40Gwoz3B8Vw2B1za/4/l6/P2hZQTW4W4O?=
 =?us-ascii?Q?a40B69j6el7D0L4wW+EOgSRzkZJgikU0+g4h1wjOUUQ8LCuJEDC+kH4C3GSH?=
 =?us-ascii?Q?rE0rLiMpI2EdEVnfKDT54udWvOjegrZlkCtM8RhNQfq4O175//5h1K2LVHRp?=
 =?us-ascii?Q?jWGqGjrueJDRYW0TrqJfGwS5W0tZDrR4nPC/0O36QtcnBn9QbaR/8qhhjMbu?=
 =?us-ascii?Q?QslxWnm6dUxIpTAO7a7Td38RD9XRA+exPu1gtecwcpAN/IXat7Yg5C1aCGlf?=
 =?us-ascii?Q?tMMZ37q0+gfsAMLGjCpWXBwIm4VEkHhEQUYFH9M4dI9vq2eSrXRTSm2AubvJ?=
 =?us-ascii?Q?K+2YaSzZdJCCRjW/HsSrnuYUO4pUUFsBsccr4zJmOZ1Z4rJ5tlKz1uerEfCd?=
 =?us-ascii?Q?NZUzuCPudrgyYc/nbpT17FZZBrS+Xl7/bvPKqQIFfhmKY1/OfDzxVx6jApih?=
 =?us-ascii?Q?EVHjBATegUunQ1w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6dlDhfTMaa2J2orcemfcu/7o0Frzr0KdULPE9lMKTDszWBfdWtYtqtSES4vd?=
 =?us-ascii?Q?7Auxyu5MqWNEkKy4JB4RR9046NrNKxyT2lktXj77boLbuaOEPlQx8sNnvCIo?=
 =?us-ascii?Q?CjRt/yyU8lOpnB2+DkeriDyIWFXystvY+q+Qg2KUxPwNgQpu18/hCeHRLfUD?=
 =?us-ascii?Q?tkUPpDie0WNu4aIqjoVzEgJ8u/jEUxcGWnA8WLaqEOnVhj0KaG/0CGE9O6kX?=
 =?us-ascii?Q?iUMCjMqAVJVsIk7MhfFckgxPgWd/GYAXbAjrVGtxgTdxwCZ2yw2riEqWKhC/?=
 =?us-ascii?Q?BhmPZy8yy/r6MVgB6UUSihOgiczPqN0lUQP+PNKQLN7TkNn2xOwvgAxFV0MS?=
 =?us-ascii?Q?VM9wuub2wBoswx6H6eQJy+aooWdXu1lMSOEafyiQWIiX8scUZASMDb5USlFC?=
 =?us-ascii?Q?FS+0d96Wkbtm4oQrM8Mh0oIzg2ajBcHUYqXxKJiNj0WFYR1OngRtOSMp6YmX?=
 =?us-ascii?Q?5EPHw8mG7wjxAp7VQiNNnvQIXrNzGmG67LsptYXx7yjXJSg1ySUhjF+1ZmFY?=
 =?us-ascii?Q?vHtN/1KJiB9qYJw0h6Xa98LD7iFUGMMTx5B7kFR/SlEGu85L8ClR4koA3rRE?=
 =?us-ascii?Q?ovj/bo27FwvSNkr1cRwMS1PlufMWC+WEbtg6UmusZHKHMhSuKTURda+ttRaI?=
 =?us-ascii?Q?uci0sEpb82NGsFiFaYNxpDq1bSK4P9p4JeRf49jpa7y9/S0dqktST12N2ZaA?=
 =?us-ascii?Q?a4XW3+nVykdI0XFOAhIQG5gQWw44gmghLizM+2GK5G+gdU+TctIrPqgJDNlF?=
 =?us-ascii?Q?ZzPNoDHESRFhfNEYAdJ/bBVh8Rxu6bx5luTO9IndYqXggPfgile62tqjea2a?=
 =?us-ascii?Q?+pe9feh/04cO5QVZSUGcxYmpCIidFiDwXSxKnRN6dhzQmjkeaCYZBofUESNJ?=
 =?us-ascii?Q?b5dcZKIZGMdwRYBMoL2B/fg9hxfyhBEmAgPEjuPn+rmClVUqVLAHpZPN4KZE?=
 =?us-ascii?Q?xEG5cbhhrd6+FdloPbwpNdnettyBdL0TVCd6SRQqP44IHp41LeF9oe3Y77l4?=
 =?us-ascii?Q?uvBmN4Nw60DRqVvjN1LMhSE79ReswAfpUwABXq/2Iopb32/dRLAcO/En3N9r?=
 =?us-ascii?Q?2GHuf14If1kuv35YOnFvSmfmZlK3adHUFBjCEtGieQ5MWkNx7QrtCpxydT7a?=
 =?us-ascii?Q?lRbs18cFHZguNcmrv0A8B42XlJOa48EbV6+qM/mVPdSnEaJgtFiV6IZXzlJc?=
 =?us-ascii?Q?TrkZnWBzrDueVVWM4DE+GDwg6Q4cU87nI/AOeK63lksPxBxfHQ/MVJDan3Kj?=
 =?us-ascii?Q?q5rmHQY7HPDSMW6Bm7vfwbDd0XpdkuJeXOZoeJ4PrjdnE2N4BwuYZSd6Knaj?=
 =?us-ascii?Q?Nu5hCJa84wF+bbGepKaJfpr6sIJW3TO+ZKEoXg5qt3279xAWI6iUrO5EgqlH?=
 =?us-ascii?Q?QDPDdQ+KGu/zz7nYVQyqaBsthUF0c9ZP7ZVH4iivFxrnMo7E8uPyVTt94pQL?=
 =?us-ascii?Q?7YBwifD+6et6T51kAiiyLpYqTssP0FCBZZX03aGtL+tD2PRSjkSb0FmU0XvQ?=
 =?us-ascii?Q?kE2LUWK3zg4YBXwM1Bw2AQ6K0gT7TyjzMJ0LVzAhHUm/AjLTMUBooJlxYGrO?=
 =?us-ascii?Q?f2YsP7i7YZiVN8cCHBrKqcF86b7QEFbn1tZGi4NC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adb4a809-e29c-4ddb-4338-08ddd4a865d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 05:16:28.4210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: glSF+O3ubxr13VLcrKQaXuIY2d95OcndPRiAaIjhujamiPpdgLa1HJuoSAh/kbArkvBTOEyYGJ20jvwGwdRcOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8235
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
> Sent: Wednesday, August 6, 2025 8:39 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/scaler: Fix WA_14011503117
>=20
> This introduces and uses a variable id which is just uninitialized.
> What really needs to be used is the scaler_id.
>=20
> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 1374fa94ff5c..cd7ebbeb9508 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -959,11 +959,12 @@ void adl_scaler_ecc_unmask(const struct
> intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
> -	int id;
>=20
>  	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
>  		return;
>=20
> -	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> +	intel_de_write_fw(display,
> +			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state-
> >scaler_id),
> +			  1);

LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);  }
> --
> 2.34.1

