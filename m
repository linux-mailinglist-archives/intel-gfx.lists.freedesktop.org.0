Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC447885540
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 09:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3000A10E1E7;
	Thu, 21 Mar 2024 08:08:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GnI6r+ME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F0910E1E7;
 Thu, 21 Mar 2024 08:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711008487; x=1742544487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VbNUiOCk02Lc04bEnNrtv90loV/p2xJImDekC0G8grc=;
 b=GnI6r+MErFGp5qX6PMy/Ixo1FaE8Ky16FTWny2NZYg8FO5oLVXYiNhI1
 udRBmbqqATyat7ZVxwUEZFj97c7lb6wnawKqaH/dAN1XEwCLQCVDkkUAh
 ojoZOrs06QEovVgssLsPiIRhn2F85EVPEYSogJ796amYXEVD85SquT0E8
 cOFiVdBBPC3ElmBBEx7frpk3yFRhXmaEm96ifwZT6hyel1Yzrlh2Vjy+9
 Pp/JwctMf4Z1rIyG8ak8E1KUusg9R4A5ywC6u6FIXVn4MJLq8YrRqzn2M
 Vo+4glcwVzTLcA85D3Ez/Sf2V4X5/kKppAY+nQCb+jb/vCS2FeN7Nfo4y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8932606"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="8932606"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 01:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="14429216"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 01:08:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 01:08:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 01:08:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 01:08:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbSvr7vJZRI0IVowMv58NXfErjzudlQTDeDnAYMOcB5O3g1Vh1tstnx6G3nT8+JnQrxIfiYA5/YfyjMdysleKLV2UhC7bPf37M5rhuDZnmbLIw4De/hWIjUebdUAqvbzJKrX+U2TYwPXMKRWslV1A3UZjQr8f7kVlJsHUbd7Brr28wtVJwMCBD5xQOBohijPiH2xr5rlnYH4qqlrnybLgQrsNcUZNf7Az1w323SyfCAQlUDZ0f4OQnv23qcnRZAMmlFh3dsRadWOBKDyQIIDvik7NkDcJ8ZE6TV6+lHQDJasAlUOM16Xz3yZglwf3p0VepUNP1d6o9thCNhgvfcFPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Rsa3BBxf+a7Une7c3QsvGxfBeWI1s1n6wbuQy1pJdA=;
 b=iZvaQ80yGcjWsBFLv9zUfoTnaQNRAZilcYlbI4gLsiSvVSY7DN8VBT3WeftY4MYePPf67rF/ozRAMrdOdo9HivGsSRZMNAeCxx9aRdvr5DFgZ07BQjtwsgv/KXRPQ8oSvSaAGfZ/65bD8XAcnUkGXTLa4l46UXbewuasmdtz7F/B76cYILjSexthb/OoTQEEsx1Y3RLKcWmvFLyFhnk32LYhZNhvZ3eweEEx0lA/q+U+QO1A0zVNca92ujptYG6l4BkwSH2ysBtCA9PJZAaMeSAhFZ3s8nKw0K8YkTwqlk8txuD2+e+AutxLX0prLR30YtIX3xeGyv7pEwZrK/6i9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7690.namprd11.prod.outlook.com (2603:10b6:8:e6::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.12; Thu, 21 Mar 2024 08:08:03 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.022; Thu, 21 Mar 2024
 08:08:03 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 3/4] drm/i915/display: add module parameter to enable
 DMC wakelock
Thread-Topic: [PATCH v3 3/4] drm/i915/display: add module parameter to enable
 DMC wakelock
