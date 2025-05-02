Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A1BAA6DAC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A4D610E8C0;
	Fri,  2 May 2025 09:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQqdoc9R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DDC10E8C9;
 Fri,  2 May 2025 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176913; x=1777712913;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OT7b220nEvgtdE8XNnJ+Ek52xN/VPwQQx9hw4S4dz0o=;
 b=RQqdoc9RAj7vmeNA9AOToxIrdvFDxcg9xyjNR3LH6YgozvPaZF9OZKiO
 orr5Cg00b8l5Yk8hiW2h1axpbj9OFnDaYup4MKSOX4DYFGKRGLwpgTazI
 16vMvXWr5BKJ3AakERLh5QAEIUl+F8XrgWzx5IOtmErgQDjT2VRLUHvet
 LUPnECyJaZuZ7guij5X8j1KKh3roM8x8vR/a4M6zANjigxubyGaGp5J50
 ioSPLEA5Ak19fmfbLDNBXu/Bg5D365e87zc3wYhntG0/a9GjAffQvMt4i
 DoXc4MT6tPif2PLxh6oTF8Wi5s+7glG+0SFUQMN5CKKmAHwmf24aSYCE/ A==;
X-CSE-ConnectionGUID: s9vhqcoETqaA+h4v2IytVQ==
X-CSE-MsgGUID: EqIjzcLvSQSBN3IWg1VnsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47867542"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47867542"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:08:33 -0700
X-CSE-ConnectionGUID: xVK+sgyRRaODgom3+lmV1w==
X-CSE-MsgGUID: WPsBXms0TEOHLNjuzE1N5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134512398"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:08:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 02:08:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 02:08:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 02:08:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=grvEYDj7qBSWshwDy7bxFSzdlhABVPuSeM9xErTUOXugFdpLlsuptU8lLlYxoXP+ubTec9v28Y31SA3l63A7v72Cl3WUj3tZlGsZbfVj7R5diuGDCHMKOJ3y0q1VbvguRKiBEE9ckj4w/NwoBtO9BMbXGuFt2F1A2gJGeWIkMrsjqT9H7RQUeRjUb/Mmyys4/YMn1C6a1INGVhQSX8xxyPUFhWnXFdtkQaTklm97/lNMZZfFSi/M7Gc88lBqjw3TAkhG0qobjhrrxi52zTMzR+QTNXeeI1flAnhQRv4/Xv1ax6e8oYCNQV6YLwBcvFcg13yfDJMr1CubIU1jOBqAEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G2fx2TgUacy007WKVLQB2E+Wbd30oTjK7uM8DaMSXNk=;
 b=r79H6uLuB11Kx/wccqhLOrX42pA5c/XvIz8JgEI+rpSa372Ctc824L+2tQhKRz5PnFmoeybT/I06IBe0LvpKzPpQw8J/eiqfcod457oMQ5RuaFSOl/sWz37jieoQdcVNO5+mLo0Y7xsmpDTA6THEn7Ue0C6H0KaQ0kDWn2PXQmYpz4z9+SqIj9D0jIUfOFGRZFpxMq5AzuPCcD3dW2wtD+poifhfX0z837iQwz47yAKYCnZLpdsPE+D1PuGVUGTnX5CAXp9xPDHTK5T7XM3AtepZcOh2iqNXlFyIKQxi6R6mWscixJ5jTHlJVdpWwRXu24NS6WnOJVszPOIdOaI5Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB5944.namprd11.prod.outlook.com (2603:10b6:510:124::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.21; Fri, 2 May
 2025 09:08:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 09:08:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 06/10] drm/i915/hdcp: pass the context to the HDCP GSC
 message interface
Thread-Topic: [PATCH 06/10] drm/i915/hdcp: pass the context to the HDCP GSC
 message interface
