Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AD39EEE29
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 16:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8389610E178;
	Thu, 12 Dec 2024 15:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQ1z76N+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A8D10E178;
 Thu, 12 Dec 2024 15:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734018884; x=1765554884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R8J4/Q0P5FIO71+nJNu85FroT3oi+JUzLp8AUeD2v5g=;
 b=TQ1z76N+qMjGB1yEwF5I1Wq+NyY4alDIo0Z3icODuGcADWhsDYPT7Mnr
 Af16bl0Q2TMKsc58+r/iBQIo7+EnoFVVMK40PkKnAwSef+BU0/86kfkU4
 kjnNqRbcL47cKjqCKfHXXhmXO69x1aMIOcAoWfknu+7I1QoZby5/zPEpx
 slMdiaKodTFiWidQaIfsz1nEewla076unWhSemkxrEPINITNx0X1s+0e+
 hbcf/JXnJleQGjnxhgJyNoJZ32FAC0OMKshNTApTlCAjqJG3xRjip2gSZ
 9MThkLp7jg36CG0qlVZk8folhWkwnKsob679bWfpGYQlueXCqYFDycVct A==;
X-CSE-ConnectionGUID: nxyG+90uT92WLp2SEEOIHg==
X-CSE-MsgGUID: yR9gjCyOS16UxqgvkF+eXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34582400"
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="34582400"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 07:54:44 -0800
X-CSE-ConnectionGUID: fC9dFVlnRwCIGryjxi+I9g==
X-CSE-MsgGUID: bN23jt4fQvCIT6LJs+ca1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="96669955"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 07:54:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 07:54:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 07:54:42 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 07:54:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QLA9IwNVOhnKMbO6wg83WY/j4RLvjW6dWjb46IuATpqSZB8YQykU5f5rLGQgIjZAHXf1J5JUdhjKz9OyPUlfn8Pdvxr83tPGdi98LAbBbIXz4OEn8EWS/2C/nHJFamwvzph46HIAc0ANdToobPlyqglbGLiRo2Se1d4rU9V5sB6cHfSldrRjLGz6cn2lzpfFt9q3s49+W8k7fRSTJcWRSGEUNz2OPB6AjtBVa3ErOPtIlQt0NWEOaEWRQHdv8X5hCLIa2KqqyL7BoPdUnVtfLZ3l/GBvIJ6+cMPcCQmJ/4fu3WRReySwxsnuefGHZdFXHeFXWiqbFxT8ucmYIwET0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4utO4algJ25zzxpqmx9nZBTkWIVNfmGavgOWMR/88lw=;
 b=NbxlX7qIO9Qu5IhKzzKjjeBmigUZEgCH8EpmUfxsEH1ZyCbVCWsC7C/bLJu1/7E9rNtlHgcrjmaLUXMU2bVbH/5NB318pVYSWhKOj5Z8F7aEKkgUYkc5ABLwexOwYb/l9DjamEi6nBk3s2FePjR+bzSGbRLJJLc2LkLDcnsq6/umdRNP+n3DPC2ZvfayXu2jk8Spfkza+L6vIHCkPPc9gGYVg5Ix9NEQCxpZwV0uQjGl5j5nwsJN9t9Ooe2JmZ5T4y8MloXSTsSz3/DGt4jVNJmT3jSk3Wfb2DdS6mA9NBwF0/jKYvwwjB9DeCgD31oTdUzFD5r7KOpuTj/RGZ2/Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Thu, 12 Dec
 2024 15:54:33 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 15:54:33 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute stage
Thread-Topic: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute
 stage
