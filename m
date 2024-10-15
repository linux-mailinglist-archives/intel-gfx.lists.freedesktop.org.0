Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0C399DE05
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 08:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB05910E2AF;
	Tue, 15 Oct 2024 06:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAYzMFUv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF9310E2AF;
 Tue, 15 Oct 2024 06:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728972909; x=1760508909;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PIJZbX/yrceYjHB7Ft9m+8V7vvMfMtV6hHGPXZ1nVsw=;
 b=GAYzMFUv1j6UkY36W2qyOI2xw8Vjjsfo6T4gar33CeHhhP2m4+W9Z2Mr
 JMb0SOMy8KlJBbtToXB4MfoVCr4TfCj2S6RjoWOKSnCnW/hDD7KVQ57JL
 KKdjCbMtp2gB5aWkTlOxrshQ5+S62Ee2z75nVLYQ+yi5NIOWr63Ua6pIi
 qKyo/RvSSr54F7KhJkQjHofEprIvdzXCA+EzIzVYDZJ6Bw3lXETsxo69y
 JUYr8ZbYYOPK5tZkLBvIky+R3wKPqV7DKu6A6d4ZSgYrf3tm7bSKHuAco
 1oL12/PiyqPIVGzBos180bw9UNOR5tnsgdtY5AY5Zz66HmTZjKZHmRSts g==;
