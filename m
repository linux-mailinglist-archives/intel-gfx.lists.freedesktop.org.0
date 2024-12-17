Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDA59F5529
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 18:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34B310E0F5;
	Tue, 17 Dec 2024 17:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jTNlLUuM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51CD710E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 17:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458152; x=1765994152;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zeg4nt4smrE2JH6ZHL6sJNdC9RUHek+kAS8HAMO/+wY=;
 b=jTNlLUuMH1AmN4z8pgjygC/RViht2FuSgKkhIpT8+bPAI+SesSCQ5rWC
 BKSeNbJum40BCgmTxSD65gmh6NGpLnIIdtNIjbJK3W/Dqv4yQmwew5CiG
 dz9tWz1XFQUDhi05NfRYhLMPsYbaXlP/P2PxkpLG4qA7mBAAPatcAUIhk
 b/0Ba1mj2HXw8MsLbwjKAJsQFT9c/4LlPc7s6IhXehcYXktOXg8F77EDs
 tIAdKUKwGZmkliYhXkjjG/zOTT8siiKQT4bg8LO8BPvboqX8C0RQgQVuA
 xmBZwDVdC54pJaZC7TUayKumqYxmx1fm9caDQLa3GlOoZ8BCKvPILb8lK A==;
X-CSE-ConnectionGUID: rklVFSp1QGKSGDggrNtHmQ==
X-CSE-MsgGUID: unE8BlGXQ5KR0OhcbBOV4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="45594414"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="45594414"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 09:55:52 -0800
X-CSE-ConnectionGUID: oGViu16gRaW/dr6eorriWQ==
X-CSE-MsgGUID: MjisTe9NRPyOXBJ3yDf4bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="97644262"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.58])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 09:55:50 -0800
Date: Tue, 17 Dec 2024 18:55:46 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Subject: Re: [PATCH v2 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Message-ID: <Z2G7IhxlDVk2xIlw@ashyti-mobl2.lan>
References: <20241217063532.2729031-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217063532.2729031-1-nitin.r.gote@intel.com>
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

Hi Nitin,

...

> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 32f3b52a183a..d56410863f26 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -230,8 +230,13 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  
>  	set_pp_dir(engine);
>  
> -	/* First wake the ring up to an empty/idle ring */
> -	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
> +	/*
> +	 * First wake the ring up to an empty/idle ring.
> +	 * Use 50ms of delay to let the engine write successfully
> +	 * for all platforms. Experimented with different values and

I'm going to change /Experimented/Experiments/

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> +	 * determined that 50ms works best based on testing.
> +	 */
> +	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);
>  			ktime_before(ktime_get(), (kt)); cpu_relax()) {
>  		/*
>  		 * In case of resets fails because engine resumes from
> -- 
> 2.25.1
