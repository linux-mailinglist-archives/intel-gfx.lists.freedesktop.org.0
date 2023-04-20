Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3636E9317
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 13:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A454F10E2CD;
	Thu, 20 Apr 2023 11:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888F110E253
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 11:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681990850; x=1713526850;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KlSAm+ok84WXs9UCEVeI1HmURtPSb/Mm5KCSuuetITU=;
 b=ltq5b4V8dLSeHd49lWxAAbKO3s6yxnCFUfwcU9iA290PXmt89x3MhRvU
 zDlc5kt4blV6imxRdv+Va1keQcS0mhBvw1HWAtX+tT1P6PqUMKwFwP5/f
 m7BS1TJ9z2nlMAFcmpvHyQV/fGRH7gyHueklSWLtcVCH+HWnIf6QukzkW
 Tw3mkWclS5UubiG0S/lDGTZuEXVA1jxlh66EM8v00SqhfDT8fekDHGHmC
 0jvUiQkEt+GSDQvzX5MQuqrVkNHmZxKT/DFtHxQAP25mDI0cgexAH9iew
 b7+YYL0juSbGFT46mlS9zCj/p7y8JCdCI2BGZPW6kn857uIaPgzujoqxr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="344461771"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="344461771"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="866224117"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="866224117"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:40:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZD7T3H4SH0J7Eai9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230417153741.1074692-1-jani.nikula@intel.com>
 <20230417153741.1074692-2-jani.nikula@intel.com>
 <ZD7T3H4SH0J7Eai9@intel.com>
