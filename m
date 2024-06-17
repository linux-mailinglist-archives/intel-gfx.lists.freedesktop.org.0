Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6FD90B85C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 19:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B591B10E47E;
	Mon, 17 Jun 2024 17:41:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJiAZ+Vp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741BD10E47D;
 Mon, 17 Jun 2024 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718646113; x=1750182113;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LUkuSEFylJ1IiJD93d3CThOwiVjeHXjRnbuMutVc8k0=;
 b=lJiAZ+Vp3axmPeeNoVTgU5NBP+YBedH89T7rLUAA46kZipw2CVRsOdpU
 Su4lLcTyxs+SBdIBySzM9kulM5489gFys0Ld7MIYYBgt1CytvKGVZKszB
 59bI+LLe/UWeIhMXRZ8K8TbVlN6bQPgYScG9hT52WvV96fNwG8jjkErHw
 vlM+F9PrJAvEMpqQZPc//fGq1HCgxH667bObbYucVgrtTbYbvd6bPH8rf
 gxAgxDNDvk/yWfKTBfFV7uLoBHjOPYjo67v2IB4WWPPJzM487/Egvq3aH
 OIgf0AcJIkcJS+kWPoK2SWMI1xMn96shXxiZJ2WzsTUcPGkZROGId+j5X g==;
X-CSE-ConnectionGUID: OozTgQg4SnKPGy47FxicKA==
X-CSE-MsgGUID: LEkumJyPSMKjBKddh4mH/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26170295"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="26170295"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:41:52 -0700
X-CSE-ConnectionGUID: YIZRN4v4RZC5EJBDVKAMpQ==
X-CSE-MsgGUID: P7xk+7zITB+8INak9io9mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="41355661"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 10:41:52 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 10:41:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 10:41:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 10:41:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6CTAkXUI8X/Z7IyE9wyUkxBYwJGM3gDXlNMRhhvMMR+4el8xgdaUa+w0Bc37idFW3y0G4NtSf0cCxMqD0MTu4uvRqoA2mVmjYUBs/n3PqezciGfR/PNdmaJg5eVkZMKbUV9FNN+he52MPH2NNZ02uv+P9fdaRhZ1D2pKhYJmy5i6RLAfTvjnn4HaSSS6BES/RUL4dJuBlo9uEhZXxxmmvSTyUNlHU2LlMtioBoL4vZHhnu3RtzLaaErXDo2yZUFpvYdzeK6gnEVUs9PTHUU8fUFox+XO7onZ1fLVxC8oBlRcNQViUwXNmRtHGE3VID6PyhpPGmVqVeuaHzHFh/8mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OWuwSSK4uhF/fXNmdx8bsE+1idxLKpkgtOVVIazCCtc=;
 b=OtZ/hYg20FxOkRJT5n6UaSgnBgyL22kiExMCH+1EJTsn0GOzwd5NlJlIORoIuSszVAWoFzOgz6DMhRz7MdDyGfHMJXBWpfEvZOV1kKxp3zdFhzvvbFCiuGhps9j9CjTn+vxt0OyUjOHIIXa6CM37o8NTRJyC6NmPTJHp//GPwZmZArwIrCWxJnDKmDeRoGk/+DmIp9Yjel4Cgf6M4joLGoGub9heQ27Dx9bNl2iQPCDI4/pqD8YuVt2hHrneQy8px3uo1fIXTssno6q6VNGguATi3RAaPFK0tqju9ji5ePkUtv0GuYDA/z3GaXIAy3DK2dfEQ3wLp47Khpia2Xq/xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.30; Mon, 17 Jun 2024 17:41:49 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 17:41:49 +0000
Date: Mon, 17 Jun 2024 13:41:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915: Move encoder suspend/shutdown helpers to
 intel_encoder.c
