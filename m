Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B248A8D26
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 22:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5165210E117;
	Wed, 17 Apr 2024 20:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jBQqtVjA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EF2910E117;
 Wed, 17 Apr 2024 20:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713386559; x=1744922559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AOw2AbyxzCRikOCIsC7iIfyXnYWAfDGs2VC0v/yZ9CY=;
 b=jBQqtVjA0hrpGj9z5G8+nh4OEYPJ0Jc7OXsadU9v0aElUGRplmPMW6OC
 u4qo097SdqTzWrh0J+3550uO9lf7CEO8SwzJsW7i8xPjPA+t9V7nLI0Hf
 QScmZHEoJnTS9YblFPmztr8qdifNuCoGe104fMb7Gx/L8PUss5OAfsrNo
 5NAqUdLat2Pw4J8LPnL1HMxSjF/rbQ50joT5HWkCAK3Up1F1Q9iLEssaO
 nvPtcDw96XcFSeMTvJjof5p5fxaaaSME9cw73Y2rP3xiWVcjD5Ei85pqj
 btH77XFXPv4JbNztbhqtg0JSaruGfINg+rDg0Fi5lBe4qgg23EASeUfA5 g==;
X-CSE-ConnectionGUID: LlQFye8oT6GeMr1OHwPYSA==
X-CSE-MsgGUID: /eFDXwGCRZSLl8IVEXmlIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9124468"
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; 
   d="scan'208";a="9124468"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 13:42:39 -0700
