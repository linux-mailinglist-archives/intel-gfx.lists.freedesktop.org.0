Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB1C5893A7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 22:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0200011ACA0;
	Wed,  3 Aug 2022 20:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D56E11ABF6
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 20:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659559934; x=1691095934;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hPFe4Xj59pGZxA/5qbvfbB2LfdKCUiqQ4RtxQCna7W0=;
 b=oFDi1uDgCSddO5PUEBbNAVQkjWS40U40MJeDm7Wzs11bH2CCWJtlBY4j
 eI/1tKgXNRPlQxUQ5rFI6ms5B6tcGRnQT5HvdCU+EiO11ruK2bI4rEpQw
 GjiXzF3N3hfsIrcCXODCxClyPyrxe0YD2pMzb6JN1sk0olgKa3mmXzakh
 f//f13DYAH6HXAzKXgH/Ea4b0EpoSeDKnAuO65YsyG26zPyrxauUtlrVI
 31Hpcu4/v2P6fYXYjJ+pBDVPFNmiBXgv7bJCVQCk2TJyHGdE8zfycqffY
 xqbNmisYjOui1mx1GV8FTYuVeigkdLZhrBTZfmEkk6j39zs4yRAaDW8PN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="290992940"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="290992940"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 13:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="729346809"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 03 Aug 2022 13:52:13 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 13:52:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 13:52:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 13:52:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGSadkU9lKdjZOBnmdtHUWhDXLw375T5ROq9FkweIE2P/i3W+AjPn/oEoeNUIMkaHV558HGCEccJoTkNwuLNKwY+hy9FhquhcBhBF+bvZEBi9RZFXTAaSX5Xuir8uo844JHFbXNPRzyudT2GREsvu7EbrG1ZnOAwCu1pqgvNkqS32iX3enRHXKF42ocP+AI/L1xxT0KCuW4Iw2ZUZrVHG3S92/aKVXDHqTUf6xGuMHQgrRH7SjYoK48n7/5tDf5aM1yzcCTBU3UU3sfMUnWT9x0ctsLlT2n9bknHgoWVWY3hFoLTn1CGOpnGI3SNHSMzAbQdHH1ssn71yHchSutJgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r8P2pDasy+nAXVdKG8lMwS+KatTiZbq4PkjQd55POn4=;
 b=WSz6JoipE+j5MkBStOH+YuGngF4LMXXdG+d60Xs7t9chH41u6eSNFojIyCVwd1N0GjLwPgTl46hoFUnVr6bFUz30VPjDIY6Zin0X12Fsgf7JAoWttOhYh1wgOrHxTy86uhW5ig/JuMjKpy95HC3euYS4nmdH80Zif2IkeBHDd2xLTIGxRfBPznaJUya2GtLtF7AJwzljM7b18vq8Oc7EDLRPKjy0YQxQBx60PzTVSrXKMb0MyD7Yvk4wh7TPOnYHfm9C+cfI8cZKgUMKpjjACJnXwtnlBE+ytpv18hzXmU5Fw3oh9yDEFsnau3T8JHkBlJXMETHpuHt5n23W6Ap3gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MWHPR11MB1566.namprd11.prod.outlook.com (2603:10b6:301:10::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.14; Wed, 3 Aug
 2022 20:52:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79%6]) with mapi id 15.20.5504.014; Wed, 3 Aug 2022
 20:52:09 +0000
