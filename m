Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BE09C3F89
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 14:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C88D10E1AD;
	Mon, 11 Nov 2024 13:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQQqj6F8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98CC10E1AD;
 Mon, 11 Nov 2024 13:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731331573; x=1762867573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X78L8OeVeQ8XnFWEsEd6+6Aflx7O7XLqTPVOieYb5jU=;
 b=DQQqj6F8XGokoU+sFF1K4IZN3WvWfloJx1yg3KvgthxXwXTUMvo9BabZ
 KJVm7qROXPM/+q6coWYjoEwwpc9ODaeWc83Oc+I2LEy0igfi3Az9EY6vw
 WYcYwd3/IRcFgcbM6JNkkZWkikdZA7vLvrbB7QfhcDsitzXP7hNNCbmfD
 tVhLd7HTgeviM9VqCRypNtJVlHVrr2ml40pocAAXvItk4p+CPqYLQQ3mu
 9gjtNLSlBMjOA6RdfSzEYxSOvVoGB9xKu8MjLaQnLwnH7FedSQrR7onPn
 6JsrudDOqTNhOibJ64o2X06V2ReFffi7IeDkd0zrtWlwhzrgoiYUzaxA2 w==;
X-CSE-ConnectionGUID: L5iXFvYlSiipV8yA39UO6A==
X-CSE-MsgGUID: HpU4LDkvTROK+GsHrRgSOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34824461"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34824461"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 05:26:13 -0800
X-CSE-ConnectionGUID: SKRvjxgEThGr3RDYVh7Tdw==
X-CSE-MsgGUID: 8+qU+eh0Qi+Vz3xMfcRVTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87293208"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 05:26:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 05:26:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 05:26:12 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 05:26:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C4up4IOZF2ktx7wzW3PjXlLoBUR0lVUuKBt3zEBRPNuJDioJvDT+YIFnSRfdzY9y8Cq6dPcCoM2VffOh/DrvhqALxRhzx1CZYUY4Uf/W/GQ4I8VBqVCMaI29hDO+PCiF27DJRCcJaMAqnyKEjAUvw3H0hYmCgT2hqkmtYEtLogG7HZJppTEeNdKBkWmOZFiBA/wvqYwrndg5PCaeafxjSGKqWC44fKc5G6/sFFPNRG8RZT0/SCD7glNdH0rbLAA4taKnqSh6OMs6/WYft06XfR9K0u9BYkSjNk94Tyq+njsOQD+ZtG1g6Ayj9fhBAN3STcHiG7eYcusIFueSVvqmJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZJs6pNe3QfonF5LoTRw7Sscsy6k32rZvs8hhYVOc5eg=;
 b=rN5z2Sce0NrA+HTtd5U69ujaiyy8KRLuUVFtiGv2aGcukl7dGWBQ0zn5UbKrjSpRYZFZRP1SAJJ398W5HEx8YNHADTCU9kA14AcbxjmtuO24EgRyJvi8OLqOrUf8kfo9AVV4vYsYpjruOCfWxKW9dLE3nINRsQ0nUKvw1XXZd0cubN86cOsnM/i14xNZD3WMx1iD6mCjR1jMecbRDN1tgT8ypMVkBE81B5TjTuzJ7D97WN/kBAzLSs/T5VqmQUEPHqQ9DU1GX2c+/oBC4R1bwh+MDzb6GKnjXOZZCiPnPEtg6qsjiTQKkRZTucZspNl7GHWevO7KbzMHZ9BS+jqA4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH0PR11MB5218.namprd11.prod.outlook.com (2603:10b6:610:e1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Mon, 11 Nov
 2024 13:26:09 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 13:26:08 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 2/3] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbNDX0XS4eAf3xhU2Gol3+Gqq9ALKyD8Hw
Date: Mon, 11 Nov 2024 13:26:08 +0000
Message-ID: <IA1PR11MB634876AD3F1DF3AB3BA164F1B2582@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241111123259.1072534-1-suraj.kandpal@intel.com>
 <20241111123259.1072534-2-suraj.kandpal@intel.com>
