Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316CAA32098
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 09:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C873110E7EC;
	Wed, 12 Feb 2025 08:07:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CMwT324W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D2010E7EC;
 Wed, 12 Feb 2025 08:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347675; x=1770883675;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bj/bByOYfCmnphuJ5ZSaVZtLaPiLs/tb4Q3hBGqY95g=;
 b=CMwT324WE+IKDmRrDy6Jsg/TToOap6gVyt46QgXRHskBe7CoKkKFBkGa
 9RIZ6Q0sAEmxK1KPkLwI27J8P4+133IQSv8MKE1WJUrQOq4+upM8hwMkA
 iK+btsr83mKsJacB8S617QiFxIrmAeaRJxUDxOXNQthrXDATYMR2YJuP2
 TAbDmZZeEejWN0I0UtYIKmabPIr43cG2LgWnWU0PXg+z26y2z5oNjwUdj
 vrD78Urycy6qQt01RHZ/LJaJI2nlIM4ST2s2tZxKMMA/fYeNiz6t1DFH9
 cJ6Nu3/iKBUyAoEgxqmF9jZBz0BTykDxpq3Lra4roDPEF9f/X3pq9BF3f A==;
X-CSE-ConnectionGUID: LOBQ0/WkRaaWcqHR1THYfg==
X-CSE-MsgGUID: QMTAk1RXQVSZYUjAD624zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51385422"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="51385422"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 00:07:55 -0800
X-CSE-ConnectionGUID: dOLmwMhnTP+QKQ0RHpOiSQ==
X-CSE-MsgGUID: g0xOsn1NTiq+x7JQ1BhNEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149941603"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 00:07:55 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 00:07:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 00:07:54 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 00:07:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WXzj/mfkhk1/knZVWl7exg8t6Lahm19ifjE5VXO6zwqHI0bpchZWqftr94y3Qk0dhdy/6C0WxORUnc7a4EzNFm0M4eQ7inWqYM659Z0he1RdO7+HlkhSlSbWlibsUoFaFNnYhpEcdxh+nGsv10wlVcjzXMt1d1tLrx/wNhcMmU/8J81y/ll+hprQ4f2pMkkijP1ZjVmE4SXZZ3vdgEKC6Fi+GHbhuTMkgrvR2bi5vYCfk7RKETxv80HiUkgvEZEdq70tBh4FejT4GQm8EG0W1DcOX0EOi07jInkwdEBRjxk4NKEaG3gmfEUy3UXPE4YvkP44il/5NGPmmewiKlio+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YcSJowXv+t1XxL1lhDFnsa/tiEQDyLdqqa95FQiEyNU=;
 b=OR88I5rlwp1dGll57pyOIjL4++8uG5ustYgNj9KKIbSCo12OyPFMGGypSwEi6lD258nl+HJpqEnIHSrNF1m8ivRUqX5x5RtMZD9BmHeltIJIBCpy8v/9PV8olvxvWvYQHmF63HY+rV+13gSmlTvM0woVIPgYuvR5FdsvJxc/KaxkJ4DPp9PqzrAXpMm/GN1EjApCldkHj89fMBjmlvDwbDaJpTMg38Kbt2gkRK5Ec8Z+4STUNLdnGsYkCsghlMmJrjYO2gwA8pxXWMyKC6vwr+CkZEolQUjXBpj7SV61kuvIoKAOCmuYh0Jhniux9a0E13hB+CDVAHxlnB8noE6haA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 08:07:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 08:07:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/reg: Remove some extra blank lines
Thread-Topic: [PATCH 2/3] drm/i915/reg: Remove some extra blank lines
Thread-Index: AQHbeWU47uLPFojJlU6JCLBdu36nhLNDV4Pg
Date: Wed, 12 Feb 2025 08:07:48 +0000
Message-ID: <SN7PR11MB6750829E4060A9616BC47A12E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
 <43183b2a681a24ee1ebcfd5cab847bb8acfc5d65.1738935286.git.jani.nikula@intel.com>
