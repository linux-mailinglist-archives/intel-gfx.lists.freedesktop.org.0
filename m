Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E439BE036
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 09:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CED510E67F;
	Wed,  6 Nov 2024 08:18:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBz+6xgr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B9A10E67F;
 Wed,  6 Nov 2024 08:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730881138; x=1762417138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Ygc/U6910M40Stz0Mcj33D2y05yzxMm/ur1MSsELgI=;
 b=BBz+6xgrBPrHB/fmjeSGaSS8ozpZToAahrH6RBqhe9oEFKi5mA7v+t84
 G+L41QdG1zEVs1CzoOaLsSFPiIZaGFQGVa5lzTPObjqMjr5uUjZDkBywl
 iOLZ29jIOhNVvAUNuBT+KPAxXa1UqlgKZF9sb4Xjwh1OxszNF1RRWmO9R
 iS6+oaeljtfbYIxjY4w9z+B05DeYCglSr1cmuKmLB9rGI2WAVnSFR10mb
 Cp4g3V3g9KRION3KAyeh3G+zuQH07LxDU5fWzUiGZXnb4qs5lq4AEu044
 ApYSWfv/pTSZWvDuosq521ommVO9vk/hGYdYcdBXx3kRWww4eDf+Y40qj A==;
X-CSE-ConnectionGUID: pc0fldKlR6OCcx9ari8LQg==
X-CSE-MsgGUID: yHKiTvYNT2eUaXNvUc8Z7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="56062061"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="56062061"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 00:18:58 -0800
X-CSE-ConnectionGUID: YivA5uNaSBiJ+66N38z8fA==
X-CSE-MsgGUID: 7bXpojYSTqWADyzS9WFDeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="89252034"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 00:18:57 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 00:18:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 00:18:56 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 00:18:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gqzJ7gQBeg2/4GyfueCjJ/TsVEWH3NudbExhwpFEDpRMUwYA/GDmZrXkqTh9SzMOBXtBtN9/CDopy8fR72OYLjeTnSUQ5Y/trCvVeknJZHE/u4zuc2r8kJiqrLZPzsraWjJ8Cyii8Q6lM1J9BN9dECuEEcLqEMAdjEsnpfkzPOUHumTRVW6Wu6cBwHG/8WOIhYKcX3zMDh9XyYxC1GZ6KHF5FcBlJB9zA2swe2ohV2DXqEYNbaBxcA1s7rOO/hNdIaB/Z0EHYMgjtbfq+wEWU2N8ZQxVm5UQNr1r4KD+ZmlpqywK+y9lgCMRU7EOrQ/wvZjfMU2g6d8YlbSFX/Gnag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vGZgS4TBRPY7kuZ7ED91fagK0OdHbMqSeaWuumnR/V0=;
 b=s/u36iPFSWg5ybW6fX+z/1U71P6ks4usEHDbI9/EaANf6KnbrsKgZQDTjSYYyrG72Ymq3SM+0JxyX4J98MV6ldsd7uyoHCjrr5nVcXyBTDMv1zOINV8aYluzUDqnXK083VYzlHNm3wbarfUv5M9OpZwMA4Ob0oeuUW0cOGKo7KWtvB1lDQr8KlNmlFxami1HM3BVTKqm5LQWyEMfJm4JjoX25e8WYdtoNe7mg1c0DLWpDZMJLTdZHFpZDBOpa6YuNs7E7+gBOsDdw8He0Evl48fQoC7rpa3atVDRfQtaDnTQ6sRce7KMpUOYjI7kgndyYYMAGlfrYnT/YXEjPlpH+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Wed, 6 Nov
 2024 08:18:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.032; Wed, 6 Nov 2024
 08:18:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Implement WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implement WA to help reach PC10
Thread-Index: AQHbLpnN/soOWcfbVUqof4K3tgHUMrKnK4oAgAK8hWA=
Date: Wed, 6 Nov 2024 08:18:53 +0000
Message-ID: <SN7PR11MB67508FBA07A581BF947D8EF7E3532@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241104091257.731388-1-suraj.kandpal@intel.com>
 <87bjyvhylb.fsf@intel.com>
