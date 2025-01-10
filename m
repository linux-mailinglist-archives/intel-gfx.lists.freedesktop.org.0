Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CDA086F5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 06:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F54410EFBC;
	Fri, 10 Jan 2025 05:50:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJpsPPBW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC2610EFBC;
 Fri, 10 Jan 2025 05:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736488241; x=1768024241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=POSplUpoU4b/3oLbFrTi/jQyQUpbwU6an753xPAOpxY=;
 b=LJpsPPBWLdvz3QxuIeB/7/7x2btjWkhz3dnUjZ4JrUGHHpBTQa75r/If
 zzF1onYwZG49Ii9mlCWIiEBo8ffoT/FxYizm6YKuSczEfS9hp3iqkL9He
 w/lP7TAFDBLLRetg3g6YCDRgIx804P0Qf7ZFcckuppMpBcNdz387w7Oh8
 L9o3KVRFpt8tVd/2UEerrciwgWYBuAFoXp1iJmygPStygSwSfCWH9n1y7
 EpqQWFR3SRyvGZSIVRCPXHIa4N2o8JI/8iBROCPGfdzaAk1q8N9OyzI9g
 WX1DFeXGEbtlO2z+LyPa2CMU2eaE7KuhhJL+kNDf5JPMb+N7pkLBa7hqR w==;
X-CSE-ConnectionGUID: 1nwBC4krTcaIh2dxCJwATQ==
X-CSE-MsgGUID: pYQfPPQZQhG/elFNWFvHbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36659774"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36659774"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 21:50:41 -0800
X-CSE-ConnectionGUID: guO9OxzORNe5Novfr0tiEw==
X-CSE-MsgGUID: Tmt7BDUMQzONsLeH29P/DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126927918"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 21:50:40 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 21:50:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 21:50:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 21:50:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WAPVRH1ETqpEgGMed3SJT75sgZSjwomoHoPQz/2Wchu/l4qVywibatilYU0xNH6cy/07M2BUpBTZBhjyNwLeD6pIB90Zt4Hmtj969Rr3MwaiuF2b8QMM6SCJZGfRYvR/6QtOpyGkJbENzFkgQ1kDr5L+HxohYy4fdwm3wT7hrqytxREDwVcMpLTH89rP0IlCKTAc3Qv0QF7cOhgiil6IA02v9H6I9ZHuIeHQvwOANEBrvnTJvxtqEPz517SlTOGjgDeC1feVBov9WgL9jyqttrPQqygujURPGUIzJKY9sdKjZBRGW9chi3/7ZdUiVcTpatS0tsvVhhxuBAqHgo1KKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFzXOIvZHulJnqssKEZzYLbwKLE/ynwGuZ9qi4mCxDQ=;
 b=DLjIaeCL7utHD43gM+Uz1xYHMXe/bz5/aNHbigIVi8jfGVvbTilUmDToqUpAVxTYzDPMHvTM88J35Nt/fCGb3MmOrv6DXTgmi/b6M42wkWxxxqQhW3LDNFD1SoqtKzAxh463bWLmqIcItH/6qz/z+Ja+05ssrOhxpp+o22rSoCK7mYlLTFzJKmy6hX3endxD8IJY/eGnKQDVnRV6zAtLNMAz3GajynlG0+7kqmrgfJku1/JlaIvtVOWHfIGC8C7Dp5I0EbmhpO7TJqGBcMa/wwo2MCs4fVh4vQK/IbIaYIHuH1ymR7FLjCClpK6L0AQNZg+gquo9P7aS8Sc6SefFCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 05:50:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 05:50:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
