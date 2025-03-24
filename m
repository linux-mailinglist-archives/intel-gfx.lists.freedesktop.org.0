Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ED4A6DC23
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6EC10E41F;
	Mon, 24 Mar 2025 13:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TSIN7Hzi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6726A10E218;
 Mon, 24 Mar 2025 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742824386; x=1774360386;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=UZiPZY+d/3kZNgGrnwet062tiSLnYuqFmIEdmViH0YU=;
 b=TSIN7HzirpnW8hdDtX+MXj4eqHdSF0Yq0PlZdPITMPvS6uHPna0fftTY
 emgpruRVfg8D9fGCIDbB4WAOjwtSNne90Y11z4ylo0JDBQgeXbRq0VXIt
 fNSpiO5O9p8UjlKn1Yszi6yuBKLLI8mvq3EjrFr/E4S+ZzL5p9nXkuyCl
 G2TWiTLZTgwpLtnGt4w2koxkCeh2azayWi1wM5iJtvVRT7JehvOgqbB1X
 hV/j6/UYv+mDp21e6DyV5aLgFq+94BHbmdcjgWpqPpMSnyFl1EumkHYCM
 kkXrlK8JminbubrAh0cR/fHYdaWDzPTHibJtqDeZNj9C4Ihyo9iI2itI2 A==;
