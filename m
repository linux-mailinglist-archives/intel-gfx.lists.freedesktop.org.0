Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0796A885512
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 08:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F290610E144;
	Thu, 21 Mar 2024 07:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKBVWHLo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC0310E130;
 Thu, 21 Mar 2024 07:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711007043; x=1742543043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fuby3ywbzdwUApuvwuJeoId4dddE15PKbanLnSCAhR0=;
 b=QKBVWHLo4SSGyC+BxJ03/w6RS1xJNhbdUEm+nTSNFgUihWCmBIP7QDII
 a2VO+oMQ0sTioNdsdfIinVtuRMIitX4kUSovP85GMNiydiVhaUal98d1d
 /Nbs1TT4d5Bwty0ShF6ouAOd+nDVBkZWtOzTzZlFhDtOhv5aawHbnGE2w
 s/Dj3qN4TxY2hVQKd71SE5wOliEEO/QTc7TKOOIA39kZC8GlVcr4oQokJ
 jNEIWI8vkusrzUTUZRfMQZmlC48zaWaNmL3gk68tsnHIvWVbkDqEflKa7
 cv8CMycr+uFheJRTqV/nFw3zbDuIhuJFcP2EUT8EdYjre3g6v8WB0PQnR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31413214"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="31413214"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 00:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="15065940"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 00:44:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 00:44:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 00:44:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 00:43:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7PjMD7nw+zh9MNMW3TwgdgCoPr/yFvqiicCgLB86lQ6w2kMnFqd+4gL4FIom4NpuDYJ4xE8MwOyrTEbDrtO1DNK8MA9ZVK70PCzPbS2zPUvrFkE3ksU0hWYaZ1PjUKzjsQzpJJwpoY+NmmB9pi89McqdK7+SA7QLFxhT370tBlcRJXNZLcVDjG/8c/rakknp5/FLvQoAsS03aWUU64Fleaon3UxKRj+KanD/MqG9YqZd7spvvAATwa4VTbyco88s2pCCN0Y3sM0Q53RqA4MvMOs3iu479HnPtRL6cBa5/l/tX3pQH4mYxclWbf03f754lvIb9bQm1kgXXbU5G7KnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h7rQQrkvVwqbETIQhbdyGaQvGwHpR7SMw3oqbL6I0oY=;
 b=JiLVukm7rWv1yZYTtb+RGlqqwBMZHLlI84n9rQ0vAUl4bQ8KZfqLsKPzw/KrYwryw0dbrFo9h3aTkdmCsRvnnmHWsxP2W/mWXI/teHiOrtzw+hRVlNvYyhkGerKXUCwBuLhz6fn5cLcKvKJHPHP3EkNCTB07eUEBoACguJNNeSufjQwHMvNnF78SJ/2ZiuMt7bf3TDpAvDLOt6qMzm4NlX3XztMucN91SRQClcTumwzM8KUAhCZALnUOv55fnaVKMssKKY0g6IxJ54VJ16YJfmdLqnUkUN0mBqRtRAqeGphMgVdptLY4BS5lyVME7XCr14x8Zy7DV0rjGoLl2x88Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.11; Thu, 21 Mar 2024 07:43:49 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.022; Thu, 21 Mar 2024
 07:43:49 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Topic: [PATCH v3 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Index: AQHaeTmUkPymwZcLzkGpdMGMQChhfrFBz86w
Date: Thu, 21 Mar 2024 07:43:49 +0000
Message-ID: <DM4PR11MB6360EB571BC3C8051993F5DBF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-2-luciano.coelho@intel.com>
In-Reply-To: <20240318133757.1479189-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8210:EE_
x-ms-office365-filtering-correlation-id: 15f8641a-742d-4f0f-9214-08dc497aa5e7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wdyfDwHxyUfbh9YMHwD3y4yPwB0IbsJGZ/y2rxJLF6B/4g3Yer2b4/wBw8yW+rm21DuU+X1BD+5yee9g2BJ8QcUSBmrWYnN0ZPdkd66e3t4CNRmamyMteXuQXEXhX9vgFtdoxfcDthwcAtP1eZ/am48+uuzctsFj4V7jHabsM81tOQ1d+W21qtTfSs6AorLIqRY7BsJ+7YXScqpw1T+ehf6MjY+5O1hxwvILd/9ul7wWI2GaNzckG0JbopXJ8AwKhR1KzpXotsegdZX4i5pxY7BoKzpVPsl3zKLq+BDfNo58xlgUHOEvFDsHgIE4hv0uuZzFHlffcHqN+WPaDq1c14HtYRRjIkBNXP57jd8sZ7ELc+5n1RD/8xkWN/tIXSJWsHe2FHmydHtbWlM9HZBLUT5VGQgzq+0mmEp14ayLWEaL7Vw+cy+kx6RaOYOs7WLF55TH1WyVScnisfLh96vMM4N0OedrDUdGSiV+o9shF+Y9WJIqLrhfuAbwWxxGkgUaRIDlVkWZP5MIVHGFj7wF8VpCYaY8q03x8pVT+iyNyFn3rYtw733CCf0eVL4Q28mc58K+Rale6kUitvFh1TQYK3lTvPNBQnLgbypVaWbjMiBiSyJTOVVG6DIFxiexnv1uK6u+hnpP1OsAO+Ec/Z2bS2ycSi2wybXAFqQaD16V2qGplZRkkPYNNjqQo0BtnyiqtnSQkZyYZ/cbGU0f7mppLhixYGTdKyJteNhZdq1aT08=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zh62y9pIrra0RFV4QXSY1yn1zyzXmYodOvWhK5dMQ1OMyiYtgHA6+eUDoVvy?=
 =?us-ascii?Q?upaALdy0DXZ9OaHIsm7E+SbhdP6j3vF72Y2yhgufXE+UzXVVIMfvvlH12Xqq?=
 =?us-ascii?Q?jwPI7B/yX90T3RgTOiTp88UdYRRk9av9tvzaFqu9epukQkBaSiKQ7DNAOsKb?=
 =?us-ascii?Q?/4a5Th6RXr0RntdhViVJmzrAJG5cme9hWX2gdBEulJVQ3DyC7yr2zbQtB252?=
 =?us-ascii?Q?gcYjDIm92BfpPaxyNT9ZDm4qsI14bIBWoAgpvXtYD/ue4dI3stz0x2QdNRdl?=
 =?us-ascii?Q?qzMDHxa5A/kNd/xd8e3DrynHSlJAjpPxxUDaR/rfhtwuRrCmMwcQ/JaMVSz1?=
 =?us-ascii?Q?d1q3pW/twh66P9oVDvIGe8mmX3a9HEqUTRaeOxN86YUVp3+FRa6Edu1REG+C?=
 =?us-ascii?Q?X1wJBWlN3yfMjSeda6s5t/IvrsZE+8ZDSVHSiMuT432bF5eLW93Ut6KiFqp1?=
 =?us-ascii?Q?Ph5s7CFMoHAYDIIw0wZk5Z/ISeH1kjc23HykNy7l+5B7MNitMobjmpzEg1nn?=
 =?us-ascii?Q?vtXZaePeCqqbNnVcS49it7KtmFmK/By4ni5BrdSngrYisiqp2llBUMbHPL8W?=
 =?us-ascii?Q?d5DGmL8m8Ci48O22y2fFXBF8HEQrc/5F1qQc5VAHrT56Os9TG647h1RgVWNN?=
 =?us-ascii?Q?6Qy3QByO+4LyR7rMf8HanldsIwLGZv1p5OSLVCkV99DiEjcfRei85mD3LHaT?=
 =?us-ascii?Q?VRVTaHdQqhYXbJ8baVPPMecojAT3pNFlrrh3c2JR2uAEpA/Ha+DcW+aA+cwB?=
 =?us-ascii?Q?y7SUBK91Vo8fMeRsYp1hxlimR3z8nPC7JgoJZga7HmreO7D3YCtvvd27CN2S?=
 =?us-ascii?Q?I8g3MIu8iJd82MOzHbezROLO/VZ44gSgumY68x7S6aVefX11pI9WsiRi2nfT?=
 =?us-ascii?Q?qAgWmRiSCYmqxI3UyXzyWoKxO36+F/7/ukVSdaqe+D7EUGkgeCk/vfP522UA?=
 =?us-ascii?Q?KWGqeW9XszBLkseH598Soh9Fes1xnqix0sWSw2cQcyGJR3axQrvBu681BUph?=
 =?us-ascii?Q?fXHR0rg+lXKu4rMdgdYka2+H4rQ8tBpvn0oPWW/FGMJiuBd87fuyGdzcPuex?=
 =?us-ascii?Q?vjUjKmlPoI70KJdarb2BF1xjeSeBo5mSg7i7FaYiEZifAvxCfV9UDtRJkuCd?=
 =?us-ascii?Q?jCOv3uB5doBvVbRUr/7ILfuAQLWNKSZ4g1VpPL5L3X7/eKIzmX3Bm/HIwMud?=
 =?us-ascii?Q?LD+SoOddy8ZQ/E4OCXhJb3FTLRhJgcQujgD3TtUt8RGi2rKA2QO9FxxICswp?=
 =?us-ascii?Q?9N+Ttmh0iNDHo243qaH4IcxKNg+Bo9vUQYSV944Sj0oLzAWOVOZ3tNYD7A6r?=
 =?us-ascii?Q?vvAkwDFGq+SnPxGIsB6sWita8P2t1vnwBq0wP4vp2qKVgCkBOyN126u6bM+k?=
 =?us-ascii?Q?HV/GVT5A4bCXzkV9t5TvBvRwXBYkosC5aq301OT8i9CXDOrCrbPS50uqOhoo?=
 =?us-ascii?Q?t851s8tq4rmHB6k8V4fuwLAbeCQQ7CwQx2w+RsW1Xg8mAEpFOMHfK8nF7l4T?=
 =?us-ascii?Q?ap0Mxjoiaf7zSD8kzYhlejAy6abu1jXLDlAUjQkiXmz+XGuKnFiMwXkS7Eir?=
 =?us-ascii?Q?JEm0ZxPhNG9MOmqbm9YRhvjNxozvF8ELldzXX9+C?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15f8641a-742d-4f0f-9214-08dc497aa5e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 07:43:49.7745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+BuB40rM66yHVe0MtNdlmvmuxAiS9tBvp1mlZ0NH1+TzvY5P5RMi08/S6GXgO39+592gljPUJ0iFmO9ImAfPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
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
> From: Coelho, Luciano <luciano.coelho@intel.com>
> Sent: Monday, March 18, 2024 7:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v3 1/4] drm/i915/display: add support for DMC wakelocks
>=20
> In order to reduce the DC5->DC2 restore time, wakelocks have been introdu=
ced
> in DMC so the driver can tell it when registers and other memory areas ar=
e going
> to be accessed and keep their respective blocks awake.
>=20
> Implement this in the driver by adding the concept of DMC wakelocks.
> When the driver needs to access memory which lies inside pre-defined rang=
es, it
> will tell DMC to set the wakelock, access the memory, then wait for a whi=
le and
> clear the wakelock.
>=20
> The wakelock state is protected in the driver with spinlocks to prevent
> concurrency issues.
>=20
> BSpec: 71583

