Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B44B151F9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 19:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DFC10E14D;
	Tue, 29 Jul 2025 17:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lO7zqgcm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 591EA10E14D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 17:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753809489; x=1785345489;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mjOgtb82H2Ne1UcW7myVBnPAUVK/58/6SL1hMNuUxUA=;
 b=lO7zqgcmUFOuZ0QfUzkrpX/gikQ8ZdjoA7lDv3zsB1Uw3A/gtdPu2KyQ
 sZ2MgH0I3w1cQCSOo63ofmy7o/FHAWxhsIGx80UL0XEQg05IJjwnuYT8M
 pA2U31BVOByaAexcvam5h6E40lZZv092g4IjlfibOwY6AED8mG1oXJgym
 ZtTEtSLCGAgLZfzqNTrsLFXbNNn9wr0XjiLM1dF7SJA9ETnlL7rmMGjzk
 HJVlE+RsLS8s3lW/CoEJXirnSyTqwQCGAOafC80Q1viZ5dBzwJDdopHv/
 5fHKPa1svXR6tntpQehO53O4oIDx1awr75XU8cSIPfynPRsZUbyUM7Rfn g==;
X-CSE-ConnectionGUID: v/nfS420Se2Px37rUQ/LnQ==
X-CSE-MsgGUID: mHSLomwFRManVD4YPYYh3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="58714680"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="58714680"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 10:17:23 -0700
X-CSE-ConnectionGUID: Q8lpzNjUSGCLK6suvzy7Pg==
X-CSE-MsgGUID: FftXaZkjS9GoY99bzFaAKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="193751060"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 10:17:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 10:17:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 10:17:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.79)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 10:17:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hXKH7cwj3VzC03uSissvxbKbeaod6aUD1Q4K+OfNaNNA6nTi1fyRA1RtPB4MZWKIHvbMndtOrD/dxJbpRNLoHinGNi2bfwk9kVxs4CUMQoRztcP2NuWKWz6iyxGL4a6LNLWWWsrqUOpInU43f7fXGl0KZsSKBoAmvFYtvSHUM+tJDfhylD0GUYXXijyqM52R8Ows5lvj3vtiOJxPrFIcc8qZFJYvIUhPA2j07h/yb9TzBFvlMUp+O5TQjPu6V1sjvq7Nrd3jfmorcBH7haftApuZqwiLuuC4ripwqxT15KSuKadVSoSLG6MnaBCG463o0gPTNPUHlq7qxSe7z2gKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JID/CIZN9xCD7AD3mRrXs0IyMpr7jeh5QBFiJc9wp+w=;
 b=O+0sopeSzLL2QT/66MdH2+Xa2mdQFVKgeLca/7xmNfp4qrxt3FAYt9LidSh9fp+CNE/9Nq4KHo9zCss1ixyLBKujwK5B8Yobv7CeTyh9lYQcKcl4jZvOJTTKr0qT67hF8dm8OHmORy7Ds241OmZIZQda3W2wat04UzS27BcsMklvC5z62I6HMRcYvDTzP/dDNxyQjoxmzvcoCrt9dmdrzAvO7sDPWPN857DYkeWYsQZC89HoOjsyPATspN1YO2CQZl+H9aA/P21B7KzBl3u4UiTl6oE+8LTcHtgc3r+GSjACkxFfRvqmiIEvD4iclq7MBXvE+pR4gnNzCqzivTy3dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 17:17:05 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 17:17:04 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
Thread-Topic: [PATCH] drm/i915/display: WA_14011503117
Thread-Index: AQHb/YzcmaGwYE0u60aK2fCt783OZrRHZd+AgAH4ExA=
Date: Tue, 29 Jul 2025 17:17:04 +0000
Message-ID: <IA1PR11MB6467D696ACE9FFE587F1C6E2E325A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250725174657.688520-1-nemesa.garg@intel.com>
 <cb3646992ef8adc071553b18199a6f21de72f892@intel.com>