X-CSE-ConnectionGUID: b5sDRsnnTearuqmo94O0KA==
X-CSE-MsgGUID: o4WtZJ8MTbK7kRHgyEErMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44137075"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="44137075"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:53:05 -0700
X-CSE-ConnectionGUID: SRsDjJHYT6ac2EtTzBS6+Q==
X-CSE-MsgGUID: zobcNGuDSvurEj/pop3Bww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="129165657"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:53:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Mar 2025 06:53:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Mar 2025 06:53:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 06:53:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gznhcof18qQbI+HIZ8p7p7En2TJtp3X/rZsF651Gm8LAeyEjG5e2lPS0sTimQyCaqZN1f1X1PDvGVAM8xbLaLcEW78VtP/DwwL1b+UyxqeK1boa4GR7xZpB+LhbWlE3Hto5MDJ52twmBaiDppTrm9T48brN6NBZefZCpRLjDFt31eF45lqBWu1lXjWF454tcZo0B109sUJUGnVUjbY5zqrNyR127EiNu66jtn4acRuWyHZYRpEGkO6Hw2DmFmChs4Qt9o5i0PcHd66JqLyU9NMCSlhPQvkLpwX5fb3sAm59dwHZLDvkhTAc7Hz4tHDcnOLbCECKoZbv1OddBXZu4LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9UyTwWDBZywPc2J0E3z/Vb+P5ZUjHBhEYMypWVD94U4=;
 b=JaQqjUiGmLMTguvVeOU4jYtUxvjlf4YacjKK2tzQWb94c3Iflf7RDOPKKacdNZr5WQ3u7k1TRMJquHiKgwmvUApI3ACSqCIMsTtx3qwAu4TUQmK/eruJF93UKklPjSOgGkUg93H1zLTamQHcqS3miv4LQm0Wd+Lo0vfJA4/WSrI2+XXrGfyZXUnsOVbQA97cgGxWF1e30JGdOqOm3vL55eYQ1VpcmDGrgxRy/xIhkH/Dyr15MhcvIUhnsBKWj/4sh/vCVqX6SPS79R2kXRRZLni/WPElA0RVFVdPlgVwrMnVSGVJ7L7mxoUsclxwKDUpgvRFEf8o+0i8w4t08RN7Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB7610.namprd11.prod.outlook.com (2603:10b6:806:31d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 13:52:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 13:52:31 +0000
Date: Mon, 24 Mar 2025 15:52:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Ville Syrjala" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915/pps: Add helpers to lock PPS for AUX
 transfers
Message-ID: <Z-Fjn7-gadpbaIH_@ideak-desk.fi.intel.com>
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-2-imre.deak@intel.com>
 <874izibtvx.fsf@intel.com>
 <Z-FJjXyOjHEvXZz7@ideak-desk.fi.intel.com>
 <87v7rya9zg.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87v7rya9zg.fsf@intel.com>
X-ClientProxiedBy: DU7PR01CA0019.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB7610:EE_
X-MS-Office365-Filtering-Correlation-Id: 0371f864-1818-4ac8-d46d-08dd6adb1f76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WNW8Gn1b+/zbKOLRd4szAH7BGZdMq70tinI+bVtM6YKq1I/SRvgQ0wq2i7BK?=
 =?us-ascii?Q?mNMipTTL9s9MJsxB2jcsdG54BQk6EbS22uvEhkaEbbGCy/TKDW/zvvMXaNZ6?=
 =?us-ascii?Q?Qpk5hBWr3xWRrC8pl5f7qX6BzW+Yf3ofzGYir3okSedRzv0VaFzx22INehk1?=
 =?us-ascii?Q?6nhcF54zW23PZIapwAOHt/40lRpK4INZOtsSMCIySzdna+U8AZg0KKZiLZNh?=
 =?us-ascii?Q?sSvNa+I3EpHuFvM3VKQfJ4LZhWIoTcTf9ZxB/kXtOLRn1qa47cAv+SiUHu95?=
 =?us-ascii?Q?caaRVbZx1+1up2zjk5SaEcM4O79FT+cX/QHzoewDcC5LAJUgT6MeTf4TiWUI?=
 =?us-ascii?Q?kp+HqnBKfzhOjq+7mBaHSeTJNcjI0Yv8/qjRUjTvRo7MF16sfCGTqVPQxp8C?=
 =?us-ascii?Q?FzLD+pGfJwcGOrs4AIbCF6+abaoWe1+WCNJBHSDthf7yU/jjFwstFttEOSTO?=
 =?us-ascii?Q?GhNJNs55erW2qKB3zJByj6GOjEbfORWjewNDVJaupyIhZxQpVlCn1AdNRhb5?=
 =?us-ascii?Q?uOl20nXtpcUducPZ4vr0tCDd/p0UF4qlWcbdlOws2ejeB+xma0d5X2qFih8Y?=
 =?us-ascii?Q?LrSAsQ2eW+kJFF/t60TJed8dIHX2oYHM9okuqZcVMisfhJQ33mRu4wrKisHe?=
 =?us-ascii?Q?woz/HPzCGe29W3b04gvwUoGfGwove23UHU1eP5C9ZQkAbegzuNGqyN+SAQ06?=
 =?us-ascii?Q?Qk9vUfXpv34OMdxZtYbxWKEgmLOBu/nHDkgUUpY3OQqqVk9c6t1F9RgzOUJw?=
 =?us-ascii?Q?xLA5DqGzNihBtkbYmMsuT+K3iCua36/hkwza0mXEfcOaY5u7ZRyKe6bHeFnZ?=
 =?us-ascii?Q?lCMFHClTYtB/xKjlxzqlraVw/jlXM3yDFX4GVZLLXFfLklUMB2Mmnrb7vLki?=
 =?us-ascii?Q?URjBTtmYfA8v6wowB7DwTiMG6TbpANrU+drgCQSVlb+HbbzrQ2GVTk3SgwMK?=
 =?us-ascii?Q?Ja1r0WEUAph8jEONshdzYjfW/I0Q/0da+lm9kHGxU1r7z3qskJIshiZrg+SF?=
 =?us-ascii?Q?VRgR75rG6XDx5lUsVKfpJmjI2voUxsxQEALzdDIPnhFC7MWsS4jV2+zpp8VJ?=
 =?us-ascii?Q?dpboQ4h1sWSlA0P3D/lO+dWPxSJNrToare7VMaplMJgptmm8b0PS7ARBDP7G?=
 =?us-ascii?Q?TZitmWOFnmaqJg+zxkG/o6UQAYKJx3bSW9cVCqa33TSpeyTVmXXmRLWjhimM?=
 =?us-ascii?Q?aBKcg/C4paigQJdVZ86gWrX/+LK7eeMJui7M+aW/WkkRwmh1J1puEaO22fcU?=
 =?us-ascii?Q?Lv5qnZsQdAtmlJUPnBdQNG3d/5QSWBsCd0Xi85rCHoGKqz1S13X6+OUMqj4w?=
 =?us-ascii?Q?Lm0JNDzww824GoXCgFaFhUE/jSl/D579FNVBIWRGX5EkF32i9GpvXAfLbe+f?=
 =?us-ascii?Q?2WI8haH09Y8V8/KfI164Fe+k8jMH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UjRd+Nuwa67M6x8K0xz5+XhOVcVE152saKaGOrL1aLsqJLyvRs+3uVz1Aalq?=
 =?us-ascii?Q?zNrg3Ecx6GDc8dhhEhlKIad3uk3uVcZSbYiUvORjOXUwjZZ0eFXr+BogE7La?=
 =?us-ascii?Q?VZxIF0dAyLJwCrHAs+bwm+R01w+wEgzVIHGeWF6G33PMUMi9upd35YkSntTa?=
 =?us-ascii?Q?jheF9NB/KEgD3Zp7mAafCh8mweZuDYWgqs4JsJ0351aFkN0v25bzf6A7jpzG?=
 =?us-ascii?Q?BEp8j4ofkab+5Q/axKfjFTttF03N8l8NIBGpwgnLP7iTOdih4XYe7b4W1O+l?=
 =?us-ascii?Q?s/N2coCcQ6ZjQGczoTNk8VIPJ6tYOQFkSjmIC01VG3g58QDDgF/LDxoIP8ZA?=
 =?us-ascii?Q?x0madxe+sVF6O8YmykJCkFb7tWrMdgvW9VEO90y+2wyVQ1Ev6b2/XM6hGwwP?=
 =?us-ascii?Q?HX6WOrNy+Hpav+wZK586QPxYCaFZj/o/M0NfP8QJHw+jFTqvc2iypgDNj+lG?=
 =?us-ascii?Q?9x8EKZzXxvRWwVJ7xvXeN0lcG+fM2D7Nulil1w1hXlKi8prCSEuUdOqHM3jp?=
 =?us-ascii?Q?fcKjQQjyZVMttN1uT4BxnrilbnWVM8S5SukGAIpfDsBXEDlowNVB3MECNPFX?=
 =?us-ascii?Q?0g1CemruRE3I1kBId81GhSHhQfGsvb2+wyoxjrjPyofaph305WxLSJoJUFy8?=
 =?us-ascii?Q?v7H8pLhlL/XQZTogKOOWsPas59JSahhUXEkTf8coDpNTNkWB19p9l3ahpV+f?=
 =?us-ascii?Q?/Ir9StI+qB/dgWZk8omomFkPDnIWULRRB2xKEeDis6OikHS0S6U9bgBtKeWg?=
 =?us-ascii?Q?m1Bs8GyQPJbYlZLuBlPPS4AB3ogSWFRO8nj+62InNW/+khVs3or+5N82oVoD?=
 =?us-ascii?Q?fj5f2l3sahHoxWLSilaQ5mwb5+2cN9jE/xXdUcc3Nd5zpNwY6jNAVRwqE4Hl?=
 =?us-ascii?Q?saWh+vNVCzfnxiqzmHvxOkpF2H6iUbWiiIEW/oD7tDimys+M6piSAIGyspHL?=
 =?us-ascii?Q?k/7vkD+tbT1JMePYxbCyIrt4yfGOsBOPOyD08FxQFUXrJwQHjO1hLYbJdHda?=
 =?us-ascii?Q?tmhE1TD2V29RQUmBr3d+03/J8DSQ2qhISn0IcvOq9FVjHuMSowB3Hz1GRV16?=
 =?us-ascii?Q?ovpCI+aCDHPgzv6TEVe4jCXltYLOmzhZI0RoWvw/aipQX6vzTkZaSBwsgwba?=
 =?us-ascii?Q?wlZGLnIrpJuzaf3Q5U6vgWBs6vFdbksaLNuRjOtuW20ygizvAkx1cwAUp1NL?=
 =?us-ascii?Q?jR2UjEvDGXhokXYxjELXUVtTK5A3uYwB707OUXX6n2cUSl8Oc4lzTnREL6X2?=
 =?us-ascii?Q?hDM7TEqetloak8+IDcd37CdPIkHxEnPtoL1tvtWXULTMJYvs9mCrRqwOAr+B?=
 =?us-ascii?Q?SvpIKLjkhukfLR59yIbf2KHWYXkL6c4o833kDSm9/+PDTVC+TCrOVpM6gd/V?=
 =?us-ascii?Q?OSKPkaKRubAQc4fOn2Ji0JDFvhv+kmsMW+3BIfNduuBPUJJuCRx0Ne737C7d?=
 =?us-ascii?Q?A1IGEv91wLtc1jEbTPVvs76SMj4j56G8EF82ZUzzWh4Ia63ITtgRZaY1+nCX?=
 =?us-ascii?Q?L6DoxA2wuWee0U/E58hlzlmL3MjVIfGne6jhP7wzYCKfqDXY1r7E61RgpLq3?=
 =?us-ascii?Q?pdkflK3i/umZeSwsTwANK/eQw3vde42zivSgM9Lm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0371f864-1818-4ac8-d46d-08dd6adb1f76
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 13:52:31.6569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LaqyrriAdBT0IqFOX0XZ/BgdTaomSV5mXudcH1Z8RtQ3DbNypI3QTr+4DU/rFGPG5wjoY24qOPwIUWo5G9vY5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7610
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

On Mon, Mar 24, 2025 at 02:28:35PM +0200, Jani Nikula wrote:
> On Mon, 24 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Mon, Mar 24, 2025 at 12:33:22PM +0200, Jani Nikula wrote:
> >> On Fri, 21 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > Factor out from the DP AUX transfer function the logic to lock/unlock
> >> > the Panel Power Sequencer state and enable/disable the VDD power
> >> > required for the AUX transfer, adding these to helpers in intel_pps.c .
> >> > This prepares for a follow-up change making these steps dependent on the
> >> > platform and output type.
> >> >
> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 ++----------
> >> >  drivers/gpu/drm/i915/display/intel_pps.c    | 29 ++++++++++++++++++++-
> >> >  drivers/gpu/drm/i915/display/intel_pps.h    |  3 ++-
> >> >  3 files changed, 32 insertions(+), 16 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> > index ec27bbd70bcf0..bf5ccfa24ca0b 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> > @@ -272,15 +272,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >  	aux_domain = intel_aux_power_domain(dig_port);
> >> >  
> >> >  	aux_wakeref = intel_display_power_get(display, aux_domain);
> >> > -	pps_wakeref = intel_pps_lock(intel_dp);
> >> > -
> >> > -	/*
> >> > -	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> >> > -	 * In such cases we want to leave VDD enabled and it's up to upper layers
> >> > -	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> >> > -	 * ourselves.
> >> > -	 */
> >> > -	vdd = intel_pps_vdd_on_unlocked(intel_dp);
> >> > +	pps_wakeref = intel_pps_lock_for_aux(intel_dp, &vdd);
> >> >  
> >> >  	/*
> >> >  	 * dp aux is extremely sensitive to irq latency, hence request the
> >> > @@ -289,8 +281,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >  	 */
> >> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
> >> >  
> >> > -	intel_pps_check_power_unlocked(intel_dp);
> >> > -
> >> >  	/*
> >> >  	 * FIXME PSR should be disabled here to prevent
> >> >  	 * it using the same AUX CH simultaneously
> >> > @@ -427,10 +417,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >> >  out:
> >> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> >> >  
> >> > -	if (vdd)
> >> > -		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> > +	intel_pps_unlock_for_aux(intel_dp, pps_wakeref, vdd);
> >> >  
> >> > -	intel_pps_unlock(intel_dp, pps_wakeref);
> >> >  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
> >> >  out_unlock:
> >> >  	intel_digital_port_unlock(encoder);
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> >> > index 617ce49931726..3c078fd53fbfa 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> > @@ -571,7 +571,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
> >> >  	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
> >> >  }
> >> >  
> >> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> >> > +static void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> >> >  {
> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >> > @@ -955,6 +955,33 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
> >> >  		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> >  }
> >> >  
> >> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
> >> > +{
> >> > +	intel_wakeref_t wakeref;
> >> > +
> >> > +	wakeref = intel_pps_lock(intel_dp);
> >> > +
> >> > +	/*
> >> > +	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> >> > +	 * In such cases we want to leave VDD enabled and it's up to upper layers
> >> > +	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> >> > +	 * ourselves.
> >> > +	 */
> >> > +	*vdd_ref = intel_pps_vdd_on_unlocked(intel_dp);
> >> > +
> >> > +	intel_pps_check_power_unlocked(intel_dp);
> >> > +
> >> > +	return wakeref;
> >> > +}
> >> > +
> >> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
> >> > +{
> >> > +	if (vdd_ref)
> >> > +		intel_pps_vdd_off_unlocked(intel_dp, false);
> >> > +
> >> > +	intel_pps_unlock(intel_dp, wakeref);
> >> > +}
> >> 
> >> It took me a while to pinpoint what exactly I don't like about this
> >> interface.
> >> 
> >> And I mean the whole intel_pps.h interface is already really difficult
> >> to understand.
> >> 
> >> This flips the lock/unlock and vdd on/off logic inside out.
> >> 
> >> Normally you have functions for doing vdd or power or backlight, or
> >> anything PPS really, and they're either unlocked (assuming the caller
> >> handles PPS lock) or locked (the function itself takes the lock).
> >
> > The PPS and VDD handling steps are dependent (PPS must be locked for
> > enabling VDD) and both are skipped for the same reason during AUX
> > transfers. So I thought it makes sense to move these to a separate
> > function and skip both based on the same platform/output type check.
> 
> On the contrary, I think the reasons are different.
> 
> VDD is only needed for eDP.
> 
> The PPS must be locked for VDD change (IOW for eDP) and for VLV/CHV pipe
> based PPS. But these two cases are independent.

