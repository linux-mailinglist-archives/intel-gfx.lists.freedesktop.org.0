Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5DB987A2E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 22:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A113810EBD1;
	Thu, 26 Sep 2024 20:49:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IpktnIO2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590CA10E189;
 Thu, 26 Sep 2024 20:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727383756; x=1758919756;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WgkcSglaVg7Ws0860T1L9ikobx3hdAJD5TKpFkM0/EY=;
 b=IpktnIO2HgNssCeXJNJSB/CQejZ2+Il03qPXm8XtmW7xeyMioWz5zBiI
 ST4wDb3rr13o7dyhaWvEzIp7VQfMlzbtbLO8ToLRqjEKsPTUvnjJaKXXt
 DJqyOvgW4d2wKs/mPPOHybYoSucfcYDwrm7SDaOAWSTdnsZ9pHRL1aZpa
 lb8xXpRyX3qtWt39X3B08xWZ3vSGj1n8+fLxNOjsRUZPiyzSRk8kEKEAY
 4W8t1nh1x5kBg3fNUaNTMgVoEN4MYKYvEhDEBM45JQULraWvpk4IFYOWr
 F5KS4RVEKoaG6eNcFZ2yhv55+PHeurI8YsY9U3mcVJQpASPjKm5IjhOsD w==;
X-CSE-ConnectionGUID: Fvq41ZdZSpeRBA0xHNGGjA==
X-CSE-MsgGUID: b3NyPjgHRLeYgc7MC0pMZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26679437"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26679437"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 13:49:13 -0700
X-CSE-ConnectionGUID: SvI4LbwfQgOca9kBRDIRJA==
X-CSE-MsgGUID: XIVEbkOCSK+jVJ6zXrMEuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="73084447"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 13:49:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:49:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 13:49:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 13:49:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Liaug5SqRvkEpS6abpMwwOvaIGjy+9Bku6G66sCjUsKlsdObzI9nuP//UwrachUx+5HOBlW6nPpxI91fPTzDCQuTeoLjfk4wzJcGal3Of5dDxMNG7/SqZt7QrO50sNLohVZxX/XsOYKzDJvmJItZiS22UzrLcaKkkQuxiR7mzgt/QgbjxCGQXLjwQdRUCDqgwGG5JaieLlXuOIFQutmYKU2uROCcKyTOMVI/U7ETkuu85vDG+jvAosU88tAPIwm9n9Od4HSzRhpwKH9YdRwuNkQcwyY0sUdw5B9AsHDtFYnrhA9rp7YC1DFKkmP3SBfuTMbVT3LyjLfFmr74T7Go8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D9g/at91vhWi7iV5io/PJh76OgjdWfVheDM0GtLj6Eo=;
 b=Ylx3KNCRk/HlrEx0mGEISUXoYGDHbZWuuE6HA5qlDbHnDFMRbrAjC8GwaHEI6p7O2nH1Qp2Y2q+qg47jtEAWn4jLkP1nnPleY2M7oDe92ARzDg328nP8sEMB5RMKwQJUAsVBVs/pCsh4kHcU70sXag/qfdH7CQIl7EEEufx5Q0hL5gAGZ8+oBooHo/ufT5UhXcvJxxz+2tCBGIpIYYXxS3yO1Fk0QT0ysszkBVVca2bw1NhKLevZV0tM+Y/TnPi1sZhRL8yPrIqEOG8AlsfUVY+QQEwChDlMM/vI7+IS+QGQ5HuWZnOozbDupXmUJFTelLNsUvvgnhIv9psKHvugQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA2PR11MB4780.namprd11.prod.outlook.com (2603:10b6:806:11d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Thu, 26 Sep
 2024 20:49:10 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 20:49:10 +0000
Date: Thu, 26 Sep 2024 16:49:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/6] drm/i915/gt: add a macro for mock gt wakeref
 special value and use it