These are internal links, not sure how useful they will be for upstream dis=
cussions.
Give the relevant details here which is better I believe instead of an inte=
rnal link.

> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_de.h       |  97 +++++++-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_driver.c   |   1 +
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 226 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  30 +++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  8 files changed, 356 insertions(+), 8 deletions(-)  create mode 100644
> drivers/gpu/drm/i915/display/intel_dmc_wl.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 3ef6ed41e62b..af83ea94c771 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -270,6 +270,7 @@ i915-y +=3D \
>  	display/intel_display_rps.o \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
> +	display/intel_dmc_wl.o \
>  	display/intel_dpio_phy.o \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h
> b/drivers/gpu/drm/i915/display/intel_de.h
> index 42552d8c151e..6728a0077793 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -13,52 +13,125 @@
>  static inline u32
>  intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> -	return intel_uncore_read(&i915->uncore, reg);
> +	u32 val;
> +
> +	intel_dmc_wl_get(i915, reg);

I think one fundamental issue in taking the lock at the granularity of
every MMIO, we risk adding latency here. We should profile the time
it adds.

For modeset for ex, we will end up programming multiple MMIO's from 1 place
But every MMIO call will take the wakelock. This is overkill, instead we ca=
n just take
the lock once, do our stuff and then release it.=20

