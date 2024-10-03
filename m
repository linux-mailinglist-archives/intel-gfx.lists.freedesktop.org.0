Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412C698F14E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 16:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B09010E1D0;
	Thu,  3 Oct 2024 14:22:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyCYRoJ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B270210E1D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 14:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727965366; x=1759501366;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6OxCjL2VtCPI3JclQQMbCwO25ya+vuFFThEkWIswhU0=;
 b=LyCYRoJ4Wqdh+JwU+GSBJn1kEkqxQputvxm0cqyYGQ0e8Vmg8Nie6oCL
 I2XIBcaizvGa2gVhNaL6xvYN6QK9CAtV8uOH05i95Z0bPyAkgkLbmcu4w
 XTdCIuBviVFq1qLhWHV45enBC1T+/UyJi6YoOZSMLOjroIWeQYKmgjluw
 fNR/pjuB+5GLUDyoVaqSgO1DB+aeoRbMIfJ+WcxH+zNMdQdYRrqfh1aAm
 sVZOzjs3LMfYP6gABF3I6DGvx3YTAKmzevNd7bzsYcBNrAqU2avDlQXrG
 Oe7/fEkyb8CVxGH42JIxTD+wrBIKkWwRTmbR+xDvMqh42KJPHk3giFwrh A==;
X-CSE-ConnectionGUID: pa5nRbYYQS+IyflUXYrxTg==
X-CSE-MsgGUID: qy1BZWtKTRCRuA6y9u+fXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="44687615"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="44687615"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 07:22:45 -0700
X-CSE-ConnectionGUID: UVpblUhOT4mC+I7iBsvl7w==
X-CSE-MsgGUID: 8CyIEtISTtaOiWhftA19aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74043616"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 07:22:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 07:22:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 07:22:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 07:22:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dxabu1+CCJbkG5Nv8+XrSsq0F3+H9Q1vPFxurMh1CWy4JlehdyHv86XnViSLWMbqTu/bXv13sHwOK327jI2WVmAFEojiIybZySwvuKR9UCyAE3V7aF4NMNrmJ+4h6Uq4F34q0ALGGSTlnumq9IO+0ODg3vl/5le3SvgO36E0IdiMfeRgV7d7gQawTBakS+MgL/UcrcyWRTaDW+9uue00GOgr85sdPgzIACW/+FWIEjUX5quRa4PXNxeOWprI4VaQlEHaRvrKZ4/ZxAWT/aZ0LVpKqSbqAXalyBJZ72+cORY9oK42+USNYykgAc8uBz3ywD39r2kQMB/vOUT3Ob4b2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T6G5gE6Qswel5ADLFY9RWYhws6yCgrubtskt35tsons=;
 b=Ny60KrokQbcPOm593XUgIM1iSCFqQ2lQYg90lzgcmpWT+PIGqOOOfyIWOzTTPgf9psctU3HWuP0gShstyt9nAK4k53lpcDH0bzFdLUL8tgdOVKPFIm+ky2mDs2wsXyTEzk5johYm6L1WmbkroQbPIdDULX33kxWfJEHnYUiHJELOHzFEitC5sgSkDCv6BP4NJnHxobIURwHRHKRmNf/xD9kYzyKsRAVmIMAGz4CYooEvmieeBXYsC5HU23LVhhBhcT4La6K67aCbh5JDzP/jlr1Iw8gHfl9WG7V+FkNOSOrw8pgpXpPfY/joAKDXo49jbUauMgypIEY3PjG/ifjKVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB7783.namprd11.prod.outlook.com (2603:10b6:8:e1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 14:22:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.014; Thu, 3 Oct 2024
 14:22:40 +0000
Date: Thu, 3 Oct 2024 07:22:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Message-ID: <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zv57pzLX4ltH4w00@intel.com>
X-ClientProxiedBy: BYAPR05CA0085.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB7783:EE_
X-MS-Office365-Filtering-Correlation-Id: e9215ab4-e0cb-4a52-89c5-08dce3b6d678
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?SyKAz2TxHtZqY2JCGXW/eYIUBqt3OJ0BURvO7ePpZg80MXqImzM9o+3dM6?=
 =?iso-8859-1?Q?kan1JMyF4m1UfXiXPCJ/37rwzRRezgAlIVoST0e7ZTe5sc6ROmDIb4/ojR?=
 =?iso-8859-1?Q?nTCub7VF99lYvxfp5oQmmqDmoNhRjrHPPyze4jYKx8DNziR9VILmYSl+g/?=
 =?iso-8859-1?Q?jubGZ86KDjJdAmPlucmUmYg6zrv3U+6V6M4EhLm49K1jqzr9ryVT/7/fWE?=
 =?iso-8859-1?Q?4hDsTJl90/LwXtsjGeUFEoWIzIAGVGQI5cLax92/eUyM+Hwjx+aSowHW2+?=
 =?iso-8859-1?Q?oCrDtlHMzIBxYW8Zl6ORy5HvnqgNRDCUkexINK5RUfK4SrucxOscMCi3kw?=
 =?iso-8859-1?Q?T4W1j+sL2ypROMt2MYUKg60iwFSB09a6wS28Hex9KIQeTGH01ZJ4imCAEn?=
 =?iso-8859-1?Q?UhoSnMX2X7RS2I4bi5QoAgXhpKR9mVk2JARXS9X+gqLiFE/IKsk1B/Ljoa?=
 =?iso-8859-1?Q?DA+ylmriR3QRo88vMSbFaSR62nY7IwuWZDHHXE3JG4Q/Wu9K+8QYbwPTNT?=
 =?iso-8859-1?Q?WclxLdTzpR/h8xk9MONhijcbA07y+HX8s6ZyO6PwCwxWZHjz1LxjVZPYY7?=
 =?iso-8859-1?Q?1hPnLeBOx90slK5e5b9iatuW0RfD7mYnNELvneFiVVXZD+kC1rOyeJDvcU?=
 =?iso-8859-1?Q?0siK74nD4dyWECb+FhnKmx2Aq22mawCvEeGkYHojFRuGpHA6XLqs5jw0KK?=
 =?iso-8859-1?Q?06d83vBZVy/Jz4Sb9P3WA7p873jDu04GIekZruW3xtSilvdxQ3+jpEX0ba?=
 =?iso-8859-1?Q?UlnWHLpp9AkneWCltuxSK4sY+PIzENqakuT7F61aWwaQUV7PJEIDDw1xmy?=
 =?iso-8859-1?Q?VSsavmkaCuma7irF967FqkGOMOCOfjT0ihhKP1XWNa+glI6YtMmfOArBIU?=
 =?iso-8859-1?Q?c8r7E4l2Crqt9GsUIHcXoTTGAP7XY1/pdoS6ONh8+I2JUHwkcHpQQ6aIps?=
 =?iso-8859-1?Q?ywtlzB8exoSfCq/rnwHeGVLQJmz4+kO5z89e9HZy3TTJ/6pafiDMdlRuk/?=
 =?iso-8859-1?Q?+GCvIOuEiyPV/kj42EecySjxGOtnr3oHRNsArCt92O5s1yOfWq3+9hm4t9?=
 =?iso-8859-1?Q?W25RjfL2yzCoJrRegUm/j6lW1MDl+vBfo4CVyV4y6/S3sJFZlV8Snt/DLq?=
 =?iso-8859-1?Q?ohGX1AKyXdzraKOrwnuPyMefu6PbtcDzzZ4fFIdYr8p22/PbgR2tKNbFYJ?=
 =?iso-8859-1?Q?rNDO7zFY4GNod/FXG9OH/13DYmqqs1SpVrRPZDNH/JelSYpPUnH7e3Ssv5?=
 =?iso-8859-1?Q?430GOke56EAaf3m8qRX6Pi2f7kN8uH2GtKUTOdHWROElkciA/iDUAPuuaE?=
 =?iso-8859-1?Q?Ab7yDl9R72tDDzxeGNNnk0XqgQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?X/7vkeYK0OKasC9nWzEwO8TksoupJWYTVVZ33YfULuJ74hqn7wLDB+052u?=
 =?iso-8859-1?Q?j4TSoxfCeFHlMfQy11Yh+BihMfOTK6GcVAa8hjDMngIvuI0AhX8ZSnfjy2?=
 =?iso-8859-1?Q?GoE9kfFOn6ytRGZdkZKZqWD4c7bLXuMmjalcr2pLcZubgIniX9EdfLbEYi?=
 =?iso-8859-1?Q?ETyR8DLAIyBF9GfksX2ex6STuPGpyH0gjomJE1s8uq/nVgNVbm/HifW2kK?=
 =?iso-8859-1?Q?9kFKhOc2avon9G2WJE9fAqH66yQzxQFM8D8XnL48fay+Yr+CGIwE1Gq8f7?=
 =?iso-8859-1?Q?Wbz86mnhYRIlJBnSXPJJmHUFWtx1EjSnOqxmSQ7butbD2uAYU4Fw8Cc+tp?=
 =?iso-8859-1?Q?/ma9ycrhUcmzhSzvrhtdNMGsTNv6b/M5d5lTZbEq8nUVLXMgyDTVlffe/L?=
 =?iso-8859-1?Q?/ab2rrWrtz2ACYf8nK0jrzb7oturs4TeT9fWFgdODJl7paQ+fRik2XsUt7?=
 =?iso-8859-1?Q?+IAbd99mBLCVGba7V5wxkYmhO/qYJtsuwpDKt6Uw2rUZzXRMDEuaVLRgra?=
 =?iso-8859-1?Q?NFnzgoQ+tB4pRuLD04b7pk2ZTcGPtphbWzAvcrIEOAvRMtvNz7FJKGzG36?=
 =?iso-8859-1?Q?vi+Jr6JtE8bje9P1dKZoXwnmJBNeqwxSjqbBdMRqsnxKcf29i8WiuI44ze?=
 =?iso-8859-1?Q?iCj8J/wxJBeSoeM0qRxBV47i9IzBaUlJ1pL6/jpbJZBMMrC694wAMC2mwV?=
 =?iso-8859-1?Q?av6zqHv3P1ub3HmaSdFrgRG28NGlpKasZSCeVxeFima+ULhD187lxXN/9U?=
 =?iso-8859-1?Q?8IHKCKq7ZZpaLGBr8z/FczykZJnL3FDgYuj97CBCJT+aIX4YdLgl3SvE4k?=
 =?iso-8859-1?Q?7d9OkiOVHLmTV+V67qL8n+J/kAGsUsgxcVuL54U8I9huSkP172rHFBIxhY?=
 =?iso-8859-1?Q?iAls9DVsnRRSMocoLNXmKeFCbk7vjjPDBC4NFqD1B1qxG7nu5ewhIz5TOC?=
 =?iso-8859-1?Q?5TxhcfOjbyop4Rz0AxxaDYhN8uoMHRemMJ2E/nmpZU4d/MkXPE1tWTLAPu?=
 =?iso-8859-1?Q?mg6lsNFZeDwgyovRThNapCzIIU/TTVp1hIU9B+bEMTopjHNSGXyZ+80Gpk?=
 =?iso-8859-1?Q?upaJpix5NO5OB8aco7kL8VIuFRjyWtjHaHiZFN+4wGrMjbTKTwMTWqyFTd?=
 =?iso-8859-1?Q?isg6ROgHyaJ5rXKjVGtxlWeskIUE9iyiiTm9uzt9b5SK4Bqoxrd/swsApG?=
 =?iso-8859-1?Q?gPD2euIcFJnhw0VgdlIguYoWL0NQx2fH2FeoUf4Vi+6NK/SqlVf3GDtB1+?=
 =?iso-8859-1?Q?r7mW+dMsSDTBBEiJX2PGeNBj+zaTSHNRRXinao8ESQsPHNgu1NQruSW7hx?=
 =?iso-8859-1?Q?9z8Nbybph2JM9G0cQexbeponodnBqnMcvIUoxzuQTdt0LfT4mcteAzNZRi?=
 =?iso-8859-1?Q?z3xQc4D9zRLtay40M7UNafUUN25gGHkvfctqnIiPG1mT4pmQWxixh7Ns66?=
 =?iso-8859-1?Q?866SJF4zyXpp/AZwqQpMrvM74BQENCW8igqX0j3uDghnPgjrTqVmqdWCaO?=
 =?iso-8859-1?Q?bcFX/NA+JupDeHKqcnO4w3yrN1iMKfbyXnEpkgk9nBHUfVRUTa599p7zJj?=
 =?iso-8859-1?Q?syAas87sRKAHjv9G5+Hq8MAUqKbb/8EQgqAwg3nZ1sWc2cA6+hzsWmH/mA?=
 =?iso-8859-1?Q?/5ZNPqBcQV/VDRlz+rkaot1BzUUPzV8W3QsbdKe7f18RtsFhPn76tFVw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9215ab4-e0cb-4a52-89c5-08dce3b6d678
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 14:22:40.7344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jrtKYjwpvi8C72n14w5SlHNOV9l4IQk+wQZwlUZ6bT/nAtdHLy/zkgpcoFnoOg6CR4xbi3dSg/OA3BpWHGiOg98qfoSzHrf3JdDxh35gZuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7783
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

On Thu, Oct 03, 2024 at 02:10:31PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
> > With ICL, we have a way to check if gamma and csc are enabled on
> > a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> > along with the existing BOTTOM_COLOR checks.
> > 
> > BSpec: 7463, 7466
> > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 50f41aeb3c28..1bf36898dc7e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
> >  		crtc_state->csc_enable = true;
> >  }
> >  
> > +static void icl_get_config(struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	u32 bottom_color;
> > +
> > +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> > +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> > +
> > +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> > +
> > +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> > +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> > +		crtc_state->gamma_enable = true;
> > +
> > +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> > +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> > +		crtc_state->csc_enable = true;
> 
> We don't use the old per-plane/bottom color way of enabling these.
> So this is not right.

I think that's the reason for the patch --- today we use
skl_get_config() which *only* checks the bottom color settings.  And
that approach is documented as being deprecated (although still
supported on current platforms).

If we're reading out pre-OS state programmed by the vbios, we probably
need to handle whichever approach it took, right?  Or are we sanitizing
this away to "off" somewhere that makes it okay to miss what was
programmed?


Matt

> 
> > +}
> > +
> >  static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -3811,7 +3831,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
> >  	.read_luts = icl_read_luts,
> >  	.lut_equal = icl_lut_equal,
> >  	.read_csc = icl_read_csc,
> > -	.get_config = skl_get_config,
> > +	.get_config = icl_get_config,
> >  };
> >  
> >  static const struct intel_color_funcs icl_color_funcs = {
> > @@ -3823,7 +3843,7 @@ static const struct intel_color_funcs icl_color_funcs = {
> >  	.read_luts = icl_read_luts,
> >  	.lut_equal = icl_lut_equal,
> >  	.read_csc = icl_read_csc,
> > -	.get_config = skl_get_config,
> > +	.get_config = icl_get_config,
> >  };
> >  
> >  static const struct intel_color_funcs glk_color_funcs = {
> > -- 
> > 2.34.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
