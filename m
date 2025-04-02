Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C525A79343
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 18:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D6E10E85E;
	Wed,  2 Apr 2025 16:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EulHrccr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E9D10E85E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Apr 2025 16:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743611695; x=1775147695;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=i++JR/FT+nSBQj1uMu+RfxdQ1137VMMXbupsFGgdSgo=;
 b=EulHrccrh7ghkmakWFYKRlmtm6laVgC1D4gvsDtjp2QFDHXpxbFqbdzd
 x9X0/dFFH9A32yZ/ZY/ttQg0nCk3zvQw839kNjo+1KVQHJ91ItS6z/2UX
 nYYkZ4vSFQlkVEBxJHns+zv6MST2B4nHrjcqEQUbFOVudGwfIOzoAqDFT
 C0aus/t4ykW8i+sOdBMXYUcE1ZjoX1q6bfIcdB2Sbh7vfGYk2rRVNHINO
 bRGpm3o0pcujIDM12zdUimpN00QgUfuGV1YmEOFMWchsfd47As7IS/LE+
 ShYc5BrknK6FdXQ9aHSL4KO6D0Fibf8+A3nl0fvQ4hSGgbGpnFBKwEfmq g==;
X-CSE-ConnectionGUID: l6arf4EASfOAt2VQTjjUug==
X-CSE-MsgGUID: QmyUyil7SyKYnrOgTCR+/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44246866"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44246866"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 09:34:51 -0700
X-CSE-ConnectionGUID: klpB5BT3S7W+MulNNw2WHQ==
X-CSE-MsgGUID: PbgCM1NgREOcK0yePKv3VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="127014950"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 09:34:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 2 Apr 2025 09:34:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 2 Apr 2025 09:34:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 2 Apr 2025 09:34:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RL10FPR9rV6ZljLjtpCMUMNQk+vVcaHUkqulGTd5Pcy3Mv5LZGVM2ByNeMyCCXAwyjEKo4nnCRHuSDTRTxqj/nGcnZkhFdlbGaK4xG0xKOoDHrC5i8iZEi7vGT3fb4Vq+FSHch60gnOfJC6T/OgK3P057aCI80B21Ki/ARqGM4ml1AtCRo4uhNbOUyOqdtUban0tLJ5XVru8CAXvXqvv1fAymdU66gy+JINPhxk2QvYWioAVmigSUhZyLAo8L0xxSFXr7XBcBZeLFlI+CGnuXavFfWRExRLHN2ELGx2HSmObN73Mxajdo8q9SeHdMvbu/IKR909LvaSRiuBAikIwmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T4NlfQhpEmqHL4xwAebQlY2lNdSxdGFIGn8PV4H1yko=;
 b=fUjlcSz/r8Fj5SME2+9Q/W3OQbRcztIPlRhcreHEZN1OtjW7eMbAJnHGNMR3Fj5SWET/dE6cBkQ3sbfa0Q2qblCTltGw6GBxA2iysz8qxZSc6d0tmLKnxKkUGYa8qnT57kQxxMnNPSoQNnHvOLVfPhMtT2eDz8Peq1NIun9E4g6ijz6oa79RLeLZJLgW7Bm60lIT6HqvYMd/nC3SNZa3f/DONu3EDkJ9B27h76RGwGQD0S8fPwpas1+CfcRKQGf455fdLCbe8Il53i+1EMTc9oMEY0yEhaciBfnMCGyXN2+TI79gwM+UoR1QmGGc5TPhCd6UQCZ6uvY4B7MNU8cprg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Wed, 2 Apr
 2025 16:34:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Wed, 2 Apr 2025
 16:34:39 +0000
Date: Wed, 2 Apr 2025 19:34:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915: Apply the combo PLL frac w/a on DG1
Message-ID: <Z-1nIW8CfiGghzt2@ideak-desk.fi.intel.com>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
 <20250401163752.6412-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401163752.6412-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: DUZPR01CA0107.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::25) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6413:EE_