> +
> +	val =3D intel_uncore_read(&i915->uncore, reg);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return val;
>  }
>=20
>  static inline u8
>  intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)  {
> -	return intel_uncore_read8(&i915->uncore, reg);
> +	u8 val;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	val =3D intel_uncore_read8(&i915->uncore, reg);

Same here and all similar functions.

> +	intel_dmc_wl_put(i915, reg);
> +
> +	return val;
>  }
>=20
>  static inline u64
>  intel_de_read64_2x32(struct drm_i915_private *i915,
>  		     i915_reg_t lower_reg, i915_reg_t upper_reg)  {
> -	return intel_uncore_read64_2x32(&i915->uncore, lower_reg,
> upper_reg);
> +	u64 val;
> +
> +	intel_dmc_wl_get(i915, lower_reg);
> +	intel_dmc_wl_get(i915, upper_reg);

I guess if the register falls in the range, taking just 1 wakelock should b=
e enough.

> +
> +	val =3D intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
> +
> +	intel_dmc_wl_put(i915, upper_reg);
> +	intel_dmc_wl_put(i915, lower_reg);
> +
> +	return val;
>  }
>=20
>  static inline void
>  intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> +	intel_dmc_wl_get(i915, reg);
> +
>  	intel_uncore_posting_read(&i915->uncore, reg);
> +
> +	intel_dmc_wl_put(i915, reg);
>  }
>=20
>  static inline void
>  intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)  =
{
> +	intel_dmc_wl_get(i915, reg);
> +
>  	intel_uncore_write(&i915->uncore, reg, val);
> +
> +	intel_dmc_wl_put(i915, reg);
>  }
>=20
>  static inline u32
> -intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u=
32 set)
> +__intel_de_rmw_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> +		    u32 clear, u32 set)
>  {
>  	return intel_uncore_rmw(&i915->uncore, reg, clear, set);  }
>=20
> +static inline u32
> +intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear,
> +u32 set) {
> +	u32 val;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	val =3D __intel_de_rmw_nowl(i915, reg, clear, set);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return val;
> +}
> +
> +static inline int
> +__intel_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t=
 reg,