In-Reply-To: <20241111123259.1072534-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH0PR11MB5218:EE_
x-ms-office365-filtering-correlation-id: 81e9059f-3721-4e15-0b69-08dd02546713
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?81o3Yh8FPK491O5WryibJtnIXthIBVCzawt+UmeemGWfUFospG4Vi5MSatZf?=
 =?us-ascii?Q?sAa1hNNy0Nt8HsehysM2eWi0GubtBiTOZsvh4c1xYQBDAVv3Fs3I/34pD0gL?=
 =?us-ascii?Q?fJgY1xhb4EMS5YWcNux1u2gtyhT73OmKTPVT0Xg1tdxBQPHfKxwiv5xyHQr5?=
 =?us-ascii?Q?ekaUSPNCD8S+Ts68j1CHdy183a0TKA/pU5W8/vtVEwo18Bgz/74DR/DGpZlp?=
 =?us-ascii?Q?FLrd3566+wpq+cfiWdw8u6U9B1ZUe360As7nnJP1XvcL7u8t4q3whWhZAnzA?=
 =?us-ascii?Q?IVCD9Z1F0zhAUCF1JYB5CN8JFzVjNRtoCns+R9iSaiw3PdDzvgv7gQ3cFV95?=
 =?us-ascii?Q?rC6vV6e9066qGeovgcSvxkXNFQlV81ZQz2NO4V85TCH30gsK2uI4R19x8B1E?=
 =?us-ascii?Q?tdvHdfRpIRMKp82zRI+PmpgB0zxhVJCQ1n2NNZXu4jtYDTutt1mDOn69C1bR?=
 =?us-ascii?Q?GyISWlPDBjQrl/qqjUlrZzMuyJUmgyCG638W6w01czaV6+dDOEWVe16lZK5+?=
 =?us-ascii?Q?J2393qFNwlkURhVqPqbdroW+oprXInPy3AeSZeos13JmMJKFZ0Ij3y1nWVH1?=
 =?us-ascii?Q?p+sMBGYDhbgZ+A1iaEpt6qnCnb9UwvcdFDUJFS9ZX9RxUF3jyjAXb4IWscJr?=
 =?us-ascii?Q?Hi0j2Kdg5JGHmqLBTVmpdP3lw98AG46AbGS8b1eZkJMdztThMwxnyEUIJM2u?=
 =?us-ascii?Q?lvCKyLJJ7vdr+1q0aIDhSqkIi3gXL14mdTzK2R1a8GmZiDgk5CUMHcVZJKla?=
 =?us-ascii?Q?YBO0dXN0p9aYnABc8+Ilyr8nJ9x+ciUWLsEGwLBINdV7my7WYBFpWY/oQSUt?=
 =?us-ascii?Q?2mzqfXxJNp/niHFu4e8qnt/QZzjEckh0Hokc5bUEql7G5SiWYgG5zDb3PTWp?=
 =?us-ascii?Q?OMb9u0PHxrWoAXyVxsAN6jkEH9yiF5K7eZekwiZV+CbUsyGP1MibdbVzWTXS?=
 =?us-ascii?Q?WkBzKSYiOCTjgxHoIqiI5oNHB1a62HmLndybRMdciEV00Hyz+nQkyM9gyOrB?=
 =?us-ascii?Q?jUSGC+Z2Wh5oc8z/+XKboeBi2NaEHmo5IJ4nID09pnTOkd9GyBvNmtg6Dl//?=
 =?us-ascii?Q?AaBxYdCpoc3A5L1mhpdbvujXx32Gdm+nCI1bFRSSmvv02esbLCXMVhNG4eTZ?=
 =?us-ascii?Q?4DAwCYG5X6U+O9xJT7rJLYBItQY5hsxi+3E86L7jp9LOXq7afBqIQuRK/eb4?=
 =?us-ascii?Q?SDzPNlhloCLXtn0LRg/SeLzUshN+FW3hUjGdCLYaPwKXbAnQOnM+rjExMf8R?=
 =?us-ascii?Q?6M48EctvNlb8NGEnO1Hxa0saxvn+1ecEn/izRvUbMmci1Gu9dO9Z8D/qsi5K?=
 =?us-ascii?Q?qECUQlBzULuRC7cMSh73/EoOId7mwJ/LYs6CeD5FA6P/wyYSfhU8aNMIZm7r?=
 =?us-ascii?Q?Jmu/Xgs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yi23jyjKnXKi9HbsPSd21f27UaESmVFQPvAPUt4DpQrk/u2JEWIuOgiwMUEX?=
 =?us-ascii?Q?ZGLWmCBVAM+ln9WA8XFm/sWnpvJQlM6i+1WAJoQpBM8Ne8q8+uhxoRdS9ER5?=
 =?us-ascii?Q?4TV9f5C1miMjdPx8zUKFx2M3NqpfIhtrdfliBshQPK5V/D9uQt6CxbPt+TNV?=
 =?us-ascii?Q?v4iWNCJ9UzoTmKzXa49egxzPYXJWuuROkJht6eToMC/mRtdtu2RSOg5ibp5L?=
 =?us-ascii?Q?mXEx64ctSrP+heBmhPv47gc0En4wg/E7QONiOJ6YwRbzyiggDSyjnriEWUZY?=
 =?us-ascii?Q?Phf1bYQ3YZ7r4VY+eCveNnTdsUlLgwxCTqAyp4BvtsbLqz6Kid0gW+oOrKak?=
 =?us-ascii?Q?nf3tbpREyKgGkfsTpfi4sjmUMdLRT/ligHepguZXYtAaWRB96mzvUk8kfrwM?=
 =?us-ascii?Q?l5zhRWoWf0XcWXZYVM3XNe4BBCmEWNX/hrugSFJQ7teLzlNYUKQ1FQo7BcLZ?=
 =?us-ascii?Q?1sRM9yvDYcZ/O3pDBLKy/IviOzo7/NtnSIe4xYwJFwG0aPa3Vd8Er1PQ80dG?=
 =?us-ascii?Q?sTnc8A07QBE+8zXmXzCkL0UmWfU3/Edyiwu7ZzzjG1YBBMyHL8OplS0loCAY?=
 =?us-ascii?Q?d9C+Vmmv2lhi9/xhkNQ4lE+kQ2UMZsm7ESIFJEyWiLDQ4HvpXm6cBRClkjA2?=
 =?us-ascii?Q?9+dZS6YLc58s4MxSVzkoiqVWZY5zieUswlghEuSx57L8s0KHQRDpzMf3KNv8?=
 =?us-ascii?Q?SR5+X/UkJp65jEd6/mIKRPTAK89xrucec2ig/AimPO7Zoayf7W1jB1C3WnZY?=
 =?us-ascii?Q?dt03IxmXfHP1/WElqpsPH/muQWzfdvuGgPpd9lEpV/6x1jEFHIOF0dgHrzJ4?=
 =?us-ascii?Q?y5G9L18hVn/s/sNbEAU+JiPaeGKavuA58NAF66cZeJbNQ1UKSnzrYDnAmHua?=
 =?us-ascii?Q?kck4yuGXwTlLPV3XPLzV81Q3b7SKlBRKUmyThiGb/FxIn+Hw+hsMe/7bsrdW?=
 =?us-ascii?Q?vZhL9GlYnHX9kUx5JGxoCZ07fMTu3Jik+9rpYywmW/nGhXGs6lfKyFy3/jkr?=
 =?us-ascii?Q?W2y+QxYzJ2jiU80q7j5L69ljgbLP/KPN4RW+2+6/VYhsM1+q1QW8WBFxqmmT?=
 =?us-ascii?Q?W8knlfYQkb/VVRLSG51l84z809ZK3eep9gkITM3IGTc2IYFHTazI5oyIcQpa?=
 =?us-ascii?Q?cVb/+W5v4/E4uF6kg4tIM/S/AGpvmP6na1GAav5kTiQtKcAGOg8lzAQxjsDa?=
 =?us-ascii?Q?bOBfaVJzoe+qY4lhezYSr+VjT6jAyvcXTZmtnMfkiMwhtYxEgGi48nK8PAM0?=
 =?us-ascii?Q?p9vmo93CecTmicza9OIISceIKvmPi58G/QgCt9PwLPB0p/Ha+aovxAwLhLjN?=
 =?us-ascii?Q?xFNvt3BblMR6+f9sqPknFbj7zBecUuBLBIYdpJEB5ZfgNDGaV1aGeOBOs0Xp?=
 =?us-ascii?Q?C0RTMNGOUj5vCh51mWqbwo8aJUnOQWU+X0Hmjtrr0EHttEeXYt45qLAlTExI?=
 =?us-ascii?Q?lGjYaBQdXVTJnRMcmXEiYmLYCZi1/B3Lh0odgUM9WvLnCQ/HBEVfzQAgi8VY?=
 =?us-ascii?Q?XG9vsMtPB823TmOrSV86qgZnTKaNm/tPwcUJJayN5DhCtyaIHTwW+WKatOgR?=
 =?us-ascii?Q?LWCVbu8xTxJhFEsJCedfCdKSIrCeL1FoUST/r4rY5rj9mEIi2uSR6j1a9yF5?=
 =?us-ascii?Q?6m2V9HpbvsJUwqYLUEZieIE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81e9059f-3721-4e15-0b69-08dd02546713
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 13:26:08.6075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LEP23u3vbYfeLL87t8t84/aOJ6PF0p6eXEtJyF/cEotruoi5tmFl3+12m9BlKBiF3XlXO02fzHmvKgLXNXQJoJJY6c6QYUilx0kbgZoRwS6shN75YTFAhgnokHSnl4vi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5218
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
> Sent: 11 November 2024 18:03
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 2/3] drm/i915/watermark: Modify latency programmed into
> PKG_C_LATENCY
>=20
> Increase the latency programmed into PKG_C_LATENCY latency to be a
> multiple of line time which is written into WM_LINETIME.
>=20
> --v2
> -Fix commit subject line [Sai Teja]
> -Use individual DISPLAY_VER checks instead of range [Sai Teja] -Initializ=
e
> max_linetime [Sai Teja]
>=20
> --v3
> -take into account the scenario when adjusted_latency is 0 [Vinod]
>=20
> WA: 22020299601
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 26 ++++++++++++++------
>  1 file changed, 19 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index a97e90ac643f..e061015a89b0 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,
>   * Program PKG_C_LATENCY Added Wake Time =3D 0
>   */
>  static void
> -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> enable_dpkgc)
> +skl_program_dpkgc_latency(struct drm_i915_private *i915,
> +			  bool enable_dpkgc,
> +			  u32 max_linetime)
>  {
> -	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK;
> +	u32 adjusted_latency =3D LNL_PKG_C_LATENCY_MASK;
>  	u32 clear =3D 0, val =3D 0;
>  	u32 added_wake_time =3D 0;
>=20
> @@ -2858,15 +2860,22 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  		return;
>=20
>  	if (enable_dpkgc) {
> -		max_latency =3D skl_watermark_max_latency(i915, 1);
> -		if (max_latency =3D=3D 0)
> -			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> +		adjusted_latency =3D skl_watermark_max_latency(i915, 1);
> +
> +		/* Wa_22020299601 */
> +		if ((DISPLAY_VER(i915) =3D=3D 20 || DISPLAY_VER(i915) =3D=3D 30) &&
> +		    adjusted_latency !=3D 0)
> +			adjusted_latency =3D max_linetime *
> +				DIV_ROUND_UP(adjusted_latency,
> max_linetime);
> +		else
> +			adjusted_latency =3D LNL_PKG_C_LATENCY_MASK;

You are already initialized it on the first instance, and wrote a patch #1 =
to get rid of duplicate of initialization. But why again ?
Also any reason to move away from 'max_latency' to 'adjusted_latency' ?
all I can read through your commit message is, you are making this latency =
as multiple of linetime, any adjustment we are making ?

> +
>  		added_wake_time =3D DSB_EXE_TIME +
>  			i915->display.sagv.block_time_us;
>  	}
>=20
>  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> -	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> +	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK,
> adjusted_latency);

Also you can think of this combine with below line for simplification ?

>  	val |=3D REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
>=20
>  	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> @@ -2879,6 +2888,7 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	struct intel_crtc_state __maybe_unused *new_crtc_state;
>  	int ret, i;
>  	bool enable_dpkgc =3D false;
> +	u32 max_linetime =3D 0;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2908,9 +2918,11
> @@ skl_compute_wm(struct intel_atomic_state *state)
>  		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline)
> ||
>  		    !new_crtc_state->vrr.enable)
>  			enable_dpkgc =3D true;
> +
> +		max_linetime =3D max(new_crtc_state->linetime,
> max_linetime);
>  	}
>=20
> -	skl_program_dpkgc_latency(to_i915(state->base.dev),
> enable_dpkgc);
> +	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc,
> +max_linetime);
>=20
>  	skl_print_wm_changes(state);
>=20
> --
> 2.34.1

