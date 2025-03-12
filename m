Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46684A5D5BD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B887D10E6CD;
	Wed, 12 Mar 2025 05:53:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oI/EwpD9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51E710E29D;
 Wed, 12 Mar 2025 05:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741758792; x=1773294792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AnRzHdHBwo13zQ2pwvHBFAqhoQs+PL6Okhcr1x9Iovc=;
 b=oI/EwpD9S2cqBGbOH9RVlOZygk5GguBfGmJ1GWhDwiT7apn0Di8ZgG97
 UQsPfII8BNY3zinX6zaYowRFf5ftk0qjXC7fo7i6VtaABdvEo7H7nWGLW
 xWdcFFhpBTLHTJBHujGiSl5KH5Xx0502HsCAjAqnYn3QSUuyLbh/Q8YGE
 XOe2h4ufGR/iO57QF4G3EFKknTr2kczLxtm2QYBw9JN5UXAwP1rykbDJt
 IYDFVkVg3JA+j0/Ro6JVhDAANbLKlvCMuaIXVA0GnrKrzMwuL+KF4HaKv
 NQTkl+TL9kuasH6I8zba4+pTqfjLh6TBESSsVvx9HOX9BxyXe98zblfZ6 g==;
X-CSE-ConnectionGUID: JSgu5QQkRWCIOrdcm+nwoQ==
X-CSE-MsgGUID: CyqbQZivTqWMcxIkp8cNpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42735606"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42735606"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:53:11 -0700
X-CSE-ConnectionGUID: 2zNsZdJ2T0CQ+1HfyHouwg==
X-CSE-MsgGUID: 7NMP7oNNRVOkVs3wpiMD8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="121235004"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:53:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 11 Mar 2025 22:53:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 22:53:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:53:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o2uvRF7uFiUkbiTl17O1w5JE3wLOXueWVC/NrYMPYRFkDmi/h7yZ2dwo25GUQYw3z1AyeEJ8AGAsDpZw11rqSDfeEbvnmHunkUodGkN8Wu1y0czAzAss2dDN3qaYbK4wyVRODNQ7q3HZG2oApOWUnTE/YV00D90POwUSDzhIV0u4509VIUAjcLTq3mS+mhfah2C6P7Oy1gHLJELGAqE1iSsXcJKg3Y78sLiwhuvePTs/TDqh31lttZli3El4U5f9bSkQhviyh1HwuV2N/6G5Ar+nl6X+IoYWXDGyttzdQCBiLnSoDrRa2RE5FVlOHJRClc1Gm8GX7KcpDUn2Zz3Ziw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c4ST34Ru8Rrrcpx3h70oG/gq30NVzoiRQtWA1SvXm5E=;
 b=wF5sUr7ukLEHiHOAGWEPuEX/45przuNZ/rL/du03xkYRWu7Grj0IzsYShZGuIJqnH2EOCjWRxIRvPfrmSA/tvY5h45dSCUqyGOKtXM6FCX7upsMc9ZJYVvpAEv8qTWmMmQeOLN/fDnOGxAkdd3dRoliY7yx56UDcNqtdPox1v0ZgTkxYV7iZLWs8Me8JOgQr4NhIJrCqqm3xNm3iILnUBLmbiYNcUE3asl36mVqK76WkP6ZoYxcdLiWq0U2I3KMHP0EdZbYW85ALLga/WEqbGij+Q8hKuzV+k0cxUN1QTk8hd3hpo8SSqzhW+ufFzY3Eq3o+MbwLH1eyhDUmEvG/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7213.namprd11.prod.outlook.com (2603:10b6:8:132::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 05:53:04 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:53:04 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 8/9] drm/i915/irq: convert rest of intel_display_irq.[ch]
 to struct intel_display
Thread-Topic: [PATCH 8/9] drm/i915/irq: convert rest of intel_display_irq.[ch]
 to struct intel_display
Thread-Index: AQHbkq+6mjUKZR5wXUiPPF9I3Cxb7rNvAHoQ
Date: Wed, 12 Mar 2025 05:53:04 +0000
Message-ID: <DM4PR11MB6360E5A5E0822837C8E2CB59F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <237b2a4c5c514dae7fabc86360ae17d5c33d80f4.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <237b2a4c5c514dae7fabc86360ae17d5c33d80f4.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7213:EE_
x-ms-office365-filtering-correlation-id: 662a2c62-dfcb-47a6-4449-08dd612a280d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ip0967X1R+//zoT0392iDH+VWtlfcKpUpMchr/9t3bs9QGR/BNsrvrSkPdPy?=
 =?us-ascii?Q?PtRrYb3fxre9A/fGv1/hp6MV/aty9GjOaWgc3rPKd5iOiWKmYTGbtkMZ526Q?=
 =?us-ascii?Q?SlS5z48qpUK9RtPnItdR4MQqCEiuLKKNe081ps9xZVVBJBwDyR/nfUTxnS/m?=
 =?us-ascii?Q?i4DeZDryjN7tlZ6W3jzpuwJKhu9bnSf+jW2+964gPz9NYtu8nZpViXv8xiT/?=
 =?us-ascii?Q?2rv0k0242slkj9UYyJYvyj5fBmGbHVJ+BRNP1yqD77+/dKdH4gdtAcNSDZrK?=
 =?us-ascii?Q?yiPCIJXHkJfiVTzwn3M7OVG+L1JEAP+PxFnvmicmTngmQgzHM8+ujX4tGv2E?=
 =?us-ascii?Q?yO53ZwJxusSWW7NdwBoygmYB9AB0V2kE5zeqsy8yRTdFKigxixdMnRwuz+dM?=
 =?us-ascii?Q?DHE5BTMx6AolcSu9sXtNcCPZ/XVnM9Ipz5lLpBbLC8dXoZ3wgvyGWsF9/C+q?=
 =?us-ascii?Q?V3VJwvyo0ZJfCxZm/MXWB9zDwHxj7xMo9S8TDLXe51yWZDOtXWOUnzagJQk2?=
 =?us-ascii?Q?+Wpmdvzni0nITM6aAwA+WoSK1bMAQBGRcNAHQARY05Eu/hvImCVAsh08drOa?=
 =?us-ascii?Q?ACV09vdMxzcrtsMPDzw1quUpAOXW3bw254SMx7AAKCWCDq4o+BGlcSrUhW8J?=
 =?us-ascii?Q?gtru6+KYpk3+UI3AHqdAQcosOgsgoVeOXetXJwrcP2YSer4q9uyEr8/BcLpF?=
 =?us-ascii?Q?97GevRqc1WEGI0Nw4+dTZ8QIRR6Ls6Y+x5xVPYt44BTmH3s83egwVtjJO1C9?=
 =?us-ascii?Q?FcKs+H5ejU0inLOKM5ut+bFgO8IJHti7QevkUQmSMHATKsUQ+iZs452+fBle?=
 =?us-ascii?Q?JBfFP7J9rYGh9Q/RNPeT3RKOTEMMnu6BxrUnCntN+uEItSRrKorMulrSlq8D?=
 =?us-ascii?Q?vo2IXG1RV0WVMCo8MTQWULcY3ZzaUpsZgpiAYDEPTZiIAw/rLPE6IcBwsUkE?=
 =?us-ascii?Q?sGBZqajfpGH64Oil5naNSEq99xpyOCcbaweJ0NDOlKuWv7TxmQp9xJtLwWk9?=
 =?us-ascii?Q?o8Fl8Wc7Va1rxxlXMsiG/+6+OkKwqXb31lzKVl59+iICAAPI+62iQI3ckLog?=
 =?us-ascii?Q?3T16IofM00kN+3dsTYIEbzyBg0nCC/xF14wG2BaMnEIdD4F/Nk0kSro61M/2?=
 =?us-ascii?Q?67VoYgWPsMiOAEacNPSVixe1HevhsUkrkrMcPabj4On/T2p67sCj36Vx/bKf?=
 =?us-ascii?Q?EvXYtP1AXr0+je8CUQG5IXmVWrVSftIfj7qneSxuyWdRs9Gr3VGRqQsKcNbg?=
 =?us-ascii?Q?VoRo7eeQwHD++FqVfihVw0iyB1MwZ4K2Vu9sO9E5BUYk3ZTa/D7w9h/Wxt97?=
 =?us-ascii?Q?5/H1r5jTamcVzOldwkjysu1qArOGvSc/qdNLDuak+ZFzfS3dIiNPaHkdW1DU?=
 =?us-ascii?Q?B+92DeZCA5FVeSNAzCAW5W2pMNW1kglbrD6zGyj8jc7VyNmaAZrYMBO+H/69?=
 =?us-ascii?Q?JyoLynvOkQUXcqnWUNFHd7Z31iOJlMcR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1k5EcmeSQiBhTz4Cd0C41vdILGPvUvNMCCYWqEgq/4Svcb7E/fttsPRJFuZ+?=
 =?us-ascii?Q?x6SqHf0froydbHHciL9T5cFmdyK3jKp2L+tkdOckn1F2kQSrHNX2dKwKZLzN?=
 =?us-ascii?Q?iMo88Wbo8mCWjODFqMM9YdDVCGNi3DiSsjHCLdN798Dy6j0i1V68fscTNdCw?=
 =?us-ascii?Q?7vcLAjepb49Ju2MDxN4XIWo0n1yr0EBB/6nk/UO43yEnriIgd2Fvddcd9Fbc?=
 =?us-ascii?Q?Cv/aQER2rGNhSTMvI67Ced1vI5Kg9Yik2hu3Bx6wkwBVyHMAUOP0cgWwe4Hf?=
 =?us-ascii?Q?N0yTyAz0mAvTCt+kqs0pWbQN4GQNbIUQ2xmAdGBcMYPQh0u1AICUdJYYBYrA?=
 =?us-ascii?Q?FUW80d5qp1L4vG1h7JT1bqt9Jqge9CotRHoqB+gcWh2DgLEhhk5cy4631cXA?=
 =?us-ascii?Q?IEefEwqrCzDa+l/gxUiO+cjxZG/joxk7SS1Yop02EfF14WsRHGFfxy+uM7Xc?=
 =?us-ascii?Q?HGCpkrEFs6996Hs8fy4T41h+S+U3gcBr0+/Rn/X0m9zEW43DeMcL8llmmr6A?=
 =?us-ascii?Q?0OWP3JzKIVJLrw0gpxjwTA2YmFyzR5A0apBpZ14hyytjkEUss8kRZ4Hqm0Ll?=
 =?us-ascii?Q?4ghiefP0oxX7/b3P8D/fWWkWk2swiMkXDb5xZvRyXptZa8+XlDNIr5onSiRa?=
 =?us-ascii?Q?SdKsgA4BSo0OJWNMrOrxMEwgGGgrkHt+M/NBV5EaO+ZhXEBXEyqtXqTCxiFF?=
 =?us-ascii?Q?6rOC/88sBKJNj/N4PbqbB9LbyK50I27MfxCqIhH3y21buSjxfJ/m0pR4FxIh?=
 =?us-ascii?Q?RBVpeREug45cr5wSe7Suw6RMH9xga0RTxVXDJtrgthbl1aROJxURTmhkjE2f?=
 =?us-ascii?Q?8U5YBzi7EcWjpw8iHnLB+2YoukD7M4dWE3rCObcoIog9Z4NuZo4dGKm9Q2Wl?=
 =?us-ascii?Q?kJAskVSKtTK1Mzg1jKhUiCBEDAKvWZObOW2Kl0+NCIUV/fB0ijfVVZXxwhht?=
 =?us-ascii?Q?r10tnxFnDGpHczXtSbB11ZLpFQeazIf1UgprugPuE/CCz7NSCUmGTlckKhEm?=
 =?us-ascii?Q?x0krhu46vBgC+x3bVIACxd898qlHEJoRjJ3ubRMo+U1buXgKQr2IybUOAZWN?=
 =?us-ascii?Q?5GyD+j52BmD7pXifd1AJhPJPhr7uhYxApEHNMXGyfbppzogHPm/qI4pRGChQ?=
 =?us-ascii?Q?QV4dKI5OqRX1bdZgGpEcw5my0xudnN8LcZDiB8M5qit6RLRUPMTC+6qFxZXd?=
 =?us-ascii?Q?RInFJBqzs2vhWE4qyZYsk5fVvd35y77KvmhF1qZx/oUmVFnCe5355dbDvL7Z?=
 =?us-ascii?Q?WIL2VUh7hMonzzBXccd83swk/B/9mvySLfkUL8/7dMbm/YFLm/8cJSl9mErL?=
 =?us-ascii?Q?xwWJSc3EcfSE7NQ/M3iSv8EYNiDbXw1ATCUtQcvB0OeXk78H5KjPEDOEHxZq?=
 =?us-ascii?Q?+lCCnsiyPSjNyDfMpZMVFKAwxUphLKJCXWEYeETzvoC5nsW7VOLkiqaNl6Rp?=
 =?us-ascii?Q?CfqLcoxrT/xC6iMv3/S05BjBVFhIeIFfmRJseyeNOLK/ND9kh/y6VnhSvO64?=
 =?us-ascii?Q?L5HfFc6Xi8vIo5JQjHnO9LXBDNnmADsbVVBE7vPd7OLNsQ0Fu23dWOiyO7nB?=
 =?us-ascii?Q?VawGlqkt3bdXz5CCL961GiXb9u6/oQnj7Ku5XoGN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 662a2c62-dfcb-47a6-4449-08dd612a280d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:53:04.4473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0d+9PKNqqwrV5utkspGk48WQAxBr5fxmKg/FckFpMOc6YMnDCMXYsiY85X4G3We1bgzf92h+GJulmcALTVLKhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7213
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 8/9] drm/i915/irq: convert rest of intel_display_irq.[ch]=
 to struct