> +			       u32 mask, u32 value, unsigned int timeout) {
> +	return intel_wait_for_register(&i915->uncore, reg, mask,
> +				       value, timeout);
> +}
> +
>  static inline int
>  intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg=
,
>  			   u32 mask, u32 value, unsigned int timeout)  {
> -	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout=
);
> +	int ret;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	ret =3D __intel_wait_for_register_nowl(i915, reg, mask, value, timeout)=
;
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return ret;
>  }
>=20
>  static inline int
>  intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t =
reg,
>  			      u32 mask, u32 value, unsigned int timeout)  {
> -	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value,
> timeout);
> +	int ret;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	ret =3D intel_wait_for_register_fw(&i915->uncore, reg, mask, value,
> +timeout);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return ret;
>  }
>=20
>  static inline int
> @@ -67,8 +140,16 @@ __intel_de_wait_for_register(struct drm_i915_private
> *i915, i915_reg_t reg,
>  			     unsigned int fast_timeout_us,
>  			     unsigned int slow_timeout_ms, u32 *out_value)  {
> -	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
> -					 fast_timeout_us, slow_timeout_ms,
> out_value);
> +	int ret;
> +
> +	intel_dmc_wl_get(i915, reg);
> +
> +	ret =3D __intel_wait_for_register(&i915->uncore, reg, mask, value,
> +					fast_timeout_us, slow_timeout_ms,
> out_value);
> +
> +	intel_dmc_wl_put(i915, reg);
> +
> +	return ret;
>  }
>=20
>  static inline int
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 2167dbee5eea..c40719073510 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -26,6 +26,7 @@
>  #include "intel_global_state.h"
>  #include "intel_gmbus.h"
>  #include "intel_opregion.h"
> +#include "intel_dmc_wl.h"
>  #include "intel_wm_types.h"
>=20
>  struct task_struct;
> @@ -534,6 +535,7 @@ struct intel_display {
>  	struct intel_overlay *overlay;
>  	struct intel_display_params params;
>  	struct intel_vbt_data vbt;
> +	struct intel_dmc_wl wl;
>  	struct intel_wm wm;
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 87dd07e0d138..e4015557af6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -198,6 +198,7 @@ void intel_display_driver_early_probe(struct
> drm_i915_private *i915)
>  	intel_dpll_init_clock_hook(i915);
>  	intel_init_display_hooks(i915);
>  	intel_fdi_init_hook(i915);
> +	intel_dmc_wl_init(i915);
>  }
>=20
>  /* part #1: call before irq install */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 90d0dbb41cfe..1bf446f96a10 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -97,4 +97,10 @@
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>=20
> +#define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
> +#define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
> +#define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)

