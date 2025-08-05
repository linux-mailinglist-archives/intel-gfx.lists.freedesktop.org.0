Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADD4B1BC7D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 00:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF1310E6EA;
	Tue,  5 Aug 2025 22:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X7v6z8IN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35CF10E6EA;
 Tue,  5 Aug 2025 22:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754432683; x=1785968683;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bwc6FDaRMDwpAJ23n0p7vuFaX4BUoPMA+J7rCIGW5MM=;
 b=X7v6z8INrd+/7zar6xxBYYN6kWEbYySIY6eRVwqBbhR0CHG5SFJNK0xw
 NrZ6Iusn9Jiuj/wfKYxfY3qfzwwJ9Vey2D9M3IKh84y3P6ShqDY9teC4E
 ZV4h1wkv7s5fmQQMCvKM0a7xyCVdGi2S28r6UMyFwPCUJxBp+QM11xOan
 FCAXz3c/D2wxC/95xGf2XurcXkrS6/1r2jPDrZFyH0nrYzzsCLwI4QKVh
 nRoOS+JmliZhT48F6py5WNg5BeopCElBz8Zu/1vclYq2DWyaGxAgcdrYB
 K3VnTN8p8K/ygR/2v+mwnNWEWL9Eldo+zC8Rw/hqeLOl8M76+eQNcxnN3 Q==;