Thread-Index: AQHbtVPO/wcbD0FdBUa2028e4tGQjLO/GG8g
Date: Fri, 2 May 2025 09:08:27 +0000
Message-ID: <SN7PR11MB6750D835111F65A97665E7B5E38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <df1653212f9014e717701b017e78e0017884b870.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <df1653212f9014e717701b017e78e0017884b870.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB5944:EE_
x-ms-office365-filtering-correlation-id: 389d7c5f-5ead-42f3-cbfe-08dd8958e743
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MxUqtafiW9J/LvTPHhUL30JC2juSr/7j8l0xwO42BNDDn2x0hW8NOJrN7QNs?=
 =?us-ascii?Q?WEOQfPuCDDuuiCV93RG/HfsRXkVV6iEy+R+QS7AZu6Z46C58GRcVrfGh6GDB?=
 =?us-ascii?Q?KkIyKbVLO7O/g6mwDcy3mKC4405W/ZknnQDVuP0DWUTkaWO+Y+gtQ6THMCS/?=
 =?us-ascii?Q?YyGQyatW9oyj/nMEz64ZxJBnEoYTPqs7GPRdygULu7ANmXjWU8ZvvC4rvRUA?=
 =?us-ascii?Q?mLOkHEFurl1qVfU/J6HIdHHelBxEugtJsbgCWtPO44GKPspdOzcwOLdmbyo7?=
 =?us-ascii?Q?xyPeBFrCOkRP+3VMp2u8sHx9s7GDxs2LMgQYFu4SwtL8/q3qtoS5IwDT6E3b?=
 =?us-ascii?Q?kXhOAfkCOLnSVtmGGfFkYdGaih+0Wt0ShHdXaLGWBHyj1YA5PeyGkHc29aMB?=
 =?us-ascii?Q?KSZLUjTacTzlqhstb9ZfPUIVwSsnp8uiwhi/2B5otVRwc3xidGruC1p+g+n2?=
 =?us-ascii?Q?oUrQrTfrhV6wd7tx8CuIw2O/dqJfmpWMc3hxfjNwX5CurRjLLRflV9BZz2HG?=
 =?us-ascii?Q?eDAdWLZubNfy7zXCK/B7jKKKTXnr7ANZr2O9eCVLfbGol8a+gdfPDa1HnWgz?=
 =?us-ascii?Q?uRWnvw0401k2dzAoh5Bvna6ICcPbYsGcjQyocj11jJSplnMsO4OXuDPZyANd?=
 =?us-ascii?Q?roZbNVlmW5cVZkVgtse6LHuGjEtOfgtnixmxHqAkduiMJOW0yNty6iD8JnCg?=
 =?us-ascii?Q?7Pfr/KHRo40PKufWwRo9pz5IPvnbE8xJMr4CTqNfjOQMsigYNZgHBU8ixKBX?=
 =?us-ascii?Q?G1r7AJhO1TjrML/5iRLz6/5nj3GZphugo2RwyhW93u/KsEnFQZ63uRVml2D9?=
 =?us-ascii?Q?4/B/VtAna5kFrsivul0EqhiBj8IpzXI0Vd+k96hEiJCLlwCW7sOpDP/meYRh?=
 =?us-ascii?Q?RKlQZVIU7JuEJrHaxl7QF/VdBcHApnJLyXO8jCK3C6yRGBClFS7hSyrd3MzK?=
 =?us-ascii?Q?NV+Uu/6L/LWBk9ansyEbfH8Ijc6uBz3dPQOCKwoN38tRSTa46/FyNOGbk+gj?=
 =?us-ascii?Q?M4ITWtd4XX2SgQwsQyEJjggtpA9j34o6vQxmcLJuHGdrYT1O8M+CkHYuUyWs?=
 =?us-ascii?Q?N0kRD7sC4WqC3w+J5ZgWMAH/tEozJWzEQVxr3b0xz31DkRKqN3EeZZaWLdn0?=
 =?us-ascii?Q?w/QbwN98unG7H4p4yn7/Yxgo5/yOdnf7Gngt3DYk6eIQgIZ7ieVa3ZqC/dS9?=
 =?us-ascii?Q?gFIeX0gFGV4zu3EuzwpKyC5P/cecE35MDi5lT04tlKE0RAk0k1jft9FaMvTv?=
 =?us-ascii?Q?5ypg6WWOkCEnwSHnsRz96JZ/+qX7kXt3HUE7d1FHfcZP4tim3pbZP41PsZNb?=
 =?us-ascii?Q?Qqac3A03tFkLE46u8CwH/ZyOqrvoDgk6AozX0VcfRTq4vcGelGcnn5SLeLIA?=
 =?us-ascii?Q?oH8XLUPZtYFNb0Y33qtn1M8cjAyitmEqbIlAuSkb0rMA8g+bLbevfCM5vb5w?=
 =?us-ascii?Q?0cG4esst4sc6hhHXolwgKCnXaRhfhFlaYZwMAR6AICxy9rCc4pLT2m9P5Zu9?=
 =?us-ascii?Q?Hkx2HP0zh2zhNq8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qoCmzrfdh1HsvFCpHBOAUnqsDE9Od8Lb7ccwdHu2pEuIw4qraEWggBgMflHZ?=
 =?us-ascii?Q?QWxcnnFjp07C70yZsDH273rLL5Cfn3gawj430QWXtmUwIZTP6EHdzsuIN+ME?=
 =?us-ascii?Q?5irO3Jq4V62u3SWqfHLyCUrYjrwPHrasIy90KFtzQYIVCibbYiXkmKbl5ICv?=
 =?us-ascii?Q?F8v4nctUybzasG765D0sdmW3GDfhwzKurpcCSyzHSrW92YywQWWWAf++7vqq?=
 =?us-ascii?Q?JbELjoqxZWVV9JPx43fj6bob99icENep8vcEnlc3NoSVN9A4C/dQn3KsWtfO?=
 =?us-ascii?Q?Q/9K0QZTgKXsbqqIzjGSiZojU/Yutfg/ViM5ffD26ZISfyelZQ2baAfx1IC8?=
 =?us-ascii?Q?xLg4XcQvpprDC0b1A5qpAKtcTfb7rLmH9SzOZVVUddx7+oIXLDnCMF2CA531?=
 =?us-ascii?Q?J7f4Ez8rT2Gzr0AFQ8g+/KCv21s97Q76A7Zy5WR+0dp4HFN6To8p3irYi666?=
 =?us-ascii?Q?jN//1ROLJGjDd4fVcck8U13k2eQQ6lZGekR/N9MnfOrwPf1L4G9qQMpeqymQ?=
 =?us-ascii?Q?INJzJ6qGqouaGhFMcGp9ujinKlw8zA//JrvJBaNCZCjtgoSMeD3vWyoqyOlI?=
 =?us-ascii?Q?sFbfdwHF4GVldcyQYbSzJAoq3iVAAKAcA/RnAtdK2z7EjkFgW58tXd51DlRz?=
 =?us-ascii?Q?e+u6zqTAUWGzCTWiKoQIu195Dq7wKF6LQ76RD/qldUQ3k2LfZtz1oDvTCkyu?=
 =?us-ascii?Q?k1AyGOaXmnJwzYCCm0QQUAXdxf5kd4V9CThbVsCEb0ZJJV+UNpoem2cO0MXx?=
 =?us-ascii?Q?4exi08DMkEUPZMrfdyA2digmWyvrlAdnCmCjhi+U4AWzxRWeqtNSHfRvY0jJ?=
 =?us-ascii?Q?ho5J/ITHC6A5S5mbeMnZflbjS7xPv9VglS4wSWoVGGKTu0jU+40SlR1DLFYp?=
 =?us-ascii?Q?N1dieVxPSkkxqzCN57XMZPQe2dTAjxMg35MJ5CNCFaPOwVCEL1lCvdB7cT7s?=
 =?us-ascii?Q?1wItyQFCftg45/R+aHmxfJlcUD45SPrjBcG9fFfULCo0R2sNqv8bVjQofjzl?=
 =?us-ascii?Q?MXAbnMbeODrncbtpB+Q+zexusowyJeAUVbX9DAXKI6W0yTDw7QEnEVSFzQoW?=
 =?us-ascii?Q?K/77RgT+E52Ktaq8w9kNelCqBv9oKoF2lrdyGCUm444eJRVAB97HipEUHaI9?=
 =?us-ascii?Q?1CjTuPWQHc011yBXjkbXGpwCM5AY+zY3XGB/1BCn6IjnGFVZ9sWOeIAZNzyK?=
 =?us-ascii?Q?Atlr2JMvTe3+uYPFkXDAqfoiw5397KGEDJtJ0mvmacgL3lHfdiAyG28rS/Am?=
 =?us-ascii?Q?Ittcj5af4k3Mxeub4e3fyK7bdW1/d1dXZRLLuE/VGa0H2w+iXCUrQ8pZywKZ?=
 =?us-ascii?Q?z/pNm5GPXEZjp2ALQOrcDjH/ZDOGxhRPB7ZtTRN4GGzkA6PfrcFR5A+MZUBp?=
 =?us-ascii?Q?6sKIg1zpK63Wte9qR0PXgdOaqRkK5png5C3ALnsn9XkmF5r41E06w5Kb7dV5?=
 =?us-ascii?Q?P20kkbnScpUJ//HR02Vntj8veko+QWSEokPCIU+kCdnwBjDbiptL1jyi9X1Q?=
 =?us-ascii?Q?Asfx/iwxpCgnFQN8F8M0s5XwM4L1h01UPfnyh/LvDV3IPd8fTTYMO+axYbJy?=
 =?us-ascii?Q?uzIx9j3RXCnOYzhjWxXa+tMBrh/cFGnzGTdK5CgT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 389d7c5f-5ead-42f3-cbfe-08dd8958e743
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 09:08:28.6138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KeRTgfODwuRVP794QQTP0PMf6AOinhrCUz0NQW79iiZlj/l1tMa6oZODvIXb3WIPprZZij7yLjW/qjnR1MREHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5944
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