The case requiring VDD (eDP) is a subset of the cases requring PPS to be
locked (eDP or VLV/CHV). These are not independent cases.

> >> This one purports to be an interface for lock/unlock, but in reality it
> >> also does VDD internally. And that feels really quite wrong to me.
> >> 
> >> ---
> >> 
> >> These are a single-use interface that I think make intel_pps.[ch] more
> >> difficult to understand. I'd suggest checking how you'd implement this
> >> logic inside intel_dp_aux_xfer() *without* changing the intel_pps.[ch]
> >> interface at all.
> >> 
> >> Okay, took a quick stab at it, and unless I'm missing something it's
> >> super easy:
> >
> > I still think it'd be better to have a separate function for both
> > locking PPS and enabling VDD for the reason I described above, that is
> > to clarify that the PPS state must be locked to enable VDD.
> 
> But there's no requirement that they must be done at the same time.

There is also no reason not do them at the same time for AUX. A benefit
of doing that would be to clarify the dependency of VDD on PPS and also
simplify intel_dp_aux_xfer().

> The PPS lock could be held for a much longer period or for other
> things than just VDD. And in this case, the PPS lock may indeed
> protect *other* things than just VDD. Adding the separate function
> ties these unrelated cases together for IMO not good enough reason.
> intel_pps_vdd_on_unlocked() does check that it's called with the PPS
> lock held.
> 
> But I realize it needs to be relaxed a bit like this:

