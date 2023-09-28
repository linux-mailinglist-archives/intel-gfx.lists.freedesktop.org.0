Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C5E7B224C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 18:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8584E10E691;
	Thu, 28 Sep 2023 16:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B5B10E691
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 16:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695918523; x=1727454523;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nPHrUbjIA100PnERlbfP+dtl3vHrW7jcoXsqThS+hts=;
 b=j43OBmSonJsdRtVg80u60YKfEW5w9ukenLJrmacA++ye9aq5qbRQAkhb
 aspSNAx+/KmMjm8YnUkfilC8wxqrHocsnce389Hgj9FlaM4X9akRIX7qu
 zGYiPbKO+Z8wzsXZGbFmBx7vo4zOLy99gR14K+NU5oomTr6hyYO4UIe5u
 pQyzoDcid4Uin0vbRxDOLWJtAD6u5Yw981vHQNG7zH1CHgYyrh/WiMx4X
 173fQjOfHfs+VTqiFt1fE3PLgN/0E107JWK54nIBkpMPKgt9Z8vqw+14H
 niFeB3nhPEtO0TrFN8qCluZvakaYwkq+pueZth48oTqUA3ZMVk67dIVuy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384921771"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384921771"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 09:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873334458"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="873334458"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2023 09:25:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 09:25:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 28 Sep 2023 09:25:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 28 Sep 2023 09:25:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XxYgWBjcTRw82cbcYTmAUtFBmbObc45b1nQEGolJTygq6QWNz1LHoi7NQLJYRWi3nZKmSWsgPozFC2b7pOtQrkVioIteQxxWp8lvkUmgnCk9s35dXKHaG/H6OKoONYY/OiNajmie8I9ZS8MBcRX0IXuYqRwjyYJgJq7MfKktCNq49F4n3uLAPjhqOQw8JX52LGFApdXNFOb3svEtD/QRIKIaL/0SC47DFvr8JCIBhxllZP8ZHmiVaeut1XOqJxzBREOb6zz69qvesrWPlUU9iyhzXQ/mrusR6v6gr8NboZhD1Tf1ebzXC1vnaFDKnI0k/B3pTWtFzKEGlrsw52zkMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UzMpWIbZNuIxqliEU/GBiTrvFRf6vyukM+BgoV9WckU=;
 b=Cmd4XSm7SdSj3FWu9xHeVaIDwxEaYVjTpy1go3NBryNI5XsOmNBvjcIAnjbOIMEwKrOHtr4F30ZxaF5GtllrdNv3T9rfwjLV/zpMLwfuV4GWPnZ4ntOSl7EuKaXI0xzKhm6oek31mJhtaWGV9Ix9PjRRHAavLpfyBh7mhHZYvuNJmqO5gqD3DSTN0q8esKYptDU9vQ2RxCeYz4LQEao/Mg0ijGUOC9IEKFCW2OHcYLQlPXhLyjhwPrD1MtquzKIbD59F9Dj+Lm9pApTrifGTED6MGHCRW8u9guXajpDjj9ALK45p2BoUk1lNafSjWlgGRT89Xy+e7bxI6j+OKQqBmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7797.namprd11.prod.outlook.com (2603:10b6:930:76::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Thu, 28 Sep 2023 16:25:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::14ea:3a78:f950:d6d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::14ea:3a78:f950:d6d0%7]) with mapi id 15.20.6838.024; Thu, 28 Sep 2023
 16:25:32 +0000