Thread-Index: AQHbTKKtbw2ObtBqiE2b1eX8U+Blg7LiwuMQ
Date: Thu, 12 Dec 2024 15:54:33 +0000
Message-ID: <CH0PR11MB5444C7899815F0C16DBB8829E53F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-3-nemesa.garg@intel.com>
In-Reply-To: <20241212143329.938202-3-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ2PR11MB8369:EE_
x-ms-office365-filtering-correlation-id: c6cfeb91-4996-4655-ed83-08dd1ac545be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?bOz870spmgR3v+PcG0dygVWfcza65X9zeGIaDt15jZ8/DCz89HmDhCFtHNxc?=
 =?us-ascii?Q?MnMreUfm6aa5VTZg851E+FWxylNqwb7FwyLdBd5A3qMHU9xBnpp/kqDE79bq?=
 =?us-ascii?Q?qc7hoFpNr2momtA2UsMyA+WGB3yBNL7Bpt7oiY8+q1GnuL8nXp0Q3tRb2/5i?=
 =?us-ascii?Q?iIAJwZ+ApVCdWvXt24Z6iBRDwphxshP3KudIdwIK0QWv1aFlSYKxUWBzuYHv?=
 =?us-ascii?Q?exBXdhFyOFPtcX+IJ5RrsbxrG+t1g3Bs28aXiODfnYoC+xMZD80dhZrUrGtH?=
 =?us-ascii?Q?wyoy1Fn2vSrcZHeHuCQNOUm1Jb84pJqt22NVYuKQTGEoPWmRgU/wCyevd2aN?=
 =?us-ascii?Q?x3s9mwgHeIY8tQfmT6s66goadEfm3/gQflPbVO4pL6gHvooVH54yUrxoPU8i?=
 =?us-ascii?Q?2ffErQBbrV5DOrP+1Afy42e6Xpo+ZBrMQhtgl6+WZuHGLxSUgttQtXO00vuq?=
 =?us-ascii?Q?wtgZjW/TVHPx903jyUWfM+dRnTfH28oIo5cZng6eCE+UF3UpQaCQQF2hmv0Z?=
 =?us-ascii?Q?r4xdgfdIVuAf3sTVT4zCmyOYi+Ka7FG0JU+BiaV72XesqJ+f1HBGoK83yNrw?=
 =?us-ascii?Q?NNcTzKgDiNhqd1kkFsENuTlmlW+5jPCeC/mgj9N/rBBqiokhZcCPM0tRRtvk?=
 =?us-ascii?Q?mlWNageKYovaR6G+5gKhb59030yKf98XDcNWG9M/tcp++T2WDPygrYRiMgn4?=
 =?us-ascii?Q?hZW2wZ640gR0+Kwi5GHQ+lKQbCkMk/JsT2HCE/1C3xhkhQ8bF6ioL4Ykf6HT?=
 =?us-ascii?Q?anLUgZ7Bob1zFUXrK4Mu2LqfAhaCpip6r83gD4vZbHY46JEJ6yU1zyiXJsUY?=
 =?us-ascii?Q?eDqsFnZGwUOl2O1SVsUsUGDJ3mcpBCkBBAtr3lFWoBJPvMFafkzNBIdHLZVo?=
 =?us-ascii?Q?4meJCyN357J++zgzgY7bxn2PwNe94xKC77HzF/Y0PZfYF7d6xxfKD8zkNqry?=
 =?us-ascii?Q?mdkSyMdKHudwFoi2L5+kqojeGI1+fpDMgKLqmjL1hcJBIZqvA3a4azReX1W3?=
 =?us-ascii?Q?G9PXj2QCHX3Ms/5qDyb04xNGMmy16wUZaRXrRe0hGZz2EbhhmNdDHvCU3wBI?=
 =?us-ascii?Q?kp3Q6znXcLgG+jVwyZcPP3/h8EXt1N9N+mJEzNKW5nt7o7UIYhDop0DFyXGV?=
 =?us-ascii?Q?/Sq7cj7+oYQbxTON+t2Rb/X4BcZx8UXbFJadqgArqdCtYRH6e1s/JXOlW4Ub?=
 =?us-ascii?Q?sI6EJ3qh5xJ38EoCd7lDcbI1e8H+28q3ZCSBMuq2cb0JSoC1EoSfeHKoMkzD?=
 =?us-ascii?Q?+budNSUJ/lkRar7ejODkO/MCo5wZr5d5iRo3qV5opQg0HtuVCAhFNtw8Ol0P?=
 =?us-ascii?Q?yZ+F6+jYMsP9J519F4UEvzPd3cL7Wauiv8jkhCKnE1ArT7eZqHEcqmMTGXn8?=
 =?us-ascii?Q?hoyIdEIOHvmbHZyE5Y1tp2KyQdpxUx2eni2g8Q8RnjOgVOySPg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?atuAYQR0xK/PttZzCQbKB2sCKAZTp3lORi+05ZTvdeutWw5Ksj1UYFgGGPMQ?=
 =?us-ascii?Q?cwmaawf11uESkr58yI1uIwC+JARvCh8VOz9QY9/Pd998DRQaQe14g6c7BabN?=
 =?us-ascii?Q?JdmnP1yBIRnVKf1mxweNt5tPM9PcEXSR2qN39zTmpAOIlG0brgIe/knna/6/?=
 =?us-ascii?Q?AEr1RkBktqYr7raw5ZV2UkaWi6w7Jb0/bp4ttudOA8he/J3DLrTbNwAunsDO?=
 =?us-ascii?Q?nci/I108KVk4/OdnlrO1U+KtS5qklnNU2q1qcNwSVdcYNmy3MFHBX/FCk7PE?=
 =?us-ascii?Q?u+TX1rVV0mjLee7vUICACL2Z8dGpRPMSVwh7opUTZsKVKQXttlPhQx378XQY?=
 =?us-ascii?Q?D6hfsJIKMhf/nBBhuFCLwy2oQxzLzwPdzdqHllvYUgoioICREOti5O99hn4M?=
 =?us-ascii?Q?g2KLcmhqrFAZxQsu3BJHku/0Tc4wInEGLZh0GbnpNPJYvApjAGjm82kk0vIm?=
 =?us-ascii?Q?IMQbvtOY6DSyZnn7QpQ0RsyQN2u8TcyUe4xt+926YWOqFc4h4IJ08rV+ZeB7?=
 =?us-ascii?Q?cKqiZMxSvrpKrLmkDE8CMdFDvOM1V5/wgLH1SJalXxc+gFyIUEIcJXI8QQVz?=
 =?us-ascii?Q?BkMigltt1jEzcrM34Q55A3bS2PSiJVNottqnGmKTfGpnzTOUFTbjUTKm0jdR?=
 =?us-ascii?Q?uU58V2rnbtU9YNiBsPXdsuD+mJFvsdSZAQZWs0VaX3MY3pr5UOQjG0giQ5+B?=
 =?us-ascii?Q?7KblCqvIg5vPztNQZK/aVSn1QvUnXsX9UaLEvAzsn/gD153gXdAkBvYJRBPp?=
 =?us-ascii?Q?lda9S8ga2GR/qVMYWNGQ9mvz8b6NyC9oNyLevpcOaqS6wqw3128YST68yqbB?=
 =?us-ascii?Q?l3zbBJxtp05fAOYwH+UrN4FKpKaCQPp/u3UuptPjgzg4cTByMHMsxmR23aNy?=
 =?us-ascii?Q?3VtT5YJcW5KBfUg4fCEoiNL7xQwFl8JLl/5NtStMbnULQnHyEkKPWJJNCFkL?=
 =?us-ascii?Q?puikjR6gvQtKh0MKPK5PNhzm04aHT6AUHGj4YIMUGzPXxOgMRx/k42CX8uvF?=
 =?us-ascii?Q?BFoYXaQfbfUhd9S64Ap/zQ63HvRYxFfT7siqlG108ufY3WwvETZPSo7pyiVv?=
 =?us-ascii?Q?YRcaVkhUE+LYmjcoMN8vaydS9b2T1LMX5cZAZKjHk1ovUirP66EPYgx7Cc/m?=
 =?us-ascii?Q?fQO+YKVUkqY1OXFO5nNRb3JgqhFdsuSYR8zYH6fuF8QzP0ZsmmqIhVXpn3us?=
 =?us-ascii?Q?qrJmG8E9zu3gNOV/P9hlL68JF0NC9FZMqkZmOF1vRZdm63prUkEhz09svoXi?=
 =?us-ascii?Q?g7zIh7RQYs4JD85aVc3TXFpHDuXa+lsiD0gWHSW+BSkbSz9M7YujV6ZbNYad?=
 =?us-ascii?Q?KeIns4yl91r8cKEK+cbe/k+UiEFPgFJrFH96gY3ZhLJr1tz/meGli2x0nMmu?=
 =?us-ascii?Q?+qvqCEolndNry2ckbGI83SoHgf/7bpOc6zDQnKNPkbs4mAvBg29TnjfZl+MV?=
 =?us-ascii?Q?dD40TXJQrVgjeJnaYGRTptAN/HqS1kDH993v1m1Q/G4EX7aV8iKu2A/iiHLY?=
 =?us-ascii?Q?4ZBcPdqXDrj41AixEcR80Utxo6AoK+i9iaEl7YLHekp0esmL3ZqkWd7E7Dv4?=
 =?us-ascii?Q?GFBHv2XwWxeyBzF9pTrWCDBcU0rQDjNHP5TzdJ2X?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6cfeb91-4996-4655-ed83-08dd1ac545be
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2024 15:54:33.6986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FiCLOYA8RBS9iWaKsNM4+RnAfIaGjY0bANBBc8M9v0oNizseozfjOEQJvcTawnFTtJNqNzRaJptqMGtcF4o31vJysadbn747KH9jatxp664=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8369
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Nemesa=
 Garg