Message-ID: <ZnB1WSGVFzEFcBlI@intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240617170356.4000251-1-imre.deak@intel.com>
X-ClientProxiedBy: BYAPR11CA0083.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::24) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|IA1PR11MB7854:EE_
X-MS-Office365-Filtering-Correlation-Id: cf90bfe3-7dbe-4915-1b37-08dc8ef4c3df
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?68iH3IWyd/gp0QtsDUczb26UrdyFneVUcYkGVYL7WWG9b4/5BbpLNlhjZQIm?=
 =?us-ascii?Q?u6cgU3beiMQaZhNQlQEj5KBil7eZJZ6oxYaBbl39S9lRXnAr93Kan8ikOzgP?=
 =?us-ascii?Q?RcUflNoLir6y1M8x5pSS+H+qM9fLGNpI/PNAiGT9xQXfvgWYPQHwGtB2bzpI?=
 =?us-ascii?Q?H1PUydRlUlEZ96E6R+ArzHgoR9WNAMqCgxaR08KYj/zd1GlCYuYt+2EkP8KX?=
 =?us-ascii?Q?xQaA3fQKypgk9KmyEgKJSIT7w8EUg2mZVzvpNwJrMX//wEjBUqgnVCRtt2au?=
 =?us-ascii?Q?42UUs0hkX+t6K7cJwAUe/Nw6bccgNKDSWKC7bfnVX9pT+lfxjr+shYwFutE/?=
 =?us-ascii?Q?lJEOuc2u6Nft6XozPNe0LWVExtaR3dmDwXd4Aq7wibME6Bu8xB9rVWnzIvG9?=
 =?us-ascii?Q?U9vap7b+MDLt/tgmGL5sBykT+wnsCovhxGTPyOhRkrY1dODZgn9OzrDl5WDx?=
 =?us-ascii?Q?E9RBqY0fIaCeosRA0FA2CCuwo926SpZgaXiXABi7J8FQk78ki913KDAlEjff?=
 =?us-ascii?Q?FlxwAHPxyUrnEabkoSsAZsR4IKw7iFQesGeypPkWgVbHYP9u37zMv4js79Gv?=
 =?us-ascii?Q?RRayoTzgIxnt3Tb1zI0PYLyqwlZVKpfiSI4tHW34nS4HJ4YVGmEi4UHN8PlY?=
 =?us-ascii?Q?tiQr6SGN5wXhMtIyHx78kto7LGa+r28ohb6gUnFt+zONJSN3/1INgqbSW8fH?=
 =?us-ascii?Q?udlhLrfXLYBWbT0cBQtUqBw6oMO1hxtEJr5UtQXm2AtKMDteAl9PPEONI9f9?=
 =?us-ascii?Q?euY9HJNVvyQw1NGra9GguLq9G9qeuu9Vc7BS2/p1U0QnWzBbCCjNq3AIq22z?=
 =?us-ascii?Q?tyGClYfmc78e0p8aKUS1fwuLin68Ks3IWADcxlxKzzI79ppYlHhH2MXI1L5G?=
 =?us-ascii?Q?WIdSzbQezehdEFVYRNg5/aUjDJDhSOS5T/I2KGG7wweI0y9L18tKbUP6PjBh?=
 =?us-ascii?Q?37I4D0Nv4fYIaJWkdok0KtaLapxLZHZBX8ee7QYQFB9IsjRgwCCoag0Jy+0z?=
 =?us-ascii?Q?4sEZ+YPYPMhwYG/4qCAgw5MlVe+wxxRtfbve5KRuz43uyEOeTcsIBe/7YZtK?=
 =?us-ascii?Q?+IXriOTef/V0CNO/6K3jUmk0SbbJoEDFFhd/kDNmK28PLktgDOD7/9p4pI81?=
 =?us-ascii?Q?mNjQUn4CqMuZrEOjO5go1BbeefjwhbrrTFraT/jfuCDdzYNuh6IgWqRbvUe9?=
 =?us-ascii?Q?EP0aWlVYQHqZ0SmiuP2vYTEq2N5KgRbBfAdjxJzdkdsjdlNw9EGyq9mpP+oC?=
 =?us-ascii?Q?t2MwhiF6gdHwLOS0s2oDsP+JF1onmxm/zTZ8+Hd8h4+eSb/Tune1EmyMPZAp?=
 =?us-ascii?Q?19Fi/4KvVMQ47fBrugC6rVGj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pBdcBAC9xOzXN5ND0q5ZtcdUKkg8JAis6IsoD3kBF8a6bG9tHUG3zAavD+Tz?=
 =?us-ascii?Q?fMbhJInBOaL+pqAmqDiAMkLGW+LdwPlCnkmdFutRyJ8w8H+D/5gfEQWaiBf4?=
 =?us-ascii?Q?1ayYQ/4xxS/mmnzWfRDxUwmlRM9VaOSIxFfZZVTWyVOSyq5wZj9I1xY8qKnt?=
 =?us-ascii?Q?miMeFfHEfuKYECmWwXuMjH6RVIHXbW/VLT3EG2+BcxfZ4dcV0n8Xp7o1Shay?=
 =?us-ascii?Q?7vjYSyGCXIeRyK6UIpxKbLyq8g/k15zlWkiPTg8CbEIzePB1T8qpof9CfNZ+?=
 =?us-ascii?Q?YqVMdYSLj4pO96YjhKz8G4U5hYZYb9R3WXyvFxSNv/gJNB12bMEZDhiWWShq?=
 =?us-ascii?Q?i6gGtI38seo3RqnqNjm/hCy46nuP5v6IJgk4SYVcHj3HYLDD1a4yk3V+ZJ2W?=
 =?us-ascii?Q?EtvPhxLB56Zfik3WdVz+tCugI+kEvfPNY5FMxcVYKk9OVrY78YqTPNUudzLM?=
 =?us-ascii?Q?nbt7odK/SEP1Gy0SXHqH8j+tCs/My5rY0dEwQGRCVSgctbDag4P/1pWOd4iu?=
 =?us-ascii?Q?9ovDqUZ1iJNjYDeUjI4eSRrtqB7L/NtXV1gqWYiJ7WaJj3GCTxSZqyzb/w8C?=
 =?us-ascii?Q?EL1sjXKsHxAmxqINFkG9K7odtH3am5QPguzHzH9he2poBoFHCo+29MXN1j34?=
 =?us-ascii?Q?VtMJo3VqYud1t7gsAtDzHJbJmW8L1GYeWeeswGp5h/tTdjD7u+F5mE2/qEHj?=
 =?us-ascii?Q?teaOJC4lKETY2E+V3N5uc8FgDs48NH37ckYXajTh7og9NvRgP8Knye09J26t?=
 =?us-ascii?Q?CEmLWPTw9PpE82Oe8NeD+rl/CY7hd7mLj13V5LI9E3wXSZLlerCrM34fAL39?=
 =?us-ascii?Q?UjZVBYENy+nmvnQXg/JclrH+NumuWaMOZRTqvpcx93pheDFbBNzGc0tzb+Vt?=
 =?us-ascii?Q?roFnXuu7CVitZX1F4Vctm9lV9x1Zk3wspioDAYOzlwI5quOjmsEAPgHpbS3D?=
 =?us-ascii?Q?MluJcBqBzhOaBarFYy8mKw91wAqbu5vzTcnEpMi5TrCt58zExSdPVhm8xf88?=
 =?us-ascii?Q?yL2QymfJuB1WmZBzWbVT6/UsBgxs0jeSh0KPeNPBIG308HY5hI5Xl3kks/yW?=
 =?us-ascii?Q?E+5pHNccrgNmT13Qt7yt2QoOdgQS9hOJha71PqtHEHuiiib0+yi10aLsI8Gk?=
 =?us-ascii?Q?Um26bHzuDMoxjdal6d4+D549iIZKASzwJF6RgrF49ZIw+X1/p0+4LFwIj+aj?=
 =?us-ascii?Q?bUGEqwwCAE6sKCa10HRBhiH2cjSdEvFbMAQ/D3BkNhB02Wz2xLicv8tI3m/j?=
 =?us-ascii?Q?T6ZSWdgOjoGEJe0HrUMj4mfmHnxgIgoO66saYG2hV+uGX+ooIUFUaOGDcvDB?=
 =?us-ascii?Q?JdJk22APT2Kk0a9JzY+DELsHMgtCfOWcENHIQ8Rtl2GMMf2sFnX9eFCUCGqU?=
 =?us-ascii?Q?2EpKRUPFdWvNQELyfuw9uhCCF1IEOHRMGjarRwcciA2+PBIZbLH4yD4/MjAq?=
 =?us-ascii?Q?RANfPNiTHHtphrcvOSc7FMjJ4DwhgY7ICniEnagNoTgz+UujRStiUrP3dz8V?=
 =?us-ascii?Q?5+DOeEARycbfZUWSWlAgjQ4Wdda1B8/2QW5/YLROZwWzUvXXYSDinOfejSzx?=
 =?us-ascii?Q?HQ4/GRQZlJdyg1oKuGnNYNUSC8bvZs8VdWIgNekl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf90bfe3-7dbe-4915-1b37-08dc8ef4c3df
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 17:41:49.1716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8dVEHC5U6vR+dCZ1gbhF87C/NaK6Elsijg10z0aUeMVI++VrvyRYo0FT87WJCLr5Suuy8fjlFUGrKkuhlf7vxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
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