X-CSE-ConnectionGUID: k4g+dGvUSJmKQyNpYhTljw==
X-CSE-MsgGUID: oGk8Su9LQZyhKE3yHlPoVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="67008423"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="67008423"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:24:42 -0700
X-CSE-ConnectionGUID: gs686CZPRSGeRY0uN8blNA==
X-CSE-MsgGUID: C6vkU8E8Qb2fsUrZA9yG3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164279637"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:24:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:24:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 15:24:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.83)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dk+vryxfhzR0EMWcNRnNRv8CacL20uVXWcsxTQmGK1HlPYflfsNWc4QgitfdKWDwnaIHvBhStYljT26z7+M5oXQBs9ZKzforUYqOPR2z2JWZXfs9qtZiH6HMF/ZxG9im7JXhPIOqoAEvzRHg+TVl/fabbPWG4cQ5kL5zdJze5eF3P1pXOatGECG7RUOAFMhjHgAMUMsekXcnKPyR7Pij7n+2uPgSIXhjx781Iyk7Khe3E40Molb9GEKBaBLL+p/cSfd8U0LtvsbIgZ9BkUtv5VIwcmek3pId9U9+U7XhhwMu28FuoLmEg2eWvt4dBT9teME3XG8jfiPU1vnJT0Uhuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SHMklKFtQaZsdflP7fNwlWliMsJsjZzUY2fEK16dpOQ=;
 b=yHZL6fk6nYryOfxaCGZwEZcgATTL0vVaGw040pBz6hDymJNu8UryqM7OHjdFJi2dq/j+JxJ5eC8EKbJDrpDJvj1rQxgSbssUep9RBqtWX8gAY/h8zS5rvQgFs5xsPpZMyAbiRYSX/4ixCHWNi5lk6Cb9ZXCOGkFp44POmsWfz7KVziNjWYcpdqH9pyRXNeNthXU/bmsL2MsmZhdNge2rUT9UGb0xSoAqiEQwNQDeR/NOQbjyvcifRDFDC0MVrNoJcyyYnCI5OyvZKs0c0qcuH+nx2EoRTl7+PZZcu0TL7h9W7bJxinYUsluw/8ptqaFYQhB+oQ5KicWYEA+ks96Wkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW4PR11MB6810.namprd11.prod.outlook.com (2603:10b6:303:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.21; Tue, 5 Aug
 2025 22:24:37 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 22:24:36 +0000
Date: Tue, 5 Aug 2025 18:24:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/dram: bypass fsb/mem freq detection on dg2
 and no display
Message-ID: <aJKEoYy1qiyaHa16@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <aa7b14eff92750fa1ddf878ac0f4e90c87b8d3d2.1753971617.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aa7b14eff92750fa1ddf878ac0f4e90c87b8d3d2.1753971617.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0085.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::26) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW4PR11MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e268115-8455-46ea-f585-08ddd46edc59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MqYP6Lva671sztikYShh9L6W8ghycKE3dC5mMABReFVkKI8M8n6S5bWjxm99?=
 =?us-ascii?Q?TB2hjy+FD+ABdQkOaicBWckbwL5jKs3huxY/Q1MigEqHZZrimhEUmGFdiWvt?=
 =?us-ascii?Q?9zofGRpuz61t0drJb9SZT8Q19WSHI0AK4txK+Alc5omo0zvEA+Nm9x1oCNjW?=
 =?us-ascii?Q?t53RnDEsctnswDk9oOvZlXv4e7tiFDEoHTOTBTEuq4LkI9Avv6mg6MaOKcQS?=
 =?us-ascii?Q?8AP5pSix5WRxi25IC3IM77WBeJqHlIpEFA371TCzJEmPfWxfGRb7oxXnwVQq?=
 =?us-ascii?Q?chB4+UvQdrzOOh8dZvJBHQwh6N0tzkGHNqi+5OVe/vCvkgsgzy5BbfqeOgNz?=
 =?us-ascii?Q?+AHwVzbUOLYrug5FylekE2bhDZ53hY/TUAzpGZX+zxDq6VJrbFugjPwSSeQK?=
 =?us-ascii?Q?AE7T4UbXYPPKbRD6LMlVMWRUoQFOvXSJPCpcgUBQu98HQKbX5E3ZzxhWNtbQ?=
 =?us-ascii?Q?JXL9SG7X61eLoGWv45yoWu9ylRbG5UJebS1lsB8aoZkYCSRH5ZfunuZ1Zcpz?=
 =?us-ascii?Q?nWLfQCU9ooqkGWMb6+wd6k5jsPPBVPohHDG0104UOFGoxduxf2rwX+LwFLx1?=
 =?us-ascii?Q?KmisjuGjOcyZ9Cnlhyqf7T9/nzxZ+IIndL4/+Q6rUBidieqvXndGUaT9TSv5?=
 =?us-ascii?Q?Oxfltc4X/JL4iw2oY+9vQEHNOrbddPaLbditJJ3Pradi4LG61K4frnTrx1f2?=
 =?us-ascii?Q?pcoILrdnz1F1A1xGC2ZvDThMhydheeHIGr/6izlc0tS6zI/eMsmw6VoMiB04?=
 =?us-ascii?Q?J180jNV3O8IamEYOqu0c3ncJ0NI14o0LHDISuggSna/QR67NC2lrxSYWsCGC?=
 =?us-ascii?Q?bZTP7mCrWy+0lgYQSJ+wpqmhsX1SjBS0P4WQ04E1Sx23zeZP2qwZ73MpIAkS?=
 =?us-ascii?Q?y/8jsJJwiPW49th1Kq1HGot0hb7shysN7EX9d/5PC0cFCijx1eYMpf4jmB5H?=
 =?us-ascii?Q?ytM3/cvTuqEI19fQPL3cHQHvknViYFs6JQuRn49cGQk3OvjLUSReWJRl6fHj?=
 =?us-ascii?Q?UwwYi6qYSTzE3uZV904MLcxe1j/ilEXp7CHtmGyEkhKSX9IjKfq4bDt9RIXM?=
 =?us-ascii?Q?VxBT27EjrPkO/xnVZPLYobs1LuoPuAvwCV+luGItW2xx1rvyo1lFU756pFjN?=
 =?us-ascii?Q?yiZx18etL/Xb7LqMGEAXgzLJtFCeOp3hwvHAIO5CSicQ+UYObSllbcTbJwuq?=
 =?us-ascii?Q?H1LEtZGmG+1Vm1aBwCjtJuRZDBilmQsMfkh68lRwM0ptDJTjRtuJz66N6gdG?=
 =?us-ascii?Q?G2DU8ukxca6v59BYGVJ+uSVbX1SVKZONPAAAsIegcNWt6o3PNVaKzIRf9Dma?=
 =?us-ascii?Q?MvBkpjXwkeN26k09TyVVQCFFeNSWZxFtQDEGS5hgcUUVds+zs+TLK9tlLQXV?=
 =?us-ascii?Q?rHRHbzh+W9HhYa7tHTBY1rbiA3mXku8Z74N2OSS4MP1c5IvN3w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F8ro0c1ue4oUGQ6nI+E3rfKLrCCai2nSJmZJX6X9iHgI2w2iFn5I1jIqCvlK?=
 =?us-ascii?Q?RfHjeU2aOAGBjDaV+JR+rj9EDg1H1bcjldHuNNAdgsj4xqJTcDbu/JRDHmQq?=
 =?us-ascii?Q?Kf0S15BNpqHY03ktACOhzZhp9g53k7+qA+/GY5uI9//5wFmK5qY75o+dYMvf?=
 =?us-ascii?Q?r5lDdCrVIa8arIgCxHarFXsD1YB8pcWdp6CECgckivarFTsif/0hA5fWnK7y?=
 =?us-ascii?Q?WrTDIDa5kSAsxIZN5ZGTb6xhfXXerfRzTpNA69OZ3KhVHcFoDXx9aIb28Zz6?=
 =?us-ascii?Q?ciCEKBi/ADL5FDRXWL5D0rtWz0c0/lIzZathGcXYhWfBh5cwHjNGtC/sCbO8?=
 =?us-ascii?Q?O6gRCZMjRxdrBhrwu62B71SMWCfP08iNBnIXn59v3uXPreswpKJpEceJAKep?=
 =?us-ascii?Q?csK0LdD9wwyX4K/glsLhRjCye92Rtzo5tQmVC2ueEwI3wbOZPYelIB2oj1Ud?=
 =?us-ascii?Q?u5BN9NufFK9OL3Od7cWEGatn0X30sv2eKo7zFOJ6e7Kfr5U7sKEvMSEavbcX?=
 =?us-ascii?Q?a6KxODnnVObmEipCXixE4GFJx0HI00CKttqdUEOIZqZa1SU84kVg7z5s80a2?=
 =?us-ascii?Q?bIqe6BWj8fs1NsXtdTPO13y7Wqg4ceJBwCix+ibqw2t9Bd88B0AcBJM79dQb?=
 =?us-ascii?Q?JUWVkC0nuoa1+hBkPBpxVSKRWOL3J7g4oSOhQLhFVYSOso01rn/3J4xSR5gJ?=
 =?us-ascii?Q?3MHkKwyCehYBcfstoOScEEHhx5i/2a4Glbvez36e+URGVScHyBdJ57QjzQnF?=
 =?us-ascii?Q?86vkouTAuQAnbuS9Fa3YCPsmwbuNflXvUCFII/HcKspnNfLp6nPKP2AsawJj?=
 =?us-ascii?Q?qbsMx+TRolvmdnGe2pqScqPNt9sd8d69ZJp6UzEfIqFB8/1OPclqn8aIu4m8?=
 =?us-ascii?Q?QYsPWhWaVX1bKGiHtrtnRQ9VFLVb/YTWdKk5A/2F/Fab59QFi46aW2xZwUHP?=
 =?us-ascii?Q?tVFSVK+u2MvXmOF5rBLeSIIjts6VGOXEQ/riv77zwGIcUAlFCJb/zbYnlF50?=
 =?us-ascii?Q?pmjxVQTaK4XUBUVgOeNDHFEV1D8xZNwqQ7h8yY+E93IzMbCR7bxkUfogXQ7s?=
 =?us-ascii?Q?hc856u06+pmLeFWWascaC2X4lfKos869+dZ2SrEs4bjCuqgxa9EExDntMX4/?=
 =?us-ascii?Q?38FWR2Sk9EYPoR9EE2fLbtxSIAF8meW/919qvIHXr3Fwdcbpp0DV/OO4PiHl?=
 =?us-ascii?Q?RF5UhCPWA2ykUn9wnNfBqA17WP8zuX/pMo/AcukSBNDMp8OMiMgmyYuKQVWF?=
 =?us-ascii?Q?ZLtSk5mRnmvo+L1Fs73RutiHh19WtAuZF1iqIEnp8xT1qYMpQlSws8E3M6zG?=
 =?us-ascii?Q?AhdIFV29IICwtV4+w2/Zo07mk6PDppzNJBVNgHhBnGCO7UHxO3gdan40Iout?=
 =?us-ascii?Q?KIL/OboynDhwb7ew2HAG4pjiZWrSzxfXLiiGG/wrlwgiMtHUjbDMIYRk45wJ?=
 =?us-ascii?Q?7wkFQMfwrcNS3q357Mgl3VquSZcsGcULCKYMFcC9IG7eEQ29eNtYKaFYiZhf?=
 =?us-ascii?Q?EmzN5Q+vIIY61w4FLSgAn0RbgJjeRqopry87SNierLzAAV8oeXyGe/fqbAmH?=
 =?us-ascii?Q?aw6yn+a0iAT2553peLC7fTftaN3KPAEReGMK2SMByetsP1KwOR+sgFGGhFJN?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e268115-8455-46ea-f585-08ddd46edc59
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 22:24:36.7243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: juZECGSt6DhgXRyiz2VNM4UL9xNnJgVFlbRpS68tR65Yf1t/aNimascnVsHcAt50bSz8pWUBZEo8EGn6kSn7mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6810
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

On Thu, Jul 31, 2025 at 05:21:24PM +0300, Jani Nikula wrote:
> Non-display now calls the intel_fsb_freq() and intel_mem_freq()
> functions, so we don't have to have the frequencies initialized for dg2
> or non-display cases.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 193e7f71a356..d896fb67270f 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -725,10 +725,13 @@ int intel_dram_detect(struct drm_i915_private *i915)
>  	struct dram_info *dram_info;
>  	int ret;
>  
> +	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
> +		return 0;
> +
>  	detect_fsb_freq(i915);
>  	detect_mem_freq(i915);

but they will only be set to zero no? do we really need to avoid it?
if so, perhaps make this change earlier?

Also I wonder what's special in DG2, but not in BMG...

>  
> -	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
> +	if (GRAPHICS_VER(i915) < 9)

what about the old gen remaining here? at least deserves a comment on why
it needs the upper calls, but not the call bellow? or should the upper
calls be in another function/flow?

>  		return 0;
>  
>  	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
> -- 
> 2.39.5
> 