Thread-Topic: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
Thread-Index: AQHa7S+G7ZsV3YyZWkCVi7v41MOq9bMQbJDw
Date: Fri, 10 Jan 2025 05:50:35 +0000
Message-ID: <SN7PR11MB67503201E279591A3175E034E31C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
 <20240813031941.3553574-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240813031941.3553574-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: 6555be9f-b677-47cf-9f65-08dd313ab447
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UZdHbc/pZ9YnG5N4IlhxJuBWZ6OHtuN6wW4cD+/LihsBaj1EjCA1WMv8ZZfZ?=
 =?us-ascii?Q?NlFz+/FnFS2JMDytAr7xkacnmyGk9zFzIcFucKg0iqxEqXqrxCOFjjvCVHqE?=
 =?us-ascii?Q?ofEomVM9M/wZgNrR972TuYLudiIT6lV6AKmnJb2enCmvMkiBev0f+0lXqiTK?=
 =?us-ascii?Q?FDR7pXM+AbmkllPY5k66Ncg4NGcWPLxSALjOYruMDLpFVufnhZkNi0/MXH1H?=
 =?us-ascii?Q?CzDru8IcnauP6BJ5fPTPVcqLLXf2JjQ1r0hr5PTXBCQjNPI1nOOpMXcazY3B?=
 =?us-ascii?Q?zN5H+z8mp+JP6L8X3ypVKlA6+9x7I16dHSDc8CoTOd+dwzoBCq09GeBNg0YX?=
 =?us-ascii?Q?qVc3+/nhwimpKBcaCdwnHXKoJroJVr6LQ92oqL6TW/o+H1TcXu5Zrzvl062w?=
 =?us-ascii?Q?fTvBKqafr33iY8haZjKlzOe1uvVb0Rthf+idG01exZlUk2WMOyjBN56CynD0?=
 =?us-ascii?Q?YORkwRYv6Zu6+5+IE4oe0X8TtrtReRm2rzehixbFE1c6gHX1pkrNkT+ixEmD?=
 =?us-ascii?Q?CoJET1532bpo2U89ZF+2NwvVfciCN0Wlx79aoz16xRaZ/06aSIkITVDi4eak?=
 =?us-ascii?Q?ZHKUycM6S9/mxJFnh/FZ3h1nwEBHBOG9w8rcfxKeZfaPK9kh/d1o2WEoFtww?=
 =?us-ascii?Q?iwCcNkTn0YteuMH6OekTMz7Cy5rRrfRYsAtSo3ODQ7r1ZD9Awr/dlXmYzW9m?=
 =?us-ascii?Q?b362+GmVw5aO6sCWHhjmntedIVtPozyL3YFId3EMwB0sjWZ/YmMHv5z++Joq?=
 =?us-ascii?Q?HPMSIX6loZD0/Vr45EiCtWhdMcljm8LOSZun0ZVmVTRZoaLlr75OiWztJ+6b?=
 =?us-ascii?Q?fgxzbIttjqn/0tv2eddI1BYrTViXICKkjV9PqvQ+p8ZbdjuY9tSNX64rwvgS?=
 =?us-ascii?Q?1qpsgNpcTYOwrLJyuIU9EUe63DkYZ3R4mamW/RkWIHmdMmyzi6EJUtw8lY5n?=
 =?us-ascii?Q?nCCTJT/KMBkOX76+lgsJEH8i1OJyAwcRWs3xVkVY6uBQhuLcuKXvKlku4PwG?=
 =?us-ascii?Q?VsK71CfgCQOmbq1cwNHerPOu97KAJwlwa1AnJVSGoq5Orlvit0joT8MhQaYF?=
 =?us-ascii?Q?271jpRItSZnQZ00dqnqEsv4Iz7+D7J5fjs9II+omrZTDp/iANWe4kR0LpHmi?=
 =?us-ascii?Q?hU9E1WqifJ2BXtvxyAHT0+VVmYqm4y1si8//yHgILtafdmoyJ5DQ9bHQ0rDS?=
 =?us-ascii?Q?WsXkVXjh6Z/x+LIItbrgrFnk6fo12KA3AeMKJ2w8rIb0HCp4Y8yL3I7WmYCc?=
 =?us-ascii?Q?QBguRGGQuVD+XmjrEo8SFyMOyHp5ctt+stewHhMLEHNu/jp875qApEXpZxyf?=
 =?us-ascii?Q?1NF94pBeROWWxo9NYHWpDYYapwCBH6VODJsJ4zqD+0txSxAR6eZtvNUexcIt?=
 =?us-ascii?Q?vWotnmp+wRgSi5XML8am8hBWalvFM4esI01thbTqay0DrT8dFbN9mukIUeD1?=
 =?us-ascii?Q?CT494mkoGcbVjO58mGhSFJaIUyJRsGuD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZCg4BJWxAE0kvRJuhkAGyxEn41RvxPCx2HRmFqfGaaRDON9bvtwJ9jnq8qK/?=
 =?us-ascii?Q?GA1+t5n/YhlbWO2P7v1gohibpgtns/wGG1VhtRtAsv2N20mOKJy4jCaO4iea?=
 =?us-ascii?Q?et2hpCqrFVHeMySqHp7/qibCLcpusnaUunhA0ifXqxqtbxvIij3f0/xXnGwr?=
 =?us-ascii?Q?TnTgJuVvytriCWHbDb24e1X45eHTFVawRxZOBAAl89epNLnwcciy3CQ2zj/n?=
 =?us-ascii?Q?rET4GFP/PkLawpx8F4xwxET/lU6PXdQB3QCPvq4qxdbXTId7BRVWHj8r/uaE?=
 =?us-ascii?Q?gSOmQlwDLdvNBct35XBI0B11nhu2n/o6314VjFwezF3aAV2ijMZ+locEqQ1R?=
 =?us-ascii?Q?rY9EhX2NRvaJEwHiQyd0o1auu3D8TgcbaGtsHlUqoqakg5G1ljSWEBBFTVun?=
 =?us-ascii?Q?SIk3ayIo9Kk8P2Y5aCBOTdX/1fq7G39kiGuRAGgCw7t8uxDsgDUKcLMqrHL1?=
 =?us-ascii?Q?1U3SN4zVriYbwxfLgxcZHq1km5w7D7mdm92wlppkvOpK6wPSnwKu7J962TB1?=
 =?us-ascii?Q?3rCS16DdU8w8xNcIL9v0alag60z2iPIyE4v0EYj2UdQX2mgkkbcGscEhKjOt?=
 =?us-ascii?Q?L+Hhtuxh9Jt06X6E9KAt8eGuHaayEtUK3aSA7emGECruBFtLgIobkvXN75qh?=
 =?us-ascii?Q?UnfoC2ldECycXTXSdHsLJL/DdIYJbm1knD1skneXs4Ih3Z4RszHoWkHFA3F3?=
 =?us-ascii?Q?zZPaYTohlCJ4Kbk/qSvj1Je4NU+aQ2mTpM6USunt39J7bYBIIzDqgjZVc7W2?=
 =?us-ascii?Q?m1hUoOR+P/V2uvSLMl+2Yye9+zmD4aaAZL8DKnKYemeJ5Lu61WIGkCdHEcaU?=
 =?us-ascii?Q?moukTgzYZ5L+dAJ2Pbas2G7DdMyzNDwQDfFVfHDym9w4dj0H5ImWGFqUOxEo?=
 =?us-ascii?Q?WZaO6xVZuS3xw/lFENUCaJEjIJ2RQU62wPXOqkLkfMy917i+Fan2F0BCXV+M?=
 =?us-ascii?Q?vf6SAVmmjlsnMd0MGHKKiC6oqP2kNn7VjqhDECsD6S7nCQrS24EygU8IlI/S?=
 =?us-ascii?Q?ah2dU3tAEZvgWAqin1nu/zN/qGuQa+sWTC3fBM2yOqv9DWK3WLv9icxM76y4?=
 =?us-ascii?Q?zofs1+JfsSBYuzWLzP7uUXFo8p1AQmsHpugUMWB1qjUV1BAO7mJc0kgpP08D?=
 =?us-ascii?Q?AivdK7o8bI3vhaORKJCx1cIW0s2Or2lffqC/QX5L8U1QKz7/IlS1F2UWqCep?=
 =?us-ascii?Q?rHRrQiicJljvFCS4wlwZmO5RqJl3Nr1/COoVvWyKOolcd2gXjvtW82kEmIy+?=
 =?us-ascii?Q?Anso2zTvIXsuMNQLc27ksO3Jg3oa+BlmGU3CLX6b7dwiS8H5t2LvcLXY2R9/?=
 =?us-ascii?Q?/8/S5b+dyaHtYqIN98pGukOg0tVwqiFGUaowytkxT9SU3BclSZv7cYpZGrWo?=
 =?us-ascii?Q?GuurLE1DI9wN5h89wGurlr7dQXx4+h2sKyUH+QmvjrWxrEVLWD+YZ3F+IXNO?=
 =?us-ascii?Q?Adgg8c/nMk2JLXjHmqt0xr+AUD04PvXrG5iBELP1konioFwM+8SwI1HkMRio?=
 =?us-ascii?Q?cj2B27GEKCSToscbUwAGHAUIykeohYg7qFdYallU1pJbLXa82NgKFpuPoUJC?=
 =?us-ascii?Q?pZXLnaoE0R7Mnx0Ac5ZPudTyi3NChcpOPiGpFsAi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6555be9f-b677-47cf-9f65-08dd313ab447
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 05:50:35.8625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tvGb5q6o0zaIihhvDrEF8tRwgJeDu6lkAf7lSbGwnrJ9MO4eKoyF49vnVDbxjtPiX5NPBbZe5CvNPMLlOanXWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Tuesday, August 13, 2024 8:50 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
>=20

