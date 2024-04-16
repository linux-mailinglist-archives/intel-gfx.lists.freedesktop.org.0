Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D118A654A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A663112AB7;
	Tue, 16 Apr 2024 07:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hugh4POU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8DF112AB7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713253215; x=1744789215;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WFKHSlCC0EhRNFxCZzkZm2VswheZzimegV0a/nZMnZw=;
 b=hugh4POU2TooA9t9w8wW4f+EYLxvFQ5MTIcCLix/TsxzvARe3cCv0QK+
 CiFO8FaFEY7LGh5ATETwqZUVMwbwdfv4mZl8x+HNPYtNHLU3deoLH+0Xx
 LvMVmPvItA/+dEJBlFaCWXWwmvAR54hTBdh9sybX650TATY7gcSaZermz
 U6upU1LQ4NvuS+I7ZMgGEHQssDuos6QBC6WJzkDjbYOmYuqP+MDnULLMM
 Dw3yOPJ16Qa6RakfVBqcoPfla/aq8HF046O73CHuw99vYvLOXT9iL6FB2
 VxZny9qgjFZIdAV9vVPP2HO4tUJhymOX9j4TeM3JOK1jczY6T9JjxrzsM w==;
X-CSE-ConnectionGUID: j9O7mP9XQRuzfOcW8AfaRA==
X-CSE-MsgGUID: yx/L9Jk8RfmcFp4EDeJJgQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="31157503"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="31157503"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:40:12 -0700
X-CSE-ConnectionGUID: fNCF7u+0RNCCSiO+NwYdsQ==
X-CSE-MsgGUID: X4G2sT8YTxS+WrVTrBw3Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22254712"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 00:40:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 00:40:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 00:40:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 00:40:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXTVlRIKAfESYNRVaDEGu4pMXORQ9KMcUUyRXcCTFjw11ADQzGIBDSTfG4u3zjv1YSBwWqzeItgELmo2Y3KO1JOUOCc3gPcyZXc406MJKLrFmfItPiMXOeO6a47uTmr4pxt/4A3hH2To2ew2HANT9JNSsfCNxxanCBT0NNMuCuSloLqPexBjZs1k4K/5XpmcraNCQ70QpKIrtzMOiOkdKTARtEOH0La///+ou0VGjd8xKv6JPoNI1Tg1tpFFgwuZ6IRHBhnVqO1dGA+juaiWdRzuxA50A0xXjKGgOT0bz4gNTLbtqRk7jxtmk/uAtYvEcagr1k7TZEE356IdFXIjvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJ4ugWgS2KRYVBeBZG4g/SE2NHWvkQEHrIIHdeRO6ho=;
 b=RPPMcHGCH/FcFpjwDc582fYlF/hHZqG7Kmffv4Cwk8d8XmUnT0Nda3kVV2POOioNTcplKB11ZXU9UShwA7uyxYAWp0EEpESKrkm14MbG1JH4in/+pHUoU2Z5sGcRvJV9oFf9WseyxE7NA3ZEC9RigmGbKTW/32GCOQ+lLJRQ4w9CL71XgBMe0bueamSkhq1VLBHOKyWeUZhHnJNy4xthQ66IHxxsrxOWcSx+CpvNIhIaLo5P9BkSIX6gm6/GdUVDgzzz+qEqM8AnOXVCW0FhDP6nUlCVA5vcqK9fKv5c+tTHgJuPk4f4cov7obuNf4P/y75Sx8CkT/zx4TIhrpiPzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8184.namprd11.prod.outlook.com (2603:10b6:8:160::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Tue, 16 Apr
 2024 07:40:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Tue, 16 Apr 2024
 07:40:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
Thread-Topic: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
Thread-Index: AQHaj8/tm1CRic5mOkm72FCaa91yUbFqgmeAgAAAYKA=
Date: Tue, 16 Apr 2024 07:40:07 +0000
Message-ID: <SN7PR11MB6750EBFECB57218ECF21D340E3082@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
 <20240416072733.624048-3-suraj.kandpal@intel.com> <8734rl21wk.fsf@intel.com>
In-Reply-To: <8734rl21wk.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8184:EE_
x-ms-office365-filtering-correlation-id: a00ea5d8-eff6-438c-051c-08dc5de87035
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?us-ascii?Q?mJX+80vJWgju789znNF3/NGNSn52yKsKrAvfLgi2HOn/BWaMsWaGkH5A/YSt?=
 =?us-ascii?Q?GcOZEWG8zU7M3cd+yfL7GlY2M+0WdQqWmThqmaH4JOsQXTXSbuviB0tVhdwO?=
 =?us-ascii?Q?C2WXlegGKwUMruQsBesVCurhtNqDjAqnfAcdfDiYAhXXEYNiwlljmmeP1qFp?=
 =?us-ascii?Q?X1VTtji92UfqbKVAwGuKmOlJwT53Db0O8ReyeG6jmPqY9XW1CrChRsTxe2/S?=
 =?us-ascii?Q?5XZCVL3Z/z74w94T5y9ZsJrw8kEpXgceomG0HN52DeySbSg2zJ4ZiQATWXGq?=
 =?us-ascii?Q?KmMEEKHSZn17/YweyxhyqNq+p7EmNSej8petbcOCetO+uK/fW2KtLKWuF8o1?=
 =?us-ascii?Q?kzNpL0TXllf0ffbTkCSFknNz/adCnbaEgqh+mATwPK1lRxo6a7Ek5cdFh9VO?=
 =?us-ascii?Q?NKZ+lrvml5PdrZ76S59d2qSkPqy6A9lyzoMVkipS9RTILmaK50XTC7yiMTkm?=
 =?us-ascii?Q?ZF5Vj71YUoc5rILHalj6iBQAy6c4AhvuD0SSJJmG+3iI1MfXtNB6kktt0O7n?=
 =?us-ascii?Q?xAl+BhxGgHxJoPGk/5g9/XOpxPRvHrLcdsm74WGNimOZUK/Rq4yO1EXV1Gtt?=
 =?us-ascii?Q?+naY+U65thDtIH946jNDo46rOYvkcDMN9a9MfYC31HOqBYtWlZx+AdWSMov1?=
 =?us-ascii?Q?xuH66Ni061QAqQ01ONg+Uqgn5N9Pnp41fv7cYcdR7qL87vLF5Y5HTxWVG7Ru?=
 =?us-ascii?Q?2MNwGynBofV0MMAzD4+QY1zhJml5LqSTETT5PBlGm9bx9jKf3Bb6xOn6E7AV?=
 =?us-ascii?Q?/Mm/jwNcWf3RB9c82nmbzvwsHe5KpNh0G4DEaFf2ERJmkbFsBV+iKImvCfJ+?=
 =?us-ascii?Q?jZvLwWmR5dgvsuo/2esUgj3b0CGAL0/NvL1Tyetgj3aanuREvKm/GFzajTtE?=
 =?us-ascii?Q?OiZgt/+S6fHL7eb6JTqWKAcbBvn+pAiGydGpnZjYqKLV6XO1Omyyo2oAV3er?=
 =?us-ascii?Q?ArfBREQnQKy+DCtzUsbHqaIQaqkC+bTp7XB6OtSeB/hYRLXPkB0gxwlKf9ef?=
 =?us-ascii?Q?AOq3Di9BM4SFtzkrs9bsI/421eLEJTKZFGthclyOQSxbT+Fr28gjGULdBT0j?=
 =?us-ascii?Q?djfR4hSxmdWa0fO3z5emCEww0xK9QtpwKO91spRuDPXnGf2RiXCX40ZJuSFt?=
 =?us-ascii?Q?RXNVKGV8tcJZwEF8rwbjdKXbnlYLZH8nyvBNkPO1SXMx0rh1TpaL95fzFodj?=
 =?us-ascii?Q?EG2x89/4avUV2WVru3dM2LeghqGhIJCBUeLptHR5jRpSaXPdsj0VH3vM9dE7?=
 =?us-ascii?Q?r8UGhAtno/CHrcK7E69ip8iWXmMrXBXYA/Jr2vPJC9c+/8JE6Z7cBzhEfRE9?=
 =?us-ascii?Q?8KQRNeqCh/d5kGOJA1t74lJw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gY4WlwkZpnwDufqkGe3+YHInbfv2H6Es4B0f7yo8eyuOoQ2iFJh77zpHhqB7?=
 =?us-ascii?Q?w5ya6sbTgKU51i3YdtAzbZihBAVPOie4kS/Hw46TqLcMAGtH6TGjMW0VKyiL?=
 =?us-ascii?Q?5+pUtB3pwLKXHuJvB9Dg+OAp4DvFaEuuiWWOEavUIHTHMOcBcICmXgmagLRQ?=
 =?us-ascii?Q?CfTSh0yLqM5M//dvlb99yEF4n8ewXS7bx953Imxs0HmhFChZdbLD40RAnSU2?=
 =?us-ascii?Q?FXEnfu3zo+MxWnGAP293rXhXNI5rNOVkQdGQ5tZ9x3Tp6hLhEPtmItlyA8d4?=
 =?us-ascii?Q?h0OtcTphbM66llbeiB2zSoYmgiXYBqBiIJ2uMyjbjIOkF3eiRHK1GSdIqcVl?=
 =?us-ascii?Q?j3m0uQSXTsIqB8eWUElYycbPPVWJbBW5AY2f8/ORRzgAJWh7m65ZIzMTKB6N?=
 =?us-ascii?Q?+Eb8nkTYS6o6ugRWybumKoy67fWylkvRSvR8Grc7VR3EXd+SyR72dOzjHTvE?=
 =?us-ascii?Q?ODWhMdOmScttqMOaNf9OepWYcf/x4AvvwpevgbRlsU4XmJIxVN98MhbUwXCN?=
 =?us-ascii?Q?aBaY2pwMoAneOX2l+POScITTpSK0Z+9lxVjMnny8BrIF6FwjVA+kQRi5/4fj?=
 =?us-ascii?Q?x87hc2l1HlXyQkD06DYVLecehtHd+iLLxyoHS4R0CrcntqQOEBfAM7/1HkDl?=
 =?us-ascii?Q?M9eL3hZ7osHa7aOSpzeNcoN/Pf2yPF8KNb+CcpRcWCzP5sQDtNHBc6OaKClD?=
 =?us-ascii?Q?MPyOnFjAIZL1dyAQcVKysLtVhgrDTCWKAUgxTF7G3GKAcLBEnj+GQMATbdcF?=
 =?us-ascii?Q?wsBq9vvqHFUCVZoSaroRQK+lAaZMdX2VQMvCjEs0j/KMbAMmyacV7BQ/oNxO?=
 =?us-ascii?Q?4GS52F/LBkglcW7116DGv1cYoL0GGV7JN0uoPdqClL2FVRTYWaWjVQZlTY+Q?=
 =?us-ascii?Q?LvAcdqRUFLroNaT2uDnuJJWYKoVZ19lYH7Du/0Z2EA4EkaulJyXdz+nnwLjW?=
 =?us-ascii?Q?g4WjnfRN0vpNX/qYnN4GaSgnEQOcM14l832yp9CWHeVtjHKinw2KhcxTsS5o?=
 =?us-ascii?Q?Y8uC1jkjlijEZMvEdFRa3VJta+rtg+FYZkYRoD9W8ixoDMGErjIs4CNCu+5u?=
 =?us-ascii?Q?p8lmBdTTAV5VxKNmuDc74XhFl76Uk/813f4HWVAL06oegDBk5FXittCFQY78?=
 =?us-ascii?Q?GUkoDOT71jfHgS5y55oFqW7mmeYz38oB3T1L0vi6/pJMY5jozFHyKiBfY6+P?=
 =?us-ascii?Q?PX/Uk4td+UsiYRVvUQ5+Ffz2vivZIogcrR9Mxy0LdK8C9UhF1/LvsjtuN1GA?=
 =?us-ascii?Q?6Bs3UfCLR1zEdMYK1511gj996X+qv8sgCe+Pe1Avd5HfITCfx4mywBDL4/St?=
 =?us-ascii?Q?eOj0CvvP9LGsyWTDxTEqVxX6ofHWeE+DNnu/dZfxJ6IFnR+AoNGEsL9ta1HY?=
 =?us-ascii?Q?9ZuKYFjrziJeec/efCnQ+9HP6tn2bAJaEWn6kOqSFffLb/G2hGA0QkEo9iWV?=
 =?us-ascii?Q?SGXyghrD5pmteFz+DVGbrkaYd3KLYVIlsUmVhsF1KsjSgo29J/KX6vlm4Pwf?=
 =?us-ascii?Q?SK2k8wVtJcPFZP1FXFFm3n17BbU2TAXNUCwe5WIlMt+MjaSKH+/QqMNdApv5?=
 =?us-ascii?Q?4y86wg7jDKBXHaPpJ+g8ovUtEntwX2gitUUD0MHy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a00ea5d8-eff6-438c-051c-08dc5de87035
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2024 07:40:07.5582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xRHT60Q/ZIkp5kon8+7XG7Z5sVDI11Y/uT/So2IIcnZcZiX7zuIq6jIWUToVbfdi9hVt8nl1q9Vi+/p3/BUwaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8184
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
> Sent: Tuesday, April 16, 2024 1:08 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
>=20
> On Tue, 16 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add SCLKGATE_DIS register and it's register definition which will be
> > used the next patch.
>=20
> Please just squash this into the next patch.
>=20
> (And please don't reference "the next patch" in commit messages, because
> it's meaningless once this becomes a commit in the history.)
> >

Sure will squash this with the next patch.

> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 3f34efcd7d6c..beec91a2f493
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6250,6 +6250,10 @@ enum skl_power_gate {
> >  #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
> >  #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
> >
> > +/* SCLKGATE_DIS */
>=20
> The comment is useless.
>=20

Will drop it

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
> > +#define SCLKGATE_DIS			_MMIO(0xc2014)
> > +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> > +
> >  #define WM_MISC				_MMIO(0x45260)
> >  #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
>=20
> --
> Jani Nikula, Intel