In-Reply-To: <87bjyvhylb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB4876:EE_
x-ms-office365-filtering-correlation-id: 91ab8522-016f-420e-cab5-08dcfe3ba703
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?//Joikf2guebTz6n3FPGBJNCirg48FlDk3sR1EdkK5/3KBOsjuEkh0gACWJy?=
 =?us-ascii?Q?TX4X2GcZJoSl12g3sdo4QEtkSmNQDM6x3pdyis8Gdy7Mw76+nGYBciOBIy/D?=
 =?us-ascii?Q?bToX2VnxDW17O7w7CXeLbx3QIpLTb1iIs51MKZ+3+m3aCilX2NCqLIvDfT4K?=
 =?us-ascii?Q?jZPpygq7NFsf+ace0/0EViQsIL/CfAnIf/6C9+AuxoGvOWLTV8nj43nSY5Q8?=
 =?us-ascii?Q?1+soxNS1dBQt0lYNGqY22KD0t3vLUoiBHzPi0js6RFteuazwP3j82NB9sAUX?=
 =?us-ascii?Q?f/DxLucNpfio2MpJ61WbEJhCd0jgPfe7/+tx9pM0Q9UG4jpyDjf34+PytbkY?=
 =?us-ascii?Q?X408fSfWQKGTCfqDQy1AOTBkGlLN/fxwgqEzjwKCVLePSD8AodeJvEH01owJ?=
 =?us-ascii?Q?XSfMkl3yywwgU+crYZtNlGTeeq5dEB4WFymYeVmpqiWu7zFU/NjZGapaF2WQ?=
 =?us-ascii?Q?HrKBYJYcRXwdeRWUwkSuyPHsTo3/S2AWCxfPO/miSr7pSu71udRdDpIZv6va?=
 =?us-ascii?Q?Ibxn2mFEueHRPoQr617fYle/bzbX8vzf5vFHrkRlUoqCERNf85WP7DW3VraN?=
 =?us-ascii?Q?/jvtXNDMBG0gBuCopZYrtHK6T3aRXnSscRSGNDBXk7IYMZukISpGRY09jTEH?=
 =?us-ascii?Q?h0gFt95qKHJC+giDV3IhWg7YbjCIUoksTVUZZX0kYGF6k2X3qqPoTEt5PJJC?=
 =?us-ascii?Q?662mETJVCRGGl5TyJ/Ue+g9ryxNztDtnJiTxtbsXyDcMR5M/mo19LoHh27Et?=
 =?us-ascii?Q?IJ/J0hPwHpKEZFl4OJbKXOt2MDGJHtFuJoF3Zu6XTIqLzqNEmvFf6MtcYkzf?=
 =?us-ascii?Q?Y6eCiYNEGO4BNypHFLtdJMGzNBdvjzBkAKBJtXOaDN9IsxyC3CzsVryEDtYY?=
 =?us-ascii?Q?XsBpvJ02nYGRWEZoD4DCx8SueePDaimnZJ+Ajqfh5pjEyTfF2pQD2qkLBYI/?=
 =?us-ascii?Q?U1LFcqOoGKD0MU3J5gqNszaS+HDJMZNFxSobLjf11xE/3XsrKEJFzMKjXpTb?=
 =?us-ascii?Q?ejwtfSCbBM4nlKZzIp6cGciqbfCRwOVuyuS+Dg4a3bI0VpUb1A3FkBYXFChr?=
 =?us-ascii?Q?nNiZJcP1LzRoXohCD2ou0aHKSgkwZWGaEzzaWPLnrLvhBxr6uZhFjzfURK42?=
 =?us-ascii?Q?JexDVlYxeNndGHyQX2Zr0lcxwt8OKEBaXV4NgacFnR3l1E8xsPlIqyAaE6gB?=
 =?us-ascii?Q?c/FqV1ioWnZaps7h7v/TNAmbWZveNbRrt58oO+GaSEYC3uu/dhxWeva1KSnz?=
 =?us-ascii?Q?ABo3bmwC89z0zCLj2SH7MxbfzBynZXW1FS+X18iGY7jHMCzsKMF1bmbgSEXI?=
 =?us-ascii?Q?7gHomINFvat4YE4UtriCLLjjH+Z97LGCM9xL22XUZrMmhij8b8D3tNTFqyur?=
 =?us-ascii?Q?0RZkq/o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MQzA4mMl6m3Jmn1wlvHib8jsd2yb00wsRGcH9mLBfEkxenNCE74zwE0lrgEI?=
 =?us-ascii?Q?7qyCIZmsY3huPWUFArjUy22Ww3t6jp91815nMBTK4QoQK2nJ28tMSY+ev0RO?=
 =?us-ascii?Q?VNfz0dYqBEBaooRIoJe4ldPqKwnj06J1ylIBdAcW6eSc/kl5fycpDjuG/uaI?=
 =?us-ascii?Q?FucP+PJVirRptQuEcDZ1NeK40S1CQCmn7poGuz9rHIp9Rm4koZoAsdiGRU4l?=
 =?us-ascii?Q?r5UUyIYt4XBpUWHHfpGqk471NGPEKR6/EmEprDqcbkqrQq/4fXyUh4re3YcM?=
 =?us-ascii?Q?i/nuYsd4a7ImehU87SGuVpDtGKkeStmJ5ODNAcFZhBwyj4SrUna0VTV7i+wQ?=
 =?us-ascii?Q?PHOQDaHZPhcAs+57Ss0NQHdZ+yEfC13R+8QdafhArn/1cj+o4zdDi/v2Qd02?=
 =?us-ascii?Q?q3D3ml+uQjWSqGcQAwdgUOefycKmngwiJWts1joCcZbDypBa6B/x2tYzobyy?=
 =?us-ascii?Q?kaKH/SKozBdPiKnkOtHHwo1aBr6p6NIaH36intnENlErllQs2d0rPA3K8k+8?=
 =?us-ascii?Q?rCTPbaw99+SQ6bhZPtSDkT3vxRCzPZpke4GyxFdVBNz452cDpROInCVWLSDH?=
 =?us-ascii?Q?UV2n42ybWyOXnGcswX1XeQzcidagEdR2kT2Dw+Cl0grA4On5cOnXXI9U3Nhp?=
 =?us-ascii?Q?hOJA0+DKbpax2wxk1oJxykR79lCDhBLH3LSoAb1I0QvktO5LZPxmB3XtK/P2?=
 =?us-ascii?Q?ofOFqC/CGawLiWnex5nqSjjeM9UjDAcyidUwmelLx8FKfkVh5+S/T2Un48+Y?=
 =?us-ascii?Q?X5ByzVKo93ZVZgDT6j3h7j03h3nl9fdmhMTwt3c/OxOlOt544zuc43bFIJtw?=
 =?us-ascii?Q?morsCYQBZg2g+QrtFP7365cFYqb41B2XMvLLQQSDg8SoKgQpLN3gCXuAXejF?=
 =?us-ascii?Q?XRhy6JDt9RNRPsySKb2bcjU6yF5fFu6QWbFvizRhbw+3gOh47VuPXbrsxTq1?=
 =?us-ascii?Q?m9w6IZYr6YSGuRYLaijZ1MxvUmU1qebCe2KR96nb5YxKvgruYFBqrPsif/y2?=
 =?us-ascii?Q?bk2aT6AA056xrrJ9QNb+Xbpd+5bm4WedfktKLxMHm7SA6LOi2Tc7zc8/Mpo1?=
 =?us-ascii?Q?zj7+Rt1Hx5S8tO0IDPT9ZLFNqst3U3y1M8tgY4xwv07RamZb0bKZ1Eno6HzW?=
 =?us-ascii?Q?DYzm9//AWf6Xnl5RI98MkxTOYt9wjU17gJUXSE4HUDLeoyxzmz4yb1yDP2xU?=
 =?us-ascii?Q?dSkHFDZYkxz53nrRwtJQpZfRKmSxqUMS1Voozo5TchtQkzkJUQh7D7lwinPb?=
 =?us-ascii?Q?FYY6FNad29gFuTU+53wg+lyLzz7Yq62pyGw4dkabMxjPCDujM7fzE3AW+SJW?=
 =?us-ascii?Q?SNWAhDDTyVDum7QzPLmunlJoqhvOECFPACMuiBljOoKkD017AFR0Xhulc6pn?=
 =?us-ascii?Q?pCb5PwL2OwCtAX2XDmHd59ovU0MntDFTPSUvujvajmCVVmqrdohAIk/k9Wga?=
 =?us-ascii?Q?wHSd5CleQXL4o9T+7Wd84D5SxV1lBzlHYZyTxaF4VAgWuL0DfI/4+h9gIWUu?=
 =?us-ascii?Q?ILonzrgr5atUAi9Pz9HgLCaphFZmbxKDM7SS3kKgbZcGtWv35Y4A/YQ++fW2?=
 =?us-ascii?Q?1Ug+gL7y2aakoatW5KtC2R+i3YTqNjRCfIjOTrnz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91ab8522-016f-420e-cab5-08dcfe3ba703
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 08:18:53.8095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aIhmbiRtF+ueUaXG2vv7TeehWp1iVyKeb3xtPBlE4kjt1g9iO534PdUV0/h/At+6p3ihf1GpLgYJklAR/nbM0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, November 4, 2024 7:48 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/psr: Implement WA to help reach PC10
>=20
> On Mon, 04 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > To reach PC10 when PKG_C_LATENCY is configure we must do the following
> > things
> > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
> > entered
> > 2) Allow PSR2 deep sleep when DC5 can be entered
> > 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
> > not happening.
> >
> > --v2
> > -Add debug prints
> >
> > --v3
> > -use crtc as variable name for intel_crtc [Jani] -use encoder as
> > variable name for intel_encoder [Jani] -No changes in intel_dp in
> > compute_config_late [Jani]
> >
> > --v4
> > -Remove "check" from naming [Jani]
> > -Remove intel_encoder variable which is not necessary in
> > compute_config_late
> >
> > WA: 22019444797
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
> >  .../drm/i915/display/intel_display_types.h    |   6 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 130 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
> >  4 files changed, 139 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 0535daed6a9f..8e0fb6bd6211 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4403,6 +4403,9 @@ static int intel_ddi_compute_config_late(struct
> intel_encoder *encoder,
> >  			port_sync_transcoders & ~BIT(crtc_state-
> >cpu_transcoder);
> >  	}
> >
> > +	if (intel_encoder_is_dp(encoder))
> > +		intel_psr_compute_config_late(crtc_state);
> > +
> >  	return 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ff6eb93337e0..dd5f3ea90e5b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1089,6 +1089,9 @@ struct intel_crtc_state {
> >  	bool req_psr2_sdp_prior_scanline;
> >  	bool has_panel_replay;
> >  	bool wm_level_disabled;
> > +	bool is_wa_delayed_vblank_limit;
> > +	bool is_dpkgc_configured;
> > +	bool is_dc5_entry_possible;
> >  	u32 dc3co_exitline;
> >  	u16 su_y_granularity;
> >
> > @@ -1587,6 +1590,9 @@ struct intel_psr {
> >  #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
> >
> >  	u32 debug;
> > +	bool is_dpkgc_configured;
> > +	bool is_dc5_entry_possible;
> > +	bool is_wa_delayed_vblank_limit;
>=20
> I don't understand why all of these need to be duplicated in struct intel=
_psr.
>=20
> I get that you don't necessarily have access to the crtc state in all
> circumstances. But doesn't the workaround basically boil down to using 0 =
idle
> frames in hsw_activate_psr2()?
>=20
> >  	bool sink_support;
> >  	bool source_support;
> >  	bool enabled;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index a784c0b81556..b93358a82aa3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -26,6 +26,7 @@
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_damage_helper.h>
> >  #include <drm/drm_debugfs.h>
> > +#include <drm/drm_vblank.h>
> >
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > @@ -898,6 +899,81 @@ static u8 psr_compute_idle_frames(struct intel_dp
> *intel_dp)
> >  	return idle_frames;
> >  }
> >
> > +static bool
> > +intel_psr_wa_delayed_vblank(const struct drm_display_mode
> > +*adjusted_mode) {
> > +	return (adjusted_mode->crtc_vblank_start -
> > +adjusted_mode->crtc_vdisplay) >=3D 6; }
> > +
> > +/*
> > + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> > + * VRR is not enabled
> > + */
> > +static bool intel_psr_is_dpkgc_configured(struct intel_display *displa=
y,
> > +					  struct intel_crtc_state *crtc_state) {
> > +	if (DISPLAY_VER(display) < 20 || crtc_state->vrr.enable)
> > +		return false;
> > +
> > +	return true;
>=20
> IOW,
>=20
> 	return DISPLAY_VER(display) >=3D 20 && !crtc_state->vrr.enable;
>=20
> > +}
> > +
> > +static bool wa_22019444797_psr1(const struct intel_crtc_state *crtc_st=
ate,
> > +				struct intel_psr *psr)
>=20
> I really dislike function names like this. It doesn't say *anything* to t=
he reader.
> It's hard to pronounce. It's hard to talk about. I don't know what it mea=
ns.
>=20
> Something like psr1_needs_wa_22019444797() is already much better, even i=
f
> it still contains the wa number. It tells what it's about, and the reader=
 doesn't
> have to try to guess.

Sure will fix the name here Jani

>=20
> > +{
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +
> > +	if (DISPLAY_VER(display) =3D=3D 20 && psr->is_dpkgc_configured &&
> > +	    (psr->is_wa_delayed_vblank_limit || !psr->is_dc5_entry_possible)
> &&
> > +	   !crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
> > +		drm_dbg_kms(display->drm,
> > +			    "Wa 22019444797 requirement met PSR1
> disabled\n");
>=20
> That debug log message is not a sentence. Maybe something like, "Disablin=
g
> PSR1 due to wa 22019444797\n".

Got it will update the debug message to state the above message

>=20
> > +		return true;
> > +	} else {
> > +		return false;
> > +	}
> > +}
>=20
> Why is this function looking at struct intel_psr to make decisions?
> Shouldn't it use old and new crtc state, and nothing else?
>=20
> > +
> > +/*
> > + * DC5 entry is only possible if vblank interrupt is disabled
> > + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> > + * enabled encoders.
> > + */
> > +static bool
> > +intel_psr_is_dc5_entry_possible(struct intel_display *display,
> > +				struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc;
> > +
> > +	if ((display->power.domains.target_dc_state &
> > +	     DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0)
> > +		return false;
> > +
> > +	if (!crtc_state->has_psr && !crtc_state->has_sel_update &&
> > +	    !crtc_state->has_panel_replay)
> > +		return false;
> > +
> > +	for_each_intel_crtc(display->drm, crtc) {
> > +		struct drm_vblank_crtc *vblank;
> > +		struct intel_encoder *encoder;
> > +
> > +		if (!crtc->active)
> > +			continue;
> > +
> > +		vblank =3D drm_crtc_vblank_crtc(&crtc->base);
> > +
> > +		if (vblank->enabled)
> > +			return false;
> > +
> > +		for_each_encoder_on_crtc(display->drm, &crtc->base,
> encoder)
> > +			if (encoder->type !=3D INTEL_OUTPUT_EDP ||
> > +			    !CAN_PSR(enc_to_intel_dp(encoder)))
> > +				return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static void hsw_activate_psr1(struct intel_dp *intel_dp)  {
> >  	struct intel_display *display =3D to_intel_display(intel_dp); @@
> > -1010,7 +1086,18 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
> >  	u32 val =3D EDP_PSR2_ENABLE;
> >  	u32 psr_val =3D 0;
> >
> > -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > +	/*
> > +	 * Wa_22019444797
> > +	 * TODO: Disable idle frames when vblank gets enabled while
> > +	 * PSR2 is enabled
> > +	 */
> > +	if (DISPLAY_VER(dev_priv) !=3D 20 ||
> > +	    !intel_dp->psr.is_dpkgc_configured ||
> > +	    intel_dp->psr.is_dc5_entry_possible)
> > +		val |=3D
> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > +	else
> > +		drm_dbg_kms(display->drm,
> > +			    "Wa 22019444797 requirement met PSR2 deep
> sleep disabled\n");
>=20
> What if this was just something like,
>=20
> 	if (!intel_dp->psr.disable_idle_frames)
> 		val |=3D
> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>=20
> And that was set where needed, and everything else was based on old/new
> crtc state.

Sure I can work on that.

>=20
> I'm just feeling really dumb because it's hard for me to follow what's go=
ing on
> here in this patch. Is it really this complicated?

It actually became complicated due the multiple conditions each asking us t=
o do different actions for both
Psr1 and psr2 and each of those conditions having its own conditions for ex=
ample dc5_entry_possible has its
own list of condition to end up being true

>=20
> >
> >  	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
> >  		val |=3D EDP_SU_TRACK_ENABLE;
> > @@ -1692,6 +1779,20 @@ void intel_psr_compute_config(struct intel_dp
> *intel_dp,
> >  	crtc_state->has_sel_update =3D intel_sel_update_config_valid(intel_dp=
,
> > crtc_state);  }
> >
> > +void intel_psr_compute_config_late(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +
> > +	if (DISPLAY_VER(display) =3D=3D 20) {
> > +		crtc_state->is_dpkgc_configured =3D
> > +			intel_psr_is_dpkgc_configured(display, crtc_state);
> > +		crtc_state->is_dc5_entry_possible =3D
> > +			intel_psr_is_dc5_entry_possible(display, crtc_state);
> > +		crtc_state->is_wa_delayed_vblank_limit =3D
> > +			intel_psr_wa_delayed_vblank(&crtc_state-
> >hw.adjusted_mode);
> > +	}
> > +}
> > +
> >  void intel_psr_get_config(struct intel_encoder *encoder,
> >  			  struct intel_crtc_state *pipe_config)  { @@ -2774,6
> +2875,22 @@
> > int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > +static void
> > +wa_22019444797_fill_psr_params(const struct intel_crtc_state *crtc_sta=
te,
> > +			       struct intel_psr *psr)
>=20
> Again, that's a horrible function name. This doesn't have to include the
> workaround number in any way.
>=20
> The rule of thumb: Say the function name aloud, as if you were discussing=
 the
> code with someone. If it's difficult to talk about, it's probably not a g=
ood
> name.

Sure will update it and from what I can see from the comments above and bel=
ow this may
altogether not be needed since we will only have one variable we need to fi=
ll and the rest can be
taken care by crtc_state itself.

>=20
> > +{
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +
> > +	if (DISPLAY_VER(display) =3D=3D 20) {
>=20
> I think this part is independent of display version.

Okay got it.


>=20
> > +		psr->is_dpkgc_configured =3D
> > +			crtc_state->is_dpkgc_configured;
> > +		psr->is_dc5_entry_possible =3D
> > +			crtc_state->is_dc5_entry_possible;
> > +		psr->is_wa_delayed_vblank_limit =3D
> > +			crtc_state->is_wa_delayed_vblank_limit;
> > +	}
> > +}
>=20
> Again, why do we need all of this duplicated? I think it only boils down =
to just
> one thing in struct intel_psr, unless I'm mistaken.

I think as you suggested above having one variable should suffice and that =
can be set here and later
On used in hsw_psr2_activate

>=20
> > +
> >  void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> >  				struct intel_crtc *crtc)
> >  {
> > @@ -2796,6 +2913,8 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >
> >  		mutex_lock(&psr->lock);
> >
> > +		wa_22019444797_fill_psr_params(new_crtc_state, psr);
> > +
>=20
> So you're filling stuff from new_crtc_state into psr.
>=20
> >  		/*
> >  		 * Reasons to disable:
> >  		 * - PSR disabled in new state
> > @@ -2803,6 +2922,7 @@ void intel_psr_pre_plane_update(struct
> intel_atomic_state *state,
> >  		 * - Changing between PSR versions
> >  		 * - Region Early Transport changing
> >  		 * - Display WA #1136: skl, bxt
> > +		 * - Display WA_22019444797
> >  		 */
> >  		needs_to_disable |=3D
> intel_crtc_needs_modeset(new_crtc_state);
> >  		needs_to_disable |=3D !new_crtc_state->has_psr; @@ -2812,6
> +2932,8 @@
> > void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> >  			psr->su_region_et_enabled;
> >  		needs_to_disable |=3D DISPLAY_VER(i915) < 11 &&
> >  			new_crtc_state->wm_level_disabled;
> > +		/* TODO: Disable PSR1 when vblank gets enabled while PSR1
> is enabled */
> > +		needs_to_disable |=3D wa_22019444797_psr1(new_crtc_state,
> psr);
>=20
> And then use it here. I don't get it.
>=20
> >
> >  		if (psr->enabled && needs_to_disable)
> >  			intel_psr_disable_locked(intel_dp);
> > @@ -2852,6 +2974,12 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
> >  		keep_disabled |=3D DISPLAY_VER(display) < 11 &&
> >  			crtc_state->wm_level_disabled;
> >
> > +		/*
> > +		 * Wa_22019444797
> > +		 * TODO: Disable PSR1 when vblank gets enabled while PSR1
> is enabled
> > +		 */
> > +		keep_disabled |=3D wa_22019444797_psr1(crtc_state, psr);
>=20
> So this carries it over from pre plane update new crtc state via psr... b=
ut it's all
> very confusing.

I think this will be solved with the suggestion you made above in the next =
revision

Regards,
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> > +
> >  		if (!psr->enabled && !keep_disabled)
> >  			intel_psr_enable_locked(intel_dp, crtc_state);
> >  		else if (psr->enabled && !crtc_state->wm_level_disabled) diff
> --git
> > a/drivers/gpu/drm/i915/display/intel_psr.h
> > b/drivers/gpu/drm/i915/display/intel_psr.h
> > index 956be263c09e..0923a2f74901 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > @@ -47,6 +47,7 @@ void intel_psr_init(struct intel_dp *intel_dp);
> > void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  			      struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state);
> > +void intel_psr_compute_config_late(struct intel_crtc_state
> > +*crtc_state);
> >  void intel_psr_get_config(struct intel_encoder *encoder,
> >  			  struct intel_crtc_state *pipe_config);  void
> > intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
>=20
> --
> Jani Nikula, Intel
