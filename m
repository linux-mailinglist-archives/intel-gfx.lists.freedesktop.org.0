Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0710EA4EA1F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 18:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F5810E040;
	Tue,  4 Mar 2025 17:56:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mBkh8jd1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0EB10E040;
 Tue,  4 Mar 2025 17:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741110995; x=1772646995;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SQDfgYhRLB/C1zc8Ydvrk+ZwuYLHOV+VLk34lZy+Alc=;
 b=mBkh8jd1ZsOneo6EQ1SPrYU4wCSoAi9xR62vnQ9JuycTWoHTdWiV5Z4E
 nDFU+dbNYOQJp/i4FZgCaBtxI49IpkubaRqYPom/OeMihNrxFPKwFix56
 Y470iM6ZSXWJggPQ8AqPu4/VJYt9PfVlnRnDHr6Drhl/PM8bAQTyluhSQ
 oF4x9TfDu871tEGcxYjeLg+7SXWQUApgd2CFBD3tOW8uN0PNFduRANXKb
 +eoKHUihJz9tbMMckiFYwfgNmx+1VW8WorB9QWZVnSNA/Opq+Je7dTutl
 5Reimuoi6qx+umiGD4+/b7Ow16AXAM+YEzbdAeWOqDArI5KIGxb1uEud3 w==;
X-CSE-ConnectionGUID: 9kuy7eedTHud1sc0yajX2A==
X-CSE-MsgGUID: 2ee3CJ75RjCooPr2wqwIwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45820806"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="45820806"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 09:56:33 -0800
X-CSE-ConnectionGUID: Aqev/MVXTzWAhPSfo4Y8jg==
X-CSE-MsgGUID: BC9Z7nc6RLyC1DdwPRyPJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="123048758"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 09:56:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 5/6] drm/i915/dp: Queue a link check after link
 training is complete
In-Reply-To: <20250304152917.3407080-6-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-6-imre.deak@intel.com>
Date: Tue, 04 Mar 2025 19:56:28 +0200
Message-ID: <87sensy90z.fsf@intel.com>
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

On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> After link training - both in case of a passing and failing LT result -
> a work is scheduled to check the link state. This check should take
> place after the link training is completed by disabling the link
> training pattern and setting intel_dp::link_trained=true. Atm, the work
> is scheduled before these steps, which may result in checking the link
> state too early (and thus not retraining the link as expected).
>
> Fix the above by scheduling the link check work after link training is
> complete.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c   | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 3906c11acc968..c1be073b9fc48 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1110,6 +1110,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
>  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  
>  	intel_dp->link_trained = true;

Side note, it's a bit misleading that we set this even if link training
failed... but we probably depend on it.

> @@ -1124,6 +1125,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  	}
>  
>  	intel_hpd_unblock(encoder);
> +
> +	if (!display->hotplug.ignore_long_hpd &&

We already poke at this directly elsewhere in the file, but I'm not a
fan of doing so. We should have a function and use that. The fact that
we can do anything doesn't mean we should.

I guess that's for another patch, another time.

> +	    intel_dp->link.seq_train_failures < 2) {

It's not great that the magic 2 is duplicated. It was fine in one place.

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
> +
> +		intel_encoder_link_check_queue_work(encoder, delay_ms);
> +	}
>  }
>  
>  static bool
> @@ -1628,7 +1636,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
>  	} else if (passed) {
>  		intel_dp->link.seq_train_failures = 0;
> -		intel_encoder_link_check_queue_work(encoder, 2000);
>  		return;
>  	}
>  
> @@ -1651,10 +1658,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	if (intel_dp->link.seq_train_failures < 2) {
> -		intel_encoder_link_check_queue_work(encoder, 0);
> +	if (intel_dp->link.seq_train_failures < 2)
>  		return;
> -	}
>  
>  	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))



>  		return;

-- 
Jani Nikula, Intel