On Mon, Jun 17, 2024 at 08:03:54PM +0300, Imre Deak wrote:
> Move the encoder suspend/shutdown helpers to intel_encoder.c, this being
> the logical place for encoder functions.
> 
> This also allows sharing the above helpers with the xe driver, done in a
> follow-up patch.
> 
> While at it rename the functions using the usual intel_encoder prefix
> and in the functions rename the dev_priv parameter to i915.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_encoder.c | 44 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_encoder.h |  5 ++
>  drivers/gpu/drm/i915/i915_driver.c           | 51 ++------------------
>  3 files changed, 53 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index dee55f56960fc..8a1dccb893a37 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -37,3 +37,47 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
>  	mod_delayed_work(i915->unordered_wq,
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
>  }
> +
> +void intel_encoder_suspend_all(struct drm_i915_private *i915)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	/*
> +	 * TODO: check and remove holding the modeset locks if none of
> +	 * the encoders depends on this.
> +	 */
> +	drm_modeset_lock_all(&i915->drm);
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->suspend)
> +			encoder->suspend(encoder);
> +	drm_modeset_unlock_all(&i915->drm);
> +
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->suspend_complete)
> +			encoder->suspend_complete(encoder);
> +}
> +
> +void intel_encoder_shutdown_all(struct drm_i915_private *i915)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	/*
> +	 * TODO: check and remove holding the modeset locks if none of
> +	 * the encoders depends on this.
> +	 */
> +	drm_modeset_lock_all(&i915->drm);
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->shutdown)
> +			encoder->shutdown(encoder);
> +	drm_modeset_unlock_all(&i915->drm);
> +
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->shutdown_complete)
> +			encoder->shutdown_complete(encoder);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index 2cda054e2b152..e6cd74576f78e 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -6,6 +6,8 @@
>  #ifndef __INTEL_ENCODER_H__
>  #define __INTEL_ENCODER_H__
>  
> +struct drm_i915_private;
> +
>  struct intel_encoder;
>  
>  void intel_encoder_link_check_init(struct intel_encoder *encoder,
> @@ -13,4 +15,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
>  void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
>  void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>  
> +void intel_encoder_suspend_all(struct drm_i915_private *i915);
> +void intel_encoder_shutdown_all(struct drm_i915_private *i915);
> +
>  #endif /* __INTEL_ENCODER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 161b21eff6943..e9e38ed246f66 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -53,6 +53,7 @@
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
> +#include "display/intel_encoder.h"
>  #include "display/intel_fbdev.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_overlay.h"
> @@ -933,50 +934,6 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
>  	i915_gem_flush_free_objects(to_i915(dev));
>  }
>  
> -static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_encoder *encoder;
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	/*
> -	 * TODO: check and remove holding the modeset locks if none of
> -	 * the encoders depends on this.
> -	 */
> -	drm_modeset_lock_all(&dev_priv->drm);
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->suspend)
> -			encoder->suspend(encoder);
> -	drm_modeset_unlock_all(&dev_priv->drm);
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->suspend_complete)
> -			encoder->suspend_complete(encoder);
> -}
> -
> -static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_encoder *encoder;
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	/*
> -	 * TODO: check and remove holding the modeset locks if none of
> -	 * the encoders depends on this.
> -	 */
> -	drm_modeset_lock_all(&dev_priv->drm);
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->shutdown)
> -			encoder->shutdown(encoder);
> -	drm_modeset_unlock_all(&dev_priv->drm);
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->shutdown_complete)
> -			encoder->shutdown_complete(encoder);
> -}
> -
>  void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -999,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	if (HAS_DISPLAY(i915))
>  		intel_display_driver_suspend_access(i915);
>  
> -	intel_suspend_encoders(i915);
> -	intel_shutdown_encoders(i915);
> +	intel_encoder_suspend_all(i915);
> +	intel_encoder_shutdown_all(i915);
>  
>  	intel_dmc_suspend(i915);
>  
> @@ -1083,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	if (HAS_DISPLAY(dev_priv))
>  		intel_display_driver_suspend_access(dev_priv);
>  
> -	intel_suspend_encoders(dev_priv);
> +	intel_encoder_suspend_all(dev_priv);
>  
>  	/* Must be called before GGTT is suspended. */
>  	intel_dpt_suspend(dev_priv);
> -- 
> 2.43.3
> 
