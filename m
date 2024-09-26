Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA6F987A36
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 22:52:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FD510E189;
	Thu, 26 Sep 2024 20:52:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHrl0cpA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A1110E189;
 Thu, 26 Sep 2024 20:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727383951; x=1758919951;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3lHmJa31RNYEy75sQnMTGzzjqs6iOfmMUBqBEUO7rts=;
 b=HHrl0cpAx/u03prwuOVTCEECgvPzcjRh1ftJv+Jw72RP/5p2aJcQGYcT
 xNw+OrUKXHBhCphK5SaDODOV3OTwyhGP8kMkZGrtcwlgg5dsoPdEYdIMZ
 5nJIgJLx2DlCGE1ezHk5mc5M+P3WqAMa9/Ezgs2tZSX0B8Iz4HyX9BSkO
 mLUFXFEf12tpxproAYK314+aeaQIFBHJjbT3VhJ+s1/RQKn5cIR0asBPU
 l9bWYqV1kLgQVPHvQ87wmZMse64pqAZBprEFBXacgcsTDlcRJBKgeJkDA
 1RqeWfFRdWD5y3MlpJlvqfgPEo5auTcFrm6kUHFq3wwHk+XsvXGbF68Vh w==;
X-CSE-ConnectionGUID: QxzoZq2HS82km91For/Ghg==
X-CSE-MsgGUID: /oQZia7zTyWb5AHSU8DOlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26679920"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26679920"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 13:52:28 -0700
X-CSE-ConnectionGUID: nmexH3znR4WjsaBp+BYdyA==
X-CSE-MsgGUID: X+og+wGjT/iWFvC2ldyt4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="72601584"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 13:52:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:52:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 13:52:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 13:52:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C2A/xo9PA56n9p/APi2ItqubzibYeNshpYZR5OcC+hz9c2h9RGSiCQbMIkCpIPHLXpDvmMmHZRhD5d7yIh8IaPFl2WvDwp9Eq3XyqFx4IbPGAfrnt5tH6j9Ul9oN1yj4sIh3uDHCssx0fP4fEfTL2pxgspuVHSHybRJj0U1gv0BZK1BwbogDGDuFORneeLKi5LlAgvjpAitPaZsFWSAaHuD/suDrGH0ViSV+1Zcw0gPzuizL5xmun3x6K4Jr8sAdICTAtfhwjra6dW1aKPnnySqR6DLT/s8u4qR8q71/ZNxSNqNwGHcnyzMcl0rr9q+BeMY64LdgH9u/0p55eH8tOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z75tRhIRxvMRV502JD8P/rL2ekLotTtsnfxhYuJaySA=;
 b=gQNEiiK4+aw8LsE7ps25HFdFYrr8ynZ6lg+XRT9/2+xV0fjLU0qdwMkGuioUX3yc2EjHoyiDw9rqyu7cjB/o4E5sSMsb8ryj4xPRcHcwHdXgMlWFFSg1pMXcjYKdkVRyxxQIh2V0k2do7PJS+LJgJoo+XCEhtMVQ8Aseu2+w+Ju6Cgt0mbdoNUePaaNtoifYHJaFbtsXW1+eNI0MGrIeACI5gik9e1cxt4VQuv3AYQ2BQBTivxY1hWZjoJZqtUFyNZV65muDfBFriQq2sw8oLP59Va8dLoB9bgQaDwZPVHK2GXA16ovCUg7UIXYkS/UTEVRytPoEojKjF1aBrXqKew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6945.namprd11.prod.outlook.com (2603:10b6:806:2a8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 20:52:25 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 20:52:25 +0000
Date: Thu, 26 Sep 2024 16:52:21 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/6] drm/i915: switch intel_wakeref_t underlying type
 to struct ref_tracker *
Message-ID: <ZvXJhUdZI6gJYj2L@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
 <cca2b0631f816ad90461aa1bf4fe3f80c0e13464.1726680898.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cca2b0631f816ad90461aa1bf4fe3f80c0e13464.1726680898.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:303:b6::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6945:EE_