X-CSE-ConnectionGUID: Tm2lY8/0Q8KZduHSL5zG4Q==
X-CSE-MsgGUID: 1HpJvcjRSRSpbZP7O4W1KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="53688887"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 13:42:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 13:42:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 13:42:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 13:42:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 13:42:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DQnZKUYmZSma9Zk8i3tQajP0F6EQ+83KzykltFjF+6m7NHKMDKeanyRx1f8lYpTDod9G+5j5NSEALI+vC2Qp4jchU5qKyTftIE2vYbu/JuVqjvePLgKOp4w1J7xtL1Oshkp9bXs3XwbG22cYOflcs2eYmpPXW9cIzJeq83uz52/TYMdhzM+MWxHFb8wJ4d36o3FHSlbKACKjFfYHIxcrefXQHq+NuYIRx3qk7D6F7S/GIeOrKbo5IOiJ+D6zSw4WBxEjblD5S6Q0C5qmES5fTHlzafW4obCd1UN4bFQitjNuQcf/pa8OhvCTxP8PJWhhizDmu1o+pdTn1hkoESi7+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlXmd6dn5zcuFU8OV1tH/9Vp1NGDjv9sgdZ0Hjvkg0A=;
 b=R6Ayzsgjslf7NYtBsWtF5rO1jhYDMw1WtJnBnoO/Hid4P2IhDYcb6am/KgVn54F6PHpuSXY9k5QwAcaBJPe2wicUKkcDpSnyrDwUsA501LAICUFtXNB94qZejoZO0B6AcZXyeByGPjrwi8jNHsFt7W6Fz/a76quZe9KBG/7CB9c0x8bFrKLmbtN2U9KP8uGXBnbCwkh+reee7ZxcEu5sqJnPOt12vIK6UajYsVrZ4IYIcLYa/3XalSvlI346roM6vGw7lXYiosd14kiaN+UXVNYINPRdZEfQRkz8YHTCApNH96A8Dz/j3AYn3yuX8bQhOMMyybmG3Dy+oZk0JbhEyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CY8PR11MB7947.namprd11.prod.outlook.com (2603:10b6:930:7a::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.49; Wed, 17 Apr 2024 20:42:17 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7472.025; Wed, 17 Apr 2024
 20:42:17 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: remove small micro-optimizations in
 irq handling
Thread-Topic: [PATCH 1/2] drm/i915/display: remove small micro-optimizations
 in irq handling
Thread-Index: AQHaibP7wKs4QYr5E0yLXSyqHVYTC7Fs+9eA
Date: Wed, 17 Apr 2024 20:42:17 +0000
Message-ID: <DM4PR11MB5971A1379AC8A6301AF5DD89870F2@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240408125445.3227678-1-jani.nikula@intel.com>
In-Reply-To: <20240408125445.3227678-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CY8PR11MB7947:EE_
x-ms-office365-filtering-correlation-id: 20a1ef01-5716-43d4-7e3d-08dc5f1ededf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ByXcmGHEsB6bH/PrZ4nPNgsFT7APgR9RffJE+h6+kybtijzS+dVGAo3XxqSX9bsxxkhZXtv3l7cY/xjjRqPh3What7H+KYFL7IHlzXt99D9gOSkLcUVIYyDuIQ1VoWd6Kos0dkeE9neM3v22meizmAbC+jAjEhbbAimXpacqKz0nU4Mdx+MJkWaii1z8cqdgvl9mjJmLkpPtTEfTfebDR/xfjil2mjaCpwrtmLq3K30Apq83YF2jWw1M616me5sV3R9/4cW/u+TJ1Zb/bIO/pblFVXOzTxpHO1a7xBeZbdp9OSjnYw3dvVbntv0Rpus2443/rCcZeydrg966y8tVY0YU3ALjRp3PnMxWZ/ycBGDRd+LFTwSSy5G+U9xySS+LMOb/tf3IuHi0x2rdvbVfV0NJZQbpW9O56iP6Gf768oXryi6pg11vDLvR7tAlBxmHO0ZVc285Jy6OE8r9ykYEw+/mdZ4DUYAuOpC2Lqg5y5sGeBwDx8TarijMGfBGprvIoRl7cZ+ED/CxzcqJ5uPq8awNFADJnSrzNecQcPQRrgwK1I8n+dwT7ZCgZeS8NBKe+CzygbGDdQuHzsTx0vqb3IbosRITrsvRO6sjTJqjP9pANWmDso1x0vi3+FisI4Qdjaim9YADUswQHNlpzBdFczCCvx/+oRXU3Rz3Kttyg/Qe14/yclmrd7Wmx+QyoipLGitwkNm9GuIPME4h1IHzroyKDQ83i0cgV1DE3Yx6NTU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0fcivjvwtVD/CPp0CRW/X3m3Wa4EX+6RvlMjBu4yAHCx7LGx53GFKPqKqPLw?=
 =?us-ascii?Q?SiJWAAZy0Wju675rORfW9NvfAYa81FcKqRZlbW5XJnhxInxJLsEs/L8EW812?=
 =?us-ascii?Q?ZXI/M7kZYe7F2jg41j6zKeSZijg7NgJ1lVd6QoY09mgZhfR33s2bTD31+Nvn?=
 =?us-ascii?Q?o4+lFfBSQ/m6IJcJRaUze6CUwzNyGb7XVwDXnBsRDz2km7/olWmMV96XrzGQ?=
 =?us-ascii?Q?tskjmawkPY2Esj7dM2TLZLY+br4ZcIMk2SpUvJJmiNnkslbj3NjxkzA5MAI7?=
 =?us-ascii?Q?/trHKSiDHMZSpvsTttCe5tRR3B4YY/fMc1kbNMaTzcdJAMVrkH3CBphzyEtH?=
 =?us-ascii?Q?mtrNRZlTp+KIVI3MHAAvklzdY6wuLAzW6oF4DA4BnK5uwkGwJ620uQQTV2o2?=
 =?us-ascii?Q?MkQE+lkvIGPRHccz9Q8wtM/xZVpwVfX1Bw79VvvFF/xJnwOWOQkll9eaNlwE?=
 =?us-ascii?Q?MsVJ/xTgW3Y7iQ7vOAvfLN9kwiz1z7uHjPSvIDS7DKZCIOJkQ7X7rE1BTc2a?=
 =?us-ascii?Q?2blYgL3NPjtpEpRm3cfke8RbBUakqMVdj5mbsh8LDpWTpIjdR7vkl2ra861a?=
 =?us-ascii?Q?3nIP+d6LTNTlWU0t70egJg+CtotiBzpCpm5nvpl/Vw0MOwutjJCKepNSUwFG?=
 =?us-ascii?Q?Gr6CR9DgtgUVsU5bxmzzbyUnZ0zdWcagIoQz7/QDnbljap9XTjPo22Y8VaM/?=
 =?us-ascii?Q?UowApArdBlOxB47/dZ/WoAaArCjzqTQtL+cLnsXsTzJh2CdugSODmnWZgmN0?=
 =?us-ascii?Q?k3zmc2mIsj9rFmYRAzb8QPwkmr72w3qed5O4vkMQWyVXhUlMfdYSyBZrtBmE?=
 =?us-ascii?Q?cXKV6zc5VNjEDpFHX6o8DFLZRLcVTyAUvcZyoYTr1jViBYTJCwt2suX3HvFQ?=
 =?us-ascii?Q?C77EiQbrE/6iBS1T+rWoRhydNm0hpnWAbmS2DTGtlRDYQui6MO6QJBYmg7Zt?=
 =?us-ascii?Q?XMx2U9Zm3XA2oHXOQ4oQtflckzeQrkTqX70zjfhNnMIIN4LeXOEGH4UGqm7x?=
 =?us-ascii?Q?ZfGLv3pcbjYcN13Bokn25FLIpB/m+8XV1zYy17oHWkqhI7mQhVsRmoDBxusY?=
 =?us-ascii?Q?Bc6rS0dFSGLFWIOEaIRVp1zsTagvEb0ESbc6PH/T8jZW8H+FhgUd7szHpMt+?=
 =?us-ascii?Q?QTyrlrzQWzHgeS7EaUMcIPfim8abe9A8d/jZxfqa9odAH/J1GnIkrlJ/jgNV?=
 =?us-ascii?Q?AVB6Lq5GQ9WhPoCOx9tfQbtdkBdxkagujHpl6HcHzCe2jNuRrdtljRdlaPcG?=
 =?us-ascii?Q?/RdEz7H6yjop3HK3C9W9WPXrAHS/NsiMJEuRFaQLrHwZSIrEhESfH9RZ0S5h?=
 =?us-ascii?Q?fopILG9Qj+ml8qiFeWgperEg2pcSxqHkyrZ+0SQtQ/iLPWw+cUGHUKW4kMYc?=
 =?us-ascii?Q?lFVFR65SQj84EYOzbXUGITaSBj3kPuONlNQMTHOxiaINNwsM+X0KChj8LGMQ?=
 =?us-ascii?Q?Rg/Rk08/o9KSnfhGuGE9iFJHTkoOtUUqqqi6zKyzex7Fq7bMkKm1W4NDe++K?=
 =?us-ascii?Q?3+6VTs+QiRm79t2+9MxijRKcJao154i4ifRpNzJhArsrL2FCw98j0G5ec/cg?=
 =?us-ascii?Q?REfD+F86nxaJ7zsK7n+6Rav4sz9YdfwxFFdvJJRJb5MIP+s8bTCkc3FKK4xf?=
 =?us-ascii?Q?qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a1ef01-5716-43d4-7e3d-08dc5f1ededf
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2024 20:42:17.2554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 84c2qjnOJiwAi8ZupHaFfh/EVWObLhvc19Mtju1DXFhZ7o/WQkdPNrK4sASOddIwjLQQpJbe9O+SD55ha0zv17lntq2XjXAqGRAh0Qj3vPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7947
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

LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Monday, April 8, 2024 5:55 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [PATCH 1/2] drm/i915/display: remove small micro-optimizations i=
n irq
> handling
>=20
> The raw register reads/writes are there as micro-optimizations to avoid
> multiple pointer indirections on uncore->regs. Presumably this is useful
> when there are plenty of register reads/writes in the same
> function. However, the display irq handling only has a few raw
> reads/writes. Remove them for simplification.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f846c5b108b5..d4ae9139be39 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1148,15 +1148,14 @@ void gen8_de_irq_handler(struct drm_i915_private
> *dev_priv, u32 master_ctl)
>=20
>  u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32
> master_ctl)
>  {
> -	void __iomem * const regs =3D intel_uncore_regs(&i915->uncore);
>  	u32 iir;
>=20
>  	if (!(master_ctl & GEN11_GU_MISC_IRQ))
>  		return 0;
>=20
> -	iir =3D raw_reg_read(regs, GEN11_GU_MISC_IIR);
> +	iir =3D intel_de_read(i915, GEN11_GU_MISC_IIR);
>  	if (likely(iir))
> -		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
> +		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
>=20
>  	return iir;
>  }
> @@ -1169,18 +1168,18 @@ void gen11_gu_misc_irq_handler(struct
> drm_i915_private *i915, const u32 iir)
>=20
>  void gen11_display_irq_handler(struct drm_i915_private *i915)
>  {
> -	void __iomem * const regs =3D intel_uncore_regs(&i915->uncore);
> -	const u32 disp_ctl =3D raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
> +	u32 disp_ctl;
>=20
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	/*
>  	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
>  	 * for the display related bits.
>  	 */
> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
> +	disp_ctl =3D intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
> +
> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
>  	gen8_de_irq_handler(i915, disp_ctl);
> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
> -		      GEN11_DISPLAY_IRQ_ENABLE);
> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL,
> GEN11_DISPLAY_IRQ_ENABLE);
>=20
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  }
> --
> 2.39.2