Date: Thu, 28 Sep 2023 09:25:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20230928162529.GG2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230928132235.349258-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230928132235.349258-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7797:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a39db3a-f223-4a96-ceff-08dbc03f892f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ppV+dMZSRPetBiDQgeK9oNA+W/rMAVmcDMG6dVDpBAHpTKfbDxo7HZIDjOt12R2TXeBXna09CgeV+RtfQBgCutDAWrQ+nqU4LSlMZ8L8UpVvbvLQ9BKyKm+iPD6whn7Fo7Ya5Fx1Wgd3fDHRfQ076SgVSRK2yRo6AkpXcGEvCjzl2bEeqqGJNKalfMvVkajhjdAsJP+Q9eZ2JfLkyx9Xec/Fy9OJPOQr3Jg8TKFjg6Ri2GMUHPxACe07oZDcs+S/xjHykbgZBsPirwaoieLhozn0dtTvKLQ3vsxK+bNGbgo6sIBlLD8G/jcnj80PxFc0dPySWDD6MuUYlh0wtYIfg5LEUWm3Wl3bk8DFowUkp5NzQFZ9wLnfyRX8f4tXWbAKqm473PwhxjEe0uG2p02wIm6o2ZsXEe0iyI1QF2CZNl55JpgGitabSs/nXcRBhsaIuMUgs+ImklAk4v1gK9OW7jOFbshfav38d8MQb4Fs5KtRo6Yc4bBeEGwUpr1OC1+9JOyDjRP+HESSI2ob4mhVmYF91KCkMUoBbhrNuldkKus=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(366004)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(33656002)(86362001)(5660300002)(66946007)(26005)(478600001)(6486002)(6512007)(66476007)(966005)(8936002)(54906003)(2906002)(8676002)(6916009)(41300700001)(1076003)(66556008)(316002)(4326008)(6666004)(82960400001)(66899024)(6506007)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aPzDMO7TSXsoO1GwOomNVx7SPQ6zuEWIuKsgcjX9M09tbn8KF/PGzgy8UB04?=
 =?us-ascii?Q?N4xj1g/TmPV/TsYn7VklMe+am1LEkQCHMcPi6dqNIC69gt8/ZncNeMyyabxH?=
 =?us-ascii?Q?HPQW5R8KBElUfscDJkLMEdlHxBwwnA4Yovw1b2tnbkpnpHGQ/vwk0Dlcu7lu?=
 =?us-ascii?Q?zq/5KEuE2E7N4syOOM8DFvVCrVsrG8FSptyGOStnUQydWdreR3Jp0/nG3Sqm?=
 =?us-ascii?Q?ydzBBKgd51w9R56U5y/Nd4A3RXlTRXyWVOKqkY+MpSs48Jl7nkSyyhFf/88n?=
 =?us-ascii?Q?d4PcCWBprpz+oZMqRXbW9xOdrt/zQy74O+apTwT2rX/WUQt66UxVc19gRXX4?=
 =?us-ascii?Q?0KQ988gcRcJt5VT566Z4FuntbVB4mS64aaPqd0DRTXtIGrSnEudGRTb02v9c?=
 =?us-ascii?Q?/dafxcPB0MUQe9yvYHprzucTNltG/Js6OcRHwwaWyj5MutPVPZNuXfaOWv+q?=
 =?us-ascii?Q?0aB8N2v04Pi2xbaU5ue1KMRi1/GEunJ5ZpboHQjS/70oDBqxJlS+uuLRHfb5?=
 =?us-ascii?Q?MdwRg3ij0wwjEJn6VvNy/jYajywTjvbWwyJ1vbVe0HRYmR8D/uEfVZnnHvIQ?=
 =?us-ascii?Q?GUIU+RrCYcP9KoGkzfE2gGwfXEOhXgUbLswfu2uTZkUR/7N17cVMH/S5GSI3?=
 =?us-ascii?Q?zdxRo3ztaWjN9xC/l7hdSrpXGHro2C2KsRmoQF54KN6vxeF/QJUvlgc+cjBh?=
 =?us-ascii?Q?sokWreaiArUBzEFgQEvhbdC5EhMlKiAza/H8uhGV31hwVOQt6lcYBuGqWsMw?=
 =?us-ascii?Q?bI4J6ud3O1EtKiXViNrlkl/WOfZxXd+Gi16wI3tyoWZyk+XkidzCEme126nM?=
 =?us-ascii?Q?7/zFtRK1vaDAZ2ejQEV+IYOae8a0nub/Ntbj+Tt1qc6BRwgXFdarX2ZNKu+h?=
 =?us-ascii?Q?HZrNxqTN/hcJFZ837zVcTvSBl4o74CKBESiE/TyH3thOE8P0qi2Cm6uvzINB?=
 =?us-ascii?Q?O67kOGIu+MARMvUQFYTstrSCJdKJJitOEp+50B1XIdNnWSx/xKnp+ifSpcGJ?=
 =?us-ascii?Q?9EB3RJ+lULMwrYFuSJ/mx0Jy5YF5+hfIULqmlONVInX5DtYfhlE4WuuHAsEi?=
 =?us-ascii?Q?qCM3HcQoPOipIof+L1Jl4x1EoYybuQd1ywdO3P9uej5sH/2Jzdnzp9a/HW71?=
 =?us-ascii?Q?mlX+mti3NxyJsLDmWuIXp/SL2pyrra9H5kS4u+jis78qjkgCB3SLpDgfJJoC?=
 =?us-ascii?Q?zq82aK9wed/xalg7TNARsFQecXIcz/YpLVStZY/GGUAqJUSWfncZccaW5liq?=
 =?us-ascii?Q?WdwDTVEcid+Yhot7rWQqOWLYaLYPye6oUigG5i5Aw+ax4lTRKEuq0Zwtxsv2?=
 =?us-ascii?Q?rOC9pcIWAk7YzqwO5l2JhAHuSrMMycnVcfxFtaXSmDyZlSp9d3yY7kzzrAfQ?=
 =?us-ascii?Q?BkpPmsmnvvtCDOF//Byu5zaKf4aJNAn7C2QiSJagkzd11l6b1WLzGIOZKsQ8?=
 =?us-ascii?Q?dhCuTGuQl8AFFe4cUpK3JNQGZyomtBML7fV5Suj1/ARwm2hKLh+VMYuMaN/j?=
 =?us-ascii?Q?L878iv9zaNWVGnQVtFUelAkSKWqWXcZ7yDLt0GSpuEv+70beD5cEFtIC0FhY?=
 =?us-ascii?Q?r8GK3ilAdl+TafZ+OPwAo2PbcyGmSDkmQcKtQO4TffSYlMeAy8nnQwlnN7lV?=
 =?us-ascii?Q?ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a39db3a-f223-4a96-ceff-08dbc03f892f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 16:25:32.1935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GeQzG7qYyBMBY3yuxjC4MF8scAetfgwD0rfKebZsKfrthmwTvX2KHbUem3zxAPKImvrG//3jRbtZXk6TKh0J0L7g75aKtlXNfoxcUdJ8KQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7797
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/gt: Force mcr lock takeover if
 hardware forgot to release it
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 28, 2023 at 03:22:35PM +0200, Andi Shyti wrote:
> While discussing with Nirmoy offline about this other way for
> fixing lock contention, he was a bit sceptical about it.
> 
> But why not? We know that if we fall into this case it's because
> some hardware component has forgotten to release the lock within
> 100ms. So that we have two possibilities, either bail out or
> force the unlock.
> 
> Forcing the unlock might not be respectful to the environment,
> but, at the end, i915 should have the highest priority.
> 
> Nirmoy's solution here[*] is to force the unlock during gt
> resume, but what happens if meantime the hardware takes the lock
> and doesn't release it?
> 
> Open for opinions or profligate rejections :-)
> 
> I'm also curious to see what CI has to say about.
> 
> [*] https://patchwork.freedesktop.org/series/124397/
> 