Add Bspec reference
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Add C10 register bits to be used for computing HDMI PLLs with algorithm.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 24
> +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..56443bf3e7cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -202,10 +202,34 @@
>=20
>  /* C10 Vendor Registers */
>  #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
> +#define   C10_PLL0_SSC_EN		REG_BIT8(0)
> +#define   C10_PLL0_DIVCLK_EN		REG_BIT8(1)
> +#define   C10_PLL0_DIV5CLK_EN		REG_BIT8(2)
> +#define   C10_PLL0_WORDDIV2_EN		REG_BIT8(3)
>  #define   C10_PLL0_FRACEN		REG_BIT8(4)
> +#define   C10_PLL0_PMIX_EN		REG_BIT8(5)
> +#define   C10_PLL0_ANA_FREQ_VCO_MASK	REG_GENMASK8(7, 6)
> +#define   C10_PLL1_DIV_MULTIPLIER_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL2_MULTIPLIERL_MASK	REG_GENMASK8(7, 0)
>  #define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
> +#define   C10_PLL8_SSC_UP_SPREAD	REG_BIT(5)
> +#define   C10_PLL9_FRACN_DENL_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL10_FRACN_DENH_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL11_FRACN_QUOT_L_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL12_FRACN_QUOT_H_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL13_FRACN_REM_L_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL14_FRACN_REM_H_MASK	REG_GENMASK8(7, 0)
>  #define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
>  #define   C10_PLL15_HDMIDIV_MASK	REG_GENMASK8(5, 3)
> +#define   C10_PLL15_PIXELCLKDIV_MASK	REG_GENMASK8(7, 6)
> +#define   C10_PLL16_ANA_CPINT		REG_GENMASK8(6, 0)
> +#define   C10_PLL16_ANA_CPINTGS_L	REG_BIT(7)
> +#define   C10_PLL17_ANA_CPINTGS_H_MASK	REG_GENMASK8(5, 0)
> +#define   C10_PLL17_ANA_CPPROP_L_MASK	REG_GENMASK8(7, 6)
> +#define   C10_PLL18_ANA_CPPROP_H_MASK	REG_GENMASK8(4, 0)
> +#define   C10_PLL18_ANA_CPPROPGS_L_MASK	REG_GENMASK8(7,
> 5)
> +#define   C10_PLL19_ANA_CPPROPGS_H_MASK	REG_GENMASK8(3,
> 0)
> +#define   C10_PLL19_ANA_V2I_MASK	REG_GENMASK8(5, 4)
>=20
>  #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
>  #define   C10_CMN0_REF_RANGE
> 	REG_FIELD_PREP(REG_GENMASK(4, 0), 1)
> --
> 2.45.2

