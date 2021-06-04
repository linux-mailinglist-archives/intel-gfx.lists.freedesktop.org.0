Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B390239B4EC
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 10:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B48E6E7D1;
	Fri,  4 Jun 2021 08:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5276E43F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 08:33:11 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 h5-20020a05600c3505b029019f0654f6f1so6861763wmq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xMmsbYICx0bmcd8SbULA2wWW7KeqB0BAXT80yg8/o3E=;
 b=EaQ5I4xwR2fyrELNr/VGKGM7TspTtKrRNoAxHlLouGtnfLi67OYwHBw6FgVdlGHtao
 KL6W5pXnlJML2TIAtvFZ0OsyM0Hgi0eApprcDCxfpThF0Ye2QGuFGZkzfH3JTrfpiJq5
 D3ZA8wiMpIAinLE23StUPfXOsV/BFt7X7xIJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xMmsbYICx0bmcd8SbULA2wWW7KeqB0BAXT80yg8/o3E=;
 b=IH4RL/YeIqfckbJ+kAbCUCbsN/BuddrEagyRWnoLc0HtQUrhGjZ0NEqSSMxQwXSaOM
 dTtaoAfi2Aqs96XMzFWEqmIhtzEr5kn09BTqJS16K5bOkEhQMHG+oqmmL525hL0GWc9h
 +oe8zLFSXRfGXMdxtwYvHAFKPhSXlGFvPFrg0HapnKG5dCFwDUv9V8rY1vaICXsmG5Gw
 aagy6kB1njcRP5Yq78/DkqtrGQ90wEZP0LdpC4RhNSCCNq1xUZDoW7gUwGeq0smvRK9O
 StVrJr6PThnJ7HSvtgu0snkNeoY72n1ZOHtcmRBjN16x4hNEpyjjGcN5gFS93baH8cl5
 8m8Q==
X-Gm-Message-State: AOAM531bUK2ZiZh0xTjrKLsyDqmn5Nrbw/WWZiH2P1K/unqwdxtKosrz
 OoKTlohW2gFUhys1G0sqx5WCeQ==
X-Google-Smtp-Source: ABdhPJz3PLydBzWpcS+7asn0SKurz+Q8bSiXIbtDVdziaGyb6Lehpkwt4Ue0u6nKR9V+WLLS6z+QDA==
X-Received: by 2002:a7b:ce13:: with SMTP id m19mr1944541wmc.159.1622795590574; 
 Fri, 04 Jun 2021 01:33:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a123sm9260028wmd.2.2021.06.04.01.33.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 01:33:09 -0700 (PDT)
Date: Fri, 4 Jun 2021 10:33:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YLnlQyPJZygHTHxk@phenom.ffwll.local>
References: <20210603051630.2635-1-matthew.brost@intel.com>
 <20210603051630.2635-14-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603051630.2635-14-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915/guc: Relax CTB response
 timeout
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 10:16:23PM -0700, Matthew Brost wrote:
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> 
> In upcoming patch we will allow more CTB requests to be sent in
> parallel to the GuC for processing, so we shouldn't assume any more
> that GuC will always reply without 10ms.
> 
> Use bigger value from CONFIG_DRM_I915_GUC_CTB_TIMEOUT instead.
> 
> v2: Add CONFIG_DRM_I915_GUC_CTB_TIMEOUT config option
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>

So this is a rant, but for upstream we really need to do better than
internal:

- The driver must work by default in the optimal configuration.

- Any config change that we haven't validated _must_ taint the kernel
  (this is especially for module options, but also for config settings)

- Config need a real reason beyond "was useful for bring-up".

Our internal tree is an absolute disaster right now, with multi-line
kernel configs (different on each platform) and bespoke kernel config or
the driver just fails. We're the expert on our own hw, we should know how
it works, not offload that to users essentially asking them "how shitty do
you think Intel hw is in responding timely".

Yes I know there's a lot of these there already, they don't make a lot of
sense either.

Except if there's a real reason for this (aside from us just offloading
testing to our users instead of doing it ourselves properly) I think we
should hardcode this, with a comment explaining why. Maybe with a switch
between the PF/VF case once that's landed.

> ---
>  drivers/gpu/drm/i915/Kconfig.profile      | 10 ++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c |  5 ++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 39328567c200..0d5475b5f28a 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -38,6 +38,16 @@ config DRM_I915_USERFAULT_AUTOSUSPEND
>  	  May be 0 to disable the extra delay and solely use the device level
>  	  runtime pm autosuspend delay tunable.
>  
> +config DRM_I915_GUC_CTB_TIMEOUT
> +	int "How long to wait for the GuC to make forward progress on CTBs (ms)"
> +	default 1500 # milliseconds
> +	range 10 60000

Also range is definitely off, drm/scheduler will probably nuke you
beforehand :-)

That's kinda another issue I have with all these kconfig knobs: Maybe we
need a knob for "relax with reset attempts, my workloads overload my gpus
routinely", which then scales _all_ timeouts proportionally. But letting
the user set them all, with silly combiniations like resetting the
workload before heartbeat or stuff like that doesn't make much sense.

Anyway, tiny patch so hopefully I can leave this one out for now until
we've closed this.
-Daniel

> +	help
> +	  Configures the default timeout waiting for GuC the to make forward
> +	  progress on CTBs. e.g. Waiting for a response to a requeset.
> +
> +	  A range of 10 ms to 60000 ms is allowed.
> +
>  config DRM_I915_HEARTBEAT_INTERVAL
>  	int "Interval between heartbeat pulses (ms)"
>  	default 2500 # milliseconds
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 916c2b80c841..cf1fb09ef766 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -436,6 +436,7 @@ static int ct_write(struct intel_guc_ct *ct,
>   */
>  static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
>  {
> +	long timeout;
>  	int err;
>  
>  	/*
> @@ -443,10 +444,12 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
>  	 * up to that length of time, then switch to a slower sleep-wait loop.
>  	 * No GuC command should ever take longer than 10ms.
>  	 */
> +	timeout = CONFIG_DRM_I915_GUC_CTB_TIMEOUT;
> +
>  #define done INTEL_GUC_MSG_IS_RESPONSE(READ_ONCE(req->status))
>  	err = wait_for_us(done, 10);
>  	if (err)
> -		err = wait_for(done, 10);
> +		err = wait_for(done, timeout);
>  #undef done
>  
>  	if (unlikely(err))
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
