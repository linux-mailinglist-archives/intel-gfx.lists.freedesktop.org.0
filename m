Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB9D9E8FA5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 11:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3749210E48F;
	Mon,  9 Dec 2024 10:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n+n6M1zm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB44110E48F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 10:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733738742; x=1765274742;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RsSHykmB95an6LXYQPRlZbgLBuWKZZjXPOVvAa/qAQs=;
 b=n+n6M1zmMVu/5BnnBfxDlbnva8uX2JeBC/0qYLZyrSDuWDsleuuKeAHJ
 46MZUbtrAOZTZjug4TeJggMEhNTfANpeJrI2aqMLnRXAMVU1sh/U+ODwA
 K2ItBsr251HNwWF1+O6Q7iXRZfnIZZzLl8hYpIP+Zw8clzotveq+XFYUV
 BBIK0wPMMhnuCaaJGnl/Yq7k41+5/T1s7N75NyihYKYcXaLPqhmR3Rf39
 ocoLl5VXZaPXGSSe3uqGD5loiaHaDO2ddujGzZJEYh6nKopd23yWAtwYN
 yoVjkvu/w9ONhjIxtVq7GEF8DGN987FW/8CffY4H8jYDwOcwaRUrWiroZ Q==;
X-CSE-ConnectionGUID: cbgE9yrSQYSpUgKePDJE9g==
X-CSE-MsgGUID: 1uLaQckURjyr1BY8/xpW9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="33940876"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33940876"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 02:05:41 -0800
X-CSE-ConnectionGUID: Y1bF4rc0TKKdfvvzJvb56Q==
X-CSE-MsgGUID: +3And+34Q82GhjfBEP6/gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="99843023"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.188])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 02:05:40 -0800
Date: Mon, 9 Dec 2024 11:05:36 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Subject: Re: [PATCH v2 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Message-ID: <Z1bA8HE1Rpp5vxxH@ashyti-mobl2.lan>
References: <20241206094543.1638580-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206094543.1638580-1-nitin.r.gote@intel.com>
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

On Fri, Dec 06, 2024 at 03:15:43PM +0530, Nitin Gote wrote:
> Issue seen again where engine resets fails because the engine resumes from
> an incorrect RING_HEAD. HEAD is still not 0 even after writing into it.
> This seems to be timing issue and we experimented different values from 5ms
> to 50ms and found out that 50ms works best based on testing.
> So, if write doesn't succeed at first then retry again.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 32f3b52a183a..bc9f28524713 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -231,7 +231,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	set_pp_dir(engine);
>  
>  	/* First wake the ring up to an empty/idle ring */
> -	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
> +	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);

Can we please add the comment here as I suggested in v1? If you
don't see it necessary, please feel free to comment it here.

Thanks,
Andi
