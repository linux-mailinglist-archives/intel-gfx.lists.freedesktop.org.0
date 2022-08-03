Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF01589371
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 22:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA0411243A;
	Wed,  3 Aug 2022 20:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF75811243A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 20:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659559548; x=1691095548;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h8lALKM8tzoENLlt7oRjMQsrXwjWqcqGNdlQaZL5xbo=;
 b=Dgh/iryVxj6qObb6lZKmwkkwFn9MUsuZivgKKoNZD7NbZoRQhjxD6+t0
 mQ4PClMeydw7LOFlZLGH4eP4Fl4AbzgTf6oZ9YhhkFu1pyPqWqIR1Ku1k
 jHjOf67FWWGewD4UF7I7N6f1oWBNcqh8Og97amj51FNzH0L02s99sXuD5
 f0gV0goy7YJrn826aNQ3n9bt486lf96S6SEzWVC4WL7NuWrTuqD2JxjgF
 s/LfBDixnqG09HyP81viJnTyaKo5xfg889J24wMt18tLdZNN50pFbwzcv
 1Hw/dNdIapwm4cb5VeGCprIDg9cOIoq/1kycSytlGGSuTph0ZSG51tFeZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="276691122"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="276691122"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 13:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="671006729"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2022 13:45:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 13:45:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 13:45:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 13:45:45 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 13:45:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtMLcvj9et5jiss7u9uQD9TWX0+rIzl5Mt+r2A0yKNZjb9JIw01uWBOXGMR60PcFftJ668NmZJR3v4XiDPwBYN9lsHd3+JHlltzV0pr5HHGJcqfS9sI062P3AqbIYyfTnpXOtcIPocEBkzb2e4vakE7e5p4T8rsLYlS6bEvY9VJep+H6mCZr5OOHHJumk29IdzmPnP4J44kdQ2f4mLVFpw20o142jJPAsBXaECKEQH4nidwwWugJkoAL27uTrTRH0poIsiV6qK0Zcr9FpQraqtdXgC6MjAI6CG2Y1l60uN4/J+nyhc0IgREPtQ98VLfbzLoYt/q7nOxE3tmQJTlelA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdrUhqQNH/16B44sMZnLbeS8zowT49lppyQc5sck+34=;
 b=nx48SeXgXVpFMnNOpERTewWHC05mc/IxW+FKZbJkXIOSvk92KQPNJUXCXsCkg2iQajyaZhGcvjWiSrev6LtZf65vmKlWW0HmIMMxPCdkaRVqnVULpxNYHI9w3bRmzDavZtGGlBDIGB+0LR4DMEMa+1kaLPbzf8y4BYgiAQ2LBIFG+gwMFTAu8b21nFw28rWbZDFMYxKxfYA7Jarb1+sREkOP5KbN1rj4PkbaYNbRppn7CAWp9PIlMOLrpN7cp7oUo8JIbWf1Om2uX5am5kXFBdc1DCT3eWnz6A1P1J9kERPh6vI6QCFr1Ay227VDVjeKbYUu4Z2qcJEUM387JQxpBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB4425.namprd11.prod.outlook.com (2603:10b6:5:1d9::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Wed, 3 Aug
 2022 20:45:43 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79%6]) with mapi id 15.20.5504.014; Wed, 3 Aug 2022
 20:45:43 +0000
