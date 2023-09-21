Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E4A7A92BB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 10:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3BD10E587;
	Thu, 21 Sep 2023 08:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3053710E587
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 08:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695285693; x=1726821693;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JxwB8RCpXpQ58NwbWAEV7YogMe+ihHlIvBKGXS/h9nw=;
 b=FWQm2NJLByqfe6FXASPTaBDBx+VOfRaEQ83dH5RBvli5YQN6mTpHMW5/
 JDqMvFpSiyZ+yxjdV+Rxln4ja1fUZV2sQ80vmL7nFIHT5h9YUeQg1o1K8
 u0fjc0x7JMKaYCxpDzX4G75aSFub58rca1tDV4Edhi2QMgVVvqDPWgl2A
 dWoeTipVFw0Cy2kcMzgnaGxlTVYudTAhDwShnDFebcwcNLF850E+8ovSl
 wEmigLNTIdBeMNtVWbnDQ/9dCJLTHMqD7tobviRNhXBpU3kxer6Tx+z6z
 ahj+txSxvi/nsjFfZiEV+1521+nd7NxqlrfXOZ1wCCBe7IVJUtxlNkVgL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="383198692"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="383198692"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="723662236"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="723662236"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 01:41:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 01:41:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 01:41:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 01:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l01/iBF8qEK0XWavTAjF8Np7Qe4YNBUVZjypLRpIb5xsDN/Oj3rWrsYjVnFmzkGKmX1vZNQ6bY5lu1e1aPzEEUsHaqiMVH5iw8CzxFQ7XS46864lWzv5T4GwQ/5kq+EsQn74zI1km+QPvc6AwgUu+szUfsNDe1BTDAU6r4UJlAmfLCzilhVjZ8Rm+iKoYNH10It9R0wwAzmmY6JGOKlQ3XL34OLY27rPnSUNcELyVKVphldQWtb6OH1u/QiCMnF2cXE9Qle9ZRjgtvLU+pTCGYzioSEBHqPc1vsK8BSCTc/T0lmCcW75bEI4U9K9LtZOG0/3LVAJ8LKRnmR24hP2OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKSZLto8IW3aEH7ydUn3r4X5GEoq2/10N86MCWTiFdU=;
 b=JngetShWDlFkQrxfpSTGW1HcZNxXV98krzCSmU/YQe5Rxgv+sfOsIq1CcaJ1dVdqLZM80zEQISaKcyFy6ipX90FcUnJ/G8fYFmeWcp5btykg+2NUistgdkbJEmCccDMKuUMGVDjfNtCnsDb3y3h6juVQCLbERvtOZSVsqG/8FR/AmFHXmZmAWJv3ipW1jDv9Z3mKrSFKauX3YIa6tX54cIZZ/kJk3MA57fPxF1v49NiKQzAVq3mgMnZYaak8zKyaFnwsjhDBxv2R0HmbGGeWv3vr4qe2ZXxPNg3nTSbjD5DMsc3thgkFWzM7Y6aKEoY4BIR0AT8i54A6cIq6xsKd2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SA2PR11MB4874.namprd11.prod.outlook.com (2603:10b6:806:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.19; Thu, 21 Sep
 2023 08:41:28 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::15c8:5319:c6bb:323c]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::15c8:5319:c6bb:323c%7]) with mapi id 15.20.6745.035; Thu, 21 Sep 2023
 08:41:27 +0000
Date: Thu, 21 Sep 2023 14:11:17 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZQwBre/47G2GtOPt@bvivekan-mobl>
References: <20230921071820.1969102-1-balasubramani.vivekanandan@intel.com>
 <878r90q8ma.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <878r90q8ma.fsf@intel.com>