Message-ID: <ZvXIwmTfzK6mx9bb@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
 <1da887a6b4fe1ec45355571ea7b56d91fadf0af2.1726680898.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1da887a6b4fe1ec45355571ea7b56d91fadf0af2.1726680898.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0032.namprd03.prod.outlook.com
 (2603:10b6:303:8e::7) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA2PR11MB4780:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d8a8ea2-e54c-4745-ab39-08dcde6cabdb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+yiNRucMs5/nTjBPKdhZVw+ZC0bZJ0TTIPn22vEwcyo/nkWwv3tR7Hk1HHc7?=
 =?us-ascii?Q?+Nl581kdfrjVTpfOpeq1CzqVnSoyoTyWXnDV9WdIXxT0EB3Sl29swVQpBFzh?=
 =?us-ascii?Q?dns7hukX7kh+FvzkW+w4N5aTfWfQ3D/j3lxh8LlFMiDTASRn691FI0z4tqOV?=
 =?us-ascii?Q?ViBWRgiIMsOYjfW7t5t7PbL1qLiJe/KvHV2Hzn/oBnhgD/zAwSEjs1joNGlt?=
 =?us-ascii?Q?ocelA7bqtHGruYaKVauDPSs41d0oU9Vq3dcPrFfh/VNcaJqaVxYNnazx6a63?=
 =?us-ascii?Q?w6dFgfcffp4rozHLBvIPSeFolXl8BbvrzYJmLh9gJa+yzFE8WLGAtzyBvp82?=
 =?us-ascii?Q?V2RyFaNxR5mO7Or5VK8NcTAV01aS6tm522J7fhQbSHsOUd0GIENvEiObNn/v?=
 =?us-ascii?Q?+VBfZqpjjrHU3iZou2T0Dl7bfxz0cu4XkD4nzz0vM9Kg+2J26Y6a+1J11aBf?=
 =?us-ascii?Q?VSmy31D4I1oWhNFeTj+1qLVPPBwhclLKb2gjga/FFMtBEu/0ijxoaK3aAjgb?=
 =?us-ascii?Q?EyXRSXgt/BBMzf+qpblnWQ+ZT2sniplLrDQqkJF92GSHeP3EdX5HATwNfCXZ?=
 =?us-ascii?Q?Wb1WVCme1UG31Z+htu5xTRmz1ujtnUacKMcMWb6QCx867dbBi51k3YXWOHNO?=
 =?us-ascii?Q?pzsx26gpXokn5CT5q/8A+1gpRjtwXVyesa8Q7FPCOgBTM0fox9bSa/jkB4Kq?=
 =?us-ascii?Q?5BYyfzwViuh/bHNUKWSEk7HZxHlYCG8QB5OX4zopv9EFQuvBjLGKJWWsdVW4?=
 =?us-ascii?Q?ml3RQPAz/A4ZgaNqKlNWF72isBoN0r3urX3U2I79viSJA+M8EI9kyD+X6Wep?=
 =?us-ascii?Q?CdEqYGOeBReCtPGKah+xvj4GIThigPn4h3OdlsHimqzZgtWdlqSVv1HJPfqL?=
 =?us-ascii?Q?+wCqgah7TRUnKBkRpyseDZ4S/GmhPubSi6SANf3gVhBSWtY9LLZ1eFRgbQej?=
 =?us-ascii?Q?UY47NB+pgrAGWTYRqDSSBEhy6UZ6cKWY9SSCX3+wrYNUBwl3+NgxJBlz9mds?=
 =?us-ascii?Q?hPN722+OgMj0KjJGB/8OKKzqKU34PrHFJnqNQRAfliJ59vrhTo+f8vIs2k+n?=
 =?us-ascii?Q?j7xmt+SOh6/+71P+HYoEAC2bvKqp6loNLhWC1bYNmX6zAbRSVAAtlP0rKez0?=
 =?us-ascii?Q?R4XzQdCQBL8oEUmz30zxj0eOUmcR6v2kwsCF3VSirIrzAvvVMUG2OvOADwtr?=
 =?us-ascii?Q?R9Dqm5+RgXf3xD4RTCA7mPjhlDskeKEuznN0sdmmgxrzTzbYyosnKS9Ny7+T?=
 =?us-ascii?Q?ZZnmTyzuzpIATK7vqNN7MaH2FlpJdsd3MhrRN2rliM94pha7PIG4mh2/i2oq?=
 =?us-ascii?Q?NGJKpJL/0R2g1IwkdYfcQle6mthXQtqbTys8tCzu8jNQGg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fJpOFNhkTwNd3EQNwCmI3DV5cAAXOIhiKpuG6I03ZTh/amShPvrWhcVPIyP8?=
 =?us-ascii?Q?+I5MkjaIXPfS8gmQc4I4ftLLDqIP+Z+izN+Fp2o6kV6Q8pTqs4B1FRsCLv1M?=
 =?us-ascii?Q?bsgv6RADO6Fpe29WOxIrc5qam4pjaEFH4/zKMLmuoFRLWjVJlQ7FOCATNevf?=
 =?us-ascii?Q?O6YHOHjx3BO+XBY/Mt7txXx/4jg3p9MEV8itp1OYJlhSoQxIzrdu/mensTao?=
 =?us-ascii?Q?q30pHYcUyfnLBaabEuV+liqfE/rs9MNeu8Zs9gcGOlPkf37ctZNdGx/QjDrq?=
 =?us-ascii?Q?nzCbrmio9mqnlSrtLzhrKgvHmU/lkSXbf6aM/fBpmLxRt41G71sVM7x2mVph?=
 =?us-ascii?Q?4ddkcemC36I/ngfyt2xgjACD3JHqksIDMojd7vkCjWKeSU0BLlSblvPUMxwY?=
 =?us-ascii?Q?4dLGrT1hvd0XkVcVCgJVh8HnI256lxxx0ozO4/cXKBk7nVSXBAyTsvA1F7os?=
 =?us-ascii?Q?AxCAfGflJAcs3IHB5B/QbG8OV4MiwYhzuHr5nfqbxr8g8v/bBGvbpCV/Rd90?=
 =?us-ascii?Q?eW1iKkXF7PDMHniuVmU0ct17xwwoYsmBYJPUWF+NpCuODUaWdGJXYfKFClhD?=
 =?us-ascii?Q?PLiTGZF5fiRgIbPJ5VeoZyP5x6DZ9PDo7oC51mzqCjGqoroAkeZfgZtaiB2y?=
 =?us-ascii?Q?sjG1o2Dg0GlXnfjkhYUyCHuuPoOX+IP6QsnZZmQSEkdsy1w3PBDGFi7ImY41?=
 =?us-ascii?Q?kvFxac4Nst5b+JVQLV9LfOUrHFipI7TNaIiHtpyRGA9zGS7VN6rH6qr1cN7F?=
 =?us-ascii?Q?CIJzqXR3XXl28Tw/6rN0xOYKoIddvzh/Of488H48oTY3W8Ty9vf8RVxRDAC2?=
 =?us-ascii?Q?dOZ6412OkgOS5+yPevXnQ1t60uQI5ICFqsSB87VS64Flgd5Y5jj1hHiBYFvq?=
 =?us-ascii?Q?2xIc2nD3KG8MfZgauERWiOgk4tCh7T7bd+1GCgzLWuiBl2WgrLxP6b3xHf2q?=
 =?us-ascii?Q?5qjqCwDOptjQtti0KZYj/mECRS8sO+TMO1stscsmSP0FZc4Bzajy+4sEDiB5?=
 =?us-ascii?Q?HYqwLrCCGhrkrwCNElh/R4HtpvqSc6kADv/b2kFS5v63OCq+DsWiBwZRhjsQ?=
 =?us-ascii?Q?9GURE1u2L6EBCXwNaISlCjBVTTX2kSUuK8Z8e8Sb9UKb6nLaYtfrfwvOmYrE?=
 =?us-ascii?Q?9ZsuVXvzpbdbiTgOZjFk27lIHe5crZYYtY92P56nP/guNczAklhmPwsJf55G?=
 =?us-ascii?Q?6Sj0hJwhLibF2mHHRyn8qWNm5+BoO1smDqMHC/rh2A8pGxABtkpzR/XLdIw4?=
 =?us-ascii?Q?Opv2NfV8pSGsFkWdp3z2i4px73IOf6fklHHCuPtSp2X3OlFkuhrMYi7QlTaH?=
 =?us-ascii?Q?KPRP1/wiVo5oXUUCqrlyG+YKyEZ3kCIhtvBCJOLpNfxhccrwpbhVBs+2nxJG?=
 =?us-ascii?Q?h/YQCjqZbYCJ/fbI3VKrHDSaOwICOzXLADFtonx/UfLLqpflM6gCI0ym1joO?=
 =?us-ascii?Q?gUR6tAHqkqdq0YjC3A7NbAY5ZG7jbYFOBMt305eq/zc81MkPmHlVcfmGlVu0?=
 =?us-ascii?Q?WkGvvc8GnZN7uFu256QJMxC8BcCiIjM5XETWH89yQ2H1T4wm5LWim0mlzzHM?=
 =?us-ascii?Q?fzGMYhi5y0xyMuEWKUgVRdjvDQdwgDWZDrzXkfOSfMaG1t7uLo2x1X5VY7N3?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d8a8ea2-e54c-4745-ab39-08dcde6cabdb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 20:49:10.4699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2n7qv8HoOEcqg54qA8YxrycJWKIwb1Jj1eZ9eJ5UbH/cwRUzP39SYfFIXGJAb2Z+SYAT/LHidv2YxKGaGwcSgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4780
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