Date: Wed, 3 Aug 2022 16:45:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <tilak.tangudu@intel.com>
Message-ID: <YurecdLzMHDoEZOJ@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-7-tilak.tangudu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-7-tilak.tangudu@intel.com>
X-ClientProxiedBy: SJ0PR13CA0030.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 95bed5e1-d121-436c-036a-08da75912246
X-MS-TrafficTypeDiagnostic: DM6PR11MB4425:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: biFM4OxygjoHxcjrUzlHsbLuiU7zUeD71O9vSGyqUr3Ma0G7Ba9MdhMlHj2oYXsKP+ETDxandLmiUkbZibF2KbB/ga68IY1D2plRx1si17zYp40LMC275WGMbmMi8U0EcsgUp/2KXNIAYrRlL9KA/T+ImK8Ml4xiTgEH5IlEdjnO8j/wql/ZkCDDwMw4rVaranZQBGnmXSDPw9gHXcD8foP0XLTqxNYy372qlv5mmcSFqtICE4aO2AG1iHx5hcmoRkd6Q4BVdeRi6nEhICli08UTZ+LVRrEcyKLGLOIqf8KK8WQxOi/rQNDMQqhUEFbtqmAWUG7fdebpUXZn8onZOPMd4pWMYHnn7gDiNYj/UvAQMQCzK/nN549iPLBctmBla3AiE9bAesK0QgcsCd954BiuVX2KqPGNDi7TxAXZwDVnOKwG4SIxoOFBwX5CJBtvX1rtH/oGjuuyICGmnrRwwZYZXoau+scqIvYRoQOxSF+0/M+b2fKrDDW+CfqCBwGQ/PoqnxIM8Qu/ojCOiM5j8YnnGyWg0kV0xdVCbzKPndUymKc+oqzNZlO1qtlh6aa1QRTjp/J4SzzrjAVB7SfpPijH2xSgMUlZsmqnIa/bkaVxKWn5GZEYnYHswSwIwVx5wJ/TAWsuMjcl3cdQvgMyai7iX2RRzWHzErha3IuTUiJzVIef2/XaJ0NjuDSGV2oPET3Xa0grMWzuPkYgcuAn9BHgCTQjOlcbLo56tbe680ELHD7y+fFYw24/1xVnY53H4bRJq2qSseZ217BTk80xvTZ93KRTiB20qp0XxHVYU7eS6zh/cdYVrQo0AHh2nXQs34n7zDqY7qddUpiLPtmt7Eb5I0FQjQndNo1IRHXeqtjWPzr7wLqDlHwooVEk5icp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(136003)(39860400002)(366004)(316002)(38100700002)(6486002)(6636002)(37006003)(82960400001)(86362001)(36756003)(186003)(478600001)(2616005)(83380400001)(26005)(41300700001)(6506007)(6666004)(66946007)(44832011)(8936002)(5660300002)(2906002)(6512007)(34206002)(66556008)(4326008)(66476007)(8676002)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+gZ7026AE5tZ7w1LijjIup/L4PskaWMhR0mE0UG1Wwie+XQMgk6ScFAqa4Ry?=
 =?us-ascii?Q?NxpedINDLJBV+POA94x603auUK///cVrl+2OurotkoXLf7dIiKoMFYkcRO3X?=
 =?us-ascii?Q?1CfJiG/d4pAz5r/7P36+tanmKrtsoTA/Z3iy4+otVDrQawEfFtw+z7DjJFov?=
 =?us-ascii?Q?cAhK3Mv76Lr4pxe6U1GcGKUDCBLacSxW3ytH7KZrgOtDyrFA9/4BL3qWDx69?=
 =?us-ascii?Q?ifSMx+2eGyhcahR0aiOzb/WeFCTU/R62YpL5/BPsL32oKiNYKUeGgdPXUK1j?=
 =?us-ascii?Q?YE0fWthpr7kBB2jYRitwd7jCGjSWIoFvB6fRp0oQYjL7widjpZFZ/iMw87KC?=
 =?us-ascii?Q?UwHpInynB1D8mHTu/NRDJZoRNyNXif9FitPbcvxQUZqSH0rVQkcuTt20KhPc?=
 =?us-ascii?Q?XwsWZRFgbptHgaUO7e/DMc94fS95pYuTZIuzNhSmlBRKL7dg34QHsNph2m0P?=
 =?us-ascii?Q?XION5NALMSY1Q+V/t7Ft2QaAbLVswLpIo7GuCOLnQIdlOtBilQnLZpSCbkeJ?=
 =?us-ascii?Q?2MRRJ6cvI1mWqfzASQwocSpU1mTixODnBhd6oWgvMFnE8R/WKT+UFWHvcOLG?=
 =?us-ascii?Q?vW4qoL6YKjAs65SX2mIhVdRU7hh7gkc58Q8rdJKHEaXb5Q+YiI1fB7/qoEcc?=
 =?us-ascii?Q?C35FnWLY9/xHyzt/88xClLZegtZCI9TsFU8Zu/NxqYpETS2vPeZkzneCjyLi?=
 =?us-ascii?Q?Q1WMVnVvZne3nX5QaAC5HtxTx+X2CmDWENPrs4k8crRYtVH0qLV7icSlE6fu?=
 =?us-ascii?Q?wANw87r6H3IdGQTIDP3yGi6SqogGcPwXeMw8szKU+azKqIGP1W4ZyRTpzLTe?=
 =?us-ascii?Q?SQYJu6viuP0isVomjl35xRBIc2Km8GujWmTXW4eEaFnErxaEBcHc/vd0NxsC?=
 =?us-ascii?Q?Ti40F301r7HpvXdU9J1sF/dDLpU4J4Axw5z4yzqdmPfY1AckBEUpD55cCBOg?=
 =?us-ascii?Q?5INiKd2zxZxjU03dhq2/3s5lsesv5Nh2lP2s8Vr7oZfjUtB4Sz0o9pBqZGup?=
 =?us-ascii?Q?yAsZk4dbEnwYIt+MWnTGe5NEZESP5rCJJlaIwPMMl33S5ScI51XA7BKnZPIG?=
 =?us-ascii?Q?XDEjmlQhACn2BV78HGJi4IrMV6ZFhN/Xwq8PxRU+AogZn7WW5NHHAfBbG6md?=
 =?us-ascii?Q?O57JiW+P88JMyMtcPwVhqqwiy+Cah1wpo6TnzDEFK6e5IutTF4z1qL4KPCL9?=
 =?us-ascii?Q?T1fcCMKnRVqaidINL5X7jGKi92r+rLiOudlfoNWjmKmGXHYXd7B9lRni3R8F?=
 =?us-ascii?Q?ZZaq1J3X67D6JgVPvwX9bA/MFM5j7t4O3t49hZiR45R5xP8cCw2V9ss7ei2i?=
 =?us-ascii?Q?XJoYAG4jP5RpnD98XySYV2G8if1OA9lJP9vmLUBQtBZXaPaYV/VawvKriRqp?=
 =?us-ascii?Q?p4Z5Jt0trXTZi84smgNngZm/2agLoTp6Jw8SeB041D1TubqZ9Nbk1+0RuHiR?=
 =?us-ascii?Q?91RNPido+MdFRAcqGMfbJumYomR6+WE51+NvGC8FNKgI4or9bOXNLczhGq+n?=
 =?us-ascii?Q?6gGr2jXJXydKO0iDHmVg9tXmV4UmPISGlYpWea+Aalssr020k3Lhl6d0GrT+?=
 =?us-ascii?Q?MgLsq1FcpQBIwyenpY9sy4/RRiFE6Cbuq3T/8WmOsrcMoUfXAVzmRyyncccv?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95bed5e1-d121-436c-036a-08da75912246
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 20:45:43.5348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Smb8IIqkzE/gvt3/4MeYFevEwc6gfYznwVI5fhUHlx9Lv8KKTe0paSK2QS/Xl+pA3hqrT1HopFH89LMaSG/+4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/rpm: d3cold Policy
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