Thread-Index: AQHaeTmXiIcPbhEf3UG/eqkOCdaXLrFB2plA
Date: Thu, 21 Mar 2024 08:08:03 +0000
Message-ID: <DM4PR11MB636090731640EEAB0E201D6DF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-4-luciano.coelho@intel.com>
In-Reply-To: <20240318133757.1479189-4-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7690:EE_
x-ms-office365-filtering-correlation-id: 3d41be6c-ce5e-40d4-0dc9-08dc497e089b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 48nzX7Kh6omADbYytxZZFaxruIvnRworBbYw5i9QFJzdXJdAwbgyCPE0yhA5DXiMmgxPyot6tnZkKp6wja1g0dca+CpSJZKB6JyULzPBkXhCxRUiXHkPf1Ogg9NqjpKwUBPuIs7ZEOL4GtgG2g3/1nB6Xxba3eUGHczfE8OruLOrEo1BDX4kF2ne3ZDR1w46y56LOmhiX5pNkGAkpD/eCSWvMMzr7V6g52XwhdnVL7jfS3rK6sFa4yxy/n00i/niinorXiBKF2W5VYISh8ic+HYD9ZpXhsklkN3PdV7MFs/TjJuV/8owUtQKYpGxpb/7T1BNxWyqcMs52M6SYpKKYVAvDk9RI83dUbLu/Vq1SstE8Pj5WhJTTaxlmwCsslL0vUhCxgAK5/Nxvyh0a67RvKpxD+kmqFJsqjaFHeGE/EEYPxeaAYFQtVFXW7JCc0b8bjV52O/1mLBgJ8Gr/2FFK0iBujgAk6nIhkD2wPuIH8VaS76Pui9vgylMowRX0mzOjSmZwTXp7ZAAxKCxwZlR/v+Y26rowCIRtPpAuW8MEGyqgCtb8rUbIAh+UKHPNTcNFt8usbYm2D6VQQ8uA0ELV3bvJmMBnwI9R475/pawPYCC3vokTQnTZ1KcMMfUPXOMir1Zr2i7ePbustQUYBqf6jAMAsympuwrKfTQgoJnTLH7/Lt3UUW213YQP7R9zG0OSwKdRyu3Yg4b7hEZka4MBFdvMdsXfH14+WFfMwGgXLc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OKIeMOFrsvG6aVCS2Xb5k6a5jKqF3K5b8zoVHOOqs1O9rVHHEFtCg1snw9nY?=
 =?us-ascii?Q?T0OVBeVJ+QwAnw22uTpnXVmHzG+LXbtsEnB6mQ8E7LKU/jU+HR74mS+/W7Hi?=
 =?us-ascii?Q?gAU/29deyrUbrbgFAG4M1I3jNBYpzGGIH9MvR/m5YdcRpKpyzaQJdEmKe6k+?=
 =?us-ascii?Q?eLyyFIMFhyQNMuT4KMtuonklyG//3xOg3L/9g8fUx8tPIr9CdaPSJPnwdP2I?=
 =?us-ascii?Q?fxLJwTgqyuMzoOgbXTJeiNlaKxGgXGwLmfS1Uy99OpBI22Is3WqjZ9sAOTxu?=
 =?us-ascii?Q?PRz7RcY+r6+gGHVw46EkOyjiRfPsSlzzEup2z1ol7aeA+dyXj57JikGZ7fDr?=
 =?us-ascii?Q?DNcnmxsBDjTQmTjSWwZ9tKzviIu8J3eR+qnU8AqhbCUwFbaZ+iASi4XqOssA?=
 =?us-ascii?Q?n1/i5VBCLxAD79TN7BGYGOrEGfCv68pRgpA9doffgsyKN6stiLQuq662CoCb?=
 =?us-ascii?Q?K3/9D3SpHpf+X3FXy59xEBase7rl8BVMotGyJZSP0+Zl/oSAZNrky/zqxnoy?=
 =?us-ascii?Q?2J/Z3/iJ8pIyEQrnx3ELj2Cv4hRnGyewbqs28U5inLW04QKEX7cd/a50kGgC?=
 =?us-ascii?Q?xY/BcOGbWTpQKk46FWMYplpuAQzH3Ycox1xzi7uAM7wQhAEXEFqaWgbi99Al?=
 =?us-ascii?Q?ptEz2jV6umgxqDEoLURFBpi95MLQoM/3Yh5lOiQ1mGKA9e4TCmvX0wkKOtNh?=
 =?us-ascii?Q?7++nfiqwF3rBEBk4vDnaXYCXrBqzZHOYUHDMhIVJ/GQ4YmVo12VpnBT1Ilgz?=
 =?us-ascii?Q?khqOHMhOwtDs02mKgA1ECT5/+CRa9GlIQ2hipm9NY0gO3ddKEwkKaU7fSmSQ?=
 =?us-ascii?Q?7vCFJ3Qn+FFrGVVAO4/gWfSw6yVhha2tDZxTQWh8knPuLnX5ca8UBZTqpRON?=
 =?us-ascii?Q?CIJpqnJkESHvL3mnMbrtmBDTL0N5y3TDpErH7ztQfuuECFKPQItZ7CTAc9hX?=
 =?us-ascii?Q?y9WUIpXD51UiAd57+e2ciljvVqyogsW63iA6ElOPTxvyRejhl45J/y1LnlOo?=
 =?us-ascii?Q?xE0GlHMGT+zL3mxdeQz3wrUg/Q98x/fbKom2NsnRsrcRwYNGKIcJ//KdovS0?=
 =?us-ascii?Q?U1BeISUQZXX593tf0xz0Ia2XklUBhI+5QfXJHKPFU+QdHqVIBiiw0oXcnOCK?=
 =?us-ascii?Q?NSV6ZGn71aOG/+yq2lTRXYxKNfciGIxBWM2ebAajg4dcK1r9tqnxpyDzbsjP?=
 =?us-ascii?Q?Fs4N5DlU586gNRRTbAJWRghiQ/qFdSKKPf1V6g6C0v4cIXsoxLbBfeP9HaVS?=
 =?us-ascii?Q?LA31uXFr+/hWb5LvaJyd2BZNLY+UCAJjC6f/ffkX+nJ9zEYbAaChKL+ApRal?=
 =?us-ascii?Q?qKetBO0kn9fPfXBl/ANPxTETc00WvIZsIQOgFMmF1X86++l4emm+jOrb8/M1?=
 =?us-ascii?Q?yXp3ftf4V2goe5pvNLNsPgTQSDl2SeIQG9mjTcaC6nmhBzD4x+2X7OijHhy4?=
 =?us-ascii?Q?Wl5+6ETbokqW4M8I1Z+IFio8E7yyTlXiDPb0ijLfpCuVvEAWZ+Y/J31UaY1U?=
 =?us-ascii?Q?11K/nWk/TW9PDeLYugcwvKENXVct9eXwQjlYcqLQml5KlOkg8mzSOzWyHJBP?=
 =?us-ascii?Q?shGtkWQYkL7mJfOOaCAXVQ7r0NyXxSEKMp2KUa7O?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d41be6c-ce5e-40d4-0dc9-08dc497e089b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 08:08:03.8554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h29cdlv1kV1qdIO4Afk9QkxodlZRqq9ezQWLS1XPzy+IkvE9VArB4o0oEH/i7FhuGpd+SmQWlg3hoCBnD63log==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7690
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
> Subject: [PATCH v3 3/4] drm/i915/display: add module parameter to enable =
DMC
> wakelock
>=20
> This feature should be disabled by default until properly tested and matu=
re.  Add
> a module parameter to enable the feature for testing, while keeping it di=
sabled by
> default for now.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c |  5 +++++
> drivers/gpu/drm/i915/display/intel_display_params.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 12 ++++++++----
>  3 files changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 11e03cfb774d..f40b223cc8a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -116,6 +116,11 @@
> intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>  	"(0=3Ddisabled, 1=3Denabled) "
>  	"Default: 1");
>=20
> +intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
> +	"Enable DMC wakelock "
> +	"(0=3Ddisabled, 1=3Denabled) "
> +	"Default: 0");
> +
>  __maybe_unused
>  static void _param_print_bool(struct drm_printer *p, const char *driver_=
name,
>  			      const char *name, bool val)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h
> b/drivers/gpu/drm/i915/display/intel_display_params.h
> index 6206cc51df04..bf8dbbdb20a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -46,6 +46,7 @@ struct drm_i915_private;
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
>  	param(bool, enable_psr2_sel_fetch, true, 0400) \
> +	param(bool, enable_dmc_wl, false, 0400) \
>=20
>  #define MEMBER(T, member, ...) T member;  struct intel_display_params { =
diff --
> git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 7c991e22c616..84d054bcb2c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -120,7 +120,8 @@ void intel_dmc_wl_enable(struct drm_i915_private
> *i915)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> -	if (DISPLAY_VER(i915) < 20)
> +	if (!i915->display.params.enable_dmc_wl ||
> +	    DISPLAY_VER(i915) < 20)