In-Reply-To: <43183b2a681a24ee1ebcfd5cab847bb8acfc5d65.1738935286.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4528:EE_
x-ms-office365-filtering-correlation-id: cb9f8b8f-b1c6-4c68-46ae-08dd4b3c571e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?R7Or/GoTx4lVyp/ZGKUeqDUH9xMAnT78Imm3rKmbZMFzCH1ucXtE81Y7A9bK?=
 =?us-ascii?Q?pmEEgeNpnqRg4ezqMlkYN3tcUERpEbx7FnH7G1pfpY3ARKpbWHGxQgCe4rVh?=
 =?us-ascii?Q?fZx/RM2oBQSQrh7b8k5e1+f3eGnIiYvdIc8AP4lKw9ysX3IY6Bikgvj5CQrB?=
 =?us-ascii?Q?qj1Io3SbMnJkIkJzqwjRAAQTa/JyOvu6BM5koZAn8m7bMuBYOs3U/ROax2fi?=
 =?us-ascii?Q?ZABsYqY58cfxSRzXtUZgXhcEcIGeIQnC2pK20L4gfn/i4/IoshVoPRPG4PfH?=
 =?us-ascii?Q?4wNoxeAo1VXKn9Vq6TMhrWe/jRbegelKce5RJSB0vbwDBmQFGeNP7JC/HEfk?=
 =?us-ascii?Q?AJyUfNedFA+kUVa31Wfp4Xi0iv2xXIusrYKJWjBySgJTuI3l97hVHfDyB1o6?=
 =?us-ascii?Q?VNjbYqgTvyg5X553GWaLNWe9azzI24Clo3ySHXM2h8IJ197EqWAq9z1Gzo3X?=
 =?us-ascii?Q?25BmmOMpjC+/VpH9rxJ+ytDUTQBJMjNhoTwJJn9XnJ6o5r1KRbYDE/YNinfo?=
 =?us-ascii?Q?PC5EYnJ2LyXGtrXZ5/7HWFjZDKkddA3sK2cen67s7VKaL3f5JWUFp+t6smWH?=
 =?us-ascii?Q?JnO404ZrNc1vvk/JpBYItpjw/LWSX8/xKjdQw9gKXvRLyo1+CwAi8AePeyDS?=
 =?us-ascii?Q?+Yy+BesOmExMA7OF1usT9nkncccc+a68vXZp4JIGX7RZTw7pIKZCBAUXAysh?=
 =?us-ascii?Q?Sz2cJHsTIBTyJtsA8tOFjk+hKawpq+VCrCof9JHIVK7g/Dz5qWlwo6LpjX+q?=
 =?us-ascii?Q?DSwyEBH+GMnpl3p6/OfA+5EoJKCK6VoXDpObGjfZqkR9z2rkhAm7P0bW821X?=
 =?us-ascii?Q?L34qm9PiMBu3m4e9SmDmtZNJnWNeEz+QRU5NsblYWJS2CxlIB7PKloNNVKyk?=
 =?us-ascii?Q?P5p4DF3nmXsYfjTddVRbNuADVFrw6xRj+5gHDnANjHc/uAa95Ra11r+Tm9ho?=
 =?us-ascii?Q?pItPhAAl06CDmRqGabg/5eCIw/Encize0XbcvQaeNCEI3FuWp18A8M+jg/WG?=
 =?us-ascii?Q?ajUfu6NflYvbT9HzmJjsyRYBDuhk+NPXSakDQ3Icjb8TSfY0omngzuMw0db+?=
 =?us-ascii?Q?F6ZDnL+8asB50km4QPeu8YHOdvsogSK781aRQCx0XNep5/PcZZ8pWRYgUof5?=
 =?us-ascii?Q?PIk5PDBY9Yje/JerT/hQWMxUvkt6Y3G+nqXxG07qJhJCHRI+kRgEmQ5WP+M0?=
 =?us-ascii?Q?swBGiALD1L7blR5cFg+KGtwWEws1Us43n8U3ObwjRYNU4fBg3c3BXUIyByhD?=
 =?us-ascii?Q?kWOlmeQQuRXQKuI3969YXZeeRJ5gPL5e9c4wykaWXzO5OPdA/FX3w1b9Oj6b?=
 =?us-ascii?Q?wiIRyQVhLbW1C5diObLU5pND/2+u7qbRoTSZ0y6sTuMWbvXdmDZNMit/1uDZ?=
 =?us-ascii?Q?VMbN+F/PEZPxlPAStyY2WVmgu3n+mV/Tflboss/YcG7X4p/ezc4DzlRpaguX?=
 =?us-ascii?Q?LOuZapqDlJJozKKawpp4+eEIe3CWZmsu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hSbdOv72wKRWKQMrw1cWcF0lWMX6qPNz/uzmJU5PhPRCQzAaXWP13icniMWT?=
 =?us-ascii?Q?QdPmv4ml2yj3j75rcSqYG5TiZo0vP0zq1lnG09HVAhdjMet/HBe6TFTVIP9N?=
 =?us-ascii?Q?PpBpeaLPV20/XVnkFOva7VacYWJyoBL00zsIGfHg8MreqOLDc7Cu8asqEZrA?=
 =?us-ascii?Q?DMMpuEwWhDx9ipBHXJXKBy5zxOjPhQ8FimwUJlY464pPYwPi/fxnP19UYLga?=
 =?us-ascii?Q?12zqmW7AXLDnhVWU0NrFXn7Lz7nb7e59LUUjmxNGkHa6rQJ64JUuYtwPTrqf?=
 =?us-ascii?Q?2x7zvmx113YSsItAYEr/TskrFyP+NzHIx6kxOgI2UDiYKYH2cOtNAqsc0R6p?=
 =?us-ascii?Q?EGnoKf8jNxTL3CgpKgAGv1Wu6hfg8eXnupykkhL6AENX1AFb79swtO2mAewt?=
 =?us-ascii?Q?UWdqGOjnXpj99BH07jp3Kk/mGaxDaVwZjbFozV5FRhhwU1hywA66OMq67Tmj?=
 =?us-ascii?Q?RZr04/8osWPJNyj6zsyC/4n/cOGrlsJ9zPFS9IIW1GseGgMVOAD+RjyALbqR?=
 =?us-ascii?Q?mLxyxkYNnNWJM1HB4YePQE6IQ/Si/1LyTyhtlPL9m+vp4iayg6Pl1h0QL+dy?=
 =?us-ascii?Q?ssXgul+IecECXG+yX9wOY0DzfgeMHGypHOz/24j7nKmduI/RABED6Ewak2eB?=
 =?us-ascii?Q?gE/wJgQrriUP0ESd3716vPlPEE/4dqIwgf5uluu3cvRRhLtdDVk3Pb1RD8Zt?=
 =?us-ascii?Q?102+lf46d/JPjS4FSV5oO/kFGzjrfjiy19z5QkFnnSmZYVWrinaFPLpsznR3?=
 =?us-ascii?Q?ZcAUCM757JDu+gmnsdSMmFxTC3D59UdSwMEhpKfNCFaBCsOdVFgSyzXYZ4ez?=
 =?us-ascii?Q?QTaEm6yZWe6bXPgq3Mm8O+c4MQ8qOC27wotr4/hJMcJ2e/sOb/pthZrp6IH4?=
 =?us-ascii?Q?jTEuMFX8dA6qB91Z7c0NWesjwsmJEvwBtySz4RFVp0Qv5fk2TWdOOy1KuPsX?=
 =?us-ascii?Q?0Dfk6vFyllFG65jxbSs7Bbcg9enKbo3kclUDW0HYHcg2XSTq5ws0Socpch/4?=
 =?us-ascii?Q?PyenQpkP/WoKZP5i+/lZ39aoKTPTm7uuEmxJSKQ5b39Lv+lIjJyQPIMIQBYH?=
 =?us-ascii?Q?RpMh652z7sIFqmiAMaL3AdlVkNqEgZH3do8FxBiaLHTcHV3+IvpxcvHIKL4W?=
 =?us-ascii?Q?q/FD6bvk3Ns2nXK0l559AvyKSQ4u4WIraEjsP850X9Gt5pJewzkujmhDnMR8?=
 =?us-ascii?Q?56oJmFe3UvAsnkc2M6/1X3nT9ocKWGEp9GZsVBbumhwNxYxPu2e2EAbLisZ2?=
 =?us-ascii?Q?R0UKlRw0gDqTOv8Rd8JD4B6cArUgvmwazsoO+u/bpr8BWRH4f21SoGohYfr6?=
 =?us-ascii?Q?HmUXsAM6cCw6KEKQ832ZBcPqxE2SBxBEzF1JkMUpKH308SeNDDYaKh7w+rJX?=
 =?us-ascii?Q?ZWPA+Z/CiIPFyGDWCQMcEbHbcUFHBiLcRXJE+ArRKSQdxGnFkEAI9keQe2qk?=
 =?us-ascii?Q?SdAAnN77nnNviMnAPZOzd797f7cYhQyR1d6ZRveCjJ5SEgUvZR4EQMTxHucg?=
 =?us-ascii?Q?RqYy098vxv51ECXfbkHHapCrpv4B4fmUSAMupZuwOimbLVwlgTgRrwD6ahXx?=
 =?us-ascii?Q?H+LZvjQVs50t65XLARAwLqWx5hyDHcmx6nZtHyxR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9f8b8f-b1c6-4c68-46ae-08dd4b3c571e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 08:07:48.7655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w/k9qGFRzjPGmVMxQE1PQPu8l36nQnhAAUlpePYZPdXamU1aLKN67y/vHUOc8fmQRjnOGWJX9YYMHt/V71Wd7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Friday, February 7, 2025 7:05 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com; =