X-CSE-ConnectionGUID: YaHT4levQ42GXi3nORK8eA==
X-CSE-MsgGUID: BSQCBrJ8SVC/FS5SDplL0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="39721843"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="39721843"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 23:15:08 -0700
X-CSE-ConnectionGUID: At8RmNE3QneI81aZ29ZUTQ==
X-CSE-MsgGUID: L0GWfo4xSHCZwSDG24B/Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="77800162"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 23:15:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 23:15:07 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 23:15:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 23:15:07 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 23:15:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kmaAZytD1h/NWSKl+AAPgj1Ab6xvMqLp9CXioIRFbCt/pgxIWu/t8ZhyqZrt+idZO3tufAGXlXmI1LYBmnulz4eaGwxGu2lOD3aLul3OU3ATus7iVOggAqYjktpBjBCkwl2ACzaLV5yLpdY/SP0xdDBkf63zJ1o5wH48EdpfDPDLumCRQCRXgtccKhOdDbMISvG3w9A9UlqKREjaHaG/flC+LYKkpiN92DcQBm6KSh6p0F94UfuKXcCD7DmqCmkfSNqdOgRM7kyhdyFJXv0D+1+OA5VX1IO3o0d/DVc/EFv1u8AJirchm047d4lByauneMNR5vg4KOxMe0AFsGMjhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8WPOjKLrrVBNbeCQjNvc+zNjHm1hpLhPcH6FMIKCic=;
 b=QTI9pjOWolNs0NCZc2Gv+LNYhZ3aKQ+hCWpSPy9O3Y4l/gmObPDVI/cI4cw3XF71FlX+986fUVfw6v3DjWdDWBAAi/VrMsuUmaHAuqxyhnmnwPt46wREQIvTywJ8fJfxtvOD/1hn0F9uI1Mon565Qre7HNC+kda8ndLgA6ZV5NIfptVTmLvBrd/YQK/DEKOEF04RWM7qeZPwLYSH/oNuv7uUB75ippesa86HlQiNz1MsI73G2pftpOcEFMWysEDPZtF1VydGC/P0PUBdgBYzk6/EWWwue129lAZD5hQ20Z8e7OSql8WhzPXNNEn8ple5GRj47fQC/ltUp+wPTfR24w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL1PR11MB5286.namprd11.prod.outlook.com (2603:10b6:208:312::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 06:15:04 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 06:15:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Thread-Topic: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Thread-Index: AQHbFYDlSpys4nSFckKfntHjFD/+4LKHaAWA
Date: Tue, 15 Oct 2024 06:15:04 +0000
Message-ID: <SN7PR11MB6750E91CDE9FDA7624B50154E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL1PR11MB5286:EE_
x-ms-office365-filtering-correlation-id: e90a0d9f-747b-4d90-7759-08dcece0b5b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8A517WqmH6OBdIBG3VMsrP5BO0LTVvO8KblJmQQ3it12zZKO8DnzwVYquSlc?=
 =?us-ascii?Q?fgOY5TGxa37cUV7pU+pddgHCA+uFOsV4/y/r7XUbGTaUN6mW8IUXD3XgXq8j?=
 =?us-ascii?Q?zudF3O6zII1dCB+HwKdyAI0IHTF+jlSKRTraiHqt4zix19A2CjK2V/hfl/wu?=
 =?us-ascii?Q?iL//5QNspWIKUvgpnURdPuO6IBpuKFJ8zHKpNK8ywquZTOK8DHbNb9Lsp10x?=
 =?us-ascii?Q?IIdA+19pUPqc2OvuZu5ollKJW2pYCZh2dUH1hLnXYQBwNGJSRXwYnHIHfVsq?=
 =?us-ascii?Q?9lhb2zjDwHyPZcGF/MUN0LAKtodtX08wVqnRoLUl7g0QrnaJA+IsD+fWH3fn?=
 =?us-ascii?Q?WWSjg0HiTspbIvz3zS9NcSo6QTQY+XVQJ+CISlYyiHOxVWnthqdzrNoc1tT6?=
 =?us-ascii?Q?ReQtrv17VtGgaaU632SQzYP+eJrCkwKO2tyNApwknlBiLSJmmv9sEzG2LlOl?=
 =?us-ascii?Q?bKBNP6r8tkotsd9PdfUQwWkVKmLZeMAnhUsX9K2Hb8p2scWyKQ2gBjF4WH9x?=
 =?us-ascii?Q?Lig2Vj1UfUWIJ2TVHdkfsbV6PtdRqatFroIk7X7/huE946S/Z25QNF0t0b9l?=
 =?us-ascii?Q?jxCcgWAKk0rHzZdm5n4U0VqS12j5qdHO99ZndsW2PbGOkg7j8RdvfKr7PrRT?=
 =?us-ascii?Q?9sfLNSdlYBj9AYM+o9Pypj1ETzRZ02q+MBMXzM0xcWRPWdIJaCqGnCNb7dXL?=
 =?us-ascii?Q?Kr21ATFu9039shbUxWKz5zgNoxMTj750cbiKGdOzTaq8p4tyN5o1crnCaeZJ?=
 =?us-ascii?Q?zQ+JZ6xgvHpXTQLrPTzuQXSnMnfE62RcyFV3Lht7ROl5rgMZrZQiB062Qotu?=
 =?us-ascii?Q?8Rk+fDYfgwwI6Mt14XGYWCBlgFNThu9EK6i7Gh1yQfpQuyh/gUGA7yxL3omA?=
 =?us-ascii?Q?C2Ei9SmU6c35wtigma9nKiOTwJOqA1+Rgm+mieAYKMFfP1jCyidFN9Lylxy3?=
 =?us-ascii?Q?AhL2ayo38uPj9EDNA1IsHbQXLW7IQZRLmDN8R6PBCtnQy8uLVnMKaMiqLD3K?=
 =?us-ascii?Q?c6TokK4+TRvwXnxjG9XuoLdodFuDZzfpO4TEN7YdeJxnK+5y9Q/cMG4aAUR8?=
 =?us-ascii?Q?GkRq1ZQU6bMi5ft299sICFF7LX2//2OpMDWDhKLuF8LsvtduDI38DtPJ4BpV?=
 =?us-ascii?Q?upFl64CU7D02LlXjGUHOgTdSu55Hm5GITpxYTB2DYeTeilHTqoOtkjFiVOvs?=
 =?us-ascii?Q?g9x7a3mhaxE2Ew0J1oirS3SqZ6kk+Erhn50T2Uc9nsoUl3vzvfEEiEm0SP61?=
 =?us-ascii?Q?QVABFEO239z+EaS+FmiqNRGU2k96mFHNnbjeJyY91v+ZJMCRJejYgoQQzfW+?=
 =?us-ascii?Q?tiYGWcGrM0Alpl3Yvc0Y4F+y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8DvuGiu0v/inSbEr5i839twDnUH3CbCmR/l+5A0C6dC7Edk/78DtCS/9vtwf?=
 =?us-ascii?Q?5SZRmW8/YKRc+fAoEmj1LIHg+OxRimf+kYt3tDXHd+k8eSk+WHOLWLvHBr8O?=
 =?us-ascii?Q?MKunR+wPF+oLGBIJ5Rf+BtkyuUxLxYQAqrFEnyc+rnVfdlJ2yFI08MqzBJ/V?=
 =?us-ascii?Q?BdAA8WHyv6Bd/uNXZ2I7V17zLqj9Fr8Xlsoo0EM+OEETUy7iobaphNzDDEbv?=
 =?us-ascii?Q?0j/IoZuPYhLSAWjgXZJ1slh228RrWx3e2igVCxhjj9LOCT1jVRMz1bXodjb7?=
 =?us-ascii?Q?gNPPXVHwoev0PAAzd8BF2f+WLj6w0iZTddEHPgU6KMx4dUT/hri451zkL4LP?=
 =?us-ascii?Q?8L9MhrDe9QNc1S/5+x2/uQgOGXMHF1jlqxfSlhy98U0HMbsKbaJbCdYfWxvd?=
 =?us-ascii?Q?1wsFBP/5pzUMRjBZjcowMQTSj6JqiUc7GzOUVYJs4iA//ItJaHEemVBvy68d?=
 =?us-ascii?Q?Bl52baqAZa2FHFU1qjTwb2QwJbpgHcI2YbgwB0izkbmj625MzcnIA8BrJokw?=
 =?us-ascii?Q?95HmDXBTkOEwENFyJiMpkjd8dfpD3jUup3AeP8h7hAUzmJPdHm1u+TIdmPak?=
 =?us-ascii?Q?oobWjf36xWAlmIWPYWtmKaXpKYybQ8xYy5Uu+XH0Nb4OURWwb6DL9pzVEy/s?=
 =?us-ascii?Q?PT7UWYpFgG50OTypjGgvddohlLqnvXUmSKqwF2B2U7vv1lmn+4I3kUelX9jS?=
 =?us-ascii?Q?YLUSZfgW9wyQgq4pj7Bzm/XHwxc0aEbtw5sKey/AXLFiVo3XMh92Evyl7FaC?=
 =?us-ascii?Q?4fZ4bhiYSZZHJSeEv9O40Wgq4nrxUj506ucX/B4eM4bRPPwtUoBFu/VBDfPM?=
 =?us-ascii?Q?avk/Baki8fs++FIHZCE47+i4fzRqvKHVqBXBbAx5h/bhlI9LQ5FOQYRHaJzH?=
 =?us-ascii?Q?9RNGOgcy+VBIX1nc6qKYpJfKQEV59cHjMGKB41+0DFmln+kLDev30OvJr8vF?=
 =?us-ascii?Q?FBK07elq0Cv5N+tIAU2zL4OoKypObvutNnJGrjjnBFbWz/F9UeOdprPpl0Tz?=
 =?us-ascii?Q?hL1BEYNDv6LhPwXx+rnUIWm5wPz05K3L5OO/myBco2YiJcS9XkOwApt4eNtG?=
 =?us-ascii?Q?ZYFAEslec1tpTQAwx20l90g9+eLVvndjt3WqgVMTTEtB2CZ45OKov6bRNsdO?=
 =?us-ascii?Q?Ng4GwQQg9QMz26J0SK+6kDH7NgUpJkvW+tt+APr1gJT3CZpS8kpCPoaecsQh?=
 =?us-ascii?Q?jamTUqUguYZBUlz1DdXBfNm47CelsvO/Ov8fBF7q7fG/qDFB4RiQhi7E2hhJ?=
 =?us-ascii?Q?+KJxKbF3+BKiPcm/V86P/8cERhX/Bwd2GOF0HK2QJ/E9Tl6lAkQCgykmH66P?=
 =?us-ascii?Q?Ccfr1m03C8raZQOXr8R4i8tPuRYPpjZZpCH2fwokm4p6t4Wuf05xPN6JhFGQ?=
 =?us-ascii?Q?KCE/zt02J7EcgsDKSafr0jhi7BOkKYb8W+SYAI+BuoMMDjGnrmtOnP2oMm+V?=
 =?us-ascii?Q?LfYZLL8XU3k2yqDfPEkkD/w2gw6wyCk2cWTbtNwZFS5ITDNMSJJ7KwVZvqnT?=
 =?us-ascii?Q?bHGIJkGbabeSn8aQ0IcfeYVZ8IAtP2UiQWIcjxr5fbdKNNU5EQYOJlAHkOwB?=
 =?us-ascii?Q?OHSNEb9i17dUnnTWnghyy4bJPXWO5PZR952Ew7zW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e90a0d9f-747b-4d90-7759-08dcece0b5b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 06:15:04.4788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: czMPHw66vQWVp0ltwWgv6uuc2nqlhIM2BRc+EWpVwVB6ejEGJcu4yE0Lz7graaLzivVPhQmnGXRdxOFwASmwkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5286
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 3, 2024 4:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
> intel_dp_compute_config_link_bpp_limits
>=20
> The helper intel_dp_compute_config_link_bpp_limits is the correct place t=
o
> set the DSC link limits. Move the code to this function and remove the
> #TODO item.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 64 +++++++++++++------------
> drivers/gpu/drm/i915/display/intel_dp.h |  4 +-
>  2 files changed, 35 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 02009ae03840..bfc31b3af864 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1958,7 +1958,7 @@ static int dsc_compute_link_config(struct intel_dp
> *intel_dp,
>=20
>  static
>  u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct
> intel_connector *connector,
> -					    struct intel_crtc_state
> *pipe_config,
> +					    const struct intel_crtc_state
> *pipe_config,
>  					    int bpc)
>  {
>  	u16 max_bppx16 =3D drm_edp_dsc_sink_output_bpp(connector-
> >dp.dsc_dpcd);
> @@ -1983,7 +1983,7 @@ u16
> intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector
> *connec
>  	return 0;
>  }
>=20
> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config)
> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state
> +*pipe_config)
>  {
>  	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
>  	switch (pipe_config->output_format) {
> @@ -2001,7 +2001,7 @@ int
> intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config)  }
>=20
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -					 struct intel_crtc_state *pipe_config,
> +					 const struct intel_crtc_state
> *pipe_config,
>  					 int bpc)
>  {
>  	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
> @@ -2130,21 +2130,16 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,  {
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int dsc_min_bpp;
> +	int dsc_max_bpp;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>=20
> -	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> -	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> -	dsc_min_bpp =3D max(dsc_min_bpp, fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
>=20
> -	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								pipe_config,
> -								pipe_bpp /
> 3);
> -	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
> +	dsc_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
> +							   pipe_config,
> +							   pipe_bpp / 3);
>=20
>  	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(i915,
> adjusted_mode->clock,
>=20
> 	adjusted_mode->hdisplay,
> @@ -2255,8 +2250,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	int pipe_bpp, forced_bpp;
> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int dsc_min_bpp;
> +	int dsc_max_bpp;
>=20
>  	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>=20
> @@ -2276,16 +2271,12 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	pipe_config->port_clock =3D limits->max_rate;
>  	pipe_config->lane_count =3D limits->max_lane_count;
>=20
> -	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> -	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> -	dsc_min_bpp =3D max(dsc_min_bpp, fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
> +
> +	dsc_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
> +							   pipe_config,
> +							   pipe_bpp / 3);
>=20
> -	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								pipe_config,
> -								pipe_bpp /
> 3);
> -	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
>  	dsc_max_bpp =3D min(dsc_max_bpp, fxp_q4_to_int(limits-
> >link.max_bpp_x16));
>=20
>  	/* Compressed BPP should be less than the Input DSC bpp */ @@ -
> 2428,6 +2419,7 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>  		&crtc_state->hw.adjusted_mode;
>  	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)-
> >base;
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
>  	int max_link_bpp_x16;
>=20
>  	max_link_bpp_x16 =3D min(crtc_state->max_link_bpp_x16, @@ -
> 2441,12 +2433,22 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>=20
>  		limits->link.min_bpp_x16 =3D fxp_q4_from_int(limits-
> >pipe.min_bpp);
>  	} else {
> -		/*
> -		 * TODO: set the DSC link limits already here, atm these are
> -		 * initialized only later in
> intel_edp_dsc_compute_pipe_bpp() /
> -		 * intel_dp_dsc_compute_pipe_bpp()
> -		 */
> -		limits->link.min_bpp_x16 =3D 0;
> +		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> +		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +
> +		dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> +		dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> +		dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> +		limits->link.min_bpp_x16 =3D fxp_q4_from_int(dsc_min_bpp);
> +
> +		dsc_src_max_bpp =3D
> dsc_src_max_compressed_bpp(intel_dp);
> +		dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> +
> 	crtc_state,
> +									limits-
> >pipe.max_bpp / 3);
> +		dsc_max_bpp =3D dsc_sink_max_bpp ?
> +			      min(dsc_sink_max_bpp, dsc_src_max_bpp) :
> dsc_src_max_bpp;
> +
> +		max_link_bpp_x16 =3D min(max_link_bpp_x16,
> +fxp_q4_from_int(dsc_max_bpp));
>  	}
>=20
>  	limits->link.max_bpp_x16 =3D max_link_bpp_x16; diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 8bd0bb4ec0e1..d4ca00ba49b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -145,9 +145,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct
> drm_i915_private *i915,
>  					enum intel_output_format
> output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots);
> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config);
> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state
> +*pipe_config);
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -					 struct intel_crtc_state *pipe_config,
> +					 const struct intel_crtc_state
> *pipe_config,
>  					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> --
> 2.45.2