On Wed, Sep 18, 2024 at 08:35:46PM +0300, Jani Nikula wrote:
> Add a dedicated macro for the special mock gt wakeref value, with a cast
> to intel_wakeref_t, instead of assuming you can assign or compare the
> wakeref to -ENODEV directly.
> 
> Arguably the whole thing is a hack that should not exist, but at least
> make it slightly less hacky.

I couldn't agree more

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Side note: If this value were to ever end up in
> intel_ref_tracker_free(), it would wreak havoc.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.h            | 6 +++++-
>  drivers/gpu/drm/i915/gt/intel_tlb.c              | 2 +-
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 +-
>  3 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> index 911fd0160221..fef8d5d288f8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> @@ -105,9 +105,13 @@ int intel_gt_runtime_resume(struct intel_gt *gt);
>  
>  ktime_t intel_gt_get_awake_time(const struct intel_gt *gt);
>  
> +#define INTEL_WAKEREF_MOCK_GT ((intel_wakeref_t)-ENODEV)
> +
>  static inline bool is_mock_gt(const struct intel_gt *gt)
>  {
> -	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);
> +	BUILD_BUG_ON(INTEL_WAKEREF_DEF == INTEL_WAKEREF_MOCK_GT);
> +
> +	return I915_SELFTEST_ONLY(gt->awake == INTEL_WAKEREF_MOCK_GT);
>  }
>  
>  #endif /* INTEL_GT_PM_H */
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 756e9ebbc725..2487768bc230 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -122,7 +122,7 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
>  {
>  	intel_wakeref_t wakeref;
>  
> -	if (I915_SELFTEST_ONLY(gt->awake == -ENODEV))
> +	if (is_mock_gt(gt))
>  		return;
>  
>  	if (intel_gt_is_wedged(gt))
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 70f3d7bf47d0..ae57eb03dfca 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -203,7 +203,7 @@ struct drm_i915_private *mock_gem_device(void)
>  	intel_root_gt_init_early(i915);
>  	mock_uncore_init(&i915->uncore, i915);
>  	atomic_inc(&to_gt(i915)->wakeref.count); /* disable; no hw support */
> -	to_gt(i915)->awake = -ENODEV;
> +	to_gt(i915)->awake = INTEL_WAKEREF_MOCK_GT;
>  	mock_gt_probe(i915);
>  
>  	ret = intel_region_ttm_device_init(i915);
> -- 
> 2.39.2
> 