Deak,
> Imre <imre.deak@intel.com>
> Subject: [PATCH 2/3] drm/i915/reg: Remove some extra blank lines
>=20
> Remove some blank lines from i915_reg.h primarily to help the scripted
> refactoring coming up, keeping the comments together.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index da658c3591f0..6e80508b544c
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1016,7 +1016,6 @@
>  /*
>   * Overlay regs
>   */
> -
>  #define OVADD			_MMIO(0x30000)
>  #define DOVSTA			_MMIO(0x30008)
>  #define OC_BUF			(0x3 << 20)
> @@ -1071,7 +1070,6 @@
>  /*
>   * Display engine regs
>   */
> -
>  /* Pipe/transcoder A timing regs */
>  #define _TRANS_HTOTAL_A		0x60000
>  #define _TRANS_HTOTAL_B		0x61000
> @@ -2781,7 +2779,6 @@
>   * functionality covered in PCH_PORT_HOTPLUG is split into
>   * SHOTPLUG_CTL_DDI and SHOTPLUG_CTL_TC.
>   */
> -
>  #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
>  #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8
> << (_HPD_PIN_DDI(hpd_pin) * 4))
>  #define   SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(hpd_pin)		(0x4
> << (_HPD_PIN_DDI(hpd_pin) * 4))
> @@ -2861,7 +2858,6 @@
>  #define  TRANS_DPLL_ENABLE(pipe)	(1 << ((pipe) * 4 + 3))
>=20
>  /* transcoder */
> -
>  #define _PCH_TRANS_HTOTAL_A		0xe0000
>  #define _PCH_TRANS_HTOTAL_B		0xe1000
>  #define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe,
> _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
> @@ -3787,7 +3783,6 @@ enum skl_power_gate {
>  /*
>   * SKL Clocks
>   */
> -
>  /* CDCLK_CTL */
>  #define CDCLK_CTL			_MMIO(0x46000)
>  #define  CDCLK_FREQ_SEL_MASK		REG_GENMASK(27, 26)
> --
> 2.39.5