X-MS-Office365-Filtering-Correlation-Id: b649fcc8-4c8b-449a-ebf7-08dcde6d1fb3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YY3eMyO/DEfWmE5nYSn0B2ba5riQ7FS7hsFlULVmbOmbQqjNaezXXr/Fulni?=
 =?us-ascii?Q?VfvRbsExfo/1eC+rkCcgJOJhRSANav0ePt/2KX7SSB8i4quefR0evGyuZSrB?=
 =?us-ascii?Q?uSqmSqpFjwgcUegCFlKv4IbR1th6ujOohLPSEH34FJVMaRfIwciQZ9fQtecT?=
 =?us-ascii?Q?MA9WbfrrvWnvzVjytz9x3FOWieeZlerBVq1Q5CdvjZ2Uxn1wKmPfsGVCddAn?=
 =?us-ascii?Q?a+I18YIeTf5Zu1CiY1sjRbSKcZ3LOy+dOtNQtCceLap1v7QznzMcRQIGcV/V?=
 =?us-ascii?Q?FvvobxXTTyS+09waMWHnbxh2FnddV86PycxO/ec+5Xn1s1yCAKeRKoyh8+YB?=
 =?us-ascii?Q?VYwgw/DHTs1AN0cdxk9UivtJtzsY686Cv1E1/6/DuZVHdGs3oVr8UdATaSy7?=
 =?us-ascii?Q?p4C5VJ1bHJGNvP6610IGP+5nwFW5tF1a5gbYtO73bvg6lK8ebdyFRDfRUvyE?=
 =?us-ascii?Q?/Jc5WHk3thEMprL+0IwyCTDU0srG/BMF8Uk+d1oHFqwIVg9gX2wcRqGD1vSi?=
 =?us-ascii?Q?y7littUTCT4lgmyfEkCIGOPRgmvjwtdxbkUvn4nw+H7nEcTY+Z5kJU15mpl9?=
 =?us-ascii?Q?AeoheT4WpGVmGbLVM1PRDgR4bjkIrJKlnsG3YlDWIuI2uRo4L2hQlZ7EOqNR?=
 =?us-ascii?Q?yUbS1h4/3P+4H+xyhRi1wBpcQZPh6TGRcJreqGF6kgquX7JxOdErC9BkNFgG?=
 =?us-ascii?Q?kitwm6bl5zUHUEbrU1CHJnaHQ9yuYBQpVBgKDwtLDBBU3Oqm72py91Hw3zTU?=
 =?us-ascii?Q?l4gLDmplToIjwcyoSWtVADvFq//FembaoDVlker3eJz/gXOYHJQUv9rBHACT?=
 =?us-ascii?Q?aDA+3WWf+mVLS+ladVImMe0o61wy5l6fD5uTG7DC7p4AKT+kdYV/klznNUaY?=
 =?us-ascii?Q?sG9OvbK6aQmD1zPhDppFV65/2ZxefXVM0E3d1tylC1tFZgd4CnSznh6BvE2w?=
 =?us-ascii?Q?CqIVv2ix3CQwsuNZs5cfXAovwzWwnQ/o6MhNTH/7ZmoC72HATrK3J5SKSxi6?=
 =?us-ascii?Q?hnwNG+MzmsCifQGhPJb3dgEE2whmNmC9P5fXL4wqGl2mviAsBDcGNoOD3W2n?=
 =?us-ascii?Q?H5RdaPU6+ncQlxF/GbyQTom32iYZYgobBZcvgEtXP4lhMiNmazD87mjNmPYR?=
 =?us-ascii?Q?RWcCqdFxfphtgxmf5nW5exuKez3AmTvxS2DMA2goJm/wiKErFTxD0emUXkrb?=
 =?us-ascii?Q?40sDIc1zUYyV8/HUeNkmRTz0efYpQSGOSN/abdVL+dNH+boRLmhjQduI9xf2?=
 =?us-ascii?Q?aLmUhwcxwLh2reP8csQYuZbIgMcojLVqbfxvMDc1tI4WgUksKnQtmc7YThDC?=
 =?us-ascii?Q?/5eRopaoNL5IUCixBnSAe6ifLDTK+d0SLYk4XNMYUCMr3A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c2P9W1x7coTcSON284R7a8eZnZHD1KYsuwq5KXJhRNJ42veVQC2LqI2IfeDo?=
 =?us-ascii?Q?h5WMwJrHdfLfBX1CsM+SpBue1CrkXqnUjBsQM4vSCSF1NOuEk79L5cxXTdmI?=
 =?us-ascii?Q?6mCRVEf2/X1dyOUGcQ9zRjUY7bKa6OEnPuJuwTPlGWpbbRWXWDTZP4pQdE8L?=
 =?us-ascii?Q?FwN7NzCPcDuDGfzkn9mLH1ty65RdaEGX14BstfKM3QlRocQ13bWOVCadiG+c?=
 =?us-ascii?Q?w9zJzlcVmKkRQEby7QFJOCfRW33+5kdXfGIE8DgQ/b8iCovyPmOmBYkKXS+H?=
 =?us-ascii?Q?fFapzAU9ths1yVB0049zBUD+uBUaiucKtoNflCnHt0a2Zlz9NaAcn/+meMWk?=
 =?us-ascii?Q?KfYFdoSo7Jga3knzDlug9MtpEI61c6xETRqYnT6weg/UMBqgn5vY8xnPMlJt?=
 =?us-ascii?Q?3uymWKc1Gg6/x3bohYxLmJS6VAB7UhTsgIcilPHyRT74FR/q6rfanRfCH2A8?=
 =?us-ascii?Q?QEZGoqfD2m/9EdZqo10yfqWK0xoDGlHD2U+GOlEODH3jSyTX4CHCaK7g243D?=
 =?us-ascii?Q?GhsDYjKQnBIWwg05DIaFr5DINRtsKNNG9xLBw9ZLn2XmEr5pi5XGYEclW/ET?=
 =?us-ascii?Q?wKu3g9rJ18D+sPNV6Yr38g5fzPLXooVXCYXXmYaOs4079u6bHZdO+SuNFRcg?=
 =?us-ascii?Q?xrJY+k4j4N1bwUVd+Trg13aJctzFR0Z60rlJLwWfyxxWiJNJDNyDbQwscF7l?=
 =?us-ascii?Q?vIAb9myS7HPhKT7s59PPMnBS+l0/ecex1bMyQku/K/bToBCTpbfQ3LSyWqv6?=
 =?us-ascii?Q?G/Tj7ywzmQB7QK1IF/GpMQOabYC09NjBOxeUTxwPZAxzJOH0CDczDiZ9Dnw5?=
 =?us-ascii?Q?3SjATxe5/bXYSB6y++Ntl6/65bmb0hANU85LHC02cTuRAGo2L/utLOLhNaEI?=
 =?us-ascii?Q?2a4NIujmVEvqkV7pXzi5yaAafIf3yOe/mryth9kLMeFTVomyhE6WqpEjkyYU?=
 =?us-ascii?Q?99MNd9sAjYOl8Oh1DbRIB6qyBetvfmh8+eHqdiIUKap45LGXOKHgyIQlBUxy?=
 =?us-ascii?Q?ZqlSzzTaqVMW/OqBhYAFSPn06wwm6sRHWPOjYU1DkkoKdFmC3/Gfh3BtpRgA?=
 =?us-ascii?Q?KQkXJF+tPB+JoPevFdGOEnVVXuwrqatnPi9BikUL+NvzMx457+5u6aYXE2i7?=
 =?us-ascii?Q?phRM9Eqb/nkeE8g/Xpg1ZSBR5IIWEPfmHLPHWunlMAUstBpXxCNS8snOkAAD?=
 =?us-ascii?Q?sTSYkt0ldjeSWA9RzJrllPPPHTU+rEK7HkTuYrQR61eBBP+4QuAJrrlL4q1l?=
 =?us-ascii?Q?lIWANeDxUY0kYZ2gq62SA63G5+Luue5O9B0XMlxPCofiPW//n8lowOWbFWfC?=
 =?us-ascii?Q?Tp/TvHnZSSVBnYV3GPSa5D5fTkjiRs4ylX9tgy16bx7n/J636M+ggJsrQ2zk?=
 =?us-ascii?Q?pq5kkUOOZLOILurQrQNbV1Y5QdKwfTsrBSW2OlIS9xdMWb9s8BbonHE0d3w6?=
 =?us-ascii?Q?iRh4zSbbO+sdMqCdXXeapV3p36OOAhOCVWYRo65chPzpR7Qm7Dj1xGZHrChO?=
 =?us-ascii?Q?cipUD/1HhpUlf/F72cpvX1wx6xlIobrMkuRpud52qkvOjuQt8WjxW8IIt8mR?=
 =?us-ascii?Q?UB+LMkOAh2hK0/fY6Y+93lMq3YXc8FOE1q+s6Kmu3zHaMWFssYYcSRKDhd+v?=
 =?us-ascii?Q?Ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b649fcc8-4c8b-449a-ebf7-08dcde6d1fb3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 20:52:25.2160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AKCLDpPuh/EtNM0eQLYb1y/7f/ahxfmeUcPCkp5unPweUZOpMi6bA2csqQTZWAZ2qYXmXHrpHUFl+3RSGmV2dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6945
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

