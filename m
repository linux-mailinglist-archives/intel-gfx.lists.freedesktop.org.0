Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54983A62382
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 01:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD26A10E37B;
	Sat, 15 Mar 2025 00:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DN9L3u89";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE66F10E37B
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742000229; x=1773536229;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Dy5kt3wepCV0jun+oJ6c6qa6Ru4fb/+BfrogK/klnFQ=;
 b=DN9L3u89uuXgNGcQP14pUKvJa1vj25yvbLDuioct7a1BQvZxwodZap8b
 ejC1jjYEgxtN9PCLMWSL9c4FoGUGeYkRG782wqC8auSJSVsPGbdw+UWEI
 jM8NlVAMUifkuB9ppvtNPb5FaUjIMzlOHw5odq8+KWc6gUgd8mV8e8+k/
 kOgBMuWtR2jl4Sw6aN1awXCJMWGYWpRh9rn+bwd1NjXHUw/cBLHUiI0Ow
 LoifJKIpmExrm+CGV3CwSkMrwkKnrOJDgNryV33hRK4/fijUb6qQa4/H2
 WKUrMuWFpQzTqKr+232Depnbbww6QjG37ItocdZa5sTfT3k4bIvXtUbRQ A==;
X-CSE-ConnectionGUID: P0faMuGrThm1sFMtSofyDQ==
X-CSE-MsgGUID: +jVZsE0yQLmktlQvw/WaCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="54538638"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="54538638"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 17:57:08 -0700
X-CSE-ConnectionGUID: 5HtuGuYaRX6yAr0i3C6tvw==
X-CSE-MsgGUID: UaEQMGtyQDyqOAo4xFmSVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="144621476"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 17:57:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 17:57:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 17:57:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 17:56:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hv6tHJp02KWbogB75o8T0uN8KpTF8Ut+lGe8kMh1K3kUYJTaWwVq2K94rehmgghOWC2+Zbyr7jpfxn8nqeEG5HQRks8TedQx2qlWWEGBin+klIyWCGdwsilGeTF59kYfQIn7i3GX7TSDVgbKDT8CyYsY5ckOyvaA7tkUCEW+1EZPnGZYD70UHMJlQsLFTQ/ZZwt2Jeuq0SZI3QttKxBmp3MMt0BXW5xissiITlpAhTYujeDvnvjxfT2Wcj0BhMAE36AXqvvKmfP/NnLnkkMJyyZR9o/6kIgyjbdqDpy0CcSJcCOzFm60PGFk6FCvbszSl6lj8TrrL0tZ5ufn2WiFnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fhyC6o9B4y+w6Irx5leFI7nuNc7n2czx0aI8LkZgthk=;
 b=G06UA7pmATajUbYF21wt3ZXts5vB2qvoY/IXbJ0f1RzkvFoJypO5p4MjgUcewpiOsEk8JLBUODN8r91jCHolGKDYe822JoBMIpDNRARV1Z+O4sBBFPkPAjZqZdsTM1Th8fQRlo5466NzRRUNMoQBX09mun0ziwQQWBKLQs6Ci2eWKJ+wnfuh4zO61LTujP9fOFbMyd+OG6X0QGEOYSa81vcw5QEdmmQs5JJosKitGOqDCSsEEHr9x9MciHovY+XdP0JNh7RYoP3wchDztRRFNmZOJUNPgdpyMc6xOU8ddx1AXhJ4smWEZWlIe+fxYGB5x9UFyrfw2uxQRKrZwv68hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH8PR11MB7991.namprd11.prod.outlook.com (2603:10b6:510:25a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Sat, 15 Mar
 2025 00:56:37 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Sat, 15 Mar 2025
 00:56:36 +0000
Date: Fri, 14 Mar 2025 20:56:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, Badal Nilawar
 <badal.nilawar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 5/6] drm/i915/pm: Allow drivers/pci to manage our pci
 state normally
