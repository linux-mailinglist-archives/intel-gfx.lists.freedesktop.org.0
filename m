Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18046B134D1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 08:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBFA10E0A4;
	Mon, 28 Jul 2025 06:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g+cg+F+r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296A210E0A4;
 Mon, 28 Jul 2025 06:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753683431; x=1785219431;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+xTLN+hUzbAZUk4DGz0NP7zfVshmlnqB8WRB6G9V8OY=;
 b=g+cg+F+rt5L40kJrmchZuDRgY34AtjCDTInG/xYLRvPII4aHu62dgdKh
 rbQECiZNGmDjDPlYV4z8ai2ffUbWn8MDgidnDawnnq2njwN8nocO+1hy2
 NeYl99Cd/Uw+0pJsBADQ4LWMUhwO42y14CQmi3xHeW5tu4B2yxqvPNLNU
 ost0nWggBsB7RCm9c1NTxB9rTtuPYwM68ZeLIZnjZkNUnFOd8WTkzw9T3
 pu663pBPrTkhbzbbHh80pngOAFgwGEomJdW0f0f+jECOuRdJZ/1hGPDMZ
 bNF9nbnoN7dhlKuSOBExPrpBKf6gLj4LBaj8QWhGBoybjDySS8zldXRTj Q==;
X-CSE-ConnectionGUID: tCjpx79vT/GN2/AJGPzM9g==
X-CSE-MsgGUID: 4SdVcOdKQr6hs6/0iF2oYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="59741509"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="59741509"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 23:16:56 -0700
X-CSE-ConnectionGUID: ILNN8l1TTL2R92NjToZn4w==
X-CSE-MsgGUID: 7k6M9M63S7WHl/sbLzFv8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161575198"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 23:16:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 27 Jul 2025 23:16:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 27 Jul 2025 23:16:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.46)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 27 Jul 2025 23:16:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AeVF0nseaBl5szofCRjJQJpKs4ilgh7BA0GVhvf7le5T1Oete4SPgzE2PUxFEKXde5DscyhLPrhgjB8QYve5atyvlI+iPQOZmSsNkWaX2sgvQxRm+YnrTSIED0q6jokWnesJanogEFPzFRvQLpSqx87BHu2cijgYEebxRMN5YXeaOFoU1iDbeL5yzoZWzQWpVQCxXsmJkwd8h1j10ClYrImYInWO6WXSBydv+ut1kSPtH92uJjRt9VTBpdSXBlQzVC2gRLwsKFJpGBQWu+LAh68RN83+XXwSkdA909nVjeUYJvwDKx7TaaUYyLwi851LZFSDHdgeVwBWtvJTSUtXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqSZr57qWJk0gt63AmlADfB/G8gaQ33hZ2Q29EZefQM=;
 b=a6MiL+edk2eGB8jn7NB06HA+AiYp3iRDcVFqXXKbQl4Boo2fwuBfz1JTiWKyPeqDggld6A2hygcCSJNlpkcxMNxaXt4gembXTCCP+fLX6W2bvIcAE5XwSWpcTeJhAfAvjG5jkOgOJQpyVmQhhlvm0naSxjf43HCOopi5alBL8STicDngr/5DBUpRV0yAcKyI3WkNXDtdKW99VYDGdUJENJSl/drKLPReljGf6LUDMvXQDTKGw3ewZuOpZEG6Rdr8F5ns0DK6qzRVbaPubo3Nd27VOK8EXtUiPmI3VlLVmP7GD7ZWvQRntwOwhtiuqiUvO720Y63/WXF5xaK8QxEpTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 06:16:33 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.8964.025; Mon, 28 Jul 2025
 06:16:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/vblank: Change log from err to debug