In-Reply-To: <cb3646992ef8adc071553b18199a6f21de72f892@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW4PR11MB6761:EE_
x-ms-office365-filtering-correlation-id: a99110df-f379-4aad-4962-08ddcec3bd75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7p/TMoeau7rkbT+FDVTLiepv5PsHE0ldmuUZXWcCUdtHC99yTEn2QbkGi8Go?=
 =?us-ascii?Q?AnT/+0dLM6eyf8rhnmLWB3smkc+rqH9i21ZCUbTSwHLXSWX2D0ou9PUyHto3?=
 =?us-ascii?Q?TpqV8QwqahqTkvs/b87szZvOU/+R0RqWl+NqefGy++VnQN+Rot4b0Qw/urjl?=
 =?us-ascii?Q?66WxaeEZFET+kYti13ttkVWktZvabXKYTRgSZCyRsOvNVKNoPkj0QCQvLDG9?=
 =?us-ascii?Q?beCgSjvtuai+ZqWL0fqblPil7U9JlggZB1q8x58HKRpDv8HfKUYdQSH81fQv?=
 =?us-ascii?Q?FlbOmcCZoqZU75ke6c7zLTdTh7QgMYGknn22LrC31sdoI9Kyj/WcdPUc8BSl?=
 =?us-ascii?Q?UGK3feK3s3mL1iWz3WTQIC4voeOGLA70iOpAsPyuwVz6hfYkDq0UPXpTEDoJ?=
 =?us-ascii?Q?C02JC5W6McY9a7hieVUcbJjl0HUIvJXur1d2YzyxQIp8shw4FHahyVPU8yM7?=
 =?us-ascii?Q?i0hEf5225vZ6fDlkYeesVdZDBbyRp/L4i/G8QCXTmi1ed4D4dTlzWhgeHaCf?=
 =?us-ascii?Q?LK1f/lPi0J7s69BJyso9rmWcZCp0W+4C0ZsCQwkH7fq55JTJts/5+5Hsml9X?=
 =?us-ascii?Q?xjn6D2+meuKlISQ4F4KXWPe9HBS+Tt4ZqsdrNuyjJIefLbrbQW0XpOsqOVgl?=
 =?us-ascii?Q?2GlQqUTjGFJfePdesqSEWq3EsRofp3emu2yM1MjXUqXcSaNPjpxEN6cVJK+a?=
 =?us-ascii?Q?HjU1hroRF1wZJMAtc5eEdOeV2/Z2UhH7HgoOGeSapY3CR7UfCuj5mtVfYnL3?=
 =?us-ascii?Q?KM27YMZBRDnzpyStKmrUdaNNFb3ibDNuS4ZQtNBgWAPK/TDxqpLz42p8CXeO?=
 =?us-ascii?Q?BJ2RRiCxfq8xIIOacXSIv1d+WPSo2xGk10YNm5kTQ0NcMoxCcDI+IpnG6dzY?=
 =?us-ascii?Q?mNq/P1eCQuwgCxXIMFd9KJSDfQCgrzf+2HO+aJiix6bN4Cj6/XSOqOHDPYVR?=
 =?us-ascii?Q?RR8hj5+47/5YBxk8PCoBNUqS94RLsAqWylIxtG2IPkhe48iUZ9GIVhJuncWy?=
 =?us-ascii?Q?1N/0X+1bnNOH+zMiQYRvKa8Y/4oDsgu1hmHX3wVW+IXJRiO6/jaiDLlcsGGF?=
 =?us-ascii?Q?afQaDL6+NihpREKTqhzlazpKDvCIMROtCTXc3OAxTfwBiEj4VoF9mxJBNpcE?=
 =?us-ascii?Q?btAGBwZ6Xh6PhpY+TkZ1iVXJYWaik8Dfl9+h2We6jJAfp15L3A9B1lKbiIMr?=
 =?us-ascii?Q?lb2pctBn0e6BsLcoHiX8mi/tbNZfp2ILcm4mbUB1zixWBfrqUxJPQ50whQ64?=
 =?us-ascii?Q?8vMZuLRhNQ8zwfC57bOavsmRUJ5UDiL2c0JuL2b8z/A6IEu6lmsq9uIn9ugB?=
 =?us-ascii?Q?LYnjFrzBGMjC1y+AiKkGJufuuyhLPdgFVJFDDzTz878Pm3+MvO928AKTfLmh?=
 =?us-ascii?Q?C4R98hlCHbz6Pe+RBXan5oI2ZOgBEi3GcReuLUIdEX9hwPsRFMabLivPbiq8?=
 =?us-ascii?Q?WbI69mDe0A5eeFq5xKtGtkO/vYbw7uXdY/+S5V50SCR8s2+4Tq25sQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WVn+awbHlXJtntV1E6JMf2WnoQco3MiI+WGYinNP/XGUn1cXwg4KlH4DfDKr?=
 =?us-ascii?Q?2Bj8xu7ZK5p5uD0xyBHdudLgwvMjI0Pea6FaH8KRbYLOKrEjDAA4Ep+Znlra?=
 =?us-ascii?Q?T+X8aob3utVjfAW5wjSTfBsvxSIDoM40FEfssOHPdDBAywf3W1ttbA9vNcwe?=
 =?us-ascii?Q?5PSeFK6rCnK6dxmL7K1JYEi9HCX7SJ4SJvOI6P3s0jKdSl0pvCeR+xg1pzaI?=
 =?us-ascii?Q?yMNCoBZb0ecbHwn9UvFn+biebQMkjevG9fNuLjuL2p/AAH6IFmVrCIQlmHBe?=
 =?us-ascii?Q?e9vK3MJaEkNqLWjk5GQ8oaC+w7Hijkh2o75dn/Wg0kTu1wuiKA3iApN6Dy+M?=
 =?us-ascii?Q?W1/6eBguAdhDgdFbH9Wa6AIh5ytNONyY1P0b+bZ8NKgiCCX9sSkoaFQ81XDd?=
 =?us-ascii?Q?qojUuUMQTWQUxV/yJnn923V7dXn3zCeiBA1j/0zQkFeGp33F1arTrQGhHvrZ?=
 =?us-ascii?Q?pC0Q/CHA48yGs/Far08eSh7PW8PV1WisDH1XM1uLJ7oBp86ofELJKquyhC0w?=
 =?us-ascii?Q?yLJQb/Ys/WQGC7UjhuNmcsGtC+mWH8Hm3qJjEGU2SPGBMn3JCXo1FEGc7t15?=
 =?us-ascii?Q?gs8qrjlbkCL9UkpHJpG62zfFoN8Tcfrz4cqGaDCmTnPFCFmJSvQ1rxU0sRPR?=
 =?us-ascii?Q?05L3hjGM5h47LDE6b5mUU78vf9N4zAobjKSj987eWxlxnlnTdnle2FzwtM6c?=
 =?us-ascii?Q?tFUVkzY/Hxu/D1z36RoBMsnLXDYtq06QNOpkEv1XoDTo1tH8xMcAYbwlyQoy?=
 =?us-ascii?Q?/j1ConUhzpIh+1NHFCsSqQpT2a28qldYLzagimdOPWkqf3rWkWVTtKVh9dOP?=
 =?us-ascii?Q?bJ0ZS/UqgMaPy6xYcDxAtLPhPBKV8EpMPg7sh4IOrft+rxSsEoQROv6Ny+D4?=
 =?us-ascii?Q?K2gfPQUTgbhBS8NLVAB9Vm6UN7klQkOufPwNNq69ekFuDZsmXo0vENbA4i7h?=
 =?us-ascii?Q?Hkwx4MjXFlBqEnkj1chpsCn9ucfclOwSDnWj0GIfIZgvtjIspsiOyHKoym4g?=
 =?us-ascii?Q?k9SI7Lz9+CIS40yM2lAWYnO5eFrzfZpNRKjTexPxa68EnZ7PkAOHzlkxy4Xa?=
 =?us-ascii?Q?nDdZBY0xA8b4Dn1NcdhH+VWhJvy2TQ8W86QKnrrloeNqc1tD487Pg2s3Xmsa?=
 =?us-ascii?Q?DtQcGCnPPHwHPiTo3CouxqcX6HPTYzN40WFUi01raIn1DtasRuxV1RKFvhQB?=
 =?us-ascii?Q?epEIz2KygjfbkDJhU0rLX0PyL4mS/Mrw9RzxV6gOhGLKaqriQgnt6PFIOLXq?=
 =?us-ascii?Q?pmJSoBDMM4Q9Vgf6tc5rfPso7cNsUxS6w7lYwrnFeFgq6p7vW3azMni2Hgh2?=
 =?us-ascii?Q?8vvjJ4jsbQUBlyfrwoqfk2IIBbvOUKmjt7lNglG8rQMKsbBYdqSoN3+A+IwB?=
 =?us-ascii?Q?E9zuyMIG2KfiAznPmhIREaenYHGeQbtIYjBtjfFgIjqApax0usYjn63MGU/n?=
 =?us-ascii?Q?Dn8hVYg7PFoKhb2RSqLpJRmxLHomz81mFWUghUxMzUCgYrFRztlpcZ3CNehy?=
 =?us-ascii?Q?6+gNNi3mThOBikJ/Mv1N9qKQNj27jWo/lDa6AiKwca0qBKX478nUpHqgq++H?=
 =?us-ascii?Q?fphevjble87KSI223IozFhYRV25Vw7LP0/lAVY0i?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a99110df-f379-4aad-4962-08ddcec3bd75
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 17:17:04.8694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pj5aJxgaqVfyJy2U1q0dzVFcJ/NJmdFgItLFBAU4ed3Zic/tyxmlg+LiuWxfN4fC9LWoxRLBN5WUZyUrGglcOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6761
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
> Sent: Monday, July 28, 2025 4:42 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH] drm/i915/display: WA_14011503117
>=20
> On Fri, 25 Jul 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > Before enabling the scaler mask the bit and after enabling the scaler,
> > in the later stage after waiting for a frame unmask the PS_ECC bit and
> > ERR_FATAL_MASK bit.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
> >  .../gpu/drm/i915/display/intel_display_wa.c   | 13 ++++++++
> >  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> >  drivers/gpu/drm/i915/display/skl_scaler.c     | 31 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/skl_scaler.h     |  4 +++
> >  5 files changed, 53 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 7035c1fc9033..97664fd1b9c3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -76,6 +76,7 @@
> >  #include "intel_display_regs.h"
> >  #include "intel_display_rpm.h"
> >  #include "intel_display_types.h"
> > +#include "intel_display_wa.h"
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_link_training.h"
> > @@ -1081,6 +1082,9 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
> >  	if (audio_enabling(old_crtc_state, new_crtc_state))
> >  		intel_encoders_audio_enable(state, crtc);
> >
> > +	if (intel_display_wa(display, 14011503117))
> > +		skl_scaler_ecc_unmask(new_crtc_state);
> > +
> >  	intel_alpm_post_plane_update(state, crtc);
> >
> >  	intel_psr_post_plane_update(state, crtc); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 399c08902413..0366eedacf2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -52,6 +52,17 @@ static bool
> intel_display_needs_wa_16025573575(struct intel_display *display)
> >  	return DISPLAY_VERx100(display) =3D=3D 3000 ||
> DISPLAY_VERx100(display)
> > =3D=3D 3002;  }
> >
> > +/*
> > + * Wa_14011503117:
> > + * Fixes: Before enabling the scaler DE fatal error is masked
> > + * Workaround: Unmask the DE fatal error register after enabling the
> > +scaler
> > + * and after waiting of at least 1 frame.
> > + */
> > +static bool intel_display_needs_wa_14011503117(struct intel_display
> > +*display)
>=20
> I don't think we actually need or want to have this
> "intel_display_needs_wa_N" naming copy pasted here. Yeah, we have two lik=
e
> this already, but it was never supposed to start a scheme to follow.
>=20
> BR,
> Jani.
>=20
Sure will remove this part.

