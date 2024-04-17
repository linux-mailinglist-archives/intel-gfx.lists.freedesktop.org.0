Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507B78A8D44
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 22:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8B110F85E;
	Wed, 17 Apr 2024 20:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BtamzQLN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C5410F85C;
 Wed, 17 Apr 2024 20:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713387047; x=1744923047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sXb4CDv5t7FTKE6id6tudEOcA5vsM9/WM8F2Ol7ad18=;
 b=BtamzQLNjIZRvkcq+hxSgwRcuFTejjYGIHfS5+C1QLJzBjZWckgjtxD2
 wwxzkwTTtGPpFEb9bAFWxLiTRrTQIm+mI+uRRHtaRDEHPTYB74z0s2tvO
 kPXlAzTIwr4vse+aQymqOdl+pf2AadzwEdb4gImSmg82jjc/5obudVp6+
 Fa9P9EbdYHTMjTrqBfXmBEX2Sm7yn8mTLu9OZO/tPozXboSUYUbTWwJw7
 Yxijcrp/MnlDZnXBh4Pu5Ug+ciiJZnYVORb40bkRnx+FUVHedu3JXOV2w
 9lb+iQI3M3X2EkHvrayYt5d6VYDctMxQ8nSBXFxJ+4quvJGpAwGjYDt07 Q==;
X-CSE-ConnectionGUID: +ZrSpe4ZTLyqvY0Vk3m6SA==
X-CSE-MsgGUID: nfSd32NUTt+x2AWCZFyLIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8762413"
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; 
   d="scan'208";a="8762413"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 13:47:40 -0700