For the start, having just 1 wakelock is good. But plan to extend
to include remaining wakelocks as well. This will help with latencies.

> +#define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> +#define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> +

We are missing the use of WAKELOCK_STATUS. This is the one which
should be used to decide if programming can be done safely in the thread.

>  #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> new file mode 100644
> index 000000000000..5c3d8204ae7e
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -0,0 +1,226 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2023 Intel Corporation  */

We can change it 2024

> +
> +#include <linux/kernel.h>
> +
> +#include "intel_de.h"
> +#include "intel_dmc_regs.h"
> +#include "intel_dmc_wl.h"
> +
> +/**
> + * DOC: DMC wakelock support
> + *
> + * Wake lock is the mechanism to cause display engine to exit DC
> + * states to allow programming to registers that are powered down in
> + * those states. Previous projects exited DC states automatically when
> + * detecting programming. Now software controls the exit by
> + * programming the wake lock. This improves system performance and
> + * system interactions and better fits the flip queue style of
> + * programming. Wake lock is only required when DC5, DC6, or DC6v have
> + * been enabled in DC_STATE_EN and the wake lock mode of operation has
> + * been enabled.
> + *
> + * The wakelock mechanism in DMC allows the display engine to exit DC
> + * states explicitly before programming registers that may be powered
> + * down.  In earlier hardware, this was done automatically and
> + * implicitly when the display engine accessed a register.  With the
> + * wakelock implementation, the driver asserts a wakelock in DMC,
> + * which forces it to exit the DC state until the wakelock is
> + * deasserted.
> + *
> + * This improves system performance and system interactions and better
> + * fits the flip queue style of programming.  Wakelock is only
> + * required when DC5, DC6, or DC6v have been enabled in DC_STATE_EN
> + * and the wakelock feature enabled in the driver.
> + *
> + * The mechanism can be enabled and disabled by writing to the
> + * DMC_WAKELOCK_CFG register.  There are also 13 control registers
> + * that can be used to hold and release different wakelocks.  In the
> + * current implementation, we only need one wakelock, so only
> + * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
> + * potential future use.
> + */
> +
> +#define DMC_WAKELOCK_CTL_TIMEOUT 5
> +#define DMC_WAKELOCK_HOLD_TIME 50
> +
> +struct intel_dmc_wl_range {
> +	u32 start;
> +	u32 end;
> +};
> +
> +static struct intel_dmc_wl_range lnl_wl_range[] =3D {
> +	{ .start =3D 0x60000, .end =3D 0x7ffff },
> +};

There are some registers (interrupt registers etc). which do not need wakel=
ock.
Have we considered those.

