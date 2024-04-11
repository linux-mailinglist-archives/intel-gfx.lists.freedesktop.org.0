Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD688A0CA0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 11:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569CA10F4C0;
	Thu, 11 Apr 2024 09:40:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="by5Vix13";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28CB110F4C0;
 Thu, 11 Apr 2024 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712828434; x=1744364434;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRok56fVNfOowXDO/KrDJeNwEIZldXon9EyPNGByt9o=;
 b=by5Vix13u7wdBYeA4SBieuF2tBsaNqwsy6Fi0p8dVjGXfjSRomOBEICk
 HpWA1jUrOxILWHRdk9YK9vxGbAcQSYEey2JFFy63kJQ6WkobMZ7mZGFJM
 s1sjllMbA82R5vHyz8/GJ1f1DDz1pB5P2rddxswkQGqCz8+0g2dzreRLZ
 OOjBVSGaykAkaeRu/b31P90va9DQcUDT33xAuGzrIHIRd6mlumMmDCmto
 hiu6HOBw036t5Zl2e7y2rH6od9Newz/JkUXThF0qBnMTmG5CKoYh0/nnW
 2v9+cwQx2vciyq2dkGhq8MFv/dlARyrc0A0RWEvsCRe6OmmNlq4Sargdk w==;
X-CSE-ConnectionGUID: kXH3E/zES9WO7dRBNeRMsQ==
X-CSE-MsgGUID: f8iLp4CvQDqU0PUX3V/lXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="25740280"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="25740280"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 02:40:33 -0700
X-CSE-ConnectionGUID: HOLyRvQSQN2IDb7B0Ajlpw==
X-CSE-MsgGUID: gCYhC60cR5mfIzV70BKaVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20849948"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 02:40:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:40:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 02:40:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 02:40:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JuS7e261BJLEXVu1joTpE/W4v1W3RZV6p/B8TccQv+JDdZwEFpCcjKM7zKoC5SqePb/zbDhxul/vP93mTV/T+43mGtyD61gn1J1jGj1X3e4nRiEf0lunMvrw2Dbxvf7JqOf3MWh6hrURuHVOM7ekEVFJO4uHo3Ek2/J+kmjjbZtpxUaJ7kp+Eu7RwAvTgMA30XI7w7bP7c/LCLhTCjLCZlf6m+4Aran7Hb3KpISknKBm1lID2RnLTRQFNy5ofCQOGQnwNclWcXT7r7xRvQDRYoSrC9XOcdnzJ+O2NDWrKSbp9SjKaRtXtD7O3fihQOcYhqKwSKOnU0swMyoiyQToQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KgiKLADR1hiP9J7z1f6NI3QtrsL2omGrgSfuX3wriOw=;
 b=XF+ZEZ/tStM9b3FUKg8uZ1GMW6ISMfzpET1TobGdcDQFfGZG6NeaQ+0q6VUCKT7zvDl7/KaoueQJZg79/kZQNPHLNvKMgXcmqnNolQtGDjgx26nuKE6cBJQEyYwcmfCTj1ceiRvZH3rlF7AxTTZcjTWrRqOIm3W6LEIFEYM/dNmcQhynDLCs8HgVbyKFqnBBVttxXZPwCrFguFjNX6S+0SZ12BCcOwPzUyV7MZDr1kgoO0n6EMjoN0dV5ONLgMqNTH1XSRxLb0capJYoHUPhjY1IE6Wi33rHDt0xynVn6sK2Pwreq/gcum1dc86C8HQmcISAEuAjtvglX5/EN3JlEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.18; Thu, 11 Apr
 2024 09:40:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 09:40:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Topic: [PATCH v4 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Index: AQHahoUjnm/MeBQiPES6Tuw55l0qirFi2RXw
Date: Thu, 11 Apr 2024 09:40:30 +0000
Message-ID: <DM4PR11MB636080C507DCBE8A65EF7943F4052@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240404114147.236316-1-luciano.coelho@intel.com>
 <20240404114147.236316-2-luciano.coelho@intel.com>
In-Reply-To: <20240404114147.236316-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: 41e03c0c-33bc-4520-3ed0-08dc5a0b6d13
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xIkp4NmrTRR8oAXA8VGO/KmJ2d3ykT2CYBGQM0prieCPVjJwaJjJAVZov3H1UZvP2OKXfr9F6p5GMLv1GkGzpJMfW22KPC4ssg6l7c/K4QGFSGlNCj5ufHWP5xXlUYubmY0lXG8xoP8otyfktFcrnga5de5mts7JCMnd+weTn5FlFQw7EjcWTMvHAeFGNS7Ui+1hLBmrDfuiI7jqaZC5M8HvPrpVlq9w8XK6SNRBOTkjymxkcoCk9zX4/PuYzsOPRlsy6UP0lyqFCfnBfJpaJ5eC79vObE9i2AyfZKGi/gmMV5i24wGA6rSPlyE576sW0OmU2Hj0CSCS6V6QTAr4lDIDS4GpXA4nfEPHLigXtjoxFJ4Zo2Pj4bY3u4E+bHTRJCHHk3SZecnYIktKbGA5Q8DIASB4CG0iSsIvZnCDViNR0iU4+vnq95vwr3R41CN8f2zNNf92jdgIPJ6AZaItBkI5pH+Fqv78aViB0QnS95wdlb4BQMyUwI36od6672PfzMC/YrqRyMG8LXR5Zdul35aMnK+YIvrczCEX8nxBDDmj4g3YYtmLxaC+KSgtk9ciFOG8Xv1KIrr5M/Ch3neOcq30MpBxtpTy4VKcXcpJzbbBBGIglbd6hPmAeYxj7ggRG0HoqoDtcS/RtiIkhAywQY9PqrGNwOFT+47BwKmYWJ8NTaGDb1/uCiMsRpGZcybjD1BkkZ0FaWYOaxJP+pHYvRb+ClSym2Bcrj1njngCG0Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R0ooFQbqZTvUfRbx5lEazDNmVcbv+6Inm+EzB2DzHKcx/V7hX+sBxS3uk9w0?=
 =?us-ascii?Q?YFcCGoOM5HYf9kDxcxrgeQ4zii6kQLpSGedUEU1NHn4Qr88o6Isa1zeXOlYe?=
 =?us-ascii?Q?sQVlBe+UYED1wPp1vjOZ2ZPES7tD88J+jEzOt4hexb4U0BHkpEkvvew+WYe6?=
 =?us-ascii?Q?iS2KxIhIKZdPMKNBS4tcJdsthpihPKH6Xhab8ciHmnIYyX1ACb4kz8tDlqh0?=
 =?us-ascii?Q?EGWLitpUftRNDxpPjCLauClfNtZXekl8CZv0PCSJmPljjVD6rWsuSCIW+Cc3?=
 =?us-ascii?Q?NXpXC74Om/mDHZEs7anUDViHFfe+Qu0/QONi0tF/lfwSoNOR7IGNENx9rvPr?=
 =?us-ascii?Q?pRoipyrjbcIHulG/bzsDfwNnJvCEuATqwSEylEyTSHt3mePyohN2qPKFTHkz?=
 =?us-ascii?Q?TVZoNblK054jDgjNKQKgzzGhqMNDoGpIVK43tzMQn4Fan1oxxTKK3TBz1dMl?=
 =?us-ascii?Q?Zxgj3r5h0SeMXBICjBbQKWpXiAnTs0vH3Wa9+hMdwXaO4uVaFMP9nmyG2Ji+?=
 =?us-ascii?Q?uXiLykrgCkS5lmfV3nRa5hehu7NEOBYOSJ5ikpmZhu2ywkHjDDChXgs/Vz62?=
 =?us-ascii?Q?6CORuORMERZ2s246Dwwjb5eE20PR++qmKkL7QVd+pm6ZyJQPck1/cY85UraL?=
 =?us-ascii?Q?jgswFgVrgG1PcvPJSSV0PbROKi9ulGzfqxH3FT+ea3Ke5yYTFqU+FpX5Ekjq?=
 =?us-ascii?Q?von7tj/U2PqRfciDgowGg8tM91cfNAv95i6Wt9tTr5H8KeU/Ob6MyNVGOvgY?=
 =?us-ascii?Q?mkpejzw9DPKvVlD85VjAN53BqNVu/+fqshacKlqWFzkb7f4rpmjjy1QVZ7wt?=
 =?us-ascii?Q?rMRa10glh419HPvXFvQMix+hVWWiUK+nPVdk9M4vUaDW04WPj039oeWWWHYL?=
 =?us-ascii?Q?8bJpDgKyKOdi0MPLBRuUQj4iIgkXUhY3zA5wsxLWLXyRK/NUvovWFGxJ6QgQ?=
 =?us-ascii?Q?H9OnYPDMXfgVw/nE0AiamKcUCrO+WiciYWGXbgLfxlKHCUDp6UCNTVCgLGkq?=
 =?us-ascii?Q?U6TbCqC5TxrYWLj6x1p3puPUuEbcF6oUif1T95UzmUhX11ymyVn0zotjCWEm?=
 =?us-ascii?Q?lkAo2eIBsbxI+lkxSyjyB7JLcRs0iQ7UIxxlc/YD6z8h5oE59L5rWwxmq1eV?=
 =?us-ascii?Q?9+Js8dnUEDz/3EFzw3LjNtjrXTYcEY/PCdF1cBqO1U0s0ee3BJi8pUII2nNS?=
 =?us-ascii?Q?FruuSGV6gsJnih7bVBJIkr2S3psKcQb+3Nhs9c/PFvIwvtarwryZMgJodL1A?=
 =?us-ascii?Q?5R8LhnnM1kLXxV0baAj2cVtpG6v3tPHfqPHUp5EKxv4HvERSO7A6iB+CJgLC?=
 =?us-ascii?Q?JTDyC7zqIxcZ2VQ1/ulT84s2i7nk8PqaJg4wv67hSTAA3Wsio00nygX7hAIy?=
 =?us-ascii?Q?vYK+D4el/UIOHwZ5jZexVblFwtMp8nG8Vhe12kukwIArZe3A0GDBC4IxkyG7?=
 =?us-ascii?Q?xaqpd/UvvfClF+5+LirmK2mgXvlzNhJs4+F6gDTDeHetjpkhO5LF8kAv36Zw?=
 =?us-ascii?Q?I2WsxcvRf7v9Jg05KDDNvcicnBtii4Ji4X/+WlT9j7kGewUM7o/ycc8bP8I4?=
 =?us-ascii?Q?dvB2Be/uFCOXw4UNayPhZ7ANlWfKWclFRV6Wimf6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41e03c0c-33bc-4520-3ed0-08dc5a0b6d13
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 09:40:30.0277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pqtAhJq0STHGR1hey4C3zjGPn3rY8iFqSMQtncljOc8drSP/Sg1vEMwjz6efAz5JOsDTMvYJEFyshSPEG7CzlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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
> Sent: Thursday, April 4, 2024 5:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v4 1/4] drm/i915/display: add support for DMC wakelocks
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
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_de.h       |  97 ++++++-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 238 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  31 +++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  7 files changed, 368 insertions(+), 8 deletions(-)  create mode 100644
> drivers/gpu/drm/i915/display/intel_dmc_wl.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index af9e871daf1d..7cad944b825c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -266,6 +266,7 @@ i915-y +=3D \
>  	display/intel_display_rps.o \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
> +	display/intel_dmc_wl.o \
>  	display/intel_dpio_phy.o \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h
> b/drivers/gpu/drm/i915/display/intel_de.h
> index ba7a1c6ebc2a..0a0fba81e7af 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -13,52 +13,125 @@
>  static inline u32
>  intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> -	return intel_uncore_read(&i915->uncore, reg);
> +	u32 val;
> +
> +	intel_dmc_wl_get(i915, reg);
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
> +
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
>  intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
>  	      u32 mask, u32 value, unsigned int timeout)  {
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
>  intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
>  		 u32 mask, u32 value, unsigned int timeout)  {
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
> @@ -67,8 +140,16 @@ intel_de_wait_custom(struct drm_i915_private *i915,
> i915_reg_t reg,
>  		     unsigned int fast_timeout_us,
>  		     unsigned int slow_timeout_ms, u32 *out_value)  {
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
> +#define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> +#define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> +
>  #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> new file mode 100644
> index 000000000000..3d7cf47321c2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -0,0 +1,238 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2024 Intel Corporation  */
> +
> +#include <linux/kernel.h>
> +
> +#include "intel_de.h"
> +#include "intel_dmc_regs.h"
> +#include "intel_dmc_wl.h"
> +
> +/**
> + * DOC: DMC wakelock support

To get the documentation, we may have to include this file in
i915.rst in Documentation section in kernel.

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

Seems some repeat from 1st para, can be dropped.

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
> +	if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
> +					   DMC_WAKELOCK_CTL_ACK, 0,
> +					   DMC_WAKELOCK_CTL_TIMEOUT)) {
> +		WARN_RATELIMIT(1, "DMC wakelock release timed out");
> +		goto out_unlock;
> +	}
> +
> +	wl->taken =3D false;
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
> +	wl->taken =3D false;
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
> +	/* Disable wakelock in DMC */
> +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG,
> DMC_WAKELOCK_CFG_ENABLE,
> +0);
> +
> +	refcount_set(&wl->refcount, 0);
> +	wl->enabled =3D false;
> +	wl->taken =3D false;
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
> +	/* Only try to take the wakelock if it's not marked as taken

Fix the comment style

> +	 * yet.  It may be already taken at this point if we have
> +	 * already released the last reference, but the work has not
> +	 * run yet.
> +	 */
> +	if (!wl->taken) {
> +		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
> +				    DMC_WAKELOCK_CTL_REQ);
> +
> +		if (__intel_wait_for_register_nowl(i915,
> DMC_WAKELOCK1_CTL,
> +						   DMC_WAKELOCK_CTL_ACK,
> +						   DMC_WAKELOCK_CTL_ACK,
> +
> DMC_WAKELOCK_CTL_TIMEOUT)) {
> +			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
> +			goto out_unlock;
> +		}
> +
> +		wl->taken =3D true;
> +	}
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
> index 000000000000..6fb86b05b437
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2024 Intel Corporation  */
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
> +	spinlock_t lock; /* protects enabled, taken  and refcount */
> +	bool enabled;
> +	bool taken;
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
> e5b1715f721e..7e2b418a6f16 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -278,6 +278,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_vdsc.o \
>  	i915-display/intel_vga.o \
>  	i915-display/intel_vrr.o \
> +	i915-display/intel_dmc_wl.o \
>  	i915-display/intel_wm.o \
>  	i915-display/skl_scaler.o \
>  	i915-display/skl_universal_plane.o \
> --
> 2.39.2