Extend this check to init as well. Else it looks ok to protect under a modu=
le parameter.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  		return;
>=20
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -146,7 +147,8 @@ void intel_dmc_wl_disable(struct drm_i915_private
> *i915)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> -	if (DISPLAY_VER(i915) < 20)
> +	if (!i915->display.params.enable_dmc_wl ||
> +	    DISPLAY_VER(i915) < 20)
>  		return;
>=20
>  	flush_delayed_work(&wl->work);
> @@ -177,7 +179,8 @@ void intel_dmc_wl_get(struct drm_i915_private *i915,
> i915_reg_t reg)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> -	if (DISPLAY_VER(i915) < 20)
> +	if (!i915->display.params.enable_dmc_wl ||
> +	    DISPLAY_VER(i915) < 20)
>  		return;
>=20
>  	if (!intel_dmc_wl_check_range(reg.reg))
> @@ -212,7 +215,8 @@ void intel_dmc_wl_put(struct drm_i915_private *i915,
> i915_reg_t reg)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> -	if (DISPLAY_VER(i915) < 20)
> +	if (!i915->display.params.enable_dmc_wl ||
> +	    DISPLAY_VER(i915) < 20)
>  		return;
>=20
>  	if (!intel_dmc_wl_check_range(reg.reg))
> --
> 2.39.2

