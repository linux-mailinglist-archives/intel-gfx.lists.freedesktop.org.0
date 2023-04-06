Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CFD6DA36C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 22:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9B010ED15;
	Thu,  6 Apr 2023 20:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE5910ED15;
 Thu,  6 Apr 2023 20:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680813509; x=1712349509;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=chqiawdJd7XO5ZMpoLJrv0yG+2r7Fn9Xk+UeP+r3fTQ=;
 b=KUmeiv7kEW7SB1bG3yMlrGvmFdQSsOymfBCRHhcjcBFHvZphJf7mJtw3
 kmY4yzo7Sp/g0oI3r84N7tUwrin7RJ+dOOe5qtPGDRTg/2oJwske9Mis2
 Z/GYz844x+v4t+QyJkMAijn28ei+U6Tbrv1g1w4CK3QWkc0xFvbCf7jKb
 W4GPzDkpBZD+UHODE7H8Cll8j65br6VmND5RehNXnTaY+6NSOwNgiiP0n
 WFj5UxySdPMhzOZfQzvm960LIvHo5ZSfh7dj3HG34idBA0O6Cf1SoUvTu
 7gMZUhLoSZUBsXDAy6cgXgHU20AfcdOrx1ydYriKMsRMUct9DjSO9iqY2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="344603155"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="344603155"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 13:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="756464214"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="756464214"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 06 Apr 2023 13:38:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 13:38:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 13:38:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 13:38:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NBdXG8ND1eKVdU8sXexTXuZzYEBf0MdBb1gI0qAepAhNhBGcNL8lO10ImJFg6B+GnsL8rl7ZQUhQA3bQCzfPvMxUgjpede616HHF0fPhbILpsg73PWj+YaksQoxB5fits2HNRLdInf99tZTRrIoyoVjBG7HW4qNx/VW9PMZXY8ZEbjjIGc8xM91an99HwdkONIUFM+DKuMk7eb6+lQooSwAeyWJQULM6eUA+kKzBi31Zhl/PTkBI1vE4C7TICRvQfyBefg7Qwl2VtzwSE3hfJ0RFy0FhJ1SSK0THFVCGptxoED8+FEP3r+RqDR5ZEQ3kRU+47YwPRiuX8jlXQ9fpgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4z4Nq3AeCEeQgLYwYST1UX5tCpnhTpZxSJ+OlLADmM=;
 b=AybPQ3urY32sriE66WEXk5CyGG/oKZicKKvRNx1s6x6mOHvfoAIMl69mnwHhBzRFBDZqsEvRmwYWuE621jJnYmo0i0BEmzrJE74WfXNsdabqtLE6EEP6rz4hmkdQwcJ4hMT3/M2zuvVQ6uPm6J9l5NiYKhxtkYsFIbiecci1BWWeMRLLVXRRBFTrQj8DeVFURZ737dVstXdWsTHRmig9ZCtJbMDpxvLXG7JVGi+tLeyk9ipWTe5zzSuiJWhHl1jFIgqKNwQpM23uiepxF/zaQEiv98caBavsgIwZgv52pQjfDVcGQ1uo0qb8QVc0ysJzUkyW0Swvdwqy4wWUC34xUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW3PR11MB4730.namprd11.prod.outlook.com (2603:10b6:303:58::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Thu, 6 Apr
 2023 20:38:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.031; Thu, 6 Apr 2023
 20:38:23 +0000
Date: Thu, 6 Apr 2023 16:38:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <ZC8tvEoKW425Sbeh@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230406143133.29474-1-jose.souza@intel.com>
X-ClientProxiedBy: SJ0PR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW3PR11MB4730:EE_
X-MS-Office365-Filtering-Correlation-Id: b4901898-2670-4ec1-3406-08db36dedd73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k4f3m7IvQVjU+YaocXM6ooAVdNkKK+XXKq8QXr1FwEBoIYCtMVCpFZXN7MlVzE7HoVrikD2Kigz3Fq0SpBwKmlMnxPt8XS/fDAyr6EB56sNBYVC45fn+w+Yc31IipVYDs575s1dRLsipRGcnXmoWC95PXIxNcpfkgf7fjQEbJsch7OyKc8cu2Fl9fA4A0StiTfIZoyd1CVksMahN62A3JexfREaxceQhyYA1nTV3HsshQkBdbs5HvBBRP36LdaDF9OisiHO3leBfymt0knx2i/W4iWAySCiOm1eAF2pGjchTyKYjtI1HmZ7PFIvH9WrA7iXHu/yXBBs188sZ0AnloCUw83vc5NG3vSyC193VJ7+I8BU7HV9WHQDziJKj4Ljr8pGKYozq32A2N54AwdF3si2N2Fin6AoH1OnaUD8WnAfnXRnVcUU/Jm45Qbrma05zJGJNVAtHmumL9tZ9A/8ijWLg/mBxOtcxQH1LyNgb8j0DSGtrkVwuyM79fheWNmJqeI391UsngNnm7r5HBNcczw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(366004)(39860400002)(136003)(451199021)(26005)(6636002)(37006003)(478600001)(86362001)(6506007)(966005)(6486002)(6512007)(36756003)(186003)(316002)(82960400001)(66556008)(66476007)(66946007)(4326008)(8676002)(5660300002)(38100700002)(450100002)(83380400001)(44832011)(41300700001)(2906002)(8936002)(6862004)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0oTyY0dsCZt2+yjXeIarx+gVNkXXNB15pRk9IH23SQHW0nMayy87rMcwmt?=
 =?iso-8859-1?Q?MQeQcsDuCsPAsS6I7p71lUgjUTRenSBCEYg0PH43GECE+U9A3SQeLVpC4g?=
 =?iso-8859-1?Q?Ei1nHBCvokI1Ge4WEclPDadsoAEUWcgqUr1gxHpSy4WzavsgpiyIoobkMr?=
 =?iso-8859-1?Q?eaaWDRzIixBMkEVAt3DGu+buI7y4U14sNybhySJ/rgexQHJw1nVnjORQHg?=
 =?iso-8859-1?Q?gfa+a5WgAzBoRp9OoN+2MI7VRkDHTACP+Gz3zAOUzd9heiMZwHTlEzN+F9?=
 =?iso-8859-1?Q?IO3rdl7gbVjKQYgEkPmoioEpu1Gog6OIdr3TcICBCXXBcHmAisfhqsNSU0?=
 =?iso-8859-1?Q?dMNgaNVOr+ccswQAxZ3/Pl0OuuSfPDStykHnBgS/5zNCcghZqdQZvOFbC1?=
 =?iso-8859-1?Q?exLHL6WObTTuFoW2dJANaLFLaA1SdyIbm4iUSqQb5hL1KeiM6FzpfTND2k?=
 =?iso-8859-1?Q?gKW9ZXtfs8CyboYPQXJ7Ww+3U43RD7O1If179rzLINQxVFt2Fly8z9ls4O?=
 =?iso-8859-1?Q?3qtwEiqazF3gYhmQ7ojyZ4Y6n6fWZN3jrpR0pQZ7v1E3cIP0RULBtQEnQY?=
 =?iso-8859-1?Q?JcBQsunO5Ai/eIH/SVNoBHCdHxPxLcvACMZHI9hLFHzyo9V8O6jfwm69RJ?=
 =?iso-8859-1?Q?AGpKLTr0tIs4j/fS/3ETL0gAlG25YKlHjGAhEYqXAZoxgcE1hW8pqRs5lH?=
 =?iso-8859-1?Q?/KgIb4E+oNJbwlQiIR9zEgZG+iK5kGMLhrphqtPiMJkSvicRRjwv91IFls?=
 =?iso-8859-1?Q?RUhd3SBCSAxRaUCbAjKgN8HFcSbaOlWa4XLdO4QDOTyWX2483lGGQp3m7N?=
 =?iso-8859-1?Q?DXYQMGwg8oaOpfT6vxLzm+02Tm/rL6bBLp5zJYhx4X6BfxB2UiDnP6M0pE?=
 =?iso-8859-1?Q?vOVFq95b8Hnkie+iCCWcX4JxCpY6Dc9wdVQVfwvGULOhwNl01w/A22hWJU?=
 =?iso-8859-1?Q?atZ3DgFxblvUOC+lykdFNTqSJPVUmNCnF1B5CP56E6q5d2eNab0XEpKu/J?=
 =?iso-8859-1?Q?pu9h0/iBVUd61sh7i0oALCuB3TOI7QbNieLizrW7cKRWkW5fezhB29yWaO?=
 =?iso-8859-1?Q?9754EnboXWcqAPWAfglp5aK4aje/9rJOXDnlJJvFDfnLWUNo5JB3t+dub/?=
 =?iso-8859-1?Q?Z0CT1/PyyeDF3A4aGwN6HDLhLhTR+Jfd3kRVO0BYmqA5TGYg1VL4E1z03R?=
 =?iso-8859-1?Q?aULQa4H2QcfMNIL3jBD/1kgUKBNTQpV0wEEGcAG2UbiWLQtqrTcy5jwofR?=
 =?iso-8859-1?Q?0vtLHcmuC/0JrLWyx3cJ5s1V/pG/gB852TsoByVH+q0SuWl4RoVXh0iKYe?=
 =?iso-8859-1?Q?rWM1saRtgE5QBxTOSuoZiOb3N4wdCU5Vt30Su5u5yeDDeW7JLKaJ5nuHu5?=
 =?iso-8859-1?Q?+1mV9m4n7NG8f7UDSvII/SXPt3SXt2TQDfBhcwY1+9UhNK6JXojIFCZkVt?=
 =?iso-8859-1?Q?zzebtYs2vzsbDIrYC3VMST8CQ1Tt7+Wmm/Y2U5uokfreh33eyL720e0N+6?=
 =?iso-8859-1?Q?LtM7r7euWxRrKth/UOjrd6fmaCg4kUJyJKPCrMdyx43hgDx8wGp2Vx6Ocb?=
 =?iso-8859-1?Q?NZSjMC1tUxghriMmH8DPgp2HLswBlOR+QISWpGaB9mQWhRP7+KYj+vchuk?=
 =?iso-8859-1?Q?hiDLepJF/mm0ZzKAuoGcjaklEHGlYCZrJEuIF2hRlhhUFPOFZBd58v1Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4901898-2670-4ec1-3406-08db36dedd73
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 20:38:23.2299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ER5yk36trGpJoCyk7wy6NzN0dE1fpj4W/Xt+xr/rb5yRGW3drsxt3Q/vlLR7HKN72VrUWiH0gpI4PGQrnXHm7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4730
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 1/6] drm/i915: Nuke
 unused dsparb_lock
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 06, 2023 at 07:31:28AM -0700, José Roberto de Souza wrote:
> dsparb_lock it not used anymore, nuke it.