Sent: Thursday, December 12, 2024 6:33 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Garg, Nemesa <nemesa.garg@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute stage
>=20
> Add early pipe src initialization for gmch and later
> initialize the pipe src during compute_pipe_src.
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7be2ea11b8b0..50693b6ca58c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2534,6 +2534,13 @@ static int intel_crtc_compute_pipe_src(struct inte=
l_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	int pipe_src_w, pipe_src_h;
> +
> +	drm_mode_get_hv_timing(&crtc_state->hw.mode,
> +			       &pipe_src_w, &pipe_src_h);
> +
> +	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> +		      pipe_src_w, pipe_src_h);
> =20
>  	intel_joiner_compute_pipe_src(crtc_state);
> =20
> @@ -5016,10 +5023,12 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  	 * computation to clearly distinguish it from the adjusted mode, which
>  	 * can be changed by the connectors in the below retry loop.
>  	 */
> -	drm_mode_get_hv_timing(&crtc_state->hw.mode,
> -			       &pipe_src_w, &pipe_src_h);
> -	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> -		      pipe_src_w, pipe_src_h);
> +	if (HAS_GMCH(i915)) {
> +		drm_mode_get_hv_timing(&crtc_state->hw.mode,
> +				       &pipe_src_w, &pipe_src_h);
> +		drm_rect_init(&crtc_state->pipe_src, 0, 0,
> +			      pipe_src_w, pipe_src_h);
> +	}
> =20
>  	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
>  		struct intel_encoder *encoder =3D
> --=20
> 2.25.1
>=20
>=20