As far as I can tell, this patch doesn't really do anything beneficial
that I can see.  We already unlock and proceed today if we hit a lock
timeout:

 - intel_gt_mcr_lock
   - attempt to get lock
   - timeout, warn, add CI taint
 - perform MCR register access even if the lock failed
 - intel_gt_mcr_unlock
   - lock is released regardless of whether we obtained it successfully
     at the beginning, or whether someone else was still holding it

With your patch, it looks like you're just adding an extra
unlock/reacquire step before we move on which I don't think accomplishes
anything.  If someone else forgot to release the lock, then we're still
protected from other agents, and we'll take care of releasing it
ourselves once we're done.  If the other agent actually is still using
the lock and they're just going slower than we expected, then when they
finally finish they're just going to blindly unlock; if we're in the
middle of our critical section at that point, they'll release our lock
the same way we released theirs.  The main change here is that when we
hit a timeout, your patch is giving other outside agents a chance to sneak in
and re-grab the lock, further delaying our KMD acquisition.

The real-world IFWI problems we saw, which Nirmoy's series is working
around, is that some boot-time agent simply forgot to ever release the
lock, leaving it locked "forever" so it makes sense to sanitize it
initially.  Load/resume is the only time when it's actually "safe" to
reset/sanitize the lock like that.  If we're getting MCR timeouts during
regular driver operation (i.e., not during the beginning of driver load
or resume), then it either means our timeout values are too quick (i.e.,
we're not giving external agents sufficient time to run their critical
sections), or some piece of system firmware (e.g., pcode) has completely
died in the middle of its critical section.  In the former case, we
probably need to adjust our timeout amount (and possibly work with those
firmware teams to see if they can reduce the size of their critical
sections).  In the latter case, the system is going to be so badly
broken that it doesn't really matter what we do; we're just not going to
have a functioning system anymore at that point and it's not something
the graphics driver has a way of recovering from.