> intel_display
>=20
> Going forward, struct intel_display is the main display device data
> pointer. Convert as much as possible of intel_display_irq.[ch] to struct
> intel_display.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 527 ++++++++----------
>  1 file changed, 247 insertions(+), 280 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 68f903c35978..6f78fe6de06a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -115,9 +115,8 @@ static void intel_pipe_fault_irq_handler(struct
> intel_display *display,
>  }
>=20
>  static void
> -intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
> +intel_handle_vblank(struct intel_display *display, enum pipe pipe)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>=20
>  	drm_crtc_handle_vblank(&crtc->base);
> @@ -136,14 +135,14 @@ void ilk_update_display_irq(struct intel_display
> *display,
>  	u32 new_val;
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> -	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask &
> ~interrupt_mask);
> +	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
>  	new_val =3D dev_priv->irq_mask;
>  	new_val &=3D ~interrupt_mask;
>  	new_val |=3D (~enabled_irq_mask & interrupt_mask);
>=20
>  	if (new_val !=3D dev_priv->irq_mask &&
> -	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
> +	    !drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv))) {
>  		dev_priv->irq_mask =3D new_val;
>  		intel_de_write(display, DEIMR, dev_priv->irq_mask);
>  		intel_de_posting_read(display, DEIMR);
> @@ -175,9 +174,9 @@ void bdw_update_port_irq(struct intel_display *displa=
y,
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
> -	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask &
> ~interrupt_mask);
> +	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
> -	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
>  		return;
>=20
>  	old_val =3D intel_de_read(display, GEN8_DE_PORT_IMR);
> @@ -208,17 +207,17 @@ static void bdw_update_pipe_irq(struct intel_displa=
y
> *display,
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
> -	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask &
> ~interrupt_mask);
> +	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
> -	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
>  		return;
>=20
> -	new_val =3D dev_priv->display.irq.de_irq_mask[pipe];
> +	new_val =3D display->irq.de_irq_mask[pipe];
>  	new_val &=3D ~interrupt_mask;
>  	new_val |=3D (~enabled_irq_mask & interrupt_mask);
>=20
> -	if (new_val !=3D dev_priv->display.irq.de_irq_mask[pipe]) {
> -		dev_priv->display.irq.de_irq_mask[pipe] =3D new_val;
> +	if (new_val !=3D display->irq.de_irq_mask[pipe]) {
> +		display->irq.de_irq_mask[pipe] =3D new_val;
>  		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display-
> >irq.de_irq_mask[pipe]);
>  		intel_de_posting_read(display, GEN8_DE_PIPE_IMR(pipe));
>  	}
> @@ -252,11 +251,11 @@ void ibx_display_interrupt_update(struct intel_disp=
lay
> *display,
>  	sdeimr &=3D ~interrupt_mask;
>  	sdeimr |=3D (~enabled_irq_mask & interrupt_mask);
>=20
> -	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask &
> ~interrupt_mask);
> +	drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
> -	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> +	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
>  		return;
>=20
>  	intel_de_write(display, SDEIMR, sdeimr);
> @@ -322,20 +321,20 @@ void i915_enable_pipestat(struct intel_display
> *display,
>  			  enum pipe pipe, u32 status_mask)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -	i915_reg_t reg =3D PIPESTAT(dev_priv, pipe);
> +	i915_reg_t reg =3D PIPESTAT(display, pipe);
>  	u32 enable_mask;
>=20
> -	drm_WARN_ONCE(&dev_priv->drm, status_mask &
> ~PIPESTAT_INT_STATUS_MASK,
> +	drm_WARN_ONCE(display->drm, status_mask &
> ~PIPESTAT_INT_STATUS_MASK,
>  		      "pipe %c: status_mask=3D0x%x\n",
>  		      pipe_name(pipe), status_mask);
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> -	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
>=20
> -	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) =3D=
=3D
> status_mask)
> +	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) =3D=3D status_=
mask)
>  		return;
>=20
> -	dev_priv->display.irq.pipestat_irq_mask[pipe] |=3D status_mask;
> +	display->irq.pipestat_irq_mask[pipe] |=3D status_mask;
>  	enable_mask =3D i915_pipestat_enable_mask(display, pipe);
>=20
>  	intel_de_write(display, reg, enable_mask | status_mask);
> @@ -346,20 +345,20 @@ void i915_disable_pipestat(struct intel_display
> *display,
>  			   enum pipe pipe, u32 status_mask)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -	i915_reg_t reg =3D PIPESTAT(dev_priv, pipe);
> +	i915_reg_t reg =3D PIPESTAT(display, pipe);
>  	u32 enable_mask;
>=20
> -	drm_WARN_ONCE(&dev_priv->drm, status_mask &
> ~PIPESTAT_INT_STATUS_MASK,
> +	drm_WARN_ONCE(display->drm, status_mask &
> ~PIPESTAT_INT_STATUS_MASK,
>  		      "pipe %c: status_mask=3D0x%x\n",
>  		      pipe_name(pipe), status_mask);
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> -	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
> +	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
>=20
> -	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) =3D=
=3D 0)
> +	if ((display->irq.pipestat_irq_mask[pipe] & status_mask) =3D=3D 0)
>  		return;
>=20
> -	dev_priv->display.irq.pipestat_irq_mask[pipe] &=3D ~status_mask;
> +	display->irq.pipestat_irq_mask[pipe] &=3D ~status_mask;
>  	enable_mask =3D i915_pipestat_enable_mask(display, pipe);
>=20
>  	intel_de_write(display, reg, enable_mask | status_mask);
> @@ -368,15 +367,13 @@ void i915_disable_pipestat(struct intel_display
> *display,
>=20
>  static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	if (IS_I85X(i915))
> +	if (display->platform.i85x)
>  		return true;
>=20
> -	if (IS_PINEVIEW(i915))
> +	if (display->platform.pineview)
>  		return true;
>=20
> -	return IS_DISPLAY_VER(display, 3, 4) && IS_MOBILE(i915);
> +	return IS_DISPLAY_VER(display, 3, 4) && display->platform.mobile;
>  }
>=20
>  /**
> @@ -396,7 +393,7 @@ void i915_enable_asle_pipestat(struct intel_display
> *display)
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20
>  	i915_enable_pipestat(display, PIPE_B,
> PIPE_LEGACY_BLC_EVENT_STATUS);
> -	if (DISPLAY_VER(dev_priv) >=3D 4)
> +	if (DISPLAY_VER(display) >=3D 4)
>  		i915_enable_pipestat(display, PIPE_A,
>  				     PIPE_LEGACY_BLC_EVENT_STATUS);
>=20
> @@ -404,13 +401,12 @@ void i915_enable_asle_pipestat(struct intel_display
> *display)
>  }
>=20
>  #if IS_ENABLED(CONFIG_DEBUG_FS)
> -static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_pr=
iv,
> +static void display_pipe_crc_irq_handler(struct intel_display *display,
>  					 enum pipe pipe,
>  					 u32 crc0, u32 crc1,
>  					 u32 crc2, u32 crc3,
>  					 u32 crc4)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>  	struct intel_pipe_crc *pipe_crc =3D &crtc->pipe_crc;
>  	u32 crcs[5] =3D { crc0, crc1, crc2, crc3, crc4 };
> @@ -427,7 +423,7 @@ static void display_pipe_crc_irq_handler(struct
> drm_i915_private *dev_priv,
>  	 * don't trust that one either.
>  	 */
>  	if (pipe_crc->skipped <=3D 0 ||
> -	    (DISPLAY_VER(dev_priv) >=3D 8 && pipe_crc->skipped =3D=3D 1)) {
> +	    (DISPLAY_VER(display) >=3D 8 && pipe_crc->skipped =3D=3D 1)) {
>  		pipe_crc->skipped++;
>  		spin_unlock(&pipe_crc->lock);
>  		return;
> @@ -440,20 +436,19 @@ static void display_pipe_crc_irq_handler(struct
> drm_i915_private *dev_priv,
>  }
>  #else
>  static inline void
> -display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> +display_pipe_crc_irq_handler(struct intel_display *display,
>  			     enum pipe pipe,
>  			     u32 crc0, u32 crc1,
>  			     u32 crc2, u32 crc3,
>  			     u32 crc4) {}
>  #endif
>=20
> -static void flip_done_handler(struct drm_i915_private *i915,
> +static void flip_done_handler(struct intel_display *display,
>  			      enum pipe pipe)
>  {
> -	struct intel_display *display =3D &i915->display;
>  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>=20
> -	spin_lock(&i915->drm.event_lock);
> +	spin_lock(&display->drm->event_lock);
>=20
>  	if (crtc->flip_done_event) {
>  		trace_intel_crtc_flip_done(crtc);
> @@ -461,25 +456,21 @@ static void flip_done_handler(struct drm_i915_priva=
te
> *i915,
>  		crtc->flip_done_event =3D NULL;
>  	}
>=20
> -	spin_unlock(&i915->drm.event_lock);
> +	spin_unlock(&display->drm->event_lock);
>  }
>=20
> -static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> +static void hsw_pipe_crc_irq_handler(struct intel_display *display,
>  				     enum pipe pipe)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
> -	display_pipe_crc_irq_handler(dev_priv, pipe,
> +	display_pipe_crc_irq_handler(display, pipe,
>  				     intel_de_read(display,
> PIPE_CRC_RES_HSW(pipe)),
>  				     0, 0, 0, 0);
>  }
>=20
> -static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> +static void ivb_pipe_crc_irq_handler(struct intel_display *display,
>  				     enum pipe pipe)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
> -	display_pipe_crc_irq_handler(dev_priv, pipe,
> +	display_pipe_crc_irq_handler(display, pipe,
>  				     intel_de_read(display,
> PIPE_CRC_RES_1_IVB(pipe)),
>  				     intel_de_read(display,
> PIPE_CRC_RES_2_IVB(pipe)),
>  				     intel_de_read(display,
> PIPE_CRC_RES_3_IVB(pipe)),
> @@ -487,40 +478,38 @@ static void ivb_pipe_crc_irq_handler(struct
> drm_i915_private *dev_priv,
>  				     intel_de_read(display,
> PIPE_CRC_RES_5_IVB(pipe)));
>  }
>=20
> -static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> +static void i9xx_pipe_crc_irq_handler(struct intel_display *display,
>  				      enum pipe pipe)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 res1, res2;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 3)
> -		res1 =3D intel_de_read(display,
> PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
> +	if (DISPLAY_VER(display) >=3D 3)
> +		res1 =3D intel_de_read(display, PIPE_CRC_RES_RES1_I915(display,
> pipe));
>  	else
>  		res1 =3D 0;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 5 || IS_G4X(dev_priv))
> -		res2 =3D intel_de_read(display,
> PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
> +	if (DISPLAY_VER(display) >=3D 5 || display->platform.g4x)
> +		res2 =3D intel_de_read(display, PIPE_CRC_RES_RES2_G4X(display,
> pipe));
>  	else
>  		res2 =3D 0;
>=20
> -	display_pipe_crc_irq_handler(dev_priv, pipe,
> -				     intel_de_read(display,
> PIPE_CRC_RES_RED(dev_priv, pipe)),
> -				     intel_de_read(display,
> PIPE_CRC_RES_GREEN(dev_priv, pipe)),
> -				     intel_de_read(display,
> PIPE_CRC_RES_BLUE(dev_priv, pipe)),
> +	display_pipe_crc_irq_handler(display, pipe,
> +				     intel_de_read(display,
> PIPE_CRC_RES_RED(display, pipe)),
> +				     intel_de_read(display,
> PIPE_CRC_RES_GREEN(display, pipe)),
> +				     intel_de_read(display,
> PIPE_CRC_RES_BLUE(display, pipe)),
>  				     res1, res2);
>  }
>=20
> -static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
> +static void i9xx_pipestat_irq_reset(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe pipe;
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		intel_de_write(display,
> -			       PIPESTAT(dev_priv, pipe),
> +			       PIPESTAT(display, pipe),
>  			       PIPESTAT_INT_STATUS_MASK |
> PIPE_FIFO_UNDERRUN_STATUS);
>=20
> -		dev_priv->display.irq.pipestat_irq_mask[pipe] =3D 0;
> +		display->irq.pipestat_irq_mask[pipe] =3D 0;
>  	}
>  }
>=20
> @@ -532,13 +521,13 @@ void i9xx_pipestat_irq_ack(struct intel_display
> *display,
>=20
>  	spin_lock(&dev_priv->irq_lock);
>=20
> -	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> -	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
> +	if ((display->platform.valleyview || display->platform.cherryview) &&
> +	    !display->irq.vlv_display_irqs_enabled) {
>  		spin_unlock(&dev_priv->irq_lock);
>  		return;
>  	}
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		i915_reg_t reg;
>  		u32 status_mask, enable_mask, iir_bit =3D 0;
>=20
> @@ -566,12 +555,12 @@ void i9xx_pipestat_irq_ack(struct intel_display
> *display,
>  			break;
>  		}
>  		if (iir & iir_bit)
> -			status_mask |=3D dev_priv-
> >display.irq.pipestat_irq_mask[pipe];
> +			status_mask |=3D display->irq.pipestat_irq_mask[pipe];
>=20
>  		if (!status_mask)
>  			continue;
>=20
> -		reg =3D PIPESTAT(dev_priv, pipe);
> +		reg =3D PIPESTAT(display, pipe);
>  		pipe_stats[pipe] =3D intel_de_read(display, reg) & status_mask;
>  		enable_mask =3D i915_pipestat_enable_mask(display, pipe);
>=20
> @@ -595,19 +584,18 @@ void i9xx_pipestat_irq_ack(struct intel_display
> *display,
>  void i915_pipestat_irq_handler(struct intel_display *display,
>  			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	bool blc_event =3D false;
>  	enum pipe pipe;
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
> -			intel_handle_vblank(dev_priv, pipe);
> +			intel_handle_vblank(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
>  			blc_event =3D true;
>=20
>  		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
> -			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
> +			i9xx_pipe_crc_irq_handler(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
>  			intel_cpu_fifo_underrun_irq_handler(display, pipe);
> @@ -620,19 +608,18 @@ void i915_pipestat_irq_handler(struct intel_display
> *display,
>  void i965_pipestat_irq_handler(struct intel_display *display,
>  			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	bool blc_event =3D false;
>  	enum pipe pipe;
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		if (pipe_stats[pipe] &
> PIPE_START_VBLANK_INTERRUPT_STATUS)
> -			intel_handle_vblank(dev_priv, pipe);
> +			intel_handle_vblank(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
>  			blc_event =3D true;
>=20
>  		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
> -			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
> +			i9xx_pipe_crc_irq_handler(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
>  			intel_cpu_fifo_underrun_irq_handler(display, pipe);
> @@ -648,18 +635,17 @@ void i965_pipestat_irq_handler(struct intel_display
> *display,
>  void valleyview_pipestat_irq_handler(struct intel_display *display,
>  				     u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		if (pipe_stats[pipe] &
> PIPE_START_VBLANK_INTERRUPT_STATUS)
> -			intel_handle_vblank(dev_priv, pipe);
> +			intel_handle_vblank(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PLANE_FLIP_DONE_INT_STATUS_VLV)
> -			flip_done_handler(dev_priv, pipe);
> +			flip_done_handler(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
> -			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
> +			i9xx_pipe_crc_irq_handler(display, pipe);
>=20
>  		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
>  			intel_cpu_fifo_underrun_irq_handler(display, pipe);
> @@ -669,9 +655,8 @@ void valleyview_pipestat_irq_handler(struct intel_dis=
play
> *display,
>  		intel_gmbus_irq_handler(display);
>  }
>=20
> -static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_i=
ir)
> +static void ibx_irq_handler(struct intel_display *display, u32 pch_iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK;
>=20
> @@ -680,7 +665,7 @@ static void ibx_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  	if (pch_iir & SDE_AUDIO_POWER_MASK) {
>  		int port =3D ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
>  			       SDE_AUDIO_POWER_SHIFT);
> -		drm_dbg(&dev_priv->drm, "PCH audio power change on port
> %d\n",
> +		drm_dbg(display->drm, "PCH audio power change on port %d\n",
>  			port_name(port));
>  	}
>=20
> @@ -691,26 +676,26 @@ static void ibx_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  		intel_gmbus_irq_handler(display);
>=20
>  	if (pch_iir & SDE_AUDIO_HDCP_MASK)
> -		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
> +		drm_dbg(display->drm, "PCH HDCP audio interrupt\n");
>=20
>  	if (pch_iir & SDE_AUDIO_TRANS_MASK)
> -		drm_dbg(&dev_priv->drm, "PCH transcoder audio interrupt\n");
> +		drm_dbg(display->drm, "PCH transcoder audio interrupt\n");
>=20
>  	if (pch_iir & SDE_POISON)
> -		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
> +		drm_err(display->drm, "PCH poison interrupt\n");
>=20
>  	if (pch_iir & SDE_FDI_MASK) {
> -		for_each_pipe(dev_priv, pipe)
> -			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR:
> 0x%08x\n",
> +		for_each_pipe(display, pipe)
> +			drm_dbg(display->drm, "  pipe %c FDI IIR: 0x%08x\n",
>  				pipe_name(pipe),
>  				intel_de_read(display, FDI_RX_IIR(pipe)));
>  	}
>=20
>  	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
> -		drm_dbg(&dev_priv->drm, "PCH transcoder CRC done
> interrupt\n");
> +		drm_dbg(display->drm, "PCH transcoder CRC done interrupt\n");
>=20
>  	if (pch_iir & (SDE_TRANSB_CRC_ERR | SDE_TRANSA_CRC_ERR))
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(display->drm,
>  			"PCH transcoder CRC error interrupt\n");
>=20
>  	if (pch_iir & SDE_TRANSA_FIFO_UNDER)
> @@ -753,14 +738,13 @@ static const struct pipe_fault_handler
> ivb_pipe_fault_handlers[] =3D {
>  	{}
>  };
>=20
> -static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
> +static void ivb_err_int_handler(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 err_int =3D intel_de_read(display, GEN7_ERR_INT);
>  	enum pipe pipe;
>=20
>  	if (err_int & ERR_INT_POISON)
> -		drm_err(&dev_priv->drm, "Poison interrupt\n");
> +		drm_err(display->drm, "Poison interrupt\n");
>=20
>  	if (err_int & ERR_INT_INVALID_GTT_PTE)
>  		drm_err_ratelimited(display->drm, "Invalid GTT PTE\n");
> @@ -768,17 +752,17 @@ static void ivb_err_int_handler(struct
> drm_i915_private *dev_priv)
>  	if (err_int & ERR_INT_INVALID_PTE_DATA)
>  		drm_err_ratelimited(display->drm, "Invalid PTE data\n");
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		u32 fault_errors;
>=20
>  		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
>  			intel_cpu_fifo_underrun_irq_handler(display, pipe);
>=20
>  		if (err_int & ERR_INT_PIPE_CRC_DONE(pipe)) {
> -			if (IS_IVYBRIDGE(dev_priv))
> -				ivb_pipe_crc_irq_handler(dev_priv, pipe);
> +			if (display->platform.ivybridge)
> +				ivb_pipe_crc_irq_handler(display, pipe);
>  			else
> -				hsw_pipe_crc_irq_handler(dev_priv, pipe);
> +				hsw_pipe_crc_irq_handler(display, pipe);
>  		}
>=20
>  		fault_errors =3D err_int & ivb_err_int_pipe_fault_mask(pipe);
> @@ -790,25 +774,23 @@ static void ivb_err_int_handler(struct
> drm_i915_private *dev_priv)
>  	intel_de_write(display, GEN7_ERR_INT, err_int);
>  }
>=20
> -static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
> +static void cpt_serr_int_handler(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 serr_int =3D intel_de_read(display, SERR_INT);
>  	enum pipe pipe;
>=20
>  	if (serr_int & SERR_INT_POISON)
> -		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
> +		drm_err(display->drm, "PCH poison interrupt\n");
>=20
> -	for_each_pipe(dev_priv, pipe)
> +	for_each_pipe(display, pipe)
>  		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
>  			intel_pch_fifo_underrun_irq_handler(display, pipe);
>=20
>  	intel_de_write(display, SERR_INT, serr_int);
>  }
>=20
> -static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_i=
ir)
> +static void cpt_irq_handler(struct intel_display *display, u32 pch_iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK_CPT;
>=20
> @@ -817,7 +799,7 @@ static void cpt_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
>  		int port =3D ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
>  			       SDE_AUDIO_POWER_SHIFT_CPT);
> -		drm_dbg(&dev_priv->drm, "PCH audio power change on port
> %c\n",
> +		drm_dbg(display->drm, "PCH audio power change on port %c\n",
>  			port_name(port));
>  	}
>=20
> @@ -828,20 +810,20 @@ static void cpt_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  		intel_gmbus_irq_handler(display);
>=20
>  	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
> -		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
> +		drm_dbg(display->drm, "Audio CP request interrupt\n");
>=20
>  	if (pch_iir & SDE_AUDIO_CP_CHG_CPT)
> -		drm_dbg(&dev_priv->drm, "Audio CP change interrupt\n");
> +		drm_dbg(display->drm, "Audio CP change interrupt\n");
>=20
>  	if (pch_iir & SDE_FDI_MASK_CPT) {
> -		for_each_pipe(dev_priv, pipe)
> -			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR:
> 0x%08x\n",
> +		for_each_pipe(display, pipe)
> +			drm_dbg(display->drm, "  pipe %c FDI IIR: 0x%08x\n",
>  				pipe_name(pipe),
>  				intel_de_read(display, FDI_RX_IIR(pipe)));
>  	}
>=20
>  	if (pch_iir & SDE_ERROR_CPT)
> -		cpt_serr_int_handler(dev_priv);
> +		cpt_serr_int_handler(display);
>  }
>=20
>  static u32 ilk_gtt_fault_pipe_fault_mask(enum pipe pipe)
> @@ -910,23 +892,23 @@ void ilk_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>  		intel_opregion_asle_intr(display);
>=20
>  	if (de_iir & DE_POISON)
> -		drm_err(&dev_priv->drm, "Poison interrupt\n");
> +		drm_err(display->drm, "Poison interrupt\n");
>=20
>  	if (de_iir & DE_GTT_FAULT)
>  		ilk_gtt_fault_irq_handler(display);
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		if (de_iir & DE_PIPE_VBLANK(pipe))
> -			intel_handle_vblank(dev_priv, pipe);
> +			intel_handle_vblank(display, pipe);
>=20
>  		if (de_iir & DE_PLANE_FLIP_DONE(pipe))
> -			flip_done_handler(dev_priv, pipe);
> +			flip_done_handler(display, pipe);
>=20
>  		if (de_iir & DE_PIPE_FIFO_UNDERRUN(pipe))
>  			intel_cpu_fifo_underrun_irq_handler(display, pipe);
>=20
>  		if (de_iir & DE_PIPE_CRC_DONE(pipe))
> -			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
> +			i9xx_pipe_crc_irq_handler(display, pipe);
>  	}
>=20
>  	/* check event from PCH */
> @@ -934,15 +916,15 @@ void ilk_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>  		u32 pch_iir =3D intel_de_read(display, SDEIIR);
>=20
>  		if (HAS_PCH_CPT(dev_priv))
> -			cpt_irq_handler(dev_priv, pch_iir);
> +			cpt_irq_handler(display, pch_iir);
>  		else
> -			ibx_irq_handler(dev_priv, pch_iir);
> +			ibx_irq_handler(display, pch_iir);
>=20
>  		/* should clear PCH hotplug event before clear CPU irq */
>  		intel_de_write(display, SDEIIR, pch_iir);
>  	}
>=20
> -	if (DISPLAY_VER(dev_priv) =3D=3D 5 && de_iir & DE_PCU_EVENT)
> +	if (DISPLAY_VER(display) =3D=3D 5 && de_iir & DE_PCU_EVENT)
>  		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
>  }
>=20
> @@ -956,12 +938,12 @@ void ivb_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>  		ilk_hpd_irq_handler(display, hotplug_trigger);
>=20
>  	if (de_iir & DE_ERR_INT_IVB)
> -		ivb_err_int_handler(dev_priv);
> +		ivb_err_int_handler(display);
>=20
>  	if (de_iir & DE_EDP_PSR_INT_HSW) {
>  		struct intel_encoder *encoder;
>=20
> -		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> +		for_each_intel_encoder_with_psr(display->drm, encoder) {
>  			struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  			u32 psr_iir;
>=20
> @@ -977,35 +959,35 @@ void ivb_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>  	if (de_iir & DE_GSE_IVB)
>  		intel_opregion_asle_intr(display);
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		if (de_iir & DE_PIPE_VBLANK_IVB(pipe))
> -			intel_handle_vblank(dev_priv, pipe);
> +			intel_handle_vblank(display, pipe);
>=20
>  		if (de_iir & DE_PLANE_FLIP_DONE_IVB(pipe))
> -			flip_done_handler(dev_priv, pipe);
> +			flip_done_handler(display, pipe);
>  	}
>=20
>  	/* check event from PCH */
>  	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
>  		u32 pch_iir =3D intel_de_read(display, SDEIIR);
>=20
> -		cpt_irq_handler(dev_priv, pch_iir);
> +		cpt_irq_handler(display, pch_iir);
>=20
>  		/* clear PCH hotplug event before clear CPU irq */
>  		intel_de_write(display, SDEIIR, pch_iir);
>  	}
>  }
>=20
> -static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
> +static u32 gen8_de_port_aux_mask(struct intel_display *display)
>  {
>  	u32 mask;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 20)
> +	if (DISPLAY_VER(display) >=3D 20)
>  		return 0;
> -	else if (DISPLAY_VER(dev_priv) >=3D 14)
> +	else if (DISPLAY_VER(display) >=3D 14)
>  		return TGL_DE_PORT_AUX_DDIA |
>  			TGL_DE_PORT_AUX_DDIB;
> -	else if (DISPLAY_VER(dev_priv) >=3D 13)
> +	else if (DISPLAY_VER(display) >=3D 13)
>  		return TGL_DE_PORT_AUX_DDIA |
>  			TGL_DE_PORT_AUX_DDIB |
>  			TGL_DE_PORT_AUX_DDIC |
> @@ -1015,7 +997,7 @@ static u32 gen8_de_port_aux_mask(struct
> drm_i915_private *dev_priv)
>  			TGL_DE_PORT_AUX_USBC2 |
>  			TGL_DE_PORT_AUX_USBC3 |
>  			TGL_DE_PORT_AUX_USBC4;
> -	else if (DISPLAY_VER(dev_priv) >=3D 12)
> +	else if (DISPLAY_VER(display) >=3D 12)
>  		return TGL_DE_PORT_AUX_DDIA |
>  			TGL_DE_PORT_AUX_DDIB |
>  			TGL_DE_PORT_AUX_DDIC |
> @@ -1027,12 +1009,12 @@ static u32 gen8_de_port_aux_mask(struct
> drm_i915_private *dev_priv)
>  			TGL_DE_PORT_AUX_USBC6;
>=20
>  	mask =3D GEN8_AUX_CHANNEL_A;
> -	if (DISPLAY_VER(dev_priv) >=3D 9)
> +	if (DISPLAY_VER(display) >=3D 9)
>  		mask |=3D GEN9_AUX_CHANNEL_B |
>  			GEN9_AUX_CHANNEL_C |
>  			GEN9_AUX_CHANNEL_D;
>=20
> -	if (DISPLAY_VER(dev_priv) =3D=3D 11) {
> +	if (DISPLAY_VER(display) =3D=3D 11) {
>  		mask |=3D ICL_AUX_CHANNEL_F;
>  		mask |=3D ICL_AUX_CHANNEL_E;
>  	}
> @@ -1040,10 +1022,8 @@ static u32 gen8_de_port_aux_mask(struct
> drm_i915_private *dev_priv)
>  	return mask;
>  }
>=20
> -static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
> +static u32 gen8_de_pipe_fault_mask(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	if (DISPLAY_VER(display) >=3D 14)
>  		return MTL_PIPEDMC_ATS_FAULT |
>  			MTL_PLANE_ATS_FAULT |
> @@ -1195,15 +1175,14 @@ gen8_pipe_fault_handlers(struct intel_display
> *display)
>  		return bdw_pipe_fault_handlers;
>  }
>=20
> -static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv=
)
> +static void intel_pmdemand_irq_handler(struct intel_display *display)
>  {
> -	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
> +	wake_up_all(&display->pmdemand.waitqueue);
>  }
>=20
>  static void
> -gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> +gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	bool found =3D false;
>=20
>  	if (HAS_DBUF_OVERLAP_DETECTION(display)) {
> @@ -1213,20 +1192,20 @@ gen8_de_misc_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>  		}
>  	}
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +	if (DISPLAY_VER(display) >=3D 14) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>  			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
> -				drm_dbg(&dev_priv->drm,
> +				drm_dbg(display->drm,
>  					"Error waiting for Punit PM Demand
> Response\n");
>=20
> -			intel_pmdemand_irq_handler(dev_priv);
> +			intel_pmdemand_irq_handler(display);
>  			found =3D true;
>  		}
>=20
>  		if (iir & XELPDP_RM_TIMEOUT) {
>  			u32 val =3D intel_de_read(display,
> RM_TIMEOUT_REG_CAPTURE);
> -			drm_warn(&dev_priv->drm, "Register Access Timeout =3D
> 0x%x\n", val);
> +			drm_warn(display->drm, "Register Access Timeout =3D
> 0x%x\n", val);
>  			found =3D true;
>  		}
>  	} else if (iir & GEN8_DE_MISC_GSE) {
> @@ -1239,12 +1218,12 @@ gen8_de_misc_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>  		u32 psr_iir;
>  		i915_reg_t iir_reg;
>=20
> -		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> +		for_each_intel_encoder_with_psr(display->drm, encoder) {
>  			struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20
> -			if (DISPLAY_VER(dev_priv) >=3D 12)
> -				iir_reg =3D TRANS_PSR_IIR(dev_priv,
> -						        intel_dp->psr.transcoder);
> +			if (DISPLAY_VER(display) >=3D 12)
> +				iir_reg =3D TRANS_PSR_IIR(display,
> +							intel_dp-
> >psr.transcoder);
>  			else
>  				iir_reg =3D EDP_PSR_IIR;
>=20
> @@ -1256,19 +1235,18 @@ gen8_de_misc_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>  			intel_psr_irq_handler(intel_dp, psr_iir);
>=20
>  			/* prior GEN12 only have one EDP PSR */
> -			if (DISPLAY_VER(dev_priv) < 12)
> +			if (DISPLAY_VER(display) < 12)
>  				break;
>  		}
>  	}
>=20
>  	if (!found)
> -		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt:
> 0x%08x\n", iir);
> +		drm_err(display->drm, "Unexpected DE Misc interrupt:
> 0x%08x\n", iir);
>  }
>=20
> -static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_=
priv,
> +static void gen11_dsi_te_interrupt_handler(struct intel_display *display=
,
>  					   u32 te_trigger)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe pipe =3D INVALID_PIPE;
>  	enum transcoder dsi_trans;
>  	enum port port;
> @@ -1278,7 +1256,7 @@ static void gen11_dsi_te_interrupt_handler(struct
> drm_i915_private *dev_priv,
>  	 * Incase of dual link, TE comes from DSI_1
>  	 * this is to check if dual link is enabled
>  	 */
> -	val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(dev_priv,
> TRANSCODER_DSI_0));
> +	val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(display,
> TRANSCODER_DSI_0));
>  	val &=3D PORT_SYNC_MODE_ENABLE;
>=20
>  	/*
> @@ -1294,12 +1272,12 @@ static void gen11_dsi_te_interrupt_handler(struct
> drm_i915_private *dev_priv,
>  	val =3D val & OP_MODE_MASK;
>=20
>  	if (val !=3D CMD_MODE_NO_GATE && val !=3D CMD_MODE_TE_GATE) {
> -		drm_err(&dev_priv->drm, "DSI trancoder not configured in
> command mode\n");
> +		drm_err(display->drm, "DSI trancoder not configured in
> command mode\n");
>  		return;
>  	}
>=20
>  	/* Get PIPE for handling VBLANK event */
> -	val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans))=
;
> +	val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL(display, dsi_trans));
>  	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
>  	case TRANS_DDI_EDP_INPUT_A_ON:
>  		pipe =3D PIPE_A;
> @@ -1311,28 +1289,28 @@ static void gen11_dsi_te_interrupt_handler(struct
> drm_i915_private *dev_priv,
>  		pipe =3D PIPE_C;
>  		break;
>  	default:
> -		drm_err(&dev_priv->drm, "Invalid PIPE\n");
> +		drm_err(display->drm, "Invalid PIPE\n");
>  		return;
>  	}
>=20
> -	intel_handle_vblank(dev_priv, pipe);
> +	intel_handle_vblank(display, pipe);
>=20
>  	/* clear TE in dsi IIR */
>  	port =3D (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
>  	intel_de_rmw(display, DSI_INTR_IDENT_REG(port), 0, 0);
>  }
>=20
> -static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
> +static u32 gen8_de_pipe_flip_done_mask(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(i915) >=3D 9)
> +	if (DISPLAY_VER(display) >=3D 9)
>  		return GEN9_PIPE_PLANE1_FLIP_DONE;
>  	else
>  		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>  }
>=20
> -static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u3=
2
> *pch_iir, u32 *pica_iir)
> +static void gen8_read_and_ack_pch_irqs(struct intel_display *display, u3=
2
> *pch_iir, u32 *pica_iir)
>  {
> -	struct intel_display *display =3D &i915->display;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 pica_ier =3D 0;
>=20
>  	*pica_iir =3D 0;
> @@ -1346,7 +1324,7 @@ static void gen8_read_and_ack_pch_irqs(struct
> drm_i915_private *i915, u32 *pch_i
>  	 * their flags both in the PICA and SDE IIR.
>  	 */
>  	if (*pch_iir & SDE_PICAINTERRUPT) {
> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) <
> PCH_MTL);
> +		drm_WARN_ON(display->drm, INTEL_PCH_TYPE(i915) <
> PCH_MTL);
>=20
>  		pica_ier =3D intel_de_rmw(display, PICAINTERRUPT_IER, ~0, 0);
>  		*pica_iir =3D intel_de_read(display, PICAINTERRUPT_IIR);
> @@ -1365,26 +1343,26 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  	u32 iir;
>  	enum pipe pipe;
>=20
> -	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +	drm_WARN_ON_ONCE(display->drm, !HAS_DISPLAY(display));
>=20
>  	if (master_ctl & GEN8_DE_MISC_IRQ) {
>  		iir =3D intel_de_read(display, GEN8_DE_MISC_IIR);
>  		if (iir) {
>  			intel_de_write(display, GEN8_DE_MISC_IIR, iir);
> -			gen8_de_misc_irq_handler(dev_priv, iir);
> +			gen8_de_misc_irq_handler(display, iir);
>  		} else {
> -			drm_err_ratelimited(&dev_priv->drm,
> +			drm_err_ratelimited(display->drm,
>  					    "The master control interrupt lied (DE
> MISC)!\n");
>  		}
>  	}
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11 && (master_ctl &
> GEN11_DE_HPD_IRQ)) {
> +	if (DISPLAY_VER(display) >=3D 11 && (master_ctl & GEN11_DE_HPD_IRQ)) {
>  		iir =3D intel_de_read(display, GEN11_DE_HPD_IIR);
>  		if (iir) {
>  			intel_de_write(display, GEN11_DE_HPD_IIR, iir);
>  			gen11_hpd_irq_handler(display, iir);
>  		} else {
> -			drm_err_ratelimited(&dev_priv->drm,
> +			drm_err_ratelimited(display->drm,
>  					    "The master control interrupt lied,
> (DE HPD)!\n");
>  		}
>  	}
> @@ -1396,19 +1374,19 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>=20
>  			intel_de_write(display, GEN8_DE_PORT_IIR, iir);
>=20
> -			if (iir & gen8_de_port_aux_mask(dev_priv)) {
> +			if (iir & gen8_de_port_aux_mask(display)) {
>  				intel_dp_aux_irq_handler(display);
>  				found =3D true;
>  			}
>=20
> -			if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> {
> +			if (display->platform.geminilake || display-
> >platform.broxton) {
>  				u32 hotplug_trigger =3D iir &
> BXT_DE_PORT_HOTPLUG_MASK;
>=20
>  				if (hotplug_trigger) {
>  					bxt_hpd_irq_handler(display,
> hotplug_trigger);
>  					found =3D true;
>  				}
> -			} else if (IS_BROADWELL(dev_priv)) {
> +			} else if (display->platform.broadwell) {
>  				u32 hotplug_trigger =3D iir &
> BDW_DE_PORT_HOTPLUG_MASK;
>=20
>  				if (hotplug_trigger) {
> @@ -1417,31 +1395,31 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  				}
>  			}
>=20
> -			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> &&
> +			if ((display->platform.geminilake || display-
> >platform.broxton) &&
>  			    (iir & BXT_DE_PORT_GMBUS)) {
>  				intel_gmbus_irq_handler(display);
>  				found =3D true;
>  			}
>=20
> -			if (DISPLAY_VER(dev_priv) >=3D 11) {
> +			if (DISPLAY_VER(display) >=3D 11) {
>  				u32 te_trigger =3D iir & (DSI0_TE | DSI1_TE);
>=20
>  				if (te_trigger) {
> -
> 	gen11_dsi_te_interrupt_handler(dev_priv, te_trigger);
> +
> 	gen11_dsi_te_interrupt_handler(display, te_trigger);
>  					found =3D true;
>  				}
>  			}
>=20
>  			if (!found)
> -				drm_err_ratelimited(&dev_priv->drm,
> +				drm_err_ratelimited(display->drm,
>  						    "Unexpected DE Port
> interrupt\n");
>  		} else {
> -			drm_err_ratelimited(&dev_priv->drm,
> +			drm_err_ratelimited(display->drm,
>  					    "The master control interrupt lied (DE
> PORT)!\n");
>  		}
>  	}
>=20
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(display, pipe) {
>  		u32 fault_errors;
>=20
>  		if (!(master_ctl & GEN8_DE_PIPE_IRQ(pipe)))
> @@ -1449,7 +1427,7 @@ void gen8_de_irq_handler(struct intel_display *disp=
lay,
> u32 master_ctl)
>=20
>  		iir =3D intel_de_read(display, GEN8_DE_PIPE_IIR(pipe));
>  		if (!iir) {
> -			drm_err_ratelimited(&dev_priv->drm,
> +			drm_err_ratelimited(display->drm,
>  					    "The master control interrupt lied (DE
> PIPE)!\n");
>  			continue;
>  		}
> @@ -1457,29 +1435,29 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  		intel_de_write(display, GEN8_DE_PIPE_IIR(pipe), iir);
>=20
>  		if (iir & GEN8_PIPE_VBLANK)
> -			intel_handle_vblank(dev_priv, pipe);
> +			intel_handle_vblank(display, pipe);
>=20
> -		if (iir & gen8_de_pipe_flip_done_mask(dev_priv))
> -			flip_done_handler(dev_priv, pipe);
> +		if (iir & gen8_de_pipe_flip_done_mask(display))
> +			flip_done_handler(display, pipe);
>=20
> -		if (HAS_DSB(dev_priv)) {
> +		if (HAS_DSB(display)) {
>  			if (iir & GEN12_DSB_INT(INTEL_DSB_0))
> -				intel_dsb_irq_handler(&dev_priv->display, pipe,
> INTEL_DSB_0);
> +				intel_dsb_irq_handler(display, pipe,
> INTEL_DSB_0);
>=20
>  			if (iir & GEN12_DSB_INT(INTEL_DSB_1))
> -				intel_dsb_irq_handler(&dev_priv->display, pipe,
> INTEL_DSB_1);
> +				intel_dsb_irq_handler(display, pipe,
> INTEL_DSB_1);
>=20
>  			if (iir & GEN12_DSB_INT(INTEL_DSB_2))
> -				intel_dsb_irq_handler(&dev_priv->display, pipe,
> INTEL_DSB_2);
> +				intel_dsb_irq_handler(display, pipe,
> INTEL_DSB_2);
>  		}
>=20
>  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
> -			hsw_pipe_crc_irq_handler(dev_priv, pipe);
> +			hsw_pipe_crc_irq_handler(display, pipe);
>=20
>  		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>  			intel_cpu_fifo_underrun_irq_handler(display, pipe);
>=20
> -		fault_errors =3D iir & gen8_de_pipe_fault_mask(dev_priv);
> +		fault_errors =3D iir & gen8_de_pipe_fault_mask(display);
>  		if (fault_errors)
>  			intel_pipe_fault_irq_handler(display,
>=20
> gen8_pipe_fault_handlers(display),
> @@ -1495,7 +1473,7 @@ void gen8_de_irq_handler(struct intel_display *disp=
lay,
> u32 master_ctl)
>  		 * scheme also closed the SDE interrupt handling race we've
> seen
>  		 * on older pch-split platforms. But this needs testing.
>  		 */
> -		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
> +		gen8_read_and_ack_pch_irqs(display, &iir, &pica_iir);
>  		if (iir) {
>  			if (pica_iir)
>  				xelpdp_pica_irq_handler(display, pica_iir);
> @@ -1505,13 +1483,13 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  			else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
>  				spt_irq_handler(display, iir);
>  			else
> -				cpt_irq_handler(dev_priv, iir);
> +				cpt_irq_handler(display, iir);
>  		} else {
>  			/*
>  			 * Like on previous PCH there seems to be something
>  			 * fishy going on with forwarding PCH interrupts.
>  			 */
> -			drm_dbg(&dev_priv->drm,
> +			drm_dbg(display->drm,
>  				"The master control interrupt lied (SDE)!\n");
>  		}
>  	}
> @@ -1556,10 +1534,9 @@ void gen11_display_irq_handler(struct intel_displa=
y
> *display)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  }
>=20
> -static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
> +static void i915gm_irq_cstate_wa_enable(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> -	lockdep_assert_held(&i915->drm.vblank_time_lock);
> +	lockdep_assert_held(&display->drm->vblank_time_lock);
>=20
>  	/*
>  	 * Vblank/CRC interrupts fail to wake the device up from C2+.
> @@ -1567,33 +1544,30 @@ static void i915gm_irq_cstate_wa_enable(struct
> drm_i915_private *i915)
>  	 * the problem. There is a small power cost so we do this
>  	 * only when vblank/CRC interrupts are actually enabled.
>  	 */
> -	if (i915->display.irq.vblank_enabled++ =3D=3D 0)
> +	if (display->irq.vblank_enabled++ =3D=3D 0)
>  		intel_de_write(display, SCPD0,
>=20
> _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
>  }
>=20
> -static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
> +static void i915gm_irq_cstate_wa_disable(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> -	lockdep_assert_held(&i915->drm.vblank_time_lock);
> +	lockdep_assert_held(&display->drm->vblank_time_lock);
>=20
> -	if (--i915->display.irq.vblank_enabled =3D=3D 0)
> +	if (--display->irq.vblank_enabled =3D=3D 0)
>  		intel_de_write(display, SCPD0,
>=20
> _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
>  }
>=20
>  void i915gm_irq_cstate_wa(struct intel_display *display, bool enable)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	spin_lock_irq(&i915->drm.vblank_time_lock);
> +	spin_lock_irq(&display->drm->vblank_time_lock);
>=20
>  	if (enable)
> -		i915gm_irq_cstate_wa_enable(i915);
> +		i915gm_irq_cstate_wa_enable(display);
>  	else
> -		i915gm_irq_cstate_wa_disable(i915);
> +		i915gm_irq_cstate_wa_disable(display);
>=20
> -	spin_unlock_irq(&i915->drm.vblank_time_lock);
> +	spin_unlock_irq(&display->drm->vblank_time_lock);
>  }
>=20
>  int i8xx_enable_vblank(struct drm_crtc *crtc)
> @@ -1624,20 +1598,20 @@ void i8xx_disable_vblank(struct drm_crtc *crtc)
>=20
>  int i915gm_enable_vblank(struct drm_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>=20
> -	i915gm_irq_cstate_wa_enable(i915);
> +	i915gm_irq_cstate_wa_enable(display);
>=20
>  	return i8xx_enable_vblank(crtc);
>  }
>=20
>  void i915gm_disable_vblank(struct drm_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>=20
>  	i8xx_disable_vblank(crtc);
>=20
> -	i915gm_irq_cstate_wa_disable(i915);
> +	i915gm_irq_cstate_wa_disable(display);
>  }
>=20
>  int i965_enable_vblank(struct drm_crtc *crtc)
> @@ -1674,7 +1648,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
> -	u32 bit =3D DISPLAY_VER(dev_priv) >=3D 7 ?
> +	u32 bit =3D DISPLAY_VER(display) >=3D 7 ?
>  		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> @@ -1684,7 +1658,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
>  	/* Even though there is no DMC, frame counter can get stuck when
>  	 * PSR is active as no frames are generated.
>  	 */
> -	if (HAS_PSR(dev_priv))
> +	if (HAS_PSR(display))
>  		drm_crtc_vblank_restore(crtc);
>=20
>  	return 0;
> @@ -1696,7 +1670,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
> -	u32 bit =3D DISPLAY_VER(dev_priv) >=3D 7 ?
> +	u32 bit =3D DISPLAY_VER(display) >=3D 7 ?
>  		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> @@ -1764,7 +1738,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  	/* Even if there is no DMC, frame counter can get stuck when
>  	 * PSR is active as no frames are generated, so check only for PSR.
>  	 */
> -	if (HAS_PSR(dev_priv))
> +	if (HAS_PSR(display))
>  		drm_crtc_vblank_restore(&crtc->base);
>=20
>  	return 0;
> @@ -1897,11 +1871,11 @@ void vlv_display_error_irq_handler(struct
> intel_display *display,
>  		vlv_page_table_error_irq_handler(display, dpinvgtt);
>  }
>=20
> -static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> +static void _vlv_display_irq_reset(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
> -	if (IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.cherryview)
>  		intel_de_write(display, DPINVGTT,
> DPINVGTT_STATUS_MASK_CHV);
>  	else
>  		intel_de_write(display, DPINVGTT,
> DPINVGTT_STATUS_MASK_VLV);
> @@ -1910,9 +1884,9 @@ static void _vlv_display_irq_reset(struct
> drm_i915_private *dev_priv)
>  			 VLV_ERROR_REGS);
>=20
>  	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
> -	intel_de_rmw(display, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
> +	intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
>=20
> -	i9xx_pipestat_irq_reset(dev_priv);
> +	i9xx_pipestat_irq_reset(display);
>=20
>  	intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
>  	dev_priv->irq_mask =3D ~0u;
> @@ -1920,22 +1894,18 @@ static void _vlv_display_irq_reset(struct
> drm_i915_private *dev_priv)
>=20
>  void vlv_display_irq_reset(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
> -	if (dev_priv->display.irq.vlv_display_irqs_enabled)
> -		_vlv_display_irq_reset(dev_priv);
> +	if (display->irq.vlv_display_irqs_enabled)
> +		_vlv_display_irq_reset(display);
>  }
>=20
>  void i9xx_display_irq_reset(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	if (I915_HAS_HOTPLUG(i915)) {
> +	if (I915_HAS_HOTPLUG(display)) {
>  		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
> -		intel_de_rmw(display, PORT_HOTPLUG_STAT(i915), 0, 0);
> +		intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
>  	}
>=20
> -	i9xx_pipestat_irq_reset(i915);
> +	i9xx_pipestat_irq_reset(display);
>  }
>=20
>  static u32 vlv_error_mask(void)
> @@ -1951,10 +1921,10 @@ void vlv_display_irq_postinstall(struct intel_dis=
play
> *display)
>  	u32 enable_mask;
>  	enum pipe pipe;
>=20
> -	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
> +	if (!display->irq.vlv_display_irqs_enabled)
>  		return;
>=20
> -	if (IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.cherryview)
>  		intel_de_write(display, DPINVGTT,
>  			       DPINVGTT_STATUS_MASK_CHV |
>  			       DPINVGTT_EN_MASK_CHV);
> @@ -1969,7 +1939,7 @@ void vlv_display_irq_postinstall(struct intel_displ=
ay
> *display)
>  	pipestat_mask =3D PIPE_CRC_DONE_INTERRUPT_STATUS;
>=20
>  	i915_enable_pipestat(display, PIPE_A,
> PIPE_GMBUS_INTERRUPT_STATUS);
> -	for_each_pipe(dev_priv, pipe)
> +	for_each_pipe(display, pipe)
>  		i915_enable_pipestat(display, pipe, pipestat_mask);
>=20
>  	enable_mask =3D I915_DISPLAY_PORT_INTERRUPT |
> @@ -1979,11 +1949,11 @@ void vlv_display_irq_postinstall(struct intel_dis=
play
> *display)
>  		I915_LPE_PIPE_B_INTERRUPT |
>  		I915_MASTER_ERROR_INTERRUPT;
>=20
> -	if (IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.cherryview)
>  		enable_mask |=3D I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
>  			I915_LPE_PIPE_C_INTERRUPT;
>=20
> -	drm_WARN_ON(&dev_priv->drm, dev_priv->irq_mask !=3D ~0u);
> +	drm_WARN_ON(display->drm, dev_priv->irq_mask !=3D ~0u);
>=20
>  	dev_priv->irq_mask =3D ~enable_mask;
>=20
> @@ -1992,16 +1962,15 @@ void vlv_display_irq_postinstall(struct intel_dis=
play
> *display)
>=20
>  void gen8_display_irq_reset(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
>  	intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
>  	intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
>=20
> -	for_each_pipe(dev_priv, pipe)
> +	for_each_pipe(display, pipe)
>  		if (intel_display_power_is_enabled(display,
>=20
> POWER_DOMAIN_PIPE(pipe)))
>  			intel_display_irq_regs_reset(display,
> GEN8_DE_PIPE_IRQ_REGS(pipe));
> @@ -2017,15 +1986,15 @@ void gen11_display_irq_reset(struct intel_display
> *display)
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +	if (DISPLAY_VER(display) >=3D 12) {
>  		enum transcoder trans;
>=20
> -		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
> +		for_each_cpu_transcoder_masked(display, trans, trans_mask) {
>  			enum intel_display_power_domain domain;
>=20
>  			domain =3D POWER_DOMAIN_TRANSCODER(trans);
> @@ -2033,10 +2002,10 @@ void gen11_display_irq_reset(struct intel_display
> *display)
>  				continue;
>=20
>  			intel_de_write(display,
> -				       TRANS_PSR_IMR(dev_priv, trans),
> +				       TRANS_PSR_IMR(display, trans),
>  				       0xffffffff);
>  			intel_de_write(display,
> -				       TRANS_PSR_IIR(dev_priv, trans),
> +				       TRANS_PSR_IIR(display, trans),
>  				       0xffffffff);
>  		}
>  	} else {
> @@ -2044,7 +2013,7 @@ void gen11_display_irq_reset(struct intel_display
> *display)
>  		intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
>  	}
>=20
> -	for_each_pipe(dev_priv, pipe)
> +	for_each_pipe(display, pipe)
>  		if (intel_display_power_is_enabled(display,
>=20
> POWER_DOMAIN_PIPE(pipe)))
>  			intel_display_irq_regs_reset(display,
> GEN8_DE_PIPE_IRQ_REGS(pipe));
> @@ -2052,7 +2021,7 @@ void gen11_display_irq_reset(struct intel_display
> *display)
>  	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>  	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> +	if (DISPLAY_VER(display) >=3D 14)
>  		intel_display_irq_regs_reset(display,
> PICAINTERRUPT_IRQ_REGS);
>  	else
>  		intel_display_irq_regs_reset(display,
> GEN11_DE_HPD_IRQ_REGS);
> @@ -2066,7 +2035,7 @@ void gen8_irq_power_well_post_enable(struct
> intel_display *display,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 extra_ier =3D GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> -		gen8_de_pipe_flip_done_mask(dev_priv);
> +		gen8_de_pipe_flip_done_mask(display);
>  	enum pipe pipe;
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> @@ -2076,10 +2045,10 @@ void gen8_irq_power_well_post_enable(struct
> intel_display *display,
>  		return;
>  	}
>=20
> -	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> +	for_each_pipe_masked(display, pipe, pipe_mask)
>  		intel_display_irq_regs_init(display,
> GEN8_DE_PIPE_IRQ_REGS(pipe),
> -					    dev_priv-
> >display.irq.de_irq_mask[pipe],
> -					    ~dev_priv-
> >display.irq.de_irq_mask[pipe] | extra_ier);
> +					    display->irq.de_irq_mask[pipe],
> +					    ~display->irq.de_irq_mask[pipe] |
> extra_ier);
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
> @@ -2097,7 +2066,7 @@ void gen8_irq_power_well_pre_disable(struct
> intel_display *display,
>  		return;
>  	}
>=20
> -	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> +	for_each_pipe_masked(display, pipe, pipe_mask)
>  		intel_display_irq_regs_reset(display,
> GEN8_DE_PIPE_IRQ_REGS(pipe));
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
> @@ -2117,9 +2086,9 @@ void gen8_irq_power_well_pre_disable(struct
> intel_display *display,
>   * to avoid races with the irq handler, assuming we have MSI. Shared leg=
acy
>   * interrupts could still race.
>   */
> -static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
> +static void ibx_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 mask;
>=20
>  	if (HAS_PCH_NOP(dev_priv))
> @@ -2141,13 +2110,13 @@ void valleyview_enable_display_irqs(struct
> intel_display *display)
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
> -	if (dev_priv->display.irq.vlv_display_irqs_enabled)
> +	if (display->irq.vlv_display_irqs_enabled)
>  		return;
>=20
> -	dev_priv->display.irq.vlv_display_irqs_enabled =3D true;
> +	display->irq.vlv_display_irqs_enabled =3D true;
>=20
>  	if (intel_irqs_enabled(dev_priv)) {
> -		_vlv_display_irq_reset(dev_priv);
> +		_vlv_display_irq_reset(display);
>  		vlv_display_irq_postinstall(display);
>  	}
>  }
> @@ -2158,13 +2127,13 @@ void valleyview_disable_display_irqs(struct
> intel_display *display)
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
> -	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
> +	if (!display->irq.vlv_display_irqs_enabled)
>  		return;
>=20
> -	dev_priv->display.irq.vlv_display_irqs_enabled =3D false;
> +	display->irq.vlv_display_irqs_enabled =3D false;
>=20
>  	if (intel_irqs_enabled(dev_priv))
> -		_vlv_display_irq_reset(dev_priv);
> +		_vlv_display_irq_reset(display);
>  }
>=20
>  void ilk_de_irq_postinstall(struct intel_display *display)
> @@ -2173,7 +2142,7 @@ void ilk_de_irq_postinstall(struct intel_display
> *display)
>=20
>  	u32 display_mask, extra_mask;
>=20
> -	if (DISPLAY_VER(i915) >=3D 7) {
> +	if (DISPLAY_VER(display) >=3D 7) {
>  		display_mask =3D (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
>  				DE_PCH_EVENT_IVB |
> DE_AUX_CHANNEL_A_IVB);
>  		extra_mask =3D (DE_PIPEC_VBLANK_IVB |
> DE_PIPEB_VBLANK_IVB |
> @@ -2194,59 +2163,59 @@ void ilk_de_irq_postinstall(struct intel_display
> *display)
>  			      DE_DP_A_HOTPLUG);
>  	}
>=20
> -	if (IS_HASWELL(i915)) {
> +	if (display->platform.haswell) {
>  		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
>  		display_mask |=3D DE_EDP_PSR_INT_HSW;
>  	}
>=20
> -	if (IS_IRONLAKE_M(i915))
> +	if (display->platform.ironlake && display->platform.mobile)
>  		extra_mask |=3D DE_PCU_EVENT;
>=20
>  	i915->irq_mask =3D ~display_mask;
>=20
> -	ibx_irq_postinstall(i915);
> +	ibx_irq_postinstall(display);
>=20
>  	intel_display_irq_regs_init(display, DE_IRQ_REGS, i915->irq_mask,
>  				    display_mask | extra_mask);
>  }
>=20
> -static void mtp_irq_postinstall(struct drm_i915_private *i915);
> -static void icp_irq_postinstall(struct drm_i915_private *i915);
> +static void mtp_irq_postinstall(struct intel_display *display);
> +static void icp_irq_postinstall(struct intel_display *display);
>=20
>  void gen8_de_irq_postinstall(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
> -	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
> +	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(display) |
>  		GEN8_PIPE_CDCLK_CRC_DONE;
>  	u32 de_pipe_enables;
> -	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
> +	u32 de_port_masked =3D gen8_de_port_aux_mask(display);
>  	u32 de_port_enables;
>  	u32 de_misc_masked =3D GEN8_DE_EDP_PSR;
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  	enum pipe pipe;
>=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> -		mtp_irq_postinstall(dev_priv);
> +	if (DISPLAY_VER(display) >=3D 14)
> +		mtp_irq_postinstall(display);
>  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> -		icp_irq_postinstall(dev_priv);
> +		icp_irq_postinstall(display);
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -		ibx_irq_postinstall(dev_priv);
> +		ibx_irq_postinstall(display);
>=20
> -	if (DISPLAY_VER(dev_priv) < 11)
> +	if (DISPLAY_VER(display) < 11)
>  		de_misc_masked |=3D GEN8_DE_MISC_GSE;
>=20
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	if (display->platform.geminilake || display->platform.broxton)
>  		de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +	if (DISPLAY_VER(display) >=3D 14) {
>  		de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>  				  XELPDP_PMDEMAND_RSP |
> XELPDP_RM_TIMEOUT;
> -	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> +	} else if (DISPLAY_VER(display) >=3D 11) {
>  		enum port port;
>=20
>  		if (intel_bios_is_dsi_present(display, &port))
> @@ -2256,25 +2225,25 @@ void gen8_de_irq_postinstall(struct intel_display
> *display)
>  	if (HAS_DBUF_OVERLAP_DETECTION(display))
>  		de_misc_masked |=3D XE2LPD_DBUF_OVERLAP_DETECTED;
>=20
> -	if (HAS_DSB(dev_priv))
> +	if (HAS_DSB(display))
>  		de_pipe_masked |=3D GEN12_DSB_INT(INTEL_DSB_0) |
>  			GEN12_DSB_INT(INTEL_DSB_1) |
>  			GEN12_DSB_INT(INTEL_DSB_2);
>=20
>  	de_pipe_enables =3D de_pipe_masked |
>  		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> -		gen8_de_pipe_flip_done_mask(dev_priv);
> +		gen8_de_pipe_flip_done_mask(display);
>=20
>  	de_port_enables =3D de_port_masked;
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	if (display->platform.geminilake || display->platform.broxton)
>  		de_port_enables |=3D BXT_DE_PORT_HOTPLUG_MASK;
> -	else if (IS_BROADWELL(dev_priv))
> +	else if (display->platform.broadwell)
>  		de_port_enables |=3D BDW_DE_PORT_HOTPLUG_MASK;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +	if (DISPLAY_VER(display) >=3D 12) {
>  		enum transcoder trans;
>=20
> -		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
> +		for_each_cpu_transcoder_masked(display, trans, trans_mask) {
>  			enum intel_display_power_domain domain;
>=20
>  			domain =3D POWER_DOMAIN_TRANSCODER(trans);
> @@ -2282,19 +2251,19 @@ void gen8_de_irq_postinstall(struct intel_display
> *display)
>  				continue;
>=20
>  			intel_display_irq_regs_assert_irr_is_zero(display,
> -
> TRANS_PSR_IIR(dev_priv, trans));
> +
> TRANS_PSR_IIR(display, trans));
>  		}
>  	} else {
>  		intel_display_irq_regs_assert_irr_is_zero(display, EDP_PSR_IIR);
>  	}
>=20
> -	for_each_pipe(dev_priv, pipe) {
> -		dev_priv->display.irq.de_irq_mask[pipe] =3D ~de_pipe_masked;
> +	for_each_pipe(display, pipe) {
> +		display->irq.de_irq_mask[pipe] =3D ~de_pipe_masked;
>=20
>  		if (intel_display_power_is_enabled(display,
>=20
> POWER_DOMAIN_PIPE(pipe)))
>  			intel_display_irq_regs_init(display,
> GEN8_DE_PIPE_IRQ_REGS(pipe),
> -						    dev_priv-
> >display.irq.de_irq_mask[pipe],
> +						    display-
> >irq.de_irq_mask[pipe],
>  						    de_pipe_enables);
>  	}
>=20
> @@ -2303,7 +2272,7 @@ void gen8_de_irq_postinstall(struct intel_display
> *display)
>  	intel_display_irq_regs_init(display, GEN8_DE_MISC_IRQ_REGS,
> ~de_misc_masked,
>  				    de_misc_masked);
>=20
> -	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
> +	if (IS_DISPLAY_VER(display, 11, 13)) {
>  		u32 de_hpd_masked =3D 0;
>  		u32 de_hpd_enables =3D GEN11_DE_TC_HOTPLUG_MASK |
>  				     GEN11_DE_TBT_HOTPLUG_MASK;
> @@ -2313,9 +2282,8 @@ void gen8_de_irq_postinstall(struct intel_display
> *display)
>  	}
>  }
>=20
> -static void mtp_irq_postinstall(struct drm_i915_private *i915)
> +static void mtp_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
>  	u32 sde_mask =3D SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
>  	u32 de_hpd_mask =3D XELPDP_AUX_TC_MASK;
>  	u32 de_hpd_enables =3D de_hpd_mask |
> XELPDP_DP_ALT_HOTPLUG_MASK |
> @@ -2327,9 +2295,8 @@ static void mtp_irq_postinstall(struct
> drm_i915_private *i915)
>  	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~sde_mask, 0xfffffff=
f);
>  }
>=20
> -static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
> +static void icp_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 mask =3D SDE_GMBUS_ICP;
>=20
>  	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
> --
> 2.39.5

