Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1268E8C3FBC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 13:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6972710E666;
	Mon, 13 May 2024 11:21:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnEFzP+L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB0610E2F6;
 Mon, 13 May 2024 11:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715599295; x=1747135295;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8w3LevzdtRBnudRG95c0tE7MTggSicRI/m+oV3Z0cVg=;
 b=fnEFzP+LhzTK4ttBTMLV77REdWLOTC4rwOKnGZkmsgBqHLyZ7A9xnOBE
 /1atWtVJxURsAQEecz8yOkiFwgqwLHVPUIaHql+JTNbhs+RWWHYrpaqbW
 B2b0hrduwzJsAISYc8KiCQke6VTmszmmMx6k3PwFWOIyd4m3vhX9Uo8B2
 jSpgyvFbJXsPvfiGnSzQYJAYACaxavBCeEUHax7EBOfUixfPFPIAF1g3j
 OeIsQ978AkxLzUv51PbPiDcJUVbJY01DUL6Va/2vS8/76KNPHZvBgtMjC
 PB1B1O2f8SYzaZ2TdaDpbVFqMYRvjL+s07hQnXM7FUgF/zIz60ABTyXHH g==;
X-CSE-ConnectionGUID: FsX0Qp4ARligtroNcxxwaA==
X-CSE-MsgGUID: XW1UGBsxRP2mHMRP/+g/yg==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11746794"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11746794"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:21:34 -0700
X-CSE-ConnectionGUID: 6sokhG3DRDC3SCjBAih0hw==
X-CSE-MsgGUID: gqsd4zLXQpe//qTzgWOZtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30145427"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 04:21:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 04:21:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 04:21:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 04:21:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ecSNxNf2KbKG9f1FFD5TrZG7LKHJeVKJj/3gYFclq/dedLuJJ3HZygSRCFpdXDzglpaCfzcSd/3r/jZjTL38fkw+Abh/3GKOgBU/H/NXYma6ViqY4P7ZfDAq4g1hx6hpUYPRFvp/SPKB4aN6b6EzDr3Nru5i1PJtX6SiXaNuNkod44/88HYDWABZXj01gtOY0Mut73TDrxa56BzN6JEIq6xoBBUUGMgklflX2hhfgT/9JBd1Gih0T4YsgIrOIJRmBpAqUDH9DLfH74dO5ukQ47djDaJokuYCadybhBe+nWndSpcj0sMPRl29YDbQMZfjM0tqfFI6vVJZIpn+5JA0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CiIsc+FDn2RLA5QpzlBMSxcLv+I5qATzXQWfTem7ojA=;
 b=KlX3CIMW3Pg5xBH2dsvz9PFpTXEfoSep5gORHAyc8qPcvGoOFP334EP5qxbyOwKM6LsJ+clHCiTR11NJGF83T8ECHd65YvA1qKD03Oc03+JIXLSu90yuA7Ustv0FW70GDvcpCYcBoj6a9f3iN23RHPT2CzcWOu4dBK7LI/WgdinGljCZ6H7V8Vex8CxtlSKnC8fN50awk1ehWe558qdKlSIinFvNCMaAJBXiwMqf4GWhNfYiQFHevK9U9vBfJ7I4LuYvdu1fwkvshLex3Y+/gbqPvk5EvNoX7otySDD4MH148Z2DNO19ikyVKw7F+lxPRfa/8ccOGv+x8mz9rHpvGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CY8PR11MB7033.namprd11.prod.outlook.com (2603:10b6:930:53::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 11:21:31 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%5]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 11:21:31 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/bmg: Load DMC