Date: Wed, 3 Aug 2022 16:52:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <tilak.tangudu@intel.com>
Message-ID: <Yurf88BkR6dwO/ad@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-6-tilak.tangudu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-6-tilak.tangudu@intel.com>
X-ClientProxiedBy: BYAPR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ecfe669-4ee5-4271-78bf-08da759207f4
X-MS-TrafficTypeDiagnostic: MWHPR11MB1566:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZOqSwe9S9v5OgRLUFezHXdRI53WhyC81lhVGOAyWBxeBktbHvKEWExzb/jaBCKj7NxPyREi6u1Igp3KzCMAtdukt8uA9H9JL0Ccris/hOFbXR/Whj7lCA7QKVanheuodK8TJi3GlyOr+D5o8YATyvfhH+gjRdlG5p0tNZ/aiNxlWU+xfFY9bLLrX+VPROuWa00AiyQEDWioNKNhHKkRHubYhi2l6mp/nEpn0wi9ntsqWwYRDkxwJX8j2830zWX6sqMfngq5C5LY/oNJBR6VJVbfQhBcZJQ1btb452bMtLrlCDcZRtwZTNNEllx13RJJaF74dFSqNeC2Uy870yb4GiiQC0GOHIvI/1AD85zKRmOif3+UXkSaj2Vkodxv+3LpWYvaKqrxpISGIugN78Gwql0atIw2g80FyLcSHNol1unNdXYZGToBuv9yxfLpMqSa5NvrQbmcXuhTTbCTM05rm5t5ElNUzd2tO5Vhhbyl9uMtN8+D3HjY0/jZ4YaJQXLeI/UXZc0PHP7hDRi6yPe3kDUcHIIxT+2VCnX6hDO8Yq7Aa3Ovz3OIkYssVvVUuHcq/CLzs+rjO0+SUq/N1Q2zxLAyViW6Y74MfRIW79KR7CVXqMy7cS7l9aKR8BtPYqNO+UK1VdckqytgV+W/OEyAMtS5GjtZJx9pO5IiJr+H/oIPAOKhwXeLlaXLxtyyAbQCWF55nUYW5OYXUaXQ/xu/bxa5Ii9VAq882ID8UNuQstRwuB5JdxnBCoO1BQVgGSz1r
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(136003)(346002)(396003)(26005)(83380400001)(6512007)(6506007)(2616005)(186003)(8936002)(38100700002)(82960400001)(86362001)(6666004)(37006003)(6636002)(66556008)(36756003)(66476007)(2906002)(8676002)(4326008)(316002)(34206002)(66946007)(44832011)(5660300002)(41300700001)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qZHyQGEGiFd1ZMlvCe85VTsGeW+4ExS73GkbtPms9ASUavoSetT10DQo3/Jo?=
 =?us-ascii?Q?CYBRaFN6OIGzB+vqQneryOZZy0BPnO+B3OuaMgrLFrhciCjddEjmxw0gZApE?=
 =?us-ascii?Q?aVKS0Pgk3X2SYm/vwJTBWjGBItzB8HFT1tf15vdATRkQUXv7ekbQv5nSajKh?=
 =?us-ascii?Q?B/vn2+N30pXlgMZ7zycDqUrg0YUZwMw38dj+FojL5T3vnCdF5Bm7R9pkuibO?=
 =?us-ascii?Q?wuMQX/V02ktx2SJ87suE16sVybUKLtKBDt3s4mCFf3dABiHOrdzjTCjkW4ro?=
 =?us-ascii?Q?wXdoCRwS7NnpOotZzvckVpCB9mJjgLOcBLcX3h5Y3cIVsftkSssT5GcVDMKQ?=
 =?us-ascii?Q?+JHoq/sKAMxvKzUbLx7Zn0kqjwxS+FeqznqEjI8+BRV0ADvOX9dI6rdrg2wF?=
 =?us-ascii?Q?tWVKqx8SxIA5/raV/1IWu5W5AFKu0MR4Bj6feNwRJWQj0RJWwKM8tXZs4daP?=
 =?us-ascii?Q?AwGooBaSGByoeTLG2wTZVspRyG+NP/+CU0riRNZJXlbEsjxM9pQyNcnjGsxT?=
 =?us-ascii?Q?yflN2gy9o13kYD6Leqe45l40uWG1hJIl+32NogbSrfRERuHZNl+W1Cbr7LW1?=
 =?us-ascii?Q?PpvaDr7+80MTaYlAby4nPaPpQmiKHW0/xeOP2htdgOkMXx2Vum9Y+NWeKB8c?=
 =?us-ascii?Q?sn0za7eLaTRxNuPODncMr9kDJw266eFJmwE49m8D8Cm60l4cqBGUcf8fbj2D?=
 =?us-ascii?Q?etFnQx7E3pLh4knLKlHfonsIn3DJBub1p025pGE4kFT3C4ODxd+U0k1B5SY4?=
 =?us-ascii?Q?3S5fHgCwj2u5YsrIz8QOhzxowHpcraspOVfHm+OqiLdBNCs8c1D6LkyaUUjE?=
 =?us-ascii?Q?DfsXHLB+/PeV/8vwbOeBFpWx0QNhQYPDNQ4b2kr98VBmcfD+OczQml+Ywl/+?=
 =?us-ascii?Q?0/m3rZRy4POqFsi32UmkW+PFAdaljSnVFZG1hBLwUBCqkJu6HRqLynZGj1EL?=
 =?us-ascii?Q?5lijTCI23HaTTnHacO7tMH4yVyi33+T+5eYOWD7bdE77mgoDaez4p2u5cg60?=
 =?us-ascii?Q?OrfJoTQa9cQqMIwKgPU8vhBwCSzy5Rczai2A0ACc6R15BUItgQAJ6drC2O+v?=
 =?us-ascii?Q?/+VNKcKBs1o+BYYvlQQ8MHHrnah0kuuN9SjQimIIhGPHtX09ovOfsO//z+RC?=
 =?us-ascii?Q?nPFkK4JplJoJHscnGaYLusNxh/O+ZWq8jqFWkAS3lso66AbjBQTsm69kLDqj?=
 =?us-ascii?Q?luSLQXx1ZO10eIAaWQ19l5zugGxzHskjq4Y/RXYrtNWZkJlRt2vPc/Qiz0AV?=
 =?us-ascii?Q?VqIc2AI6iLZ3W5FbLyfFeq+tbBLV/Hm/+a9MffINAkmVeuGIe6jjFeWkGdHe?=
 =?us-ascii?Q?wsBi7tc0jnRHfEgKZoqu+zcuEPv5O/Btbt/hXCa0nAgeUJv3vnAdG9FaQmlC?=
 =?us-ascii?Q?67Z/2vi9omOtIJO+2Xdm2UVmZCU6iCun//zc1WX1sg4/C/me5MXFZ84tRrex?=
 =?us-ascii?Q?My/0RFedC+bAuKgaTNqxL2wh839j0HXRTCphI1BIaQWhEzSULzHMibpJzqko?=
 =?us-ascii?Q?b6ID5FKKn/HaQFuh/0tdBNiiuGQWOHbdGNgi0Svr0TtBtZwbudXa/VOzzbJZ?=
 =?us-ascii?Q?JDeHq9iuXF6PX2nFRvQI8rp3VqBgl1/SNytjriCBwytOHUSxYMCHSTTuGCsH?=
 =?us-ascii?Q?DA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ecfe669-4ee5-4271-78bf-08da759207f4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 20:52:08.9233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h4ikKE2g3bVvTMIy98tcmRAOJ+ArOe9RgQIfv9eic4XwRzBdC3j9mBtuQp5UM3yNv0yhKVjlPJq4uKFNcUN9Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] Drm/i915/rpm: Add intel_runtime_idle
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
Cc: jani.nikula@intel.com, chris.p.wilson@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 21, 2022 at 03:29:52PM +0530, tilak.tangudu@intel.com wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Adding intel_runtime_idle (runtime_idle callback) to prepare the
> tageted D3 state.
> 
> Since we have introduced i915 runtime_idle callback.
> It need to be warranted that Runtime PM Core invokes runtime_idle
> callback when runtime usages count becomes zero. That requires
> to use pm_runtime_put instead of pm_runtime_put_autosuspend.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c      | 12 ++++++++++++
>  drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
>  2 files changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index deb8a8b76965..4c36554567fd 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1576,6 +1576,17 @@ static int i915_pm_restore(struct device *kdev)
>  	return i915_pm_resume(kdev);
>  }
>  
> +static int intel_runtime_idle(struct device *kdev)
> +{
> +	struct drm_i915_private *i915 = kdev_to_i915(kdev);
> +	int ret = 1;
> +
> +	pm_runtime_mark_last_busy(kdev);
> +	pm_runtime_autosuspend(kdev);

oh, I see the ret = 1 like the other drm drivers..
do we really know why this flow and not use the runtime_idle
like the rest of the kernel?

I believe we could use more the runtime_idle to block the
runtime_pm, but following the original documented design of it.

> +
> +	return ret;
> +}
> +
>  static int intel_runtime_suspend(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
> @@ -1752,6 +1763,7 @@ const struct dev_pm_ops i915_pm_ops = {
>  	.restore = i915_pm_restore,
>  
>  	/* S0ix (via runtime suspend) event handlers */
> +	.runtime_idle = intel_runtime_idle,
>  	.runtime_suspend = intel_runtime_suspend,
>  	.runtime_resume = intel_runtime_resume,
>  };
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 704beeeb560b..1c3ed0c29330 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -513,8 +513,7 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
>  
>  	intel_runtime_pm_release(rpm, wakelock);
>  
> -	pm_runtime_mark_last_busy(kdev);
> -	pm_runtime_put_autosuspend(kdev);
> +	pm_runtime_put(kdev);
>  }
>  
>  /**
> -- 
> 2.25.1
> 
