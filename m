Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABA5A7A22B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 13:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999C610E142;
	Thu,  3 Apr 2025 11:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T06suyzh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB37210E22D;
 Thu,  3 Apr 2025 11:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743681120; x=1775217120;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CxoGIZCci/GCLDqvjKJCt2i1L8Mt6YX9QRS2KF+AZnY=;
 b=T06suyzhgO2EZLmq+k2yBU9JUDKtDU8ngUa6VpiV+VCIft3hU89OJSW0
 eQvQuud66mhXAtk4G6Q1lxWypL+Dy9DRfFbEZ+LRHAkhMYfPemzWOHrcN
 DebQlC0YORBKFgYenfGVNq+vqNxuFrMa93hRS6AKv37b53z6Ak9NaC1vw
 PJXaK1DHZIalTEG+AJ9L8N2LEEgtblZ00k3dy6bG+n1ETgoDg5/yW8YXZ
 mk8QuYK2rQL2RCeuZ50bhSQ+qRjR88bdKy09eNweRKCghHuULfEYMf3cY
 7c0XVNzCIaIkZObFm1kU5kMPvIq5EL57QYecUDlKxgO81d6q90JooDijS w==;
X-CSE-ConnectionGUID: f5sVoE67Rp2r7giUxIbpCQ==
X-CSE-MsgGUID: vDBpcu0DS3yv1kLFhKQFoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="48948961"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="48948961"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 04:51:55 -0700
X-CSE-ConnectionGUID: Aa+X/XG3TG27lK5yatpX/g==
X-CSE-MsgGUID: 7nVDT48qQkyum8unPEDyLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127836834"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 04:51:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v4 1/2] drm/i915/display/dp: Remove support for UHBR13.5
 on display14
In-Reply-To: <20250402-dprates-v4-1-752535b2068a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402-dprates-v4-0-752535b2068a@intel.com>
 <20250402-dprates-v4-1-752535b2068a@intel.com>
Date: Thu, 03 Apr 2025 14:51:50 +0300
Message-ID: <87h6351mzt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 02 Apr 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Support for UHBR 13.5 has been removed for mtl by the
> commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
> Removing UHBR13.5 on all display14- platforms due to the same
> retimer constraint.

If you're removing UHBR 13.5 support from DG2, why does the subject say
display 14 (DG2 is display 13, but it's not the only display 13), and
the commit message say display14- (which is not a convention we ever use
anywhere)?

Commit message for caf3d748f646 does not mention anything about
retimers, so what is "the same retimer constraint"? It's not explained
anywhere. I genuinely don't even know this.

I'm not nitpicking this just for the sake of nitpicking or to be
annoying. I want the commit messages to accurately reflect what the
changes do and why.

Maybe you've seen the changelogs I write for pull requests? See [1]. Now
imagine writing that changelog yourself, for hundreds of commits. What
if you couldn't even rely on the commit messages to desribe what they
do, and you had to look at the actual changes. For every single commit.

And obviously when you get, say, a bisected regression report on a
commit, and you observe the commit message doesn't match what the commit
does, then you're left wondering what is correct and how does that
correlate with the bug report.


BR,
Jani.


[1] https://lore.kernel.org/r/87h64j7b7n.fsf@intel.com



>
> v2: Reframed the commit msg (Jani)
> v4: Reframed the commit msg & update the max rate supported (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f21f9b441fc2a4e644c69410e6ec6b3d37907478..92bca701a989b03e2ad4b3d9e7d0a9ef12567e5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -481,7 +481,7 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>  
>  static int dg2_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
> +	return intel_dp_is_edp(intel_dp) ? 810000 : 1000000;
>  }
>  
>  static int icl_max_source_rate(struct intel_dp *intel_dp)
> @@ -550,7 +550,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -		1000000, 1350000,
> +		1000000,
>  	};
>  	static const int bxt_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000

-- 
Jani Nikula, Intel