Thanks and Regards,
Nemesa

> > +{
> > +	return DISPLAY_VER(display) =3D=3D 13;
> > +}
> > +
> >  bool __intel_display_wa(struct intel_display *display, enum
> > intel_display_wa wa, const char *name)  {
> >  	switch (wa) {
> > @@ -59,6 +70,8 @@ bool __intel_display_wa(struct intel_display *display=
,
> enum intel_display_wa wa,
> >  		return intel_display_needs_wa_16023588340(display);
> >  	case INTEL_DISPLAY_WA_16025573575:
> >  		return intel_display_needs_wa_16025573575(display);
> > +	case INTEL_DISPLAY_WA_14011503117:
> > +		return intel_display_needs_wa_14011503117(display);
> >  	default:
> >  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
> >  		break;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > index aedea4cfa3ce..abc1df83f066 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct
> > intel_display *display);  enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_16023588340,
> >  	INTEL_DISPLAY_WA_16025573575,
> > +	INTEL_DISPLAY_WA_14011503117,
> >  };
> >
> >  bool __intel_display_wa(struct intel_display *display, enum
> > intel_display_wa wa, const char *name); diff --git
> > a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 4cc55f4e1f9f..bbe84e4b71fa 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state
> *crtc_state)
> >  			crtc_state->scaler_state.scaler_id < 0))
> >  		return;
> >
> > +	if (DISPLAY_VER(display) =3D=3D 13)
> > +		skl_scaler_ecc_mask(crtc_state);
> > +
> >  	drm_rect_init(&src, 0, 0,
> >  		      drm_rect_width(&crtc_state->pipe_src) << 16,
> >  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
> 938,3
> > +941,31 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_sta=
te)
> >  	else
> >  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> > +
> > +void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return;
> > +
> > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }
> > +
> > +void skl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	const struct intel_crtc_scaler_state *scaler_state =3D
> > +		&crtc_state->scaler_state;
> > +	int id;
> > +
> > +	if (scaler_state)
> > +		id =3D scaler_state->scaler_id;
> > +
> > +	if (!crtc_state->pch_pfit.enabled && id =3D=3D -1)
> > +		return;
> > +
> > +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > index 692716dd7616..ec0fd80a3933 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
> >  		      enum intel_output_format output_format,
> >  		      int num_joined_pipes);
> >
> > +void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> > +
> > +void skl_scaler_ecc_unmask(const struct intel_crtc_state
> > +*crtc_state);
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