Yes, noticed this too. It was one reason I opted for skipping PPS
locking / VDD enabling from one spot.

> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 617ce4993172..c883e872c9c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -744,11 +744,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
>  	i915_reg_t pp_stat_reg, pp_ctrl_reg;
>  	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
>  
> -	lockdep_assert_held(&display->pps.mutex);
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return false;
>  
> +	lockdep_assert_held(&display->pps.mutex);
> +
>  	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
>  	intel_dp->pps.want_panel_vdd = true;
>  
> @@ -925,11 +925,11 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> -	lockdep_assert_held(&display->pps.mutex);
> -
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
> +	lockdep_assert_held(&display->pps.mutex);
> +
>  	INTEL_DISPLAY_STATE_WARN(display, !intel_dp->pps.want_panel_vdd,
>  				 "[ENCODER:%d:%s] %s VDD not forced on",
>  				 dp_to_dig_port(intel_dp)->base.base.base.id,
> 
> 
> > I guess the above could be done separately later in any case, so I can
> > inline the fix as you suggest.
> >
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> index ec27bbd70bcf..a5608659df59 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> @@ -247,7 +247,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >>  	u32 aux_clock_divider;
> >>  	enum intel_display_power_domain aux_domain;
> >>  	intel_wakeref_t aux_wakeref;
> >> -	intel_wakeref_t pps_wakeref;
> >> +	intel_wakeref_t pps_wakeref = NULL;
> >>  	int i, ret, recv_bytes;
> >>  	int try, clock = 0;
> >>  	u32 status;
> >> @@ -272,7 +272,10 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >>  	aux_domain = intel_aux_power_domain(dig_port);
> >>  
> >>  	aux_wakeref = intel_display_power_get(display, aux_domain);
> >> -	pps_wakeref = intel_pps_lock(intel_dp);
> >> +
> >> +	if (intel_dp_is_edp(intel_dp) ||
> >> +	    (display->platform.valleyview || display->platform.cherryview))
> >> +		pps_wakeref = intel_pps_lock(intel_dp);
> >>  
> >>  	/*
> >>  	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> >> @@ -430,7 +433,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >>  	if (vdd)
> >>  		intel_pps_vdd_off_unlocked(intel_dp, false);
> >>  
> >> -	intel_pps_unlock(intel_dp, pps_wakeref);
> >> +	if (pps_wakeref)
> >> +		intel_pps_unlock(intel_dp, pps_wakeref);
> >>  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
> >>  out_unlock:
> >>  	intel_digital_port_unlock(encoder);
> >> 
> >> 
> >> Please let's not make intel_pps.[ch] harder to understand.
> >> 
> >> 
> >> BR,
> >> Jani.
> >> 
> >> 
> >> > +
> >> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp)
> >> >  {
> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> >> > index c83007152f07d..4390d05892325 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_pps.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> >> > @@ -31,10 +31,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
> >> >  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
> >> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
> >> >  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
> >> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
> >> >  
> >> >  void intel_pps_vdd_on(struct intel_dp *intel_dp);
> >> >  void intel_pps_vdd_off(struct intel_dp *intel_dp);
> >> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref);
> >> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref);
> >> >  void intel_pps_on(struct intel_dp *intel_dp);
> >> >  void intel_pps_off(struct intel_dp *intel_dp);
> >> >  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