> Subject: [PATCH 06/10] drm/i915/hdcp: pass the context to the HDCP GSC
> message interface
>=20
> The opaque HDCP GSC context nicely abstracts the differences between driv=
ers.
> Pass that instead of struct drm_i915_private or struct xe_device to
> intel_hdcp_gsc_msg_send(). We can store the driver specific data in the
> context.
>=20
> This lets us drop the dependency on i915_drv.h from
> intel_hdcp_gsc_message.c.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 11 +--
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  7 +-
> .../drm/i915/display/intel_hdcp_gsc_message.c | 70 ++++++++++---------
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 12 ++--
>  4 files changed, 52 insertions(+), 48 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index efcd3a4b41ed..77c4df6c6181 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -13,6 +13,7 @@
>  #include "intel_hdcp_gsc.h"
>=20
>  struct intel_hdcp_gsc_context {
> +	struct drm_i915_private *i915;
>  	struct i915_vma *vma;
>  	void *hdcp_cmd_in;
>  	void *hdcp_cmd_out;
> @@ -80,6 +81,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	gsc_context->hdcp_cmd_in =3D cmd_in;
>  	gsc_context->hdcp_cmd_out =3D cmd_out;
>  	gsc_context->vma =3D vma;
> +	gsc_context->i915 =3D i915;
>=20
>  	return 0;
>=20
> @@ -171,14 +173,14 @@ static int intel_gsc_send_sync(struct
> drm_i915_private *i915,
>   * gsc cs memory header as stated in specs after which the normal HDCP
> payload
>   * will follow
>   */
> -ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
> -				size_t msg_in_len, u8 *msg_out,
> -				size_t msg_out_len)
> +ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context
> *gsc_context,
> +				u8 *msg_in, size_t msg_in_len,
> +				u8 *msg_out, size_t msg_out_len)
>  {
> +	struct drm_i915_private *i915 =3D gsc_context->i915;
>  	struct intel_gt *gt =3D i915->media_gt;
>  	struct intel_gsc_mtl_header *header_in, *header_out;
>  	const size_t max_msg_size =3D PAGE_SIZE - sizeof(*header_in);
> -	struct intel_hdcp_gsc_context *gsc_context;
>  	u64 addr_in, addr_out, host_session_id;
>  	u32 reply_size, msg_size_in, msg_size_out;
>  	int ret, tries =3D 0;
> @@ -191,7 +193,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>=20
>  	msg_size_in =3D msg_in_len + sizeof(*header_in);
>  	msg_size_out =3D msg_out_len + sizeof(*header_out);
> -	gsc_context =3D i915->display.hdcp.gsc_context;
>  	header_in =3D gsc_context->hdcp_cmd_in;
>  	header_out =3D gsc_context->hdcp_cmd_out;
>  	addr_in =3D i915_ggtt_offset(gsc_context->vma);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 227c00a837d8..7133e631a938 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -9,14 +9,13 @@
>  #include <linux/err.h>
>  #include <linux/types.h>
>=20
> -struct drm_i915_private;
>  struct intel_display;
>  struct intel_hdcp_gsc_context;
>=20
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display); -ssize_t
> intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> -				size_t msg_in_len, u8 *msg_out,
> -				size_t msg_out_len);
> +ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context
> *gsc_context,
> +				u8 *msg_in, size_t msg_in_len,
> +				u8 *msg_out, size_t msg_out_len);
>  bool intel_hdcp_gsc_check_status(struct intel_display *display);
>=20
>  struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> intel_display *display); diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 92143226858c..d87f61d773ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -4,9 +4,11 @@
>   */
>=20
>  #include <linux/err.h>
> +
> +#include <drm/drm_print.h>
>  #include <drm/intel/i915_hdcp_interface.h>
>=20
> -#include "i915_drv.h"
> +#include "intel_display_core.h"
>  #include "intel_display_types.h"
>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
> @@ -17,8 +19,8 @@ intel_hdcp_gsc_initiate_session(struct device *dev, str=
uct
> hdcp_port_data *data,  {
>  	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D {};
>  	struct wired_cmd_initiate_hdcp2_session_out session_init_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ake_data)
> @@ -29,7 +31,7 @@ intel_hdcp_gsc_initiate_session(struct device *dev, str=
uct
> hdcp_port_data *data,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	session_init_in.header.api_version =3D HDCP_API_VERSION;
>  	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION; @@ -42,7 +44,7 @@
> intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data
> *data,
>  	session_init_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
>  	session_init_in.protocol =3D data->protocol;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_init_in,
>  				       sizeof(session_init_in),
>  				       (u8 *)&session_init_out,
>  				       sizeof(session_init_out));
> @@ -76,8 +78,8 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct
> device *dev,  {
>  	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D {};
>  	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
> @@ -88,7 +90,7 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct
> device *dev,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_rxcert_in.header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT; @@ -104,7 +106,7 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
>  	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
>  	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> HDCP_2_2_RXCAPS_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_rxcert_in,
>  				       sizeof(verify_rxcert_in),
>  				       (u8 *)&verify_rxcert_out,
>  				       sizeof(verify_rxcert_out));
> @@ -141,8 +143,8 @@ intel_hdcp_gsc_verify_hprime(struct device *dev,
> struct hdcp_port_data *data,  {
>  	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>  	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_hprime)
> @@ -153,7 +155,7 @@ intel_hdcp_gsc_verify_hprime(struct device *dev,
> struct hdcp_port_data *data,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>  	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> @@ -167,7 +169,7 @@ intel_hdcp_gsc_verify_hprime(struct device *dev,
> struct hdcp_port_data *data,
>  	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
>  	       HDCP_2_2_H_PRIME_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&send_hprime_in,
>  				       sizeof(send_hprime_in),
>  				       (u8 *)&send_hprime_out,
>  				       sizeof(send_hprime_out));
> @@ -191,8 +193,8 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev,
> struct hdcp_port_data *dat  {
>  	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D {};
>  	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !pairing_info)
> @@ -203,7 +205,7 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev,
> struct hdcp_port_data *dat
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>  	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO; @@ -218,7 +220,7 @@
> intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_da=
ta
> *dat
>  	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
>  	       HDCP_2_2_E_KH_KM_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&pairing_info_in,
>  				       sizeof(pairing_info_in),
>  				       (u8 *)&pairing_info_out,
>  				       sizeof(pairing_info_out));
> @@ -244,8 +246,8 @@ intel_hdcp_gsc_initiate_locality_check(struct device
> *dev,  {
>  	struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>  	struct wired_cmd_init_locality_check_out lc_init_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !lc_init_data)
> @@ -256,7 +258,7 @@ intel_hdcp_gsc_initiate_locality_check(struct device
> *dev,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	lc_init_in.header.api_version =3D HDCP_API_VERSION;
>  	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK; @@ -
> 267,7 +269,7 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev=
,
>  	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
>  	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in,
> sizeof(lc_init_in),
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&lc_init_in,
> +sizeof(lc_init_in),
>  				       (u8 *)&lc_init_out, sizeof(lc_init_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte); @@ -292,8 +294,8 @@
> intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *d=
ata,
> {
>  	struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>  	struct wired_cmd_validate_locality_out verify_lprime_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_lprime)
> @@ -304,7 +306,7 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, stru=
ct
> hdcp_port_data *data,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> @@ -319,7 +321,7 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, stru=
ct
> hdcp_port_data *data,
>  	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
>  	       HDCP_2_2_L_PRIME_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_lprime_in,
>  				       sizeof(verify_lprime_in),
>  				       (u8 *)&verify_lprime_out,
>  				       sizeof(verify_lprime_out));
> @@ -345,8 +347,8 @@ intel_hdcp_gsc_get_session_key(struct device *dev,  {
>  	struct wired_cmd_get_session_key_in get_skey_in =3D {};
>  	struct wired_cmd_get_session_key_out get_skey_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ske_data)
> @@ -357,7 +359,7 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	get_skey_in.header.api_version =3D HDCP_API_VERSION;
>  	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY; @@ -
> 368,7 +370,7 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
>  	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
>  	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in,
> sizeof(get_skey_in),
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&get_skey_in,
> +sizeof(get_skey_in),
>  				       (u8 *)&get_skey_out,
> sizeof(get_skey_out));
>  	if (byte < 0) {
>  		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send
> failed. %zd\n", byte); @@ -399,8 +401,8 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,  {
>  	struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>  	struct wired_cmd_verify_repeater_out verify_repeater_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !rep_topology || !rep_send_ack || !data) @@ -411,7 +413,7
> @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> @@ -432,7 +434,7 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>  	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
>  	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8
> *)&verify_repeater_in,
>  				       sizeof(verify_repeater_in),
>  				       (u8 *)&verify_repeater_out,
>  				       sizeof(verify_repeater_out)); @@ -462,8
> +464,8 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,  {
>  	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>  	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out
> =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>  	size_t cmd_size;
>=20
> @@ -475,7 +477,7 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>  	if (cmd_size =3D=3D SIZE_MAX)
> @@ -502,7 +504,7 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
>=20
>  	verify_mprime_in->k =3D cpu_to_be16(data->k);
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in,
> cmd_size,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)verify_mprime_in,
> +cmd_size,
>  				       (u8 *)&verify_mprime_out,
>  				       sizeof(verify_mprime_out));
>  	kfree(verify_mprime_in);
> @@ -526,8 +528,8 @@ static int intel_hdcp_gsc_enable_authentication(struc=
t
> device *dev,  {
>  	struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>  	struct wired_cmd_enable_auth_out enable_auth_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
> @@ -538,7 +540,7 @@ static int intel_hdcp_gsc_enable_authentication(struc=
t
> device *dev,
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>  	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH; @@ -
> 550,7 +552,7 @@ static int intel_hdcp_gsc_enable_authentication(struct
> device *dev,
>  	enable_auth_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
>  	enable_auth_in.stream_type =3D data->streams[0].stream_type;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&enable_auth_in,
>  				       sizeof(enable_auth_in),
>  				       (u8 *)&enable_auth_out,
>  				       sizeof(enable_auth_out));
> @@ -573,8 +575,8 @@ intel_hdcp_gsc_close_session(struct device *dev, stru=
ct
> hdcp_port_data *data)  {
>  	struct wired_cmd_close_session_in session_close_in =3D {};
>  	struct wired_cmd_close_session_out session_close_out =3D {};
> +	struct intel_hdcp_gsc_context *gsc_context;
>  	struct intel_display *display;
> -	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
> @@ -585,7 +587,7 @@ intel_hdcp_gsc_close_session(struct device *dev, stru=
ct
> hdcp_port_data *data)
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> -	i915 =3D to_i915(display->drm);
> +	gsc_context =3D display->hdcp.gsc_context;
>=20
>  	session_close_in.header.api_version =3D HDCP_API_VERSION;
>  	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION; @@ -
> 597,7 +599,7 @@ intel_hdcp_gsc_close_session(struct device *dev, struct
> hdcp_port_data *data)
>  	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
>  	session_close_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
>=20
> -	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> +	byte =3D intel_hdcp_gsc_msg_send(gsc_context, (u8
> *)&session_close_in,
>  				       sizeof(session_close_in),
>  				       (u8 *)&session_close_out,
>  				       sizeof(session_close_out));
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 16458c1ddbe6..7b8237a5aeee 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -22,6 +22,7 @@
>  #define HECI_MEADDRESS_HDCP 18
>=20
>  struct intel_hdcp_gsc_context {
> +	struct xe_device *xe;
>  	struct xe_bo *hdcp_bo;
>  	u64 hdcp_cmd_in;
>  	u64 hdcp_cmd_out;
> @@ -95,6 +96,8 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  	gsc_context->hdcp_bo =3D bo;
>  	gsc_context->hdcp_cmd_in =3D cmd_in;
>  	gsc_context->hdcp_cmd_out =3D cmd_out;
> +	gsc_context->xe =3D xe;
> +
>  out:
>  	return ret;
>  }
> @@ -157,12 +160,12 @@ static int xe_gsc_send_sync(struct xe_device *xe,
>  	return ret;
>  }
>=20
> -ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
> -				size_t msg_in_len, u8 *msg_out,
> -				size_t msg_out_len)
> +ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context
> *gsc_context,
> +				u8 *msg_in, size_t msg_in_len,
> +				u8 *msg_out, size_t msg_out_len)
>  {
> +	struct xe_device *xe =3D gsc_context->xe;
>  	const size_t max_msg_size =3D PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> -	struct intel_hdcp_gsc_context *gsc_context;
>  	u64 host_session_id;
>  	u32 msg_size_in, msg_size_out;
>  	u32 addr_out_off, addr_in_wr_off =3D 0;
> @@ -175,7 +178,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe,
> u8 *msg_in,
>=20
>  	msg_size_in =3D msg_in_len + HDCP_GSC_HEADER_SIZE;
>  	msg_size_out =3D msg_out_len + HDCP_GSC_HEADER_SIZE;
> -	gsc_context =3D xe->display.hdcp.gsc_context;
>  	addr_out_off =3D PAGE_SIZE;
>=20
>  	host_session_id =3D xe_gsc_create_host_session_id();
> --
> 2.39.5