Well, this doesn't exist in our drm-tip baseline, so it would be good
if this patch is a fixup! to whatever patch is adding this back here.

Take a look to the Jani series I just pushed:

https://lists.freedesktop.org/archives/intel-xe/2023-April/002000.html

I believe you should make this series on something more like that.
so on a next step I run a rebase --autosquash and we get cleaner patches.

Also, I believe this series here might conflict with that, so I'm
afraid you will have to rebase it anyway. Sorry about that...

> 
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 3 ---
>  drivers/gpu/drm/i915/i915_driver.c                | 1 -
>  2 files changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index cc058eb303ee8..d2346d43d1162 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -266,9 +266,6 @@ struct intel_wm {
>  	 */
>  	struct mutex wm_mutex;
>  
> -	/* protects DSPARB registers on pre-g4x/vlv/chv */
> -	spinlock_t dsparb_lock;
> -
>  	bool ipc_enabled;
>  };
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 066d79c2069c4..ea2cc56d18a6e 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -214,7 +214,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	spin_lock_init(&dev_priv->irq_lock);
>  	spin_lock_init(&dev_priv->gpu_error.lock);
>  	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> -	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
>  	mutex_init(&dev_priv->display.backlight.lock);
>  
>  	mutex_init(&dev_priv->sb_lock);
> -- 
> 2.40.0
> 
