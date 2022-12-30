Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224A4659632
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 09:18:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB1910E051;
	Fri, 30 Dec 2022 08:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CDE310E051
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672388291; x=1703924291;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4gQ53AYOct72pMribB3+jDAJ6wennhzEOH4j8t9mEQo=;
 b=fnwJce2lGQA0Tq4b8yuehkM8j+iAvWfcryUNwh4v2GBLbKZOUQodxU1U
 O0qP2v8oPafI+eYccz38H3c166v+axxjMm6fQxN/fTIxlaGklAD7hD3Km
 Aa9HGh7Tan8qvWA6pJ1Pp1kmbGUMjBs7WspCrRrzd+surxViawaeAa6L7
 SJsQAoYcSbsMunxQIfAm7TQXAfPHUgfpsMoN+3pwpSOG+lCQI85BXKhsZ
 Zf+M+g4x3+HKMw9cCpdRcP7y/yxJcFavgH8osRAV7n22CAOQbV+9f/AJW
 sXUrFrfLur58AiH/RuF2ZbwrPWXo3IXKxWXhLIZRv3xEkkPPrIt/Sr0u/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="321247174"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="321247174"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 00:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="686212338"
X-IronPort-AV: E=Sophos;i="5.96,286,1665471600"; d="scan'208";a="686212338"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 30 Dec 2022 00:18:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 00:18:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 00:18:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 00:18:09 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 00:18:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RKy6H7pYs+SR4N2r6mNqdp6HpEvx49KMXkMqS8FfCxKzyLm7UbuTccoexla0qpNVgR8tk6+baaK82NgEdyDnY5q/FTD/MNv8V/PfFFLxzhubZ2xASPegisDjW7UZIizudxyx4JiL5juf2LUFvu/Ki/J+zkvh/KqFYqPyo82mIIrsDUszCSCxFB2H1ZNf/GIsj9wp5K0siPwPjyvHPVCqzXXnu4dDaJE2iLhUuGzztb0ckbDwab120zSO11NWRwIm2WzTzzWhlpSOFgmIfOO376ACd4FxkwgZh2ye47HXDucykkislTZFdekMg+4r3oRreOPBny/qN6pkjFK3lIuWQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nVJpIA8x6H0k6JUujQ2dWch7NK2iKJieykkjWvRhcXE=;
 b=Yv3zn3eh5B8dBYgAmDEswa8cyIPMhMOydWGoEejcIjDZEHMjPwDNFO+X/GsDgANyggVbG/WKUVupYe+VYzEz02WO3GTflgf5xtx3W/Za9U5BKPgc88hV+oEoamdaqKiU7kqz0+kIoTlFs+kvwl02cEsz5oRaY5YhHCbuVXEbC3WxX5wSBnOe12Lssv/CZhzIApAf7+KmCAYbFUNkXohST/vLLQQeaXX3c4WOuUvRAYCeAWl3uqpb9ojy8E54th923kZODu4GyQJ+rRfsl3YbXVxTJQU7wELDHAQEDIBl/x7dPUbibH9kmyXMAHGxKUXeM7fhb6xcliUG/0h1t49KAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5151.namprd11.prod.outlook.com (2603:10b6:a03:2ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.18; Fri, 30 Dec
 2022 08:18:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 08:18:07 +0000
Date: Fri, 30 Dec 2022 03:18:03 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y66euxZzzpuHmnVd@intel.com>
References: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
 <20221229180134.ulydr5qprda3z3zz@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221229180134.ulydr5qprda3z3zz@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR13CA0133.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB5151:EE_
X-MS-Office365-Filtering-Correlation-Id: e743f775-12ef-4dad-dbd2-08daea3e6149
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u5TUVxRcmUoXQ/0OBrRT0H57C9/vE5zz/CqaBeqQtELRYlkX/7YJLiwLDSS+92TIoCwHwlMowODgKVgODBcCnoHFTCXMzC96fp8KiGZQFWybYcScq1/VY1Rtq3D1V3YvEtq82b2M5kbT8nx3fBMaFsO831Lh1VzxVCHOh3g4QAVX958tKcvknIu7W6aGetwdr/eL2g3+SCznDOkXESploy8KF7FZ8oho26alKg1IuO0P8cHMRwV16fOskaH1qv9PQtxUH9ZX4zP4NhdM0JrhzQZMcO+xJo3Ob4ddrjo3Neyxj/3eX3CA7K5lLrqeizh8WhCqHUMHVmHzgQ4/S1V3co6vraNH5hDKZv5OHA0tuE35jdUZUVhok4oCv+p5e/BNDgaCy3och2vvstIUus5vNr7RxXMHxvfLTzZSOrRc8cofpU1nKix5QcPKT+lHemeoLXaQm+yxlD2sDKcMU+JYetenHL5t7XKVUqBxOSim8Dhe5GPPTvGZAhnTfZGrv98bf1qaujDLKldPyZhIwx28RiH5VGO7Se4h2XJQsA67VOsEl9ZLoNEiFDjj5pt5+RigoMjNKPNCtIEf1O8oxz7esFmdcj+xp5+6/7o/m5B/YYYFiHOj4niSWQoOvBwNdhNc2xN0bW/dD/Cv8My1PAqcvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(346002)(136003)(39860400002)(451199015)(36756003)(86362001)(4326008)(2906002)(66946007)(66556008)(66476007)(8676002)(5660300002)(44832011)(83380400001)(82960400001)(38100700002)(478600001)(316002)(6636002)(37006003)(2616005)(6486002)(41300700001)(6862004)(8936002)(6666004)(6506007)(186003)(26005)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qxduoJ7C9/usUCAA/0HDkjdpV3wSN+l8Oh0z2L6zwwMRWPd9wqnjtXbDxZKu?=
 =?us-ascii?Q?v4LV4UAr3S7R3VP8uB2FgfY/YOc2MGeLaaLdGpZKOhc2UOdafOP2a+W1ogvb?=
 =?us-ascii?Q?BYsaxR4rof6GM1vVPn8riKudI9K7XlcL4zwIVDTUuYlC55/wmU662tTo7xL/?=
 =?us-ascii?Q?9GjocQoSDRLulWLUwdDvLPUGetvHWBeeAzMLBRs8d/MmXcqp5QysadCZQPlh?=
 =?us-ascii?Q?Oe//Q8mCcc/qzmp0+rH2lQIt/jDXsOZYV7e94R+/TaR3hoZWnPPR66qPew8k?=
 =?us-ascii?Q?uIwzXMyneb80qCdVT1VhUPDA9FRPckOpZEs5ufWz0+RQYsH6LHQt/Dm3E7RI?=
 =?us-ascii?Q?jCI3Bww0nRQ0vI8XWuy/ahw8ecJgZXcuVVfzhe4shZFUq1piY0w0HStNyvjG?=
 =?us-ascii?Q?/oesZsP2ILFeH0zjtFbsJVCa6D6g8FpzFcoQ8mGAfWs9aGhBG1oDygkxdbEd?=
 =?us-ascii?Q?Iy8a9xIBtBax5LJG96pbX5MB+//BE4XxBXCHjvkMvxNav+ztrIs6jIXVFx6b?=
 =?us-ascii?Q?nqFIDJ1H7yhON2etQe63W1ppBgTjnbbxqctkYrZajRluw2Nq9yyqsT7h0cOs?=
 =?us-ascii?Q?8ahcs/yfsQrR/44hPXjfE8Qiv5eBQg4nKU3UUcZqv7zEPV5w3RwR/DkPaJ7m?=
 =?us-ascii?Q?rBTTY10SUjhQ/jfVBUvrXJwFZg/mu4b741ol+eeT0AnvXrT4ASlpPBfokWaX?=
 =?us-ascii?Q?bGfCONecZCAfjtKMhMYbkankX4q32xYFdht8tZub+dTJjnVBcSa/Ybf4TFVf?=
 =?us-ascii?Q?gL/XcfhYRKeoiSw+RMkA+edEWwX5TzeSjcRxOGL663lmwnq3b5f74piD8VaF?=
 =?us-ascii?Q?ZLxtg9ev6xMz4Dtt14Ouxi0HCoaEUXk79bInxmClv4HjRBA9Gt2ooh6ZNvpY?=
 =?us-ascii?Q?Fx4P7tufzXuMdH/Jtr/bQo8th/Ljea5JFMJdoVS2K+WmKQM4cHqC9QBpNhee?=
 =?us-ascii?Q?w7NGMF7P50X48g4PePdDa/6Oq8pBRVWa06K3I8wmD6D8ZtWXwV4FB5foDiv2?=
 =?us-ascii?Q?nFoUWZU5tIAL0nS46OKHfOV5YwoIs5Ru1bxV+o1eh435xjO+nLnbYIB/y9YX?=
 =?us-ascii?Q?5GNIQotFR12pfMlg/qPb2IIPETF6nXQoNZ+P10Yi/k2Z0ttg455WbynvKXHS?=
 =?us-ascii?Q?PQYr+aqsqLoKmOpCn8O2XFSouljcgVe6jnLGBRAfqpJG92/nD7eSID8rO3Rv?=
 =?us-ascii?Q?x1A7WO1TCkn3hDl3Iu+kHlY/7GfgwDi0lprjhFkkenFeAYAeY8CcTq1PTN97?=
 =?us-ascii?Q?vFgi++5DsbtU38uVagWgk0CMqHaXLjlT7EHtUaYu8qr8RgwtkeqwulSxaotY?=
 =?us-ascii?Q?+drkU5E3dCmARSSFBg+BC+cKUg2iDWI+Z2McmGy+sLCLRWaALWTJQ4hYr76m?=
 =?us-ascii?Q?txcnLlRJWXplSz6T1oYuoprLfcd4fpTSwJp/w3OmPgIgVAjgVCHffFHi88N+?=
 =?us-ascii?Q?eQZ8FrJdgHFci9vQM2P3cTPhdGS73cUEu/kkWo9wtLp2X3SAjpS8Ds84aVx3?=
 =?us-ascii?Q?Jh0YBSCBzYzkHoQjkHX8jn2vcSj9uJYrt3Tyhw7Ftk6nfp/UYqUvO3RUM6aH?=
 =?us-ascii?Q?00KlZIsYnobcoCqWGtMIWstvR76GEdpxoBAIrz3n?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e743f775-12ef-4dad-dbd2-08daea3e6149
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 08:18:07.0274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 49Yh2GCxHStJOIS2IlLsWmqGZ3jkeEDmf1wAMxUsD41vxAJYg8afPMW/bvYf1x4UlbEcg/WhD9JXWz67IVPhpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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

On Thu, Dec 29, 2022 at 03:01:34PM -0300, Gustavo Sousa wrote:
> On Thu, Dec 29, 2022 at 11:12:30AM -0500, Rodrigo Vivi wrote:
> > There are new cases where we want to block i915 probe, such
> > as when experimenting or developing the new Xe driver.
> > 
> > But also, with the new hibrid cards, users or developers might
> > want to use i915 only on integrated and fully block the probe
> > of the i915 for the discrete. Or vice versa.
> > 
> > Oh, and there are even older development and validation reasons,
> > like when you use some distro where the modprobe.blacklist is
> > not present.
> > 
> > But in any case, let's introduce a more granular control, but without
> > introducing yet another parameter, but using the existent force_probe
> > one.
> > 
> > Just by adding a ! in the begin of the id in the force_probe, like
> > in this case where we would block the probe for Alder Lake:
> > 
> > $ insmod i915.ko force_probe='!46a6'
> > 
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Kconfig       | 13 ++++++++++---
> >  drivers/gpu/drm/i915/i915_params.c |  2 +-
> >  drivers/gpu/drm/i915/i915_pci.c    | 29 +++++++++++++++++++++++++----
> >  3 files changed, 36 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> > index 3efce05d7b57..8873cd0355b7 100644
> > --- a/drivers/gpu/drm/i915/Kconfig
> > +++ b/drivers/gpu/drm/i915/Kconfig
> > @@ -54,24 +54,31 @@ config DRM_I915
> >  	  If "M" is selected, the module will be called i915.
> >  
> >  config DRM_I915_FORCE_PROBE
> > -	string "Force probe driver for selected new Intel hardware"
> > +	string "Force probe i915 for selected Intel hardware IDs"
> >  	depends on DRM_I915
> >  	help
> >  	  This is the default value for the i915.force_probe module
> >  	  parameter. Using the module parameter overrides this option.
> >  
> > -	  Force probe the driver for new Intel graphics devices that are
> > +	  Force probe the i915 for Intel graphics devices that are
> >  	  recognized but not properly supported by this kernel version. It is
> >  	  recommended to upgrade to a kernel version with proper support as soon
> >  	  as it is available.
> >  
> > +	  It can also be used to block the probe of recognized and fully
> > +	  supported devices.
> > +
> >  	  Use "" to disable force probe. If in doubt, use this.
> >  
> > -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
> > +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
> >  	  devices. For example, "4500" or "4500,4571".
> >  
> >  	  Use "*" to force probe the driver for all known devices.
> >  
> > +	  Use "!" right before the ID to block the probe of the device. For
> > +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> > +	  4571.
> > +
> >  config DRM_I915_CAPTURE_ERROR
> >  	bool "Enable capturing GPU state following a hang"
> >  	depends on DRM_I915
> > diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> > index 61578f2860cd..d634bd3f641a 100644
> > --- a/drivers/gpu/drm/i915/i915_params.c
> > +++ b/drivers/gpu/drm/i915/i915_params.c
> > @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> >  	"Default: 0");
> >  
> >  i915_param_named_unsafe(force_probe, charp, 0400,
> > -	"Force probe the driver for specified devices. "
> > +	"Force probe options for specified supported devices. "
> >  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> >  
> >  i915_param_named_unsafe(disable_power_well, int, 0400,
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 668e9da52584..fc1383f3a646 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
> >  }
> >  
> >  /* is device_id present in comma separated list of ids */
> > -static bool force_probe(u16 device_id, const char *devices)
> > +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
> >  {
> >  	char *s, *p, *tok;
> >  	bool ret;
> > @@ -1272,6 +1272,12 @@ static bool force_probe(u16 device_id, const char *devices)
> >  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
> >  		u16 val;
> >  
> > +		if (negative && tok[0] == '!')
> > +			tok++;
> > +		else if ((negative && tok[0] != '!') ||
> > +			 (!negative && tok[0] == '!'))
> > +			 continue;
> > +
> >  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
> >  			ret = true;
> >  			break;
> > @@ -1283,6 +1289,16 @@ static bool force_probe(u16 device_id, const char *devices)
> >  	return ret;
> >  }
> >  
> > +static bool id_forced(u16 device_id)
> > +{
> > +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
> > +}
> > +
> > +static bool id_blocked(u16 device_id)
> > +{
> > +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
> > +}
> 
> I think id_blocked() would return true for any device id if force_probe was "*".

good catch. I will just wait until middle next week to see if someone has something
against the idea in general and then re-spin a version with:

- if (strcmp(devices, "*") == 0)
+ if (strcmp(devices, "*") == 0 && !negative)

> 
> > +
> >  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
> >  {
> >  	if (!pci_resource_flags(pdev, bar))
> > @@ -1308,10 +1324,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  		(struct intel_device_info *) ent->driver_data;
> >  	int err;
> >  
> > -	if (intel_info->require_force_probe &&
> > -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> > +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
> >  		dev_info(&pdev->dev,
> > -			 "Your graphics device %04x is not properly supported by the driver in this\n"
> > +			 "Your graphics device %04x is not properly supported by i915 in this\n"
> >  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
> >  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
> >  			 "or (recommended) check for kernel updates.\n",
> > @@ -1319,6 +1334,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  		return -ENODEV;
> >  	}
> >  
> > +	if (id_blocked(pdev->device)) {
> > +		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
> > +			 pdev->device);
> > +		return -ENODEV;
> > +	}
> > +
> >  	/* Only bind to function 0 of the device. Early generations
> >  	 * used function 1 as a placeholder for multi-head. This causes
> >  	 * us confusion instead, especially on the systems where both
> > -- 
> > 2.38.1
> > 