X-ClientProxiedBy: PN3PR01CA0120.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::15) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SA2PR11MB4874:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b109a0d-f783-4515-09ee-08dbba7e8bb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6MaXulQefVjeGMt+kHBaWWuQAU3DHQoVUFrYfQm8rSGmTbrALZ5YlAwdynTycR2R6Chld8FntI5fVaf1vPjpUGOqBJKmaZFRbs77+N6wCfnyVdC4NbS5lhOOeUYO5A+XGQxilm4UOlJQTO48omS9IW5qUlbe4X9qbo1toC/fWuIzGs09xIb0g/POeu5c606iTjAYo0d4ZbsR/5FVQRZe3yjo1HnyJOS4ehHvJ4x6i4glCbIlFzp7nwuWQ9U2x2BiU7UB5EPYZCS3YJFoameaseb0mqpbCokHu5VMOQnodrzyx0rU2L8zI8NKtM/KWN4P2sb7D9Ucp76fiEdrAQhh/EbzD5rPnT7WyLVNiJEeEzj7drRKEs/BNEKjHk0bYCRYlCktEBdQpZC9T95YSI0/vkVNPbmf6ugmRxXU6SO9wSkpMxcge07kQv8jr+8NT2qNWamGWUU+alUCR7tkAJnDiofAtZI8wtWn06oqpD/IfhKjjhfikvikW64g2LGhJoW5e501CtDOJzD0cXQOS+BJJZB5GBoseEboPk56u14qNIUKCG309qfrQ0YO0DNFANK4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(136003)(39860400002)(396003)(346002)(376002)(1800799009)(186009)(451199024)(6486002)(9686003)(53546011)(6506007)(6512007)(6666004)(478600001)(83380400001)(8936002)(8676002)(44832011)(66946007)(66556008)(66476007)(316002)(66899024)(5660300002)(82960400001)(86362001)(38100700002)(4326008)(2906002)(41300700001)(26005)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVN3UFppdHVnaEs3QVYwbTFpVjNaUjNtL3pNQllXdS8xVDN0NGRGckpMRUlj?=
 =?utf-8?B?OW9Nb0lKR2lGanlCWDZWWWJmQ0NjbDdiVHNPYkdPQVVPMmkwQnpmS3NYMzlt?=
 =?utf-8?B?ZytmcldTb0cycmFydjljS1VwdnNYMEZNdWdLZlloUHplZFc5VGpnZkUyYmc4?=
 =?utf-8?B?TkJ1OEhsazgwNnU0OUhJVTdMQ1Y0NXUrK3IyMHVzYXR0Tnlsbkp5aXo5bHQx?=
 =?utf-8?B?bWxqWmRmSXViVit4N0F0eFU4YWpUZXFpVjBNZ3dydUJBeUdyN0FFR0h2K3Ft?=
 =?utf-8?B?eDQ4Z2VCWDRjcDdxNHRSNnFJV3RlTVk4NHdtVytac0F6WlhYYXpqeFh1V3JF?=
 =?utf-8?B?dlZOK1NsbUIyUVVQR0VJSUhhTDl5U2xpWWRhOG1FbDhLVDU4bkxqelB5RW9m?=
 =?utf-8?B?VTQweXZra1hsV3Eyd0RJUURzNlFiRGZRLytrcGV5bDYxWnh6UUNnK1lCUFVt?=
 =?utf-8?B?bXY5ZFpRVE50R0NrTjBGWitxT0htNTBMRW9MTzZKcWg4eVBFSlVMd1p3b29V?=
 =?utf-8?B?cUF4N0E0dmhCYzFoNFUxbGs3RVRmaFVHWEtuWGJialpTbVU5ZklTYU1mSGpk?=
 =?utf-8?B?TmxxQnVFczF2MC9tZnFFdkJQNVV5OElXMzNXOHphRnVIZ21UZmR0YUU3cjcv?=
 =?utf-8?B?ZkRjQzlVTVFQcERTallHVHFTeTBiUUdUUXI2T0tqVnU2YXhtaDhSd2tDMnJq?=
 =?utf-8?B?VzFYbGcwbkc1OWNyWENZdDN3ZVkwc3J1WkpIR3A4Q2VqdlUrUVB1UmJ1Z09m?=
 =?utf-8?B?Wm5BUStaVTFZY2JPVjZDSk56QzBCNWJPbGxOc3prZVp6MU1uNndqQjZKUTBS?=
 =?utf-8?B?ZFdEN1dTS1JacWt4cmdUL2hSTUZzWG4xS2ptR2E4VXoxWkV5NUw2N0lrMm50?=
 =?utf-8?B?Y0ZIbUtnN3o1YjB2V2JIcXNtVjBBNHRIbUowSU1KdkZ0RjNmeDVwcGhSdXF0?=
 =?utf-8?B?cTNkeFRtTEhxNUdkTU9xMExwcVZDTS9VQTBoTW1CY3djTkdnK2lXc0dIbXBM?=
 =?utf-8?B?TVFWcUg4YW1RQ3o1bFRDWUVoZkIxdENET0FUMCtrdzUrUC9VK3kxbHNDaU45?=
 =?utf-8?B?Z0VubE9lU3MyUTRycTlMSmhBcHVvc2xXRTA0MGtZOTZ2MHdhdzEwUkRLMEFY?=
 =?utf-8?B?VzJyTXIyZlVvRmVzakhUNTlQanJCaEVKVHdzd0NlTk9sQnc1UUc1eFk2WHpi?=
 =?utf-8?B?amFKUnRucFFqeHNleVRnY2tHaUE2RXo1NXlrM2d6S0NGNHNTZ3dXb24vOTZR?=
 =?utf-8?B?QzNlSysvblNCR3dZazlLdVVhYk5jQkhMV0xaTlRiT0NwVXIrSllGaXBESHFm?=
 =?utf-8?B?dWNwSHljT3BVQkJLWmVxZ2lkcklGckJ4cnBMWkY0cUtPK256L0Frc0puL2JD?=
 =?utf-8?B?Y3RhYm5ha3prQ1ljaGtzL2paWGZVUUVqcUg2akp3aXlyU2ZjWS9IbmRndkVz?=
 =?utf-8?B?MjBhYkhyeUswM0s1VXFjVzhQWjNuQzN6RktiU2JOMmcwM3EySFBnNGZTMXJk?=
 =?utf-8?B?Z0JJN1hrRmF0aUlyYWRSak5QRW1hUURyNWhtdEs0Sm45cDN3cnFHNFpRVXBW?=
 =?utf-8?B?cit0a2Vtc1cyME1aNFZaZTg3Y1lVSldzNjhLWXk2M1JCMzUzbVdKS3BBVHlE?=
 =?utf-8?B?amMzb2RGUFJRSmR6d2Rxc1I0b2ZZVVhtZkR6OUI2Y2NHTG91bmxLUTdUMlVn?=
 =?utf-8?B?SElnR25SUkIwQzMvbTM2N2dseHVjeGpTd3ZuNlIyTldxRzRHWk5zWG9pR3ZM?=
 =?utf-8?B?dFBZYlBtcnlvWElkS2YzaVpERXFueHJJUHp4dS91SFF5aVEzM2dubXJjdUZL?=
 =?utf-8?B?QVd1TStHTGpPVStUYkIxcnk4Yy9WSFB2b1FvMEZZcEUwSGFoVmxoNG9iZEVu?=
 =?utf-8?B?MFJ0S3RqcXRETm0vamFETWlTcllTTTJnMmlUUGlob1BvRzRUWUhqenZHeFBa?=
 =?utf-8?B?YzRJeGpyU1dCNC81cng3TnNlM1ZMVklmNmxNbFUxSHJqcmpoTkpEVGYvVTVB?=
 =?utf-8?B?c1RtMExONVc3ejB2ZkhVeFN0Y3BuVzZmM1NOM3ZqVksraksvY25Mb3YxTmZ5?=
 =?utf-8?B?M0JXQ2kyUjRDeXFrWGtGaVNFSU91UFk5S3AyTnJ2RjlTWXZhWWdsNkI3czdq?=
 =?utf-8?B?K25ZRktPUWg2WnRtV2ZkWGVmY1dLRUlYRUUvQm5aRm03TFpveUJsZmxKMEg3?=
 =?utf-8?Q?llpFKRPPvWi0geaX3hotmZA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b109a0d-f783-4515-09ee-08dbba7e8bb0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 08:41:27.8842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3iQMCQjtMjzercl1LckqUYoOe5M/VVebDjVLgxZHIAneiPeRAcUVQGFf+xcpRLnFMyJmK1oZozTly9TA2eJrVkLhuNZomCO1H9LmDFrYHSdW5VMoc5R+7bZ6TkO9XK2S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Print display info inside
 driver display initialization
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.09.2023 10:38, Jani Nikula wrote:
> On Thu, 21 Sep 2023, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> > Separate the printing of display version and feature flags from the main
> > driver probe to inside the display initialization. This is in alignment
> > with isolating the display code from the main driver and helps Xe driver
> > to resuse it.
> >
> > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_driver.c | 5 +++++
> >  drivers/gpu/drm/i915/i915_driver.c                  | 2 --
> >  2 files changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 9d9b034b9bdc..2fbb3c956336 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -380,6 +380,8 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
> >  
> >  void intel_display_driver_register(struct drm_i915_private *i915)
> >  {
> > +	struct drm_printer p = drm_info_printer(i915->drm.dev);
> 
> It needs to be a debug printer, not info printer, maybe:
> 
> 	struct drm_printer p = drm_debug_printer("display info:");
> 
> Unfortunately, it's not device specific, but that's for another set of
> patches another day.

Yeah, thats' the reason I deliberately used info printer.  Anyway I will
resend the patch changing to debug printer.

Regards,
Bala

> 
> BR,
> Jani.
> 
> > +
> >  	if (!HAS_DISPLAY(i915))
> >  		return;
> >  
> > @@ -407,6 +409,9 @@ void intel_display_driver_register(struct drm_i915_private *i915)
> >  	 * fbdev->async_cookie.
> >  	 */
> >  	drm_kms_helper_poll_init(&i915->drm);
> > +
> > +	intel_display_device_info_print(DISPLAY_INFO(i915),
> > +					DISPLAY_RUNTIME_INFO(i915), &p);
> >  }
> >  
> >  /* part #1: call before irq uninstall */
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index e5d693904123..d50347e5773a 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -699,8 +699,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
> >  
> >  		intel_device_info_print(INTEL_INFO(dev_priv),
> >  					RUNTIME_INFO(dev_priv), &p);
> > -		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
> > -						DISPLAY_RUNTIME_INFO(dev_priv), &p);
> >  		i915_print_iommu_status(dev_priv, &p);
> >  		for_each_gt(gt, dev_priv, i)
> >  			intel_gt_info_print(&gt->info, &p);
> 
> -- 
> Jani Nikula, Intel