On Wed, Sep 18, 2024 at 08:35:48PM +0300, Jani Nikula wrote:
> For intel_wakeref_t, opaque is reasonable, but disguising the underlying
> struct ref_tracker * as an unsigned long is not so great. Update the
> typedef to remove one level of disguise.
> 
> Although the kernel coding style strongly discourages pointer typedefs,
> it's a better alternative, and an incremental improvement on the status
> quo. It provides much better type safety than an unsigned long could,
> and prevents passing magic -1 instead of INTEL_WAKEREF_DEF. Moreover, it
> provides a gradual path for replacing intel_wakeref_t with struct
> ref_tracker * if desired.
> 
> As an extra safety measure, check for error pointers in
> intel_ref_tracker_free() before passing them on to ref_tracker_free(),
> to catch any mistakes with mock gt special wakeref value.

After this would be easy to get a coccinelle or sed
to use ref_tracker directly and kill the typedef?

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.h            |  2 +-
>  drivers/gpu/drm/i915/intel_wakeref.h             | 16 +++++++++-------
>  .../drm/xe/compat-i915-headers/intel_wakeref.h   |  4 ++--
>  3 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> index fef8d5d288f8..dcbfc09194b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> @@ -105,7 +105,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt);
>  
>  ktime_t intel_gt_get_awake_time(const struct intel_gt *gt);
>  
> -#define INTEL_WAKEREF_MOCK_GT ((intel_wakeref_t)-ENODEV)
> +#define INTEL_WAKEREF_MOCK_GT ERR_PTR(-ENODEV)
>  
>  static inline bool is_mock_gt(const struct intel_gt *gt)
>  {
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> index 3944587a5e78..48836ef52d40 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.h
> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> @@ -21,7 +21,7 @@
>  #include <linux/timer.h>
>  #include <linux/workqueue.h>
>  
> -typedef unsigned long intel_wakeref_t;
> +typedef struct ref_tracker *intel_wakeref_t;
>  
>  #define INTEL_REFTRACK_DEAD_COUNT 16
>  #define INTEL_REFTRACK_PRINT_LIMIT 16
> @@ -273,7 +273,7 @@ __intel_wakeref_defer_park(struct intel_wakeref *wf)
>   */
>  int intel_wakeref_wait_for_idle(struct intel_wakeref *wf);
>  
> -#define INTEL_WAKEREF_DEF ((intel_wakeref_t)(-1))
> +#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
>  
>  static inline intel_wakeref_t intel_ref_tracker_alloc(struct ref_tracker_dir *dir)
>  {
> @@ -281,17 +281,19 @@ static inline intel_wakeref_t intel_ref_tracker_alloc(struct ref_tracker_dir *di
>  
>  	ref_tracker_alloc(dir, &user, GFP_NOWAIT);
>  
> -	return (intel_wakeref_t)user ?: INTEL_WAKEREF_DEF;
> +	return user ?: INTEL_WAKEREF_DEF;
>  }
>  
>  static inline void intel_ref_tracker_free(struct ref_tracker_dir *dir,
> -					  intel_wakeref_t handle)
> +					  intel_wakeref_t wakeref)
>  {
> -	struct ref_tracker *user;
> +	if (wakeref == INTEL_WAKEREF_DEF)
> +		wakeref = NULL;
>  
> -	user = (handle == INTEL_WAKEREF_DEF) ? NULL : (void *)handle;
> +	if (WARN_ON(IS_ERR(wakeref)))
> +		return;
>  
> -	ref_tracker_free(dir, &user);
> +	ref_tracker_free(dir, &wakeref);
>  }
>  
>  void intel_ref_tracker_show(struct ref_tracker_dir *dir,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> index 5c139ba144a6..2a32faea9db5 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> @@ -5,6 +5,6 @@
>  
>  #include <linux/types.h>
>  
> -typedef unsigned long intel_wakeref_t;
> +typedef struct ref_tracker *intel_wakeref_t;
>  
> -#define INTEL_WAKEREF_DEF ((intel_wakeref_t)(-1))
> +#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
> -- 
> 2.39.2
> 