On Thu, Jul 21, 2022 at 03:29:53PM +0530, tilak.tangudu@intel.com wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>

This needs to be sorted out... or the patch split or use
the Co-developed-by:...

> 
> Add d3cold_sr_lmem_threshold modparam to choose between
> d3cold-off zero watt and  d3hot/d3cold-VRAM Self Refresh.
> i915 requires to evict the lmem objects to smem in order to
> support d3cold-Off. if platform does not supports vram_sr
> feature then fall back to d3hot by disabling d3cold to
> avoid the rpm suspend/resume latency.
> Extend the d3cold_sr_lmem_threshold modparam to debugfs
> i915_params so that, it can be used by igt test.
> 
> If gfx root port is not capable of sending PME from d3cold
> or doesn't have _PR3 power resources then only d3hot state
> can be supported.
> 
> Adding intel_pm_prepare_targeted_d3_state() to choose the
> correct target d3 state and cache it to intel_runtime_pm
> structure, it can be used in rpm suspend/resume callback
> accordingly.
> 
> v2: lmem->avail stopped tracking lmem usage since ttm is
> introduced, so removed lmem->avail usage in policy.
> FIXME here, lmem usage is not added, need to be added
> by using query functions.
> FIXME, Forcing the policy to enter D3COLD_OFF for
> validation purpose.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c      |  6 +++++
>  drivers/gpu/drm/i915/i915_params.c      |  5 ++++
>  drivers/gpu/drm/i915/i915_params.h      |  1 +
>  drivers/gpu/drm/i915/intel_pm.c         | 35 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h         |  1 +
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  7 +++++
>  6 files changed, 55 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 4c36554567fd..2b2e9563f149 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1581,6 +1581,12 @@ static int intel_runtime_idle(struct device *kdev)
>  	struct drm_i915_private *i915 = kdev_to_i915(kdev);
>  	int ret = 1;
>  
> +	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	ret = intel_pm_prepare_targeted_d3_state(i915);
> +	if (!ret)
> +		ret = 1;