Date: Thu, 20 Apr 2023 14:40:46 +0300
Message-ID: <87bkjiwzlt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: throw out struct
 intel_load_detect_pipe
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Apr 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Apr 17, 2023 at 06:37:41PM +0300, Jani Nikula wrote:
>> An error-valued pointer can handle all in one without the wrapper
>> struct.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_crt.c      | 18 ++++++++---------
>>  .../gpu/drm/i915/display/intel_load_detect.c  | 20 ++++++++-----------
>>  .../gpu/drm/i915/display/intel_load_detect.h  | 12 ++++-------
>>  drivers/gpu/drm/i915/display/intel_tv.c       | 16 +++++++--------
>>  4 files changed, 29 insertions(+), 37 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> index 96acdf98a0c0..13519f78cf9f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> @@ -822,9 +822,9 @@ intel_crt_detect(struct drm_connector *connector,
>>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
>>  	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
>>  	struct intel_encoder *intel_encoder = &crt->base;
>> +	struct drm_atomic_state *state;
>>  	intel_wakeref_t wakeref;
>> -	int status, ret;
>> -	struct intel_load_detect_pipe tmp;
>> +	int status;
>>  
>>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] force=%d\n",
>>  		    connector->base.id, connector->name,
>> @@ -882,8 +882,12 @@ intel_crt_detect(struct drm_connector *connector,
>>  	}
>>  
>>  	/* for pre-945g platforms use load detect */
>> -	ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
>> -	if (ret > 0) {
>> +	state = intel_load_detect_get_pipe(connector, ctx);
>> +	if (IS_ERR(state)) {
>> +		status = PTR_ERR(state);
>> +	} else if (!state) {
>> +		status = connector_status_unknown;
>> +	} else {
>>  		if (intel_crt_detect_ddc(connector))
>>  			status = connector_status_connected;
>>  		else if (DISPLAY_VER(dev_priv) < 4)
>> @@ -893,11 +897,7 @@ intel_crt_detect(struct drm_connector *connector,
>>  			status = connector_status_disconnected;
>>  		else
>>  			status = connector_status_unknown;
>> -		intel_load_detect_release_pipe(connector, &tmp, ctx);
>> -	} else if (ret == 0) {
>> -		status = connector_status_unknown;
>> -	} else {
>> -		status = ret;
>> +		intel_load_detect_release_pipe(connector, state, ctx);
>
> I confess it took me a while to see that we have the same logic in place.
> I think I need more coffee.

It also took me a while when writing it! :)

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, both pushed to din.

BR,
Jani.

>
>>  	}
>>  
>>  out:
>> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
>> index 5d6bb6d712bc..d5a0aecf3e8f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_load_detect.c
>> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
>> @@ -44,9 +44,9 @@ static int intel_modeset_disable_planes(struct drm_atomic_state *state,
>>  	return 0;
>>  }
>>  
>> -int intel_load_detect_get_pipe(struct drm_connector *connector,
>> -			       struct intel_load_detect_pipe *old,
>> -			       struct drm_modeset_acquire_ctx *ctx)
>> +struct drm_atomic_state *
>> +intel_load_detect_get_pipe(struct drm_connector *connector,
>> +			   struct drm_modeset_acquire_ctx *ctx)
>>  {
>>  	struct intel_encoder *encoder =
>>  		intel_attached_encoder(to_intel_connector(connector));
>> @@ -64,8 +64,6 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
>>  		    connector->base.id, connector->name,
>>  		    encoder->base.base.id, encoder->base.name);
>>  
>> -	old->restore_state = NULL;
>> -
>>  	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
>>  
>>  	/*
>> @@ -179,13 +177,12 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
>>  		goto fail;
>>  	}
>>  
>> -	old->restore_state = restore_state;
>>  	drm_atomic_state_put(state);
>>  
>>  	/* let the connector get through one full cycle before testing */
>>  	intel_crtc_wait_for_next_vblank(crtc);
>>  
>> -	return true;
>> +	return restore_state;
>>  
>>  fail:
>>  	if (state) {
>> @@ -198,27 +195,26 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
>>  	}
>>  
>>  	if (ret == -EDEADLK)
>> -		return ret;
>> +		return ERR_PTR(ret);
>>  
>> -	return false;
>> +	return NULL;
>>  }
>>  
>>  void intel_load_detect_release_pipe(struct drm_connector *connector,
>> -				    struct intel_load_detect_pipe *old,
>> +				    struct drm_atomic_state *state,
>>  				    struct drm_modeset_acquire_ctx *ctx)
>>  {
>>  	struct intel_encoder *intel_encoder =
>>  		intel_attached_encoder(to_intel_connector(connector));
>>  	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
>>  	struct drm_encoder *encoder = &intel_encoder->base;
>> -	struct drm_atomic_state *state = old->restore_state;
>>  	int ret;
>>  
>>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>>  		    connector->base.id, connector->name,
>>  		    encoder->base.id, encoder->name);
>>  
>> -	if (!state)
>> +	if (IS_ERR_OR_NULL(state))
>>  		return;
>>  
>>  	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
>> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.h b/drivers/gpu/drm/i915/display/intel_load_detect.h
>> index 9b69da1867a5..aed51901b9ba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_load_detect.h
>> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.h
>> @@ -10,15 +10,11 @@ struct drm_atomic_state;
>>  struct drm_connector;
>>  struct drm_modeset_acquire_ctx;
>>  
>> -struct intel_load_detect_pipe {
>> -	struct drm_atomic_state *restore_state;
>> -};
>> -
>> -int intel_load_detect_get_pipe(struct drm_connector *connector,
>> -			       struct intel_load_detect_pipe *old,
>> -			       struct drm_modeset_acquire_ctx *ctx);
>> +struct drm_atomic_state *
>> +intel_load_detect_get_pipe(struct drm_connector *connector,
>> +			   struct drm_modeset_acquire_ctx *ctx);
>>  void intel_load_detect_release_pipe(struct drm_connector *connector,
>> -				    struct intel_load_detect_pipe *old,
>> +				    struct drm_atomic_state *old,
>>  				    struct drm_modeset_acquire_ctx *ctx);
>>  
>>  #endif /* __INTEL_LOAD_DETECT_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
>> index 07e7f7cdd961..e3ccface0c9d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tv.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>> @@ -1723,21 +1723,21 @@ intel_tv_detect(struct drm_connector *connector,
>>  		return connector_status_disconnected;
>>  
>>  	if (force) {
>> -		struct intel_load_detect_pipe tmp;
>> -		int ret;
>> +		struct drm_atomic_state *state;
>>  
>> -		ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
>> -		if (ret < 0)
>> -			return ret;
>> +		state = intel_load_detect_get_pipe(connector, ctx);
>> +		if (IS_ERR(state))
>> +			return PTR_ERR(state);
>>  
>> -		if (ret > 0) {
>> +		if (state) {
>>  			type = intel_tv_detect_type(intel_tv, connector);
>> -			intel_load_detect_release_pipe(connector, &tmp, ctx);
>> +			intel_load_detect_release_pipe(connector, state, ctx);
>>  			status = type < 0 ?
>>  				connector_status_disconnected :
>>  				connector_status_connected;
>> -		} else
>> +		} else {
>>  			status = connector_status_unknown;
>> +		}
>>  
>>  		if (status == connector_status_connected) {
>>  			intel_tv->type = type;
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