Message-ID: <Z9TQQbryg2B3U6m6@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250311195624.22420-6-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0110.namprd04.prod.outlook.com
 (2603:10b6:303:83::25) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH8PR11MB7991:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d585a91-f97d-43cf-6d66-08dd635c3ce7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?d+dZcCp+JUyfcN1mG6Qd+poZ+sC7gzAfc9I8gRQHtuml+Xs0SOefMs3fAD?=
 =?iso-8859-1?Q?FRfQZdEIdEf1cP1bfQmeaZiCbvE7/ribJc8U6kJymGr9A+p2WA1E7ytHVR?=
 =?iso-8859-1?Q?b5EO3r83d6VS9ydwAxMdtwPLguXtGMMXUk9CXffi+YJ2PQ5m3E80M6SCYp?=
 =?iso-8859-1?Q?gnq026OhIW9/i0VKhWJKS1kJywRfXCuRviz2aTYIJfb5WiYwmm6OJW+HdV?=
 =?iso-8859-1?Q?iBnvrhCbbOtyAglBeNgC8OPJcUNh/mvFEz15npFoEdUD59pnoqDWFrvOdi?=
 =?iso-8859-1?Q?FHi2A6hXM/FIPFWsSHyPwKdSDNW3bB+w+81+pOQoKAA36CcRcWZk7gV31e?=
 =?iso-8859-1?Q?83sukoLgopMo+H8lO44sytDxJhKRSoekK9rv1OKYblXuhadwA5lLa1xv4k?=
 =?iso-8859-1?Q?LKI4D3x/ji4i0JgFqNIhvAEG4yTuHDGHDEWf3mpPUcXa9XN3MogP5Fqw5N?=
 =?iso-8859-1?Q?yb2YUNpTpMyvLz19/cWuwMFX8PaoG2npANP+3Rbg1doMrydqUg1daz0AtF?=
 =?iso-8859-1?Q?TNYK+dSmCw5cFtI9J2oUPDGtlyxrIXzNfGbgtd71qzcaSHtLv0PMfWUAOj?=
 =?iso-8859-1?Q?MddJsVdBlwnCuFWOxEHGWWRCh/LayPoco885OLfDwASm2lHYovnNOXfIAm?=
 =?iso-8859-1?Q?C4Nsv5IVgOPPGqwlnK1AemDoFOUOQbGOIqtGN5dzdcAM5ITZb+FRxkoudX?=
 =?iso-8859-1?Q?whwkgVXPgXLgRrm7RUPcrRk4cDv7iPQLWAYn/SmiPETmM8KMqa0oziXXDT?=
 =?iso-8859-1?Q?STlxMcOHf4PhuRsUb4IpxBrDGV1UFoitXbXTB65Ff6vMFxYlmLwbKD6K6w?=
 =?iso-8859-1?Q?OJVuBHFtGrBrP9scLseJ+5eOSNfR/qKPQ9i1FyIkhtYumH34p54K8rviKf?=
 =?iso-8859-1?Q?Qp3UY6QmVACp12/ES2R5C3gWJTq+iOKZ4fzvuhBi10WADJW2OLQdoYvrhF?=
 =?iso-8859-1?Q?CNZ+J6QUOGy5nlJjyVQV/1FkEkYMlyAtfSAH605L21H4CnG54pgyFzTaRO?=
 =?iso-8859-1?Q?pMqyCv96a1YhuH1fRcZqD5gC2Bc75KqUIXFgXQxwNsth/fsu5EFLFp508l?=
 =?iso-8859-1?Q?S7F3JuvJsH+TJzRLV4J4+9eBFKbwXodnTnyepIHnQq6Qus/upgTdrnl/C5?=
 =?iso-8859-1?Q?Qt//qnQjR7g5M1doQIugfmwhk6pFrIKGadweWgBMczA6kry2RFdADE8bAg?=
 =?iso-8859-1?Q?sRdrfBVRgwPC/DXL2ndmDwt0CQegoMkm2n20kp0d41zzDHyFADGK3uvOUD?=
 =?iso-8859-1?Q?FCGSbMX5WIIVJYjR7cZGdzUQKmNnWkpEiMFbPyL7CJslzje9OyfJPYeO14?=
 =?iso-8859-1?Q?RGXCpXNk5iKvc7Mab1pfSP6Vcph51KbnFVG7wfcyjBiMUqG0BgPeM3K9jL?=
 =?iso-8859-1?Q?9Cmdq26SiBaaztIvsdOYPPYeLKHzsClBcPNxsUbZbJDp8/0ih4ZJQb9RwE?=
 =?iso-8859-1?Q?Hga7z2Xmykqzip/6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8Pdvy4NNJfmyuzFCUJdYj/Uv3GFqzEl6KfLMtPAVo6pyzXCOWnCNZtpJEZ?=
 =?iso-8859-1?Q?shuWApRTKDpwG6YTsBI1KuFMuw3mYNGFTW7bre5rvFAJLb3rgCtxPsN2yX?=
 =?iso-8859-1?Q?e+sTVvAm8Gsh8GLpij2jODOVVonTqqT72QOn51gWPbdxiiP/h0oKmxYtuw?=
 =?iso-8859-1?Q?FP6SsTfFasVZeLPF57IOjR1n50PQ/Dapi1GoGQ0k1absa3EweVe+TEtcoq?=
 =?iso-8859-1?Q?egyzNFVgVo7f3IQtiGeE+DLLcVu0CvoKido5eA47ghljUgnfH79l80qMu8?=
 =?iso-8859-1?Q?wVKnv0YHkvOnPSFi0qv90heAB+pFMt9P0Tj7pJTiVkT1VXqwgmmWmF4Ywz?=
 =?iso-8859-1?Q?fwpm3bdXokGhaCKD1ok7RU6cED+Nx7wITG42OlKfIT0iPlCMzJGyBxodPK?=
 =?iso-8859-1?Q?ie8WutuysBa3Kr2/Iuvy0BtuHn9suGuzh5bDL5MRPshLYrdif8sbKCPQ2c?=
 =?iso-8859-1?Q?lJ1aHolhna/hK0smovs8AVkZ97YKKB4CeoEnowNb6wXEA99ZO5tyJqsKQv?=
 =?iso-8859-1?Q?2IcoAwp6jO670vA9IHjgS/QaQG4oLBpyee9pARbrUlLISRJFjKHe4RNQsr?=
 =?iso-8859-1?Q?PprotpNBophz/yE+4GHHPhX2zNvxvBmreczyCEVzgYOGDiTIlIZLNreiUD?=
 =?iso-8859-1?Q?mW3uMQnEN1WADUNPG3KUA1FRRI5revFCFvDXq/g/O5X/3dFm7620Gy/kLn?=
 =?iso-8859-1?Q?5CkbH2pztykRVgV07amMV/alJw53IZqEB+bDeRfTHSwII2BPFS86ZGwWTd?=
 =?iso-8859-1?Q?ZNRohnAh36tpWRJ6L2ryIFq0i92y98fNDPQNia0tDhWrkKLR1mYEGnwAGv?=
 =?iso-8859-1?Q?DlHvwf+htTXfMv3+nXBoMvc3oRJdy08I7mdy7xnRQNvwo+JXHy92j9yf64?=
 =?iso-8859-1?Q?8hLDgofZdAJadyPRx9luzYKjJPg0BGgtrNqaK4DH2cZZ3NPdvvB/2dGdQ6?=
 =?iso-8859-1?Q?vPTBWM6ugJNYah/qtV0Vzs72njYPEpOhQlJqt/gowU3nDrgKsrYtB2pr4L?=
 =?iso-8859-1?Q?0G1UcLEbHqK1as2TUP/uNfzvAxkxm3YhBJXpkQx+fLOTRZlxOtvpKhE9u4?=
 =?iso-8859-1?Q?PSrHYoab1do8IBMYkrTvKiwSFgznAfRyTxT2Rj+7UUeJBP7wLp8rkViHdg?=
 =?iso-8859-1?Q?P03I1x7cMwdjD3Cb3VxMFSgn1nmreOfDvENvobeuE9cJ6tXmMlzwZl/Bml?=
 =?iso-8859-1?Q?ZqYjUgfo1sllEY8l9FgFTJyIuPorwFJ3iIuc8qbeGE1QO+bWb924/Rfopp?=
 =?iso-8859-1?Q?poxTzVmikPLDpOZj+gQTwpmK3SF5e+iwEVI1ZPxoDNAP8ikOrzhyfL+VSX?=
 =?iso-8859-1?Q?rUB5pHqjxCFK/hUS9FOh/uA+qjewARt1lRMhOTXv8qy7wqxIW0P7rRIjuB?=
 =?iso-8859-1?Q?UAjJIdTRNayRz/Wy93pP9LdszCnX7RPWUA2SqatN0I5X8ujKOaCtpd8+/f?=
 =?iso-8859-1?Q?PyBUyFwHuLnYAdDg64addSzzPJGahQIsZZtHVMvESdhLZQzu0pd+6sJLoY?=
 =?iso-8859-1?Q?ibPfoOxdBODmpFFffYW9Oj2N+EkYmhsW2qI13vuxS8Urmg4lrbUl4Zn7uc?=
 =?iso-8859-1?Q?esDXppOXxxDhiOa9kllLQAWUajFTL57doFbzLnDT3GgJiRXlnzVHPqrctA?=
 =?iso-8859-1?Q?EwmMMcx9Gj0/IacZcUJ36IriaUcCwDJo8vrl/WCbIvcjuOEyyShYNY1g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d585a91-f97d-43cf-6d66-08dd635c3ce7
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2025 00:56:36.8973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2xlRk+lPBFbYcdoT2rV0+j+tJc0yZQa073sc5BdxFlGFQb8XxLh8rXxKWUQDnjvaGDkf6lYt+gwyY4pvlf3HBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7991
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