Matt

> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 46 ++++++++++++++++----------
>  1 file changed, 28 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index bf4a933de03a..e3eb3c2ace68 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -371,14 +371,34 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
>  
>  	lockdep_assert_not_held(&gt->uncore->lock);
>  
> -	/*
> -	 * Starting with MTL, we need to coordinate not only with other
> -	 * driver threads, but also with hardware/firmware agents.  A dedicated
> -	 * locking register is used.
> -	 */
> -	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> -		err = wait_for(intel_uncore_read_fw(gt->uncore,
> -						    MTL_STEER_SEMAPHORE) == 0x1, 100);
> +	do {
> +		/*
> +		 * Starting with MTL, we need to coordinate not only with other
> +		 * driver threads, but also with hardware/firmware agents.  A
> +		 * dedicated locking register is used.
> +		 */
> +		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> +			err = wait_for(intel_uncore_read_fw(gt->uncore,
> +					      MTL_STEER_SEMAPHORE) == 0x1, 100);
> +		else
> +			break;
> +
> +		/*
> +		 * In theory we should never fail to acquire the HW semaphore;
> +		 * this would indicate some hardware/firmware is misbehaving and
> +		 * not releasing it properly.
> +		 */
> +		if (err == -ETIMEDOUT) {
> +			gt_warn(gt,
> +				"hardware MCR steering semaphore timed out "
> +				"forcing lock takeover\n");
> +			/*
> +			 * Force lock takeover
> +			 */
> +			intel_uncore_write_fw(gt->uncore,
> +					      MTL_STEER_SEMAPHORE, 0x1);
> +		}
> +	} while (err != -ETIMEDOUT);
>  
>  	/*
>  	 * Even on platforms with a hardware lock, we'll continue to grab
> @@ -389,16 +409,6 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
>  	spin_lock_irqsave(&gt->mcr_lock, __flags);
>  
>  	*flags = __flags;
> -
> -	/*
> -	 * In theory we should never fail to acquire the HW semaphore; this
> -	 * would indicate some hardware/firmware is misbehaving and not
> -	 * releasing it properly.
> -	 */
> -	if (err == -ETIMEDOUT) {
> -		gt_err_ratelimited(gt, "hardware MCR steering semaphore timed out");
> -		add_taint_for_CI(gt->i915, TAINT_WARN);  /* CI is now unreliable */
> -	}
>  }
>  
>  /**
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