Thread-Topic: [PATCH] drm/i915/vblank: Change log from err to debug
Thread-Index: AQHb/IX2nBjLgqJL0kCBJmdp6dkMkbRHFCOw
Date: Mon, 28 Jul 2025 06:16:33 +0000
Message-ID: <IA1PR11MB6348E12884B3BFC85AD5DA2DB25AA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250724102954.2573715-1-suraj.kandpal@intel.com>
In-Reply-To: <20250724102954.2573715-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB7529:EE_
x-ms-office365-filtering-correlation-id: 110fd4f9-bd7c-43c9-99fa-08ddcd9e4cd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RP8WfJAUoYM8IBzpB8HOSbkjH+39lfFSy3Nk89mp/dOe+AMFsK9Cj6hQDM0s?=
 =?us-ascii?Q?gUwTEa6NKiYhlwAXlzRN7M+xMr9eRW4+AdxfeLfuN0m+9TTSB0eOYr5Sl3Kv?=
 =?us-ascii?Q?+kEOwc454ouBG1swT6N3/foJ+oeGAR94ALCTgvQrBf9e13WECzU/mLn4QC/c?=
 =?us-ascii?Q?NxtAfzMnomcPAyaDkvPpEO0YQ3tvXewal/uLLerTMrNNmg3Imv1fD4q5mpBG?=
 =?us-ascii?Q?ugJz+Tbg4oPkl2oFPxpIEMuv5JPD8IMk3FwUiDFG5Amvys+yIjk2jvhKaE03?=
 =?us-ascii?Q?a4S9M1YWqg3wV6HnomvAa2nBCiYIR9RIO1CtCqAlvDOyy2c6AuUITyqr0wW3?=
 =?us-ascii?Q?wwt8bQKL0aMHnrRMvtS0h7PoaDevIGcGI54GwY6htHCPKiY1RxURZjnnDGnT?=
 =?us-ascii?Q?B9jgSDJeKun8xXWXLhv1lwflocSm3vX9myw0iY44qyeIM+FiJf9UhbBzdOvK?=
 =?us-ascii?Q?P9faNIL85fVHpOcGga2ghbOpR6G+JlgHNLTT7UtGm75QnB00LpEV6nnsTGEY?=
 =?us-ascii?Q?B90TvGhAJyWb/jeERc7f8i/20h4W4C1mrn2Eq4SiLHJ03V2CYYTq0marveK6?=
 =?us-ascii?Q?Y1kAZjPsPbCBfhc25Eu4V8ldFijT5yLHKhtJyHizwXwBq4GmHhu37xoEn5G/?=
 =?us-ascii?Q?LZ11kgx2eM1Yi3+ncBUkzs/ZssCjkw3p9sEnrvKMW95ueNAKIHN/ZsfkAvLF?=
 =?us-ascii?Q?A/6o/mPx+TvDmPsVgE/QJIvx6iq39LCG4P4uU21kmrOybrdQR1TsSBiaYUIG?=
 =?us-ascii?Q?LZmj7d288boIiZ2+H7uRLoOLncleiKq84Idof5Ur8xtvqnnCcboOdaNpjqys?=
 =?us-ascii?Q?m6yerAJrkq3qwYKH7byG4Nbat/TtJQW4h4GjF9H2ypVzhQjrHjmLnp12Ni3X?=
 =?us-ascii?Q?tMd5LRymgMWzHsT60nrpExl9ECX/Q/JAyfwiKYXCKUCTYlYv2EXwyYClMndo?=
 =?us-ascii?Q?YrqkCvNpqUjPFbFDxplpd4BKjvyUx09d8Kxq6jlAvi11vU8/gYueGVdJOoMg?=
 =?us-ascii?Q?P4Ku3DhFLEVEkw8MiEddhNYgwjAlok4iKoc2leC2HAKOQxNXLl9lXRlA5D2O?=
 =?us-ascii?Q?eP+i9zuPS/S27CmagEa6agRBLisE/ve5ax+9xeUcmQCioTTzJEINRzF+7Ojo?=
 =?us-ascii?Q?2/OV4UZSg5R0ZIBD/OB+wxdW3HjvqoOWj2YeOM46w/CjjWEgu6wJovwDska8?=
 =?us-ascii?Q?LOXMfEGrMpvLn9dvzzJcBpyz0QrENTdAP0kisYkxZipt68rgqTcuxnnyFhD4?=
 =?us-ascii?Q?DnjIZgxYSyKPS1VewGqwdlNunl35JdID5f3pjLuexqpxKJA5Py7hpQe75KZk?=
 =?us-ascii?Q?HW5ropB78ALTyF8w89qNiLAk/1tTLrEyv+qSBeuEyCGNt63Ms6r57l2IIGJh?=
 =?us-ascii?Q?Xkogdw/eztWuDd/8SzjzYdjA9uPNw/L7cZG90m/04EDg2ebwryq+mAG7yopm?=
 =?us-ascii?Q?59VaO7ZWQV8soUfgqDkbtH+c4Hwjqn+UoCq9wU80UT+mrVe2mQevsw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aBCpRKD/Jyg7EHEW3/Ad1YwV+d/BiZq+Q9yt5vmPVukN2A2g8fEHhsA6/z83?=
 =?us-ascii?Q?ma0T2tHNGQMcRdS8jYSez4xXeY4k0PjQqGSste5kLHo929OROG4C69L7ZkK1?=
 =?us-ascii?Q?IElZvW+haUC3pmWPBoa3i1w86Sho+e1ZaC3On46awNcnE5JJpkrHi7YwGeaD?=
 =?us-ascii?Q?M4nVLsbZhdZpa2aR/NDn5cPQn3nElkdkkSszT7Wjh6ePwWsX6qS6wT0Yf941?=
 =?us-ascii?Q?L4YE0Tm6jtWlws6UvMdO4z2jiTKHhkvCfh5x8y2Irt/TWfKRtw/XeNheg6V/?=
 =?us-ascii?Q?v2LLCGPhfdxkN/phsfkDzPG/4WXMkOVQsW3E581dkuPykpKuU7NzxBU9M5bi?=
 =?us-ascii?Q?nVY5mHuAVBivRq5FOC261kJbFYsvRZbdp9i1IFy73RUFXKiYO+r0o8lvF6yR?=
 =?us-ascii?Q?2MkFUsdqLLzx4qfeijZsFZNFExboz2wupKNlHGO/Jou/OIc1ubDdDhlcKl88?=
 =?us-ascii?Q?eaWT3TJRliWN2WPSyIZg07bBJ6BSevistbjcxu1JlQ0cvAwLbr9mw292xWa3?=
 =?us-ascii?Q?rGxvrgihi1AQ8fBFTK1N8LgULzZ9RlBDgpNW70VxfqTPvNCOA7/xacawF6I0?=
 =?us-ascii?Q?fAy5nlVoDEkO4gqfQ1WQ+sUA73M+kFl1hFsDlDFE0do6Kh7KC/JbpjdgY8Nx?=
 =?us-ascii?Q?1pTLmeJXInA9lKg9wpOm4ZYIAhRJ4J21p4qbqiPc1G63tPuR2kldalP4Tfd3?=
 =?us-ascii?Q?M0egRgHl0GGbPMEldBD748yVz2IjcpkO8pbMrLsqOC/JfNeYI3dmfjEbJdbu?=
 =?us-ascii?Q?ET7ofiV7YNLS6bkKcSocBSM28rHNPeLscP0WU6q/CQNqKpvuo7GFA44piyhg?=
 =?us-ascii?Q?4oAl9EVKDg9IV3bMkdBgAANFqJbqO60oOyDUzcjDDJuEClD04jTY27lrsMka?=
 =?us-ascii?Q?ojrptM0tPeG4SDsjkjegzkqc99AS2dfXSiAXKCGsiA7IriSlFNmIsc00Bep9?=
 =?us-ascii?Q?tKy2bLr8Xgn9fs+vEoMma/aLP2LBWZTTTUe1iEJAwCNr0Uyy0nY0i2UdA0dW?=
 =?us-ascii?Q?3aep6faeaiZ7qXVys/I5MKg5JFw9I7xyc7fHKqguTlT46Ujcuqb2cczwq9k+?=
 =?us-ascii?Q?ZLf8L+RhB4/tyVA7S+4JGzUoNJ7GbBySZrsukyBSm7Sdrxi5X0/Lsm6Ag+NA?=
 =?us-ascii?Q?Whe9u+9BuPsXndo8QXtww5nIerYzMUpGIdg4ZscS1MLTL6LOhCOraGQ96MoM?=
 =?us-ascii?Q?5kTcnutS3U4t2Qd/jA3ZKOW8CF2OlheKADZXUJh6zDdXikv7DCtZz5fvhtVU?=
 =?us-ascii?Q?ZywQYkdLtfz7PJCI4BGMm43Obo43ojrIYH1LcL/h+FbcAe6n66aG6Hu+PUOF?=
 =?us-ascii?Q?uxuCz/Jhbk9eEuT+T9BaiymLADygHkK0/KB7X8RXP5CCCg8GK4YWbJXbQ4mR?=
 =?us-ascii?Q?SS2T1ShGoZ41tSywz22izDSkn0AW5irPGJMUO8Se6wzIZPn3mRH0yAuTn2uc?=
 =?us-ascii?Q?pGNYCQNeV/bpseqJH9d5VGXlUX8aRl5KzdrMcIpU+DkHLvQYVGhlW/z6ld6n?=
 =?us-ascii?Q?vtBZsrzI8eg1QwpYJU8jDCJwQe5u6lGfyi6Cs0Blt0ekU3jBhwv14FNupIbZ?=
 =?us-ascii?Q?1pD/3uuC/HgjbfkSzNE8uzfxEkT3EWr2eHjaWMf4ScAhHJ2bFWYCUmiVPs+T?=
 =?us-ascii?Q?sfC2PVsbPJpxAdqIXoFqDYo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 110fd4f9-bd7c-43c9-99fa-08ddcd9e4cd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2025 06:16:33.3745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eagER3JEaJ9PwKxAswX2U4fNigubyOV4mVT1IWATOmMlQPdv6uyUnGec5r5hrLFIL/7lsqDRpEGtXiiZ23T6a9N7+Ag84nKRld4hjtBPfTtud7uJo8Z0B/WynlVtNYsl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7529
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 24 July 2025 16:00
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/vblank: Change log from err to debug
>=20
> Let Potential update error just be a long instead of an big error we alre=
ady have

I think some typos to address in commit message, otherwise change is straig=
ht forward and looks good.

Please update before merge.=20

Code changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

> Atomic Update error log which shouts out if something really goes wrong.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 70ba7aa26bf4..3e51deca0c21 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -724,9 +724,9 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx
> *evade)
>  			break;
>=20
>  		if (!timeout) {
> -			drm_err(display->drm,
> -				"Potential atomic update failure on pipe
> %c\n",
> -				pipe_name(crtc->pipe));
> +			drm_dbg_kms(display->drm,
> +				    "Potential atomic update failure on pipe
> %c\n",
> +				    pipe_name(crtc->pipe));
>  			break;
>  		}
>=20
> --
> 2.34.1

