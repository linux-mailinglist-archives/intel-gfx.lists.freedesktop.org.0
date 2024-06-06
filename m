Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7CE8FF0FD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4789510E9C5;
	Thu,  6 Jun 2024 15:44:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g17cMCsY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D705310E9C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688648; x=1749224648;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WKGRwSf/8cIEFITGEB4osdjWkahwOzhxpDFXNyQGZc0=;
 b=g17cMCsYRrHk7pbf+n2Nh/kvq5cq5VYg01iOqCTsoWL3yFhCFKV/bTfW
 /g/ljE8F+n+X0iN+Udnob7BG4fd4eDZL9zQPsNPkkbp3dhM6u98cZwtqf
 DlgaRWZKezb5SHw1x4x/8Bynd67+U5mx5jLeSLXF8AVxWSycQMN5y20Zc
 dUeNOP183Hen8TFzjTMiDavrpjgwu8w2BXhy1reBoc6Gy9n0XNh5imMJe
 89B74kndDU4LbsHcmJXPqB+x6qa6Y21R0p2Ka6o0Dp4naCpMhsh6Q2lCm
 MY/wY5ZjJqY88eWKv79hXVhXvuMBTi36X3P961D0OFCGlVcszdzBTk7v4 g==;
X-CSE-ConnectionGUID: D+MUSadpQcGwogkUScdoSg==
X-CSE-MsgGUID: wWSfXPKURIWZ6dCBhT/LxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14251395"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14251395"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:44:07 -0700
X-CSE-ConnectionGUID: 9YLhMXrQRMS0ZJzDsLakog==
X-CSE-MsgGUID: Rc20Y2nmQB6MViZjxRBXtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38078102"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:44:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:44:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:44:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:44:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:44:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HshjkdO93WbFt7y/o7IVuIMALEYL7bjgmyz+V4LcwyCnLzgFmgmB98UtvX7jXhArKrCRkaB71+xd1VLW3wvFzmI7J8Sr/Q5+v/kEfp93PYMpyJBc1t8lJb8TQ3dHL0ccDNVw4JHF+PIpMi2bq18SFmW01t7r2Jj1B9aZX2t/YL3okeJWvW63NEKGqN/z8BSXmtM5CvqoMHrvBgfGaD4SuKMgpb+oobREW0Uf5CNAo+roQTe3EZnGoY2yxag8u79+AtCsj6r8RFk0Zb1xy3W3zvQflnJ1lgvQRC4zKB2JD7WNFwtab3ra9/40RcvHkj+DvkRx9Vri7U6qPXvtqs90cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R6AibI4AKCFtPhHO4BDu0Bd3Xn6ZtAqZl4Btzf4P2iE=;
 b=UvLgtHx/BoG9weHT19uxq40DxIAeKtl7qRlsM5AXaKAyizuSeoY60m3QvOEaOGOSTwAaYIEi9mHxGoMkgh0Qrq+uI+HwWyzfMOPn6tuLgc+xKphBYZIr+0uvIjP6aiMJkD214FNS7cQ+QPXCB1oKfqYnfkSBGT1dewHADWZdKkh0d8qdgmNCXd7QztRZhHxVtMEk7NeslZBE6MHbithjS0Y2rTkK71rpvUKtO01GdHlNDu4TI0Er3pjFaHoR3KKZRsSqBzTJ+R671Hc3YqnnJUtjO4c+wnlE6M9ZXrrggen7VEmG9zD6Nd9tDlMSZCBLMckssaYzv0T7Km8iC8n/lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:44:04 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:44:04 +0000