On Tue, Mar 11, 2025 at 09:56:23PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Stop doing the pci_save_state(), except when we need to prevent
> D3 due to BIOS bugs, so that the code in drivers/pci is allowed
> to manage the state of the PCI device. Less chance something
> getting left by the wayside by i915 if/when the things change in
> drivers/pci.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index a199e21c7bb4..503f1b6b694f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1154,9 +1154,8 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
>  	 * pci_save_state() prevents drivers/pci from
>  	 * automagically putting the device into D3.
>  	 */
> -	pci_save_state(pdev);
> -	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
> -		pci_set_power_state(pdev, PCI_D3hot);
> +	if (hibernation && GRAPHICS_VER(dev_priv) < 6)
> +		pci_save_state(pdev);
>  
>  	return 0;
>  }
> @@ -1164,6 +1163,7 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
>  int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
>  				   pm_message_t state)
>  {
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	int error;
>  
>  	if (drm_WARN_ON_ONCE(&i915->drm, state.event != PM_EVENT_SUSPEND &&
> @@ -1181,9 +1181,8 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
>  	if (error)
>  		return error;
>  
> -	error = i915_drm_suspend_noirq(&i915->drm, false);
> -	if (error)
> -		return error;
> +	pci_save_state(pdev);
> +	pci_set_power_state(pdev, PCI_D3hot);

Cc: Badal Nilawar <badal.nilawar@intel.com>

he hit an issue in Xe recently related to the lack of this iirc.
Hopefully this is right here and we can get this right here and port to Xe.

>  
>  	return 0;
>  }
> -- 
> 2.45.3
> 
