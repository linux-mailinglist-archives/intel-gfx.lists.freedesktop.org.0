Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9DA9E562C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 14:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6958F10E3AF;
	Thu,  5 Dec 2024 13:05:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nw5h5s4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8652510E3AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 13:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733403930; x=1764939930;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rYORWbjbDT/JOuazWD5YbYf7PNkQCEpWaWxkg4x04oI=;
 b=nw5h5s4mlrJZtCusFAk2qdVwB/djdcMFcwpMzKgJA9INFoQTE3KinQAv
 fj46jRHQDLbnupFNKeaJJrZVfKS0Va4tvA9gwJipNcIGdFsgcgrCT/5zO
 mLR/RNhB/ftKCi1P9Zzs1x3phqpv56oQukbJsjDsTcHO+T1hxDS3rdI9L
 f3bLGCZDLT22kUhApTkI8qQd9EML86BrzsimJxAJzKuALGoWa6CCWCNx0
 8aEAwINv+FbM1+XNzWIOI0NMpveXZPSg0JxDDVjHhXn7cXsgDnW+LrJOn
 vZfxF8TU8ZrsTdMaT+bYPJ1I8aj6buoMZbyS962SnF+EUbc1WgAUgPE55 Q==;
X-CSE-ConnectionGUID: FSRlKQO5QnGBJ5tCQRaAAA==
X-CSE-MsgGUID: Pb9ZwH+rRuKm6KB530WWOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33850148"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33850148"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:05:30 -0800
X-CSE-ConnectionGUID: h3p18ZjUQgq060SE3OGxhA==
X-CSE-MsgGUID: Xamtyeh0SOeftABsOwLbEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="99128485"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:05:28 -0800
Date: Thu, 5 Dec 2024 14:05:23 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Subject: Re: [PATCH v1 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Message-ID: <Z1GlE9-Z_3SVnTRq@ashyti-mobl2.lan>
References: <20241205115736.1420991-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205115736.1420991-1-nitin.r.gote@intel.com>
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

On Thu, Dec 05, 2024 at 05:27:36PM +0530, Nitin Gote wrote:
> Issue is seen again where engine resets fails because the engine resumes
> from an incorrect RING_HEAD. So, increase a time if at first the
> write doesn't succeed and retry again.
> 
> Fixes: 6ef0e3ef2662 ("drm/i915/gt: Retry RING_HEAD reset until it get sticks")

Is this a real fix or is it more of a fine tuning?

> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

...

> @@ -231,7 +231,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	set_pp_dir(engine);
>  
>  	/* First wake the ring up to an empty/idle ring */
> -	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
> +	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);

Where is this 50 coming from?

Thanks,
Andi

>  			ktime_before(ktime_get(), (kt)); cpu_relax()) {
>  		/*
>  		 * In case of resets fails because engine resumes from
> -- 
> 2.25.1