X-CSE-ConnectionGUID: tCNukmnnR+2zvooDCdlZ7g==
X-CSE-MsgGUID: DLkhXtDAQSCcH0tKV5lw6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="22826676"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 13:47:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 13:47:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 13:47:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 13:47:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lp/skiqBlNEfL8qeHvg4oWGmJTHWt/7UcpbGz2/xQXBNY0risyMuGRHVbteJcrxQRFk+8m+GhKk8TC3GK6t6mlR91f6wjaPOXZ0GPkyPnxtTOjdILuYRVVT0CnxAzOBfZaZki94fV1h5jO+WYlelEm+yxE2nB7jGriC9SMvwwTmMDlXy3Pot5Kn/gfeIto1EfyUYHgYT/bwxRcgSYRvHg6yvRNybRw0Ru6LECB9P7Ugy3PUP2Q6LazvU93xOkLsRbkqGbkHYZIiRcsXJ8Tl1TakDI3LPB1odU6pYge1JS4mAFXSkl96xlz2B5gqd/XruP9SMSbHR8/Tl3ffMi6DidQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VavmT1YyixrTFk1lxza5B5nXv8V8jy5kiE1mw5QDu50=;
 b=I+3thNsoZRi7Ow8BcoLUH2Ov5bUvCjdK8T5zhT8P7Agq1VDQN1xyonEUb+hPZrGUhj9zQjrubo/kvoFKc+aSHaimaNlP5jF/8v6w5NYzJlbzeV4LN8YwywSvylzVf4l5LQV0LdcWJcJ0V+LIuVAM641Dgd7LnCoNnFnxsM4FiYelNovoKV7qxHbdl8LtZqE8ZpUQBELBKTN3TAJe+iXGYHlkefCWPlM1sxvFHY/Q3M6ewJr+x1hytAEwKJt/OiBvpL25nqomyx397xgXHcD7sHmebzNtO7qM9lnEzt2g6AQ+L+IZR2Y4zeEUB5wnBpfigq/Zc+3M/JAcGHP87UNT0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MW4PR11MB5869.namprd11.prod.outlook.com (2603:10b6:303:168::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7472.26; Wed, 17 Apr 2024 20:47:35 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7472.025; Wed, 17 Apr 2024
 20:47:35 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: [PATCH 2/2] drm/xe/display: remove compat raw reg read/write
 support
Thread-Topic: [PATCH 2/2] drm/xe/display: remove compat raw reg read/write
 support
Thread-Index: AQHaibQGaKpG9I8r8kurSmat6FlT3LFs/YEQ
Date: Wed, 17 Apr 2024 20:47:35 +0000
Message-ID: <DM4PR11MB597157CA3BB35E29E862A144870F2@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240408125445.3227678-1-jani.nikula@intel.com>
 <20240408125445.3227678-2-jani.nikula@intel.com>
In-Reply-To: <20240408125445.3227678-2-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MW4PR11MB5869:EE_
x-ms-office365-filtering-correlation-id: 244b6d1a-abc1-447f-0efb-08dc5f1f9cbc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SfCb6weh5D39eDHIOBWxtXn/6I80RQSCH+Wp8zb9gK3K82W3DJJ9ZLRtPzJ49qJU/21pD2QvhtMfd2qCP3hLslWnd5HL3z47ELq1mzRT/EMBD+bnoDAxvgyMZfLMYdAXoOZXEGIKkhgONy32LGtPERfWVKKnmkNcgsH4rE5dROsEkrXjZfgK8q3D6pXF8byVfcfRsEEDQ1CAXBfNwglBms9z9MeQhBxjukEwtpP79ruZWOImgZzUXdiP8ZdpBvtMm40iU4grevqA5gUI7IMnup3j5poK6V/JAJmuQOBqIT8Dy0LALQZSjjZE07FE3yr4c+EfsL/ACBaMQKh88hvSe8xr3viyMaEY/yaSeYXfaa3Aqxfcfpdert9nJoobinziHs+1/q5BAKCbVBA9ehdEqbYRlMRCmE+HchE6ptq3lUnaK7J/vjgTASzFASt0Eh/l2eh8y7aVeGxH/n9JLPNFEJjM1/MceHq4v1NpIB3OSlkdM2dt8QFhzpK0TwDwomfA55yQsQW1Y0fU9umjjxh0at+MhZMhHq67dbxi6R1APPUE+6vwNRJt52R/7xh2PApvwTf8jucIljsNEcvYiLNADl2F7TuI2VqpmYcR1CbJK+g5ce0i8e5wA1JtoonXRuH4Z6XROB5e7o+rSxttFUxIOtaUCoSjKGepWmGW0fWoqhbypjzE9I3O9K9faGC101dedElEs4+GjnkvahLar6+ughU03sakJXn7CKsAWqgN+mk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g8oKD49zp6u/QoBGBSIrLmMM2IGy1uxT/BgZBBkujfjnx2WWMR4OG1o6hv6Y?=
 =?us-ascii?Q?cEZvyLHCAJDxyWxmGARTVox5wvaiAASm7JevISqyQ2wanTgNEvEbDvbl25N7?=
 =?us-ascii?Q?Poa5l19KvP2pcSZjpjvTklttN6UWw3RwjJTpWsh7Rnlq9NyVfqZVCuWO5thX?=
 =?us-ascii?Q?1oanac8AMlAyOYrSul2bjV/rZ3Akk1AigcjAkDeeZHRwu10wSo+tdwpiHGKq?=
 =?us-ascii?Q?v+wAXI+gQtISCTYMh3Z6qqaMJ9YCxDXPnl4e++kar6pSSDhkg4uu/GjfiYe2?=
 =?us-ascii?Q?/jpquqhy9sKjLE3kQ4IzzGH0viGOzVqyV+VYgxfOFRDIDH5doNA6jhoH91Gv?=
 =?us-ascii?Q?V4SQY19Ubo8s2rJorQgeNmhYOT22R22YV7jnzKaUzfxvqBMYM55Uw19nalNz?=
 =?us-ascii?Q?3mjPot0H6MJzg0lisAkQm9KZH7CNUrDXeKXV0PIDU9NpZqR17fcToQLZK7sH?=
 =?us-ascii?Q?XciDpfDRk81twa3a4K4LICrZ1Bm5Cr8QgxjQQK+jFPqq5Sl93KoKehhOojlp?=
 =?us-ascii?Q?IXOq5z/GiOXlRFU62hTxCDk63ux4/HQQJLZxqi6I6kPZhZW1G3J1dPMZzbRt?=
 =?us-ascii?Q?gGRx839ckLe8Rv4e6Y8FBCZtJLiisYrbIa/LMS+CYLlHsqotnWk4wyAF2zQG?=
 =?us-ascii?Q?hSHXacM9KCpXqIPjXJ1qdr6p7JSEjVJTQAhIZ4jBd9zdopKFVwipHsEGHFLC?=
 =?us-ascii?Q?GO8YHBMLkF9Qyr5V1J46Klu2PTg7pf48L5ReVRtO5HMbu+wKeREqccKYHGI6?=
 =?us-ascii?Q?/mAj0QwBUOyBYzN76tj+/TU8HDfWd7c92TdSBgk9xRan/8v5a+EtYfqqcMI0?=
 =?us-ascii?Q?2AOTLxRZ6XmYEOXWZn/KBK0GTcfiFz/BR3dmeMjX81nGjQWGK/lmGtZ3R1+L?=
 =?us-ascii?Q?HWrxKqwr/DHEkyXsYyHUn4eB/hA/LLMaLFEESqFdt0Bc3eua/fzsYXeSnjDo?=
 =?us-ascii?Q?+fG8IclJ/Lr0FoRvSirdl/TyOWPSgJjEHjndTLR6oqSVEnBTOtkXpCvtx+1T?=
 =?us-ascii?Q?XHCX2MI96lzbfOOD62EE2gvTV48jHYvKFWajA8SJTcUEwqonGOs8uBp7/Z2w?=
 =?us-ascii?Q?t8vumEFuoe/llUQ8OABxlxOA1i0qNDhIJ4PNDeG8Ql+B0dMMtDAZ4brwqOdp?=
 =?us-ascii?Q?Vx+tzrZZcVS4FRJofEcnZjZ+ZYJYCltref5tABiFd0mMBnRhdgvij9Mkqd3N?=
 =?us-ascii?Q?o9SSHWRYjqeV5Ch0aiG+Gdwa1aruBp65QjrLEc0dwPG9jm+vmk5Jxmq0+WEZ?=
 =?us-ascii?Q?/1+X/6Im404FLoml6BtP5Hqwqgr/4RZ/rrPaGqY5DTfr3lvyEd79q4Ej5SU7?=
 =?us-ascii?Q?NrmciUGyHHGGpbkdmfA39sKJoZhwK2wWzD+cmJtNZYHGTmPhaGckdeAhLkr8?=
 =?us-ascii?Q?0609Q09DYYN4jeCkDP5SCSgXd9XekSct8FEdlfDM59Y3sPsFQ5S6VGrd6ihA?=
 =?us-ascii?Q?c3iJ0mBMSI+uKJDizMiTaP3+AJReR6pkHDgHtF7OUfpnG6MsK3Ua4kePEmt5?=
 =?us-ascii?Q?HPY38sugzR+N/D9N/cFCsnFggHAZvKPd4Tn8aKBKowvPNwsFN/ORqzvVCQTa?=
 =?us-ascii?Q?k1F7YK1rFkDBd946BO6Y8xW3iBE25gmvf4zPBxb9YpsKKGFi9wB+oJVzKgb5?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 244b6d1a-abc1-447f-0efb-08dc5f1f9cbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2024 20:47:35.7342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7G3ugSvSZcV8Lyq8B/ATT2mSJNfoRXxvVXAigl7kfxhQe+V2bETh9+BD8NIfw9me4R6pQ5nPu1Ydjk/YYdffAKeCrDbZHDMvTIDnkU/Rw00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5869
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
> Sent: Monday, April 8, 2024 5:55 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [PATCH 2/2] drm/xe/display: remove compat raw reg read/write sup=
port
>=20
> The i915 display code no longer uses these interfaces. Remove them.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/xe/compat-i915-headers/intel_uncore.h | 24 -------------------
>  1 file changed, 24 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index ef79793caa72..a672165ececf 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -148,28 +148,4 @@ static inline void intel_uncore_write_notrace(struct
> intel_uncore *uncore,
>  	xe_mmio_write32(__compat_uncore_to_gt(uncore), reg, val);
>  }
>=20
> -static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncor=
e)
> -{
> -	struct xe_device *xe =3D container_of(uncore, struct xe_device, uncore)=
;
> -
> -	return xe_device_get_root_tile(xe)->mmio.regs;
> -}
> -
> -/*
> - * The raw_reg_{read,write} macros are intended as a micro-optimization =
for
> - * interrupt handlers so that the pointer indirection on uncore->regs ca=
n
> - * be computed once (and presumably cached in a register) instead of gen=
erating
> - * extra load instructions for each MMIO access.
> - *
> - * Given that these macros are only intended for non-GSI interrupt regis=
ters
> - * (and the goal is to avoid extra instructions generated by the compile=
r),
> - * these macros do not account for uncore->gsi_offset.  Any caller that =
needs
> - * to use these macros on a GSI register is responsible for adding the
> - * appropriate GSI offset to the 'base' parameter.
> - */
> -#define raw_reg_read(base, reg) \
> -	readl(base + i915_mmio_reg_offset(reg))
> -#define raw_reg_write(base, reg, value) \
> -	writel(value, base + i915_mmio_reg_offset(reg))
> -
>  #endif /* __INTEL_UNCORE_H__ */
> --
> 2.39.2