why?

> +
> +	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	pm_runtime_mark_last_busy(kdev);
>  	pm_runtime_autosuspend(kdev);
>  
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 6fc475a5db61..4603f5c2ed77 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -197,6 +197,11 @@ i915_param_named(enable_gvt, bool, 0400,
>  	"Enable support for Intel GVT-g graphics virtualization host support(default:false)");
>  #endif
>  
> +i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
> +	"Enable VRAM Self refresh when size of lmem is greater to this threshold. "
> +	"If VRAM Self Refresh is not available then fall back to d3cold. "
> +	"It helps to optimize the suspend/resume latecy. (default: 300mb)");
> +
>  #if CONFIG_DRM_I915_REQUEST_TIMEOUT
>  i915_param_named_unsafe(request_timeout_ms, uint, 0600,
>  			"Default request/fence/batch buffer expiration timeout.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 2733cb6cfe09..1a86711038da 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -75,6 +75,7 @@ struct drm_printer;
>  	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
>  	param(unsigned int, lmem_size, 0, 0400) \
>  	param(unsigned int, lmem_bar_size, 0, 0400) \
> +	param(int, d3cold_sr_lmem_threshold, 300, 0600) \
>  	/* leave bools at the end to not create holes */ \
>  	param(bool, enable_hangcheck, true, 0600) \
>  	param(bool, load_detect_test, false, 0600) \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index f06babdb3a8c..20b0638ecd5c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -8287,6 +8287,41 @@ void intel_pm_setup(struct drm_i915_private *dev_priv)
>  	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
>  }
>  
> +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915)
> +{
> +	struct intel_runtime_pm *rpm = &i915->runtime_pm;
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	u64 lmem_used = 0;
> +	struct pci_dev *root_pdev;
> +	int ret = 0;
> +
> +	/* igfx will return from here */

then this patch is preventing runtime_pm on igfx no?!
or we need to return 0...

> +	root_pdev = pcie_find_root_port(pdev);
> +	if (!root_pdev)
> +		return ret;
> +
> +	/* D3Cold requires PME capability and _PR3 power resource */
> +	if (!pci_pme_capable(root_pdev, PCI_D3cold) || !pci_pr3_present(root_pdev))
> +		return ret;

If this is the case we probably need to block D3cold, but not D3hot, right?

> +
> +	/* FXME query the LMEM usage and fill lmem_used */
> +	/* Trigger D3COLD_OFF always to validate with all tests */
> +	if (lmem_used < i915->params.d3cold_sr_lmem_threshold  * 1024 * 1024) {
> +		rpm->d3_state = INTEL_D3COLD_OFF;
> +		drm_dbg(&i915->drm, "Prepared for D3Cold off\n");
> +	} else {
> +		/* Disable D3Cold to reduce the eviction latency */
> +		rpm->d3_state = INTEL_D3HOT;
> +	}
> +
> +	if (rpm->d3_state == INTEL_D3HOT)
> +		pci_d3cold_disable(root_pdev);
> +	else
> +		pci_d3cold_enable(root_pdev);

why not merge these both if states?

> +
> +	return ret;
> +}
> +
>  static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
>  {
>  	struct intel_dbuf_state *dbuf_state;
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 945503ae493e..7827b0c1a2f3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -31,6 +31,7 @@ int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
>  void intel_init_pm(struct drm_i915_private *dev_priv);
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
>  void intel_pm_setup(struct drm_i915_private *dev_priv);
> +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915);
>  void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index 99418c3a934a..568559b71b70 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -22,6 +22,12 @@ enum i915_drm_suspend_mode {
>  	I915_DRM_SUSPEND_HIBERNATE,
>  };
>  
> +enum intel_gfx_d3_state {
> +	INTEL_D3HOT,
> +	INTEL_D3COLD_OFF,
> +	INTEL_D3COLD_VRAM_SR,
> +};
> +
>  /*
>   * This struct helps tracking the state needed for runtime PM, which puts the
>   * device in PCI D3 state. Notice that when this happens, nothing on the
> @@ -52,6 +58,7 @@ struct intel_runtime_pm {
>  	bool suspended;
>  	bool irqs_enabled;
>  	bool no_wakeref_tracking;
> +	enum intel_gfx_d3_state d3_state;
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  	/*
> -- 
> 2.25.1
> 