Date: Thu, 6 Jun 2024 11:44:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 22/65] drm/i915: pass dev_priv explicitly to PIPESTAT
Message-ID: <ZmHZQrCmCxAsrvHO@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <8b18a1e77ccfd451bbaee80b6ddb23bdbc479336.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8b18a1e77ccfd451bbaee80b6ddb23bdbc479336.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0105.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::46) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 96fe5b16-2ec7-40ff-d2c9-08dc863f7e94
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fpRbhIXC4hRM+/JPAQCpblZen8eE+oZxW3QYpvCPxP8Q34Xc9uAssNCKwZhG?=
 =?us-ascii?Q?cXEq1g2SES9jrTVvZo2qpAI3UzVVMKpoazCOfOonu8HSHVaZU9xZtdmZ2vB/?=
 =?us-ascii?Q?b1ZAZ1ks4xnXcrVRiqNRFQwM/nz4ysrqQKe6VRrJJstvwhZn0TKcDMQmbNCU?=
 =?us-ascii?Q?0iw+qWVg0mJ28yVvVn/i5o1lQZ8Hm6wrngiJkYX8cQ9A1Got/J+OR8OiVx6N?=
 =?us-ascii?Q?8UlO0JN26AbAX05Mqu66SDxGEwq3PQpuA832QYPRMjg1x5aoDUeb7/gvFpSD?=
 =?us-ascii?Q?dIXKtVVzMyyU63+xJq1dJT2H5fJqFnWUOcOv3F817rYmLZZnaC++0zpAf/Ng?=
 =?us-ascii?Q?CgWOra+7cWu63gTURaSuR0wLZjMaVlIGJeHMUzKKtsjxt3jImfm7NQYdnnzk?=
 =?us-ascii?Q?eWEkYCRZYPIaLo7p3Qe3t+OKSRvQarZ1VFRNSOXh0ISu+xDVgX7AwYDvMLRv?=
 =?us-ascii?Q?Bev6EuwTDpsZlznnOWF4AHLhoCoJjZfeimej0CB3IaLdatujHDE9GP88UY+R?=
 =?us-ascii?Q?Crn0QepZGTkWThk+ZvGESU7hOS76lo/6yIFFPgMV3G1ncRvscotw2NggllOZ?=
 =?us-ascii?Q?BAbLKf0kN3b+gbMpYVecWBAeJlyrtP+svJK8oC5fqCpQlxLPLmIsplkSQ4UL?=
 =?us-ascii?Q?yS3FpASaO4tiNiKEFkbZlmu5DMN6JKFhDwaMH2joQSS0s/xl9xjBLEI1LjnH?=
 =?us-ascii?Q?ndWHWn0UCQ1u4Wjzma7U98ssO+IJ4rMPdWJMDV364gT3FsXe7yVWSQb4Z18k?=
 =?us-ascii?Q?Ihae68m7yXtC7aFf635xnXREKI1F/inhygkujSyU0f1mxNFwNV7A1SfQ+PkH?=
 =?us-ascii?Q?u1VNvwz+27FV7yDQubHV7XCdTG9hFhcRyH9npyow8/c6Nfovczr/hp0ssAiI?=
 =?us-ascii?Q?v793TMsl37mn8Nj5A+vQmI6b48exu/JiDL6oyn2VhV2hkFzmIMjd8iPKd/K6?=
 =?us-ascii?Q?W6rRXbUSPkFOgAPpsHgj6+9Y87SiyFAz78j2Dg8w/H5qRitqrzTdOND/gWhw?=
 =?us-ascii?Q?ghcEofMvsqbZUYwwf+0oVzDvDYd+cCuCa0gdPtikHKFBLjGgK/sro3WvRWfr?=
 =?us-ascii?Q?qaW3EuQvKDwiZWYLPD/75oH0MDhoHjH+4eMNx5c9oBj4+4d8tbS1kR/Q+elX?=
 =?us-ascii?Q?ZxT36bOd3Nt5OpJy7r80ysPvfRoVo7afxdgmDOC+SRXCsv4gj02JwRtLAAyI?=
 =?us-ascii?Q?k1pSbVcu1mIx9VKxW2POpFQFBlex0panS0SyofjvcBSFeqCLyhbGIs40pUuf?=
 =?us-ascii?Q?WIf9wACl6BQecVJ45/Qj1FGFBVdgAv5en4NL8gMJjm39M4qS6ON+124NW87P?=
 =?us-ascii?Q?4EsHQ14dyemXEI5KHvetfvWr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xiAfm2WXiWsn2fxdXH6D6x/B+BMHCFNCI+eiTyHDsRaKWheq9FTZKXynNePK?=
 =?us-ascii?Q?f2J9kEu+KeQbAuKhUIr+MQFU9XiSMoP0RBw05L1pml8jApXTIYcE1fkrMvq8?=
 =?us-ascii?Q?fK4XcuJmzw/AwBzrbHcyWrxiPpsqSM9uy588/MzP56MwXe2RnbnyBMwoZ9jb?=
 =?us-ascii?Q?LUOBa8nbDuTErX1tv49tdbtM9prKRleNTuDu0QSPaq5ItDsSVixOOcDzcNm9?=
 =?us-ascii?Q?TrWDJGORDIQxST1S3u/zOsOnLAy9Pg8fjeK0BFAlVRULjvL9MjpOK8pgZjK7?=
 =?us-ascii?Q?hKm0pT73/AmI/05Cu9peiP04xAlYA41eqolK7QOZlAflIs9Cd01Dvz0oAmuG?=
 =?us-ascii?Q?1JYaFE2gpgSYTJ1lkfMWxwyJ09G45yojgnUYgTMI5VZn3FQe9qSvdS4SYZyy?=
 =?us-ascii?Q?aOu/eXMXYOVxA60kz7sgm/Oz9yMgJmYXILwUd8c4rYupDQ3sG2uTOagEX7UH?=
 =?us-ascii?Q?A3Z1Aq+yRVP4WDFA8hm6HFLDaDtIfy5PNNC2WnPj+nQBAmx+YFO2e/FVs5/C?=
 =?us-ascii?Q?Y10UnZ3VhQEPPU/e7rsay7/Y6BSN35Q57rTzPclA+igFoWHtzgVzICcZaiMD?=
 =?us-ascii?Q?CCWENFjD75ncfLym/r9tKuUX6xqcxrorRezdsVs8UQ/4u+Qus3AsAlb6AE+X?=
 =?us-ascii?Q?4Ui04lEtxEttq0Hwmq8fmuQWleV+iIsG1rlbNHDDG6R7uUrvnWHHQlvG26HW?=
 =?us-ascii?Q?W7yU5SBrhz0p17uyZuud/O2JQXjqFvknNHHx7qdYRgI5oPLxi92T+Weqq1I+?=
 =?us-ascii?Q?P5B3wG0EQ5kN3etLdMA4lIQuoS13b8sj0otat/tLZP3PdqyZDFu7PMCYLIBX?=
 =?us-ascii?Q?hMhYtodmzs1uZtQW7u86O+djceZwUgNec6fFZFMMQt8jf29oRIxGBr3fGoGZ?=
 =?us-ascii?Q?GUYDXI9BjiZDCrQqvDk3yOJK1pqWY3iAd2QOTfmEZPSdolEZ81Om/JbQz6te?=
 =?us-ascii?Q?z9IHwB1dOiqgApvMr2+fbWFK5ja5mrsmTZhZsrRAxKlzzB+TJ8JmiEDiRJBu?=
 =?us-ascii?Q?KfW7Gm8vPy0weI8nvnE41YmgsRfiC+hh5hJLqLQuZY+d1nG3WwaVPI5AoctE?=
 =?us-ascii?Q?oWD99eFopZhLML0jjfozDi54I+vVgx6eh/tahnd+HT0siAhlMneSVnfXjqBi?=
 =?us-ascii?Q?LIKFaW0wVJyvRj4fGoTQ4o5m/JWWhlTZMYeZcG4kSlyhAwqOCclbUuCnvZwc?=
 =?us-ascii?Q?owis4QxsJFDs1xPDkPx9rkPTNTV3EVUN6tiWVzg1rYoBHTmgf1cO2x3UasIn?=
 =?us-ascii?Q?UpYdJg2vH3rku+jv90gJ2vn7Ubu4bJfRZDT8Ihb8DM+bIEqxE1tWZt4yphw5?=
 =?us-ascii?Q?ZR8gV3ojF7icBtO+g5cis2PYHQ3KzMPsECcer48VWEEcAnUIUVqe/4WJdgpz?=
 =?us-ascii?Q?6SbnrmKDfpHs411uW82YsGaYQiWlvN4Q78I8OJhKi+i13YqKyEOxmBGCvxUI?=
 =?us-ascii?Q?osDjhPU+4SfB9nntMSrQRamIdNoU/BHxCMdTVuHCEJ+h3TbBH8CmaLNEvma8?=
 =?us-ascii?Q?RJEaYYKDpsQEJ82LQZ98HOsS3U1ZF1mFcaY+HQHGPZZ6fL2wgkFYARKhjn+i?=
 =?us-ascii?Q?dpzz7l5YZKRfMxci9tFhiIjNky5Ue7CJwEVjbEu2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96fe5b16-2ec7-40ff-d2c9-08dc863f7e94
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:44:04.6393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vo3wmcAX051u1Eq9iljP3BH8xSdOFfE60Hc0N17e3vf6XeuDdANvvNUtX5gvx+NH3npjJ2CcDxa68M3t1IYj7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:40PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPESTAT register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c   | 9 +++++----
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h                    | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c        | 8 ++++----
>  4 files changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index be5b48861baf..76bba95410e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -224,7 +224,7 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
>  void i915_enable_pipestat(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe, u32 status_mask)
>  {
> -	i915_reg_t reg = PIPESTAT(pipe);
> +	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
>  	u32 enable_mask;
>  
>  	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
> @@ -247,7 +247,7 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
>  void i915_disable_pipestat(struct drm_i915_private *dev_priv,
>  			   enum pipe pipe, u32 status_mask)
>  {
> -	i915_reg_t reg = PIPESTAT(pipe);
> +	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
>  	u32 enable_mask;
>  
>  	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
> @@ -400,7 +400,8 @@ void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
>  	enum pipe pipe;
>  
>  	for_each_pipe(dev_priv, pipe) {
> -		intel_uncore_write(&dev_priv->uncore, PIPESTAT(pipe),
> +		intel_uncore_write(&dev_priv->uncore,
> +				   PIPESTAT(dev_priv, pipe),
>  				   PIPESTAT_INT_STATUS_MASK |
>  				   PIPE_FIFO_UNDERRUN_STATUS);
>  
> @@ -453,7 +454,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
>  		if (!status_mask)
>  			continue;
>  
> -		reg = PIPESTAT(pipe);
> +		reg = PIPESTAT(dev_priv, pipe);
>  		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
>  		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 09a7fa6c0c37..401726f466c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -94,7 +94,7 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
>  static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	i915_reg_t reg = PIPESTAT(crtc->pipe);
> +	i915_reg_t reg = PIPESTAT(dev_priv, crtc->pipe);
>  	u32 enable_mask;
>  
>  	lockdep_assert_held(&dev_priv->irq_lock);
> @@ -115,7 +115,7 @@ static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
>  					     bool enable, bool old)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	i915_reg_t reg = PIPESTAT(pipe);
> +	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
>  
>  	lockdep_assert_held(&dev_priv->irq_lock);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a6dff480bd0b..0aaceedf77dc 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1880,7 +1880,7 @@
>  #define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
>  #define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
>  #define PIPEFRAMEPIXEL(dev_priv, pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
> -#define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
> +#define PIPESTAT(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
>  
>  #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
>  #define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 6a37f790c753..00ee588fab39 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -134,10 +134,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPESTAT(PIPE_A));
> -	MMIO_D(PIPESTAT(PIPE_B));
> -	MMIO_D(PIPESTAT(PIPE_C));
> -	MMIO_D(PIPESTAT(_PIPE_EDP));
> +	MMIO_D(PIPESTAT(dev_priv, PIPE_A));
> +	MMIO_D(PIPESTAT(dev_priv, PIPE_B));
> +	MMIO_D(PIPESTAT(dev_priv, PIPE_C));
> +	MMIO_D(PIPESTAT(dev_priv, _PIPE_EDP));
>  	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_A));
>  	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
>  	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
> -- 
> 2.39.2
> 