Thread-Topic: [PATCH] drm/i915/bmg: Load DMC
Thread-Index: AQHaouNugnuSFY0FKk+Zr9/OUrK6FrGVCGaQ
Date: Mon, 13 May 2024 11:21:31 +0000
Message-ID: <IA1PR11MB6266FB8BDE79B6F054E8DC2FE2E22@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240510140532.112352-2-gustavo.sousa@intel.com>
In-Reply-To: <20240510140532.112352-2-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CY8PR11MB7033:EE_
x-ms-office365-filtering-correlation-id: 0f102e28-63c2-4835-aa48-08dc733ed735
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?M+8kX8/HPyD30fKA75ifsQvTqzt6R2WXGk64yC+6UUMVMOLIgC7HCVk5RlXV?=
 =?us-ascii?Q?F9CCz99qNj6bQyN7xcZt3YCo0Wx6bELp/0icdix8iXxWxxE3i2dkNZ0wT/Ya?=
 =?us-ascii?Q?pPXyfb/p0WMH52wBDRjIGQH5fdRIK0M8s2iUuwfnK0beN+K7L+C3sjyMxhR9?=
 =?us-ascii?Q?W9zKs7BagNEO76WkMjDZ2XnV95YZ1QS44BKnn0eo15+jvrWdk1kS2BL29Nix?=
 =?us-ascii?Q?d7RP50unMuS0c+EHmwpanUYYFFvBQKCx0Iry0pEOxVUp4u4POl+ScHsJQc1+?=
 =?us-ascii?Q?1eVCr51gCar17eDnfT45NmvQ8+LMlnP9MkTZVeH4SMvFF1Jmu+Ge+oz4zYFG?=
 =?us-ascii?Q?k4nNXjYCdFGb+RIa80vE3Ugb2FC0lSQD2CrT62/zTM3Z36kFFELl4sv03wav?=
 =?us-ascii?Q?KkuQL1imZtGKksraT3TTyk5aW7ExsYXN7uaIu1LlpJaL7cOaBCTt3NQyhK3B?=
 =?us-ascii?Q?aOLERDdOfAdH01UFo7oc8iBi6UU7n/OCOxLJTjjIrOuttukBepwXW/yHUfN7?=
 =?us-ascii?Q?MGJHIVunBW0YWp26SR+yJQMVSq7tmghONOQhgP/AIMpeO5Boz8WPmkipLko9?=
 =?us-ascii?Q?3NXTuc8bdIHx/uv4AuTrrHYg/96+GKxOyzIboLTyaCnBfv7yXRAzHN+x9Mzm?=
 =?us-ascii?Q?6afenHfn4CBTZr9F1Mh1szC33A+a/3WhXsvgtFUZ4zUh5gV1OslhxivLgIN5?=
 =?us-ascii?Q?7QF6+/dfjkLGUu2qkVLQ7sbDoHq+ozF+nhZ0m4QzeVaO7iS8mnopViEdrSGv?=
 =?us-ascii?Q?eu2ZOyQSeUc6ANUqg4YQ/96lVtjA7eVBY1vCwExCVmlhlswj2VwFm1CD9oz5?=
 =?us-ascii?Q?msRReKhX6UVaTOK1o4TjP0BwdVeBqtZzYahQ1PaRihqOzHMfzLQGC8lWUZbC?=
 =?us-ascii?Q?47STCA7iXkKrxM0J4hvL7TaZOLUoaPrJyp8sqPN3Ao6F0jNjOz1ffumblcMW?=
 =?us-ascii?Q?lyWXiXDP5WTe4ZJQVE1yhS5yupCKWsjZvqnhgclWOKGSeUtGDV93VJbpo2BQ?=
 =?us-ascii?Q?p8HfDssKc5x1QiKQWr89bXHO13H1USsogA1rPioIw0j28eSh0cI1ZkJTOMiV?=
 =?us-ascii?Q?TMwZSuFhVaOx6gk50GuawmqD09CPHa2JTEmAmPmZ5sM6kRSwMs0eXpXTIUCR?=
 =?us-ascii?Q?gPxo6OGWqlOttPQ44/xjm1nX1pjn6rfxEfBhhFGQFWD8g44DPo5OSemVrP1T?=
 =?us-ascii?Q?uXHY6q8cPVxBcHBu1fbN+pOAjO99nGVj8kzHsTLyLxcjiv3EdeCRx34qI+FC?=
 =?us-ascii?Q?5VU4GK2+nMAtI3nTTh0R0CnPuiJ+pfT/EcBsM32oMPerZgg2U+kkoMVZA3k6?=
 =?us-ascii?Q?4ZEfqhCmRVJZVj/Wa7tYozR7N3QG9U8VkdSFAjolzFsizg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wUULwxGSxgUACzwbStAPLi47cETVB8NFx6DpLfZaIzCeopMgIMcdm0x7Qu3i?=
 =?us-ascii?Q?Iq2zy8U5EkfGQ/DLT7mX9CwYZKmcuktiMqsCvFL8MXVyNitac+xL7pJndmMr?=
 =?us-ascii?Q?/PStuWiLYKpjVYPLNRxgjf2YABFAtdsdloSVBmY+VvTGDD3lbih0Ot6cHtBw?=
 =?us-ascii?Q?dO7slmtSMWGeCRk2eRlmceyxe7GmMaksyc1LQlaNiuDby3XJT1/z6RsUW5kL?=
 =?us-ascii?Q?QNj8zngNXM1sWewOFeqSw1Vgc5RU2Ak5ZPAp6VjUxJWq2YNmBSeIIgoSEE/v?=
 =?us-ascii?Q?HZbntYRX4DnXIly9cJ9NI9iUdbuGI7LHx8sGGe+PFSewZGCw9laFQhiOYSwh?=
 =?us-ascii?Q?ef0z4QKMrlfrbKimr5KWFdoIT2G9yjoH+SHE8jcm0JtsnExGZMCdFnK9v3oe?=
 =?us-ascii?Q?6GrB4wmTB7i+xJ2PdNdyQ7rORb3ZI9zRkdR3yETsMyJKwL7LP+/aRhi17rS8?=
 =?us-ascii?Q?PXiAYCTWGsC5pZzQEZ3vLoxW/WDBrmTyApkLSL7hmhIw8Dy9VjIICShUt5EB?=
 =?us-ascii?Q?K9UeAwZBBbIm14bcVZjeg+EjFegYHxMy65oYSTvx05i9H172MynhAice+JEP?=
 =?us-ascii?Q?6RyR+jdJA8lhlc9csqUyKEVDCBHaS3WXP6pncYZALcGGhZTxD5UoiexHGMHx?=
 =?us-ascii?Q?0jgMA/+SXzTCz8datb5DrEXeArQ9nR3ZmkZ6sbNzQA4mP66HtdLDu2HBVI/I?=
 =?us-ascii?Q?D2Vh1XzZBVwHx1m4QqM+JqhHnMnM90cUPDIfbefEkKvcW9plOUktgm3KkpT0?=
 =?us-ascii?Q?JluiIZgsFhfCQ9ZpxBLOUH1lAepg3m1TlWXp9gbxXPaGh4QUXFzDQLBywihZ?=
 =?us-ascii?Q?/X8BsvqNb2f4acVObGHpUX4mpeDiWC0yEZ8Jf9UrIrNBTG3a2tJ5peWBgGjB?=
 =?us-ascii?Q?L+dB8/g5o4xqy2wmLnE+wsrAISYgh7ajkj9vPqvxdesGQYp97oWXzwAROJBI?=
 =?us-ascii?Q?/UARWkMmxawGJAB0YQRPh46MikL7jJVjlrRVscY4u7TN/c2Gw+LEisCCQw+d?=
 =?us-ascii?Q?o32sXeIJyQQy+exQIuPHpCV98XTHKuNn83gETSQuTwQhKWX5ic7RKK7dBVQd?=
 =?us-ascii?Q?pve1jZrboRTSWpINoAQm5VjrNyGiPD7inGosNzWHNlOleMmd9tAmHgUXi8bu?=
 =?us-ascii?Q?lEXzflNCGw7B0h+CWyLO2H3VJczvVdLoBep/aztCYaataeQBGH+43p+IwRU/?=
 =?us-ascii?Q?gK12F59s+yKUfNRgOOy7KGrRMwUqY0w/AnhAfvTJYOcLR5cTivqMYEXaUGpI?=
 =?us-ascii?Q?cuCjzOjsWeThngQtzJj56dAZwU+Sp3DBZb54rcR8oIbT9Dt4jOoAeshFyNDf?=
 =?us-ascii?Q?FQvIAaHKqIckUXUDmUlaOLlbnBCCJsa11pb9tLniYMjciIAb1twgqsznlxX6?=
 =?us-ascii?Q?0BKygrkbH4NJwRdhxCCo1S4DjPEbv+GHc2aaf+HwEgxDIgh23WE4TdiVc2i3?=
 =?us-ascii?Q?gOjhbjy0HVmOTdUpiiypp0tr707MX7NG3SWkVQK8HGBh0k/KxaQp/XU0C69C?=
 =?us-ascii?Q?CBAQnxm9YORIC+4D+OqfX/xGuRnO0I7vGEP33LQxig+ImMg6eSNULojR9gHY?=
 =?us-ascii?Q?46ym316jWbRfmrTyu7ibSTutuB8i7sPC6efxygYHyQrT17ET+2IcqvSyp7xu?=
 =?us-ascii?Q?iQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f102e28-63c2-4835-aa48-08dc733ed735
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 11:21:31.5124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S8AvAff7bVXfIwiYgjJA2wjoNxDJbjJ92h9Ejx1266ENSMU2lLS4wxobD+SlFcIqGnCav57wgGxJX5SXLDF59duAcKkiGd81O9yckj80+ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7033
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Gustavo Sousa
> Sent: Friday, May 10, 2024 7:36 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915/bmg: Load DMC
>=20
> Load Battlemage's DMC. We re-use XELPDP_DMC_MAX_FW_SIZE since BMG's
> display is a derivative of Xe_LPD+ and has the same MMIO offset limits.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---

Some CI skips/failures are in the CI result and those are not related to th=
is change.
LGTM.=20
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

>  drivers/gpu/drm/i915/display/intel_dmc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index cbd2ac5671b1..63fccdda56c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -115,6 +115,9 @@ static bool dmc_firmware_param_disabled(struct
> drm_i915_private *i915)
>  #define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
>  MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>=20
> +#define BMG_DMC_PATH			DMC_PATH(bmg)
> +MODULE_FIRMWARE(BMG_DMC_PATH);
> +
>  #define MTL_DMC_PATH			DMC_PATH(mtl)
>  MODULE_FIRMWARE(MTL_DMC_PATH);
>=20
> @@ -166,6 +169,9 @@ static const char *dmc_firmware_default(struct
> drm_i915_private *i915, u32 *size
>  	if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(20, 0)) {
>  		fw_path =3D XE2LPD_DMC_PATH;
>  		max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
> +	} else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1)) {
> +		fw_path =3D BMG_DMC_PATH;
> +		max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>  	} else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>  		fw_path =3D MTL_DMC_PATH;
>  		max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
> --
> 2.45.0