X-MS-Office365-Filtering-Correlation-Id: f78f97de-740f-4576-2d98-08dd720443b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?7VrSiuwX9W5cnCFd+1KGaOTiKdkR2NpZ9XiVvZDvnoZ5JmQK467ooPX0KI?=
 =?iso-8859-1?Q?FP/0ctZ0f2xXUwytg79LkXbI7Sb9ADB4bbGr+MLCts80+OzmL5Pulk4YMG?=
 =?iso-8859-1?Q?brhGZB4Zf1UAacb2s0tMsDtpJMIHB9HilqhtyqYc0hFXoyrO8q2bUCQnx8?=
 =?iso-8859-1?Q?3KNw0hlLZzwlAlFQhG1UUH8T4EpytD257HxKPR7BnTGnBjYeMVKo9lUMwr?=
 =?iso-8859-1?Q?oVsiWiEpiyt8e/H4O72gFmgYrPH5gb3n+2ebZTi63SmrU5lpHfNtp/DNQW?=
 =?iso-8859-1?Q?qhDWpNFZd3H17+2ZXyg3CXNzjj4L7WU11M6ucL1aSuoxmjgMUIiYBmWhc1?=
 =?iso-8859-1?Q?ge+IO8xjgsVyg96kn2GzELPh0zyfjb82QPF0q9IGrRcumwb5ateBytaEIK?=
 =?iso-8859-1?Q?VIds2Hst9cC9bcO0+YnqfnWHSvRMsTA6kAEkcJE2F5qgP1b3169IbWcLI8?=
 =?iso-8859-1?Q?vVLbyHi3R4lAG5UVbYMUggaop0xCNCrAasL7X1SJn7uJAseJNOanAH5xPc?=
 =?iso-8859-1?Q?2z9L7lAX6qaveL4aw7RmbaSOhJHzCmGToHMhiAzAwYKQ2wFRwCwPXPJvog?=
 =?iso-8859-1?Q?S9/uuiY0WQ8Awveqgs90JoWS1IOgsavBE+ugBmOcZd1FLj7lyMjflkvTJt?=
 =?iso-8859-1?Q?gGEC3QUS8IyeFg/JhStHqs4X9AskscPkNatrPstj4Hm5sf/PJB00HrwPGA?=
 =?iso-8859-1?Q?slcRNTRxeACkc6cZ3AhGfsba1sITcmgDknymeHMdy3iaeWN9RSr2LZqFoz?=
 =?iso-8859-1?Q?Ohvq3AMSvV/jL4Peq4VaAYqThMpLXzf5Ep5ZYWT6uYLBq2T16q0wCjEuc5?=
 =?iso-8859-1?Q?SSdkWD5P34E2v4Ce3TQFyufonZ1G0/jaiwjzgYAC9JqgH2yfZyrb6IRwTQ?=
 =?iso-8859-1?Q?mLV9mF4bz3hPBcaIAMeOe3JXFrG3ggWTmcYYq/EynFl4KuuVtmOgomEcJ2?=
 =?iso-8859-1?Q?2Cww6iGfPZKSa9UyhlxKaHb1447G9VuBG+PxKVLU9BNckrlNNPxE/D4wy2?=
 =?iso-8859-1?Q?ghsW8hVTCasWJDm4LlymnHCx4LoNVZwMMnOC/SjDIzR3WHrVJ4biS652AU?=
 =?iso-8859-1?Q?wayzOw8e9qXtY4s1ymKktZNBR9941cHildvjCc3XgnM8nPCdwKrVM08m+Y?=
 =?iso-8859-1?Q?mIP2A5JMbad7ViUJYe5Bp/jA6acX92wxTgdOYBOn8+DXACDhSS6RMWiI2i?=
 =?iso-8859-1?Q?Ms4SmdyBybXePDhGJPqoz3r3DRTMeqMAQgkHzzpDUQAdGpol4E2Hk4KEFH?=
 =?iso-8859-1?Q?CFLLz9gym789hQSOAM4I3mE4JPj6R4l/BixjZRS5Zwx+TdGRUs9wdigG8d?=
 =?iso-8859-1?Q?NV7hpnO4VOqiJO5Yz3gw1MLkVscnRuhmohoHQ1UY/2w472gi0bBw5QoOkK?=
 =?iso-8859-1?Q?zZuYljuIj3ks5djzy81KEpBVF8m4bQ6yYSG0iMX23zk4FE+eNFxslm05jK?=
 =?iso-8859-1?Q?IoqcaoM/Hmpz/WAf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?dah4SrmC+eeDtnaNaDC/2YhXYP0fR27GGfOPdx6XYkIvu8A7blIUshEr+t?=
 =?iso-8859-1?Q?7Yrimenz+u/OApY8XELbJ9fbtJIrDx56gxRaIho1EDlUS3XcsJWT8XHxQ4?=
 =?iso-8859-1?Q?V4GpdhSNOencvQBavvgJCtWGLPSjRpBoHJv1Xjy26vUSwTbWywjjI21s5l?=
 =?iso-8859-1?Q?TPOefrUwHoZ3W74MYcIQ4eucuOBXIBHP8gTxIqev816fLGdy0ygNXU9p2U?=
 =?iso-8859-1?Q?YLLCRRaZvn5GlbaReEXOsJ5l33vHF3JUHL22XSo4VbIxwkpqWgWFleYVQ0?=
 =?iso-8859-1?Q?PpHh2znAa1V2kBiz5E6+Ouh+gVJJFytm0E3HzwTkUS9CZlOcFYE7DZ++ef?=
 =?iso-8859-1?Q?kbFY6tqNtq0cXw/CzR+xreVXmxFPEyKem1gVSnn79zKX8h/IXkofDslggC?=
 =?iso-8859-1?Q?0PxbIeDEGm+flLYlfhC5db841yTSxBf26Oy4UlIhQMEWBHZM4+86wv7lsQ?=
 =?iso-8859-1?Q?EmUgzviiQcF5p1bNXdrK69ccYd9/2rXNZnb/MVIZfaMNpjsf5p2uF7xHAO?=
 =?iso-8859-1?Q?lBQKeH6+KsPvuLdz6DVC/Blx9V+zBXZ1zdjrJIqYNPHYTLi519aDo8qR+L?=
 =?iso-8859-1?Q?IiXStJeLJe/fem1qEs3jN0H6QXXiifGvGd4VuLGg0LUaOojzeHhIamDDlw?=
 =?iso-8859-1?Q?Yrjp/uL0vBEWnYcry84yqJpaJfzsf1nzUp6FaEg7AeWx00bOyjqp4GB0tk?=
 =?iso-8859-1?Q?/EB1Z+lu3eJQx/QjU1o3YAilbEIBDjuJgfiJkMqedKWc3uaMkUQJn4eU2j?=
 =?iso-8859-1?Q?npvaRl5u49nRFCy6mRaWxDBRAHvpGzZv2WZZCIqajTrM6nw7eiQuP8IzGr?=
 =?iso-8859-1?Q?bg+igYXD4NSibH73BLaeCqXT6tQaU0hhaFG8C6MgElU+iB1Swx443beEUc?=
 =?iso-8859-1?Q?IOBWj04KKPVEaTS8dnsKjcE5QFnr3DmCVL/jgZL17uUSWKKX9S5g17GC22?=
 =?iso-8859-1?Q?a4hF7uuux9nxS9+qcQcNhQexVaqmSPEKmiecbZSsWUCEDlZlCOcW5nnBPk?=
 =?iso-8859-1?Q?jU9ovV+rDLBpv6QXoM+4eGGpqGdYzqxYkgCsY3C/LrFvEqQX3xKzhxAUA7?=
 =?iso-8859-1?Q?fMXq62wqw7L9la9UWcB66pffTYxb98qpLx2pJ4JpUhB6yH5L89c2qaLCAe?=
 =?iso-8859-1?Q?zlT1KUD6AMY7VMpGeDQtBFHQBbeDbJ7UTWhNGfDWI5NSXiYKRkzisNszEZ?=
 =?iso-8859-1?Q?glmJi8kBMh+6XnxhbiORSIZ8IXGk8o9kO/gNvq0qzkss2SdPTgGUgXzEMW?=
 =?iso-8859-1?Q?4emP+uOl51wImh+Zm6sLKRZXK2OHABjf63kLWjowiKbbh8MAgc/CHILNYd?=
 =?iso-8859-1?Q?0omW6nvpNnRwYeNXp64hCriNAy8vZxb0O12n1aM17ZZdoq031XBTFNNj6s?=
 =?iso-8859-1?Q?zsDz0/oYiMyI4atVH5nhIcVFuLzw7mrnPQMoE2wA3IZ7kh+bl/OZ8wwOWM?=
 =?iso-8859-1?Q?CJOAkbpARcFo/aicZ9X/0nlQktHE3awJWOKxDrdRQCL93wtJB34sDyVCJj?=
 =?iso-8859-1?Q?jSQXTwIttKUN9vsefODUo3wL5xeiiD9RZQfkd7h98bWUKHnz+MQq+8+I1T?=
 =?iso-8859-1?Q?hUfkyuhynxNjLQ9CgjoG7KH4dKgoVw2Rypz5jneECr8sj+bXA9GimLAvdI?=
 =?iso-8859-1?Q?Oc1gI8GeffBF7YlsDZoVhhWsQbP7R14N+m?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f78f97de-740f-4576-2d98-08dd720443b5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2025 16:34:39.9243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+eFgbD2f3dvbzZP3twgICwviYfRT59EPu7UeBzsOzPLVPEYGmo3c7uyPk1nfpbeEclhA+Bm6eOJ2XoL1nMdhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 01, 2025 at 07:37:49PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> DG1 apparently needs the combo PLL fractional divider w/a
> with 38.4 MHz refclk as well. This isn't listed in bspec, but
> looking at the hsd it looks like it was possibly just missed
> due to no one having a DG1 around at the time.
> 
> This gives us slightly more accurate clocks on DG1.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index ec7feef1ef59..76ab55ee4b80 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2604,6 +2604,7 @@ ehl_combo_pll_div_frac_wa_needed(struct intel_display *display)
>  {
>  	return ((display->platform.elkhartlake &&
>  		 IS_DISPLAY_STEP(display, STEP_B0, STEP_FOREVER)) ||
> +		 display->platform.dg1 ||
>  		 display->platform.tigerlake ||
>  		 display->platform.alderlake_s ||
>  		 display->platform.alderlake_p) &&
> -- 
> 2.45.3
> 