> +
> +static void __intel_dmc_wl_release(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +
> +	WARN_ON(refcount_read(&wl->refcount));
> +
> +	queue_delayed_work(i915->unordered_wq, &wl->work,
> +			   msecs_to_jiffies(DMC_WAKELOCK_HOLD_TIME));
> +}
> +
> +static void intel_dmc_wl_work(struct work_struct *work) {
> +	struct intel_dmc_wl *wl =3D
> +		container_of(work, struct intel_dmc_wl, work.work);
> +	struct drm_i915_private *i915 =3D
> +		container_of(wl, struct drm_i915_private, display.wl);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	/* Bail out if refcount reached zero while waiting for the spinlock */
> +	if (!refcount_read(&wl->refcount))
> +		goto out_unlock;
> +
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL,
> DMC_WAKELOCK_CTL_REQ, 0);
> +
> +	WARN_RATELIMIT(__intel_wait_for_register_nowl(i915,
> DMC_WAKELOCK1_CTL,
> +						      DMC_WAKELOCK_CTL_ACK,
> 0,
> +
> DMC_WAKELOCK_CTL_TIMEOUT),
> +		       "DMC wakelock release timed out");
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +static bool intel_dmc_wl_check_range(u32 address) {
> +	int i;
> +	bool wl_needed =3D false;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
> +		if (address >=3D lnl_wl_range[i].start &&
> +		    address <=3D lnl_wl_range[i].end) {
> +			wl_needed =3D true;
> +			break;
> +		}
> +	}
> +
> +	return wl_needed;
> +}
> +
> +void intel_dmc_wl_init(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +
> +	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
> +	spin_lock_init(&wl->lock);
> +	refcount_set(&wl->refcount, 0);
> +}
> +
> +void intel_dmc_wl_enable(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (wl->enabled)
> +		goto out_unlock;
> +
> +	/*
> +	 * Enable wakelock in DMC.  We shouldn't try to take the
> +	 * wakelock, because we're just enabling it, so call the
> +	 * non-locking version directly here.
> +	 */
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, 0,
> +DMC_WAKELOCK_CFG_ENABLE);
> +
> +	wl->enabled =3D true;
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +void intel_dmc_wl_disable(struct drm_i915_private *i915) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	flush_delayed_work(&wl->work);
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (!wl->enabled)
> +		goto out_unlock;
> +
> +	drm_info(&i915->drm, "DMC_WAKELOCK_CFG refcount %d\n",
> +		 refcount_read(&wl->refcount));
> +
> +	/* Disable wakelock in DMC */
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG,
> DMC_WAKELOCK_CFG_ENABLE,
> +0);
> +
> +	drm_info(&i915->drm, "DMC_WAKELOCK_CFG read 0x%0x\n",
> +		 intel_de_read(i915, DMC_WAKELOCK_CFG));
> +
> +	refcount_set(&wl->refcount, 0);
> +	wl->enabled =3D false;
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	if (!intel_dmc_wl_check_range(reg.reg))
> +		return;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (!wl->enabled)
> +		goto out_unlock;
> +
> +	cancel_delayed_work(&wl->work);
> +
> +	if (refcount_inc_not_zero(&wl->refcount))
> +		goto out_unlock;
> +
> +	refcount_set(&wl->refcount, 1);
> +
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
> DMC_WAKELOCK_CTL_REQ);
> +
> +	WARN_RATELIMIT(__intel_wait_for_register_nowl(i915,
> DMC_WAKELOCK1_CTL,
> +						      DMC_WAKELOCK_CTL_ACK,
> +						      DMC_WAKELOCK_CTL_ACK,
> +
> DMC_WAKELOCK_CTL_TIMEOUT),
> +		       "DMC wakelock ack timed out");
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> +
> +void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg) {
> +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> +	unsigned long flags;
> +
> +	if (!intel_dmc_wl_check_range(reg.reg))
> +		return;
> +
> +	spin_lock_irqsave(&wl->lock, flags);
> +
> +	if (!wl->enabled)
> +		goto out_unlock;
> +
> +	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
> +			   "Tried to put wakelock with refcount zero\n"))
> +		goto out_unlock;
> +
> +	if (refcount_dec_and_test(&wl->refcount)) {
> +		__intel_dmc_wl_release(i915);
> +
> +		goto out_unlock;
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&wl->lock, flags); }
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> new file mode 100644
> index 000000000000..b649a278be71
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2023 Intel Corporation  */
> +
> +#ifndef __INTEL_WAKELOCK_H__
> +#define __INTEL_WAKELOCK_H__
> +
> +#include <linux/types.h>
> +#include <linux/workqueue.h>
> +#include <linux/refcount.h>
> +
> +#include "i915_reg_defs.h"
> +
> +struct drm_i915_private;
> +
> +struct intel_dmc_wl {
> +	spinlock_t lock; /* protects enabled and refcount */
> +	bool enabled;
> +	refcount_t refcount;
> +	struct delayed_work work;
> +};
> +
> +void intel_dmc_wl_init(struct drm_i915_private *i915); void
> +intel_dmc_wl_enable(struct drm_i915_private *i915); void
> +intel_dmc_wl_disable(struct drm_i915_private *i915); void
> +intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg); void
> +intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg);
> +
> +#endif /* __INTEL_WAKELOCK_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile in=
dex
> 3c3e67885559..a080c9e6f372 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -279,6 +279,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_vdsc.o \
>  	i915-display/intel_vga.o \
>  	i915-display/intel_vrr.o \
> +	i915-display/intel_dmc_wl.o \
>  	i915-display/intel_wm.o \
>  	i915-display/skl_scaler.o \
>  	i915-display/skl_universal_plane.o \
> --
> 2.39.2

