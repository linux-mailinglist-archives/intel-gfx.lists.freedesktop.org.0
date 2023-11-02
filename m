Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3207DFBB9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 21:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277DF10E37A;
	Thu,  2 Nov 2023 20:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9997C10E37A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 20:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698958233; x=1730494233;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=R8BVT8HGihIv/oqwsE8i1QnhxhOJjfTcu3VBhO884eI=;
 b=QqHIBPAeWt8t7goE/8YrlFgjWDpxz8V0BF6XmjXduVD1PbeRi+Jdg+lW
 amH+QPfbeeqT8T2EflVDVY7KyByNn367yC+mbIDhy3MQBCouueC4DAW+4
 mByo1JPhz5ERtC65s6xyuiY4BO0bG7EzLaG2qRqOxFX9GwjS579Js/LCx
 G6GemxLV8k0a7vViypoe66uNNKzgNk8mXFOzk+tqyL/hCK5rEHwSkhLtR
 SV7k895EahUrEE41r60g7oSM7iuk2UfjhK+3m9KedssQEnlT6eIRL0wfK
 cOG+Yu4aveyOUmr3CYT78xaKuEUnPe+tN0KLtxG0c4IQOVahfN83OoMC5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1749070"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="1749070"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 13:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878384021"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="878384021"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 13:50:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 13:50:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 13:50:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 13:49:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFKJy/b4K1BdvCpn0DsdfhXPpHZXAiXP+ybqq8pL6LlmZnJN1OW4oOHYaI24Qkbq3kHTkUJpo333J1ck/NhME+62GjyY0HLL8d5olqtdP2Rm9rHz165De/SIz/6oZ+XkOSKvnXtID4wpCdEvOuRcurwQrlCKYGoxBRwwlzdZ+koCKrPNC6YjeSaBRbkNHBODVIM43IQrRyCTE7p+VUzSvmCSapEwqMJCYK1H/bwTjZRnDbbT3ph4SRd/O8vwz0Wrzld7ZsGhGepCzg0NYxXgc0/8USpnShP9Y+BS9cBetJILXwzUdOWAANpN8cq2OIpHN8zRozhs6NTnlFNFrZEWlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fKMzNGMmjNGCGe7fey44asU2IJR2YEPKHHbwkXZ4TIo=;
 b=Yqre6ZC+J9OkLa+SqklOquJ4AjwYYYByeryi5bADMwutEZK4NkAaAvzqiQyp/L+YS0iaCNhklq7lKShC9s7GUwnZy7xMiAG/TPJHV2QYoWgRkMYJf17SnN6UDJStc3fqXXSgcDtMXjOyms7ojK4MmRqA8gQP/Zk85B214NsG6rvwL1a79bLTRTrFtmn6mg/fs95tqpFqz+ic/KUsetUa7iRT1FWi0f81iBIcaZwC+K+HEAr2ET04CnuaaliL0ZrVasqxAcK7QDU7vcgRGHtIxU7lnDgqmx4mZD284mnZAgnFuIlxj9Yql+ktqFBW6wx9Z4yN1yJoS9cqq9wjM1y0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB5054.namprd11.prod.outlook.com (2603:10b6:a03:2d3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 20:49:51 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 20:49:49 +0000
Date: Thu, 2 Nov 2023 13:49:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20231102204946.GF5757@mdroper-desk1.amr.corp.intel.com>
References: <20231102155223.2298316-1-jani.nikula@intel.com>
 <20231102155223.2298316-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231102155223.2298316-2-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0189.namprd05.prod.outlook.com
 (2603:10b6:a03:330::14) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB5054:EE_
X-MS-Office365-Filtering-Correlation-Id: 492a6735-0aed-42b7-d346-08dbdbe54120
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KwGs793kfoM9miX+aVTT5whuJoARSwnm4NCOAWIaIuSu9hFD/vpaxa+nMrZ3nQp5Ab2jJ2f8QLSRfv33tg86BeEiU0F5Ix9WHnB+jiKLHUlSASeQfQ4N+MXDerKuoNgVOvkhiObMPALvsvphVbKSWxKDUKg5ubdt4DSzh0+3g5EYQbCrOxyLSR4UHbKiY8GkZKMpg98TgaUsSVng3pFKOGEqBQzP8R30Cz6X0JlJtC0AKNGqurR2MJQ+Ocg+Jcr/Xl8FMZrXwMdefe68XFsWPm0NDxe6xLz8mZew/J0ZW74QEDnLIFL2ljvn4Jt+3qoWusQPf9MNqZU0nh9q4H9fMLuLaXT/XvFUfb8tBMzal3/GbCGjadnyjbbhsshmgYFE88W1mIS7R1z2zbLxzB3JYO939FKOq5HLCOAqpyg08yYBkvAWlTtHKeqO4RbWPIKvVZSEAsueHosF07LzX520tyAg9CpjExCys7RAwxghgKf5/oh1LSbHbWiacgUmPOTn1Sg5vZ1V08K2xXP6rwo0O1JdFeDYrTjY7YTuajS4U5szFt6eplokr5wCPdNjrXr3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(136003)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(478600001)(26005)(6512007)(1076003)(38100700002)(82960400001)(33656002)(86362001)(2906002)(83380400001)(5660300002)(6506007)(8676002)(6666004)(6636002)(316002)(6862004)(8936002)(6486002)(4326008)(66946007)(41300700001)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xC2fyeLz6lWSLnNeEiCp6KCipHUvy+htIaC7rc34XehQ8zdAZ1rdFse2UwJ2?=
 =?us-ascii?Q?y3lcXkVMgG4fmkv/xZ9sy8dfDPZuHGkO2Pd1QVUFnKc/Z0wAAE7ivMthIxEK?=
 =?us-ascii?Q?qZak+Rt8F+BQDHlmzzgF3P85s8hKFtUKWWJKipUf/fY0Z0aUR4jlYFVDoOC7?=
 =?us-ascii?Q?t+EU2uvyFb9xLZ0B1IMgS2EzRrUkkIZ7YJm4i5nnEtDsoUq+cblvoPBe9ROw?=
 =?us-ascii?Q?1RCG3jdEz5skYlXdZFTLWH6UdTPGFxzcDWSF2/PLgIZhogDFiSWiiaCxBHCG?=
 =?us-ascii?Q?BmfDZ0bZ2Ckcso0ED/mLo+S1uAu1mZOO24QtJdsFFq/oLE1W+hv8loS93E+d?=
 =?us-ascii?Q?eYpuR2jEGzhqavh1Hs/+iPCT7gIRXd5U+M4X20uXMp7A7V9Y/OHyOarlLqXf?=
 =?us-ascii?Q?jFL5l8u/D1GEmAq5t3TNt8LnVAADUmf4qzlh/lZwQqERBDnH1CER6SchtnWR?=
 =?us-ascii?Q?HPNPMZri1WNBuI1DgHlHknFJDKRmy4ZKoYyXA72okZgqceyusN6Z+PCVeEQP?=
 =?us-ascii?Q?+U/s3wTq+lt834RHgFLeRUmfP1yMIXBcj4s6OZRZnu1/2K3ia3AL3VCtQEd4?=
 =?us-ascii?Q?E+FE6d489kXYYEWNpcbvsDnjZ0CJHyoRY7w7K7l5N/kP4J2vcKMwRHdf15q7?=
 =?us-ascii?Q?d1feqbuhxZRqzcJVB9JP7QBb9ZwRWO7pXlSHzocLIAqVbICvXwztD+LGkBI4?=
 =?us-ascii?Q?hJAEnL7/dTAzGQIP9G/QgZDGyewcWXWMylYtprnfz/ocRmAC20mHPYIeBCdn?=
 =?us-ascii?Q?Ua3Cy10KZb6HrqAkd6h+gIAUvLKfokQWLlgw79S3xyYNKipcno3bxxFiN6uI?=
 =?us-ascii?Q?YggoajxDhFbq/CuV01csJo9R2zCrFGsCS1vUY/fw3o4yWuegWDfwWboDz9d5?=
 =?us-ascii?Q?fBCuseiH5OvAtyJFy5DPyucNlxYK0yWmFOvMcLrK1jpJAffIwE+C9336717/?=
 =?us-ascii?Q?F6TB1hDl6l7aNYToI/A4RfeskJq53An4hzoKyx6+whyirasp3520G0htHHje?=
 =?us-ascii?Q?YEqnWJGhNGTJ1hCbE6Jow2SlLAMiru9NGTh1jXENpu7hWXsbtiSgALMPtIAs?=
 =?us-ascii?Q?pw9SS9CMsJgf6r6MNL3Deqob7ukNg71yJyx0Lo6TvOSaxuCoBOzL8Mddw3MV?=
 =?us-ascii?Q?8ogAdmnnB62WgoSrhnQuHCLBXxDKixhxnzMRlWdRh2YU2i0snGooFqK90P1+?=
 =?us-ascii?Q?LM9Y18LlGg5RvRfr8u17Rw2w1V6QkqFClnlP06w6zrtgpJDTA/5vXSATJQ2N?=
 =?us-ascii?Q?ukLRJCF4iZeDgsiAEjWeKNtVXv153sahS2JxEnVbVRF5tjrFe94tbbzNuw/z?=
 =?us-ascii?Q?kBIkmwWbIN1BewE93jWchiOZOH7WjotsZ2i1+ThT2bnc9cXv71RxrLxYMbOg?=
 =?us-ascii?Q?fOojPASUdC2k/YbUqA02qdrK2OCDlKTiowVP559Lcs7mAqIFhonPjpoYpxb8?=
 =?us-ascii?Q?zi71ElM6G5q4hsLtk7UueK8czP9F8mfzdNbJRGbnJho8BaIhPdbvuKq0VPs5?=
 =?us-ascii?Q?eA/VpAA8A4GOlHqNLcMlx47HHYmTWyklcJoxCltVVnuYCyUNPbV/dgJX5XnA?=
 =?us-ascii?Q?w/L+/1mEI9kTF1mUbvDPyg70BpG3htuRRLnUY7JXroDXdgcKXurhAYZLO9AI?=
 =?us-ascii?Q?SA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 492a6735-0aed-42b7-d346-08dbdbe54120
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 20:49:49.2624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GwS2GfvbJNnd1ki5s4eyOL1gVYC8mBgMEUQoZ3reC2oyb4F1kTnTlRXPgOUXknw3H2LWPh4DNIWXC4xOpcsVQjgUuTk04Ey6ekchOaLI01I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move display spinlock init to
 display code
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 02, 2023 at 05:52:23PM +0200, Jani Nikula wrote:
> The gem code has no business accessing i915->display directly.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 1 +
>  drivers/gpu/drm/i915/i915_gem.c                     | 2 --
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 0a5b922f2ad6..62f7b10484be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -181,6 +181,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> +	spin_lock_init(&i915->display.fb_tracking.lock);
>  	mutex_init(&i915->display.backlight.lock);
>  	mutex_init(&i915->display.audio.mutex);
>  	mutex_init(&i915->display.wm.wm_mutex);
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index c166ad5e187a..92758b6b41f0 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1306,8 +1306,6 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
>  {
>  	i915_gem_init__mm(dev_priv);
>  	i915_gem_init__contexts(dev_priv);
> -
> -	spin_lock_init(&dev_priv->display.fb_tracking.lock);
>  }
>  
>  void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
