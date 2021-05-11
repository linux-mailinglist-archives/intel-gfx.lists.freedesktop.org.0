Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2757237ABE0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09386E7D2;
	Tue, 11 May 2021 16:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F73E6E155
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:25:37 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id r11so8755726edt.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 09:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=F0uOLys0/2HYQqBj7Sg1fWalxyUnexlt3yrwG3XhMjI=;
 b=I9uuE7pL/nDXlUY2Hcq+RLsDqtuucyAAwsW5fdRkEi6JcI52AWCq6MdCXiRVEU9rKP
 CC+xGhMgzBnI/AWwT1CNs1+efSg+CWcqEe7TCa15zKAIyG4LxpjNRHu+PwzrtEXipc5w
 ViYzSA1ycX1QMG/B+2RAr/2TMF3gBMGEpFnvU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F0uOLys0/2HYQqBj7Sg1fWalxyUnexlt3yrwG3XhMjI=;
 b=frnHoZM03ubTK3SQyHhKPewTSK1Q3tgmSiL3aneuDa/eY5biV/y4yjkXnInxTzMBtY
 uZvVocYOMxR9a71VNohetM8979zJW8XK4imnDiRkW3G/uZLrcrnUNIpxo5XfFiJpuZYd
 LBICdlU6l7HCj+PnKTYyKFnMOBE/BUaXzloY3Mf4FXyt/d754yQgka0cNm4Z21dXFWfH
 KbJsW7t4p0qlGQweNdL+Z8rQZ/fNrD1N0jkNPz9gVrqg17fRcBSWYYl37PysN22WyzC7
 vW6lu1CnDGgIeULkFCJKuqnVJ6TyVywcecBZGnaWZxKpgN3I4sGdPqBU2BmFwJcxfhzr
 7XfA==
X-Gm-Message-State: AOAM533MW7luCqbBF6V+UMQTR4q/6w/ibIObNat3eVASj+1xIRPgQ5+I
 3Ep9NGUAyUicrm73Es33MY/bHA==
X-Google-Smtp-Source: ABdhPJzJl7dj7EvTkRuluWTC0U2oWW6bJBKjPHOhT4gGxGAUs+e4lp3pNRKWm0Jrm7gt+vx4far41A==
X-Received: by 2002:a05:6402:348d:: with SMTP id
 v13mr4387653edc.63.1620750335923; 
 Tue, 11 May 2021 09:25:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j7sm15136480edv.40.2021.05.11.09.25.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 09:25:35 -0700 (PDT)
Date: Tue, 11 May 2021 18:25:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YJqv/XLM2iPkn+aR@phenom.ffwll.local>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-69-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506191451.77768-69-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [RFC PATCH 68/97] drm/i915/guc: Handle context
 reset notification
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 06, 2021 at 12:14:22PM -0700, Matthew Brost wrote:
> GuC will issue a reset on detecting an engine hang and will notify
> the driver via a G2H message. The driver will service the notification
> by resetting the guilty context to a simple state or banning it
> completely.
> 
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Entirely aside, but I wonder whether we shouldn't just make
non-recoverable contexts the only thing we support. But probably a too big
can of worms.
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  6 ++++
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 35 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_trace.h             | 10 ++++++
>  4 files changed, 53 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 277b4496a20e..a2abe1c422e3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -263,6 +263,8 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>  					  const u32 *msg, u32 len);
>  int intel_guc_sched_done_process_msg(struct intel_guc *guc,
>  				     const u32 *msg, u32 len);
> +int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> +					const u32 *msg, u32 len);
>  
>  void intel_guc_submission_reset_prepare(struct intel_guc *guc);
>  void intel_guc_submission_reset(struct intel_guc *guc, bool stalled);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index b3194d753b13..9c84b2ba63a8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -941,6 +941,12 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>  			CT_ERROR(ct, "schedule context failed %x %*ph\n",
>  				  action, 4 * len, payload);
>  		break;
> +	case INTEL_GUC_ACTION_CONTEXT_RESET_NOTIFICATION:
> +		ret = intel_guc_context_reset_process_msg(guc, payload, len);
> +		if (unlikely(ret))
> +			CT_ERROR(ct, "context reset notification failed %x %*ph\n",
> +				  action, 4 * len, payload);
> +		break;
>  	default:
>  		ret = -EOPNOTSUPP;
>  		break;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2c3791fc24b7..940017495731 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2192,6 +2192,41 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
>  	return 0;
>  }
>  
> +static void guc_context_replay(struct intel_context *ce)
> +{
> +	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
> +
> +	__guc_reset_context(ce, true);
> +	i915_sched_engine_hi_kick(sched_engine);
> +}
> +
> +static void guc_handle_context_reset(struct intel_guc *guc,
> +				     struct intel_context *ce)
> +{
> +	trace_intel_context_reset(ce);
> +	guc_context_replay(ce);
> +}
> +
> +int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> +					const u32 *msg, u32 len)
> +{
> +	struct intel_context *ce;
> +	int desc_idx = msg[0];
> +
> +	if (unlikely(len != 1)) {
> +		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
> +		return -EPROTO;
> +	}
> +
> +	ce = g2h_context_lookup(guc, desc_idx);
> +	if (unlikely(!ce))
> +		return -EPROTO;
> +
> +	guc_handle_context_reset(guc, ce);
> +
> +	return 0;
> +}
> +
>  void intel_guc_log_submission_info(struct intel_guc *guc,
>  				   struct drm_printer *p)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index 97c2e83984ed..c095c4d39456 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -929,6 +929,11 @@ DECLARE_EVENT_CLASS(intel_context,
>  		      __entry->guc_sched_state_no_lock)
>  );
>  
> +DEFINE_EVENT(intel_context, intel_context_reset,
> +	     TP_PROTO(struct intel_context *ce),
> +	     TP_ARGS(ce)
> +);
> +
>  DEFINE_EVENT(intel_context, intel_context_register,
>  	     TP_PROTO(struct intel_context *ce),
>  	     TP_ARGS(ce)
> @@ -1026,6 +1031,11 @@ trace_i915_request_out(struct i915_request *rq)
>  {
>  }
>  
> +static inline void
> +trace_intel_context_reset(struct intel_context *ce)
> +{
> +}
> +
>  static inline void
>  trace_intel_context_register(struct intel_context *ce)
>  {
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
