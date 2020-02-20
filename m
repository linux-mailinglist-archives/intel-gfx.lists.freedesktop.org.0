Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C593A165DB2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B2C6ED63;
	Thu, 20 Feb 2020 12:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B17E6ED63
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 12:40:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:40:48 -0800
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="229468708"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:40:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200220120741.6917-4-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
 <20200220120741.6917-4-stanislav.lisovskiy@intel.com>
Date: Thu, 20 Feb 2020 14:40:43 +0200
Message-ID: <87tv3ltos4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v17 3/7] drm/i915: Init obj state in
 intel_atomic_get_old/new_global_obj_state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Feb 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> We might be willing to call intel_atomic_get_old_global_obj_state
> and intel_atomic_get_new_global_obj_state right away, however
> those are not initializing global obj state as
> intel_atomic_get_global_obj_state does.
> Extracted initializing part to separate function and now using this
> also in intel_atomic_get_old_global_obj_state and intel_atomic_get_new_global_obj_state
>
> v2: - Fixed typo in function call
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 28 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
>  2 files changed, 36 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 58b264bc318d..ff57277e8880 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -374,7 +374,33 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
>  	return data_rate;
>  }
>  
> -static struct intel_bw_state *
> +struct intel_bw_state *
> +intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +
> +	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->bw_obj);
> +	if (IS_ERR(bw_state))
> +		return ERR_CAST(bw_state);
> +
> +	return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);
> +
> +	if (IS_ERR(bw_state))
> +		return ERR_CAST(bw_state);
> +
> +	return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
>  intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index a8aa7624c5aa..ac004d6f4276 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -24,6 +24,15 @@ struct intel_bw_state {
>  
>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
>  
> +struct intel_bw_state *
> +intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_atomic_get_new_bw_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_atomic_get_bw_state(struct intel_atomic_state *state);
> +

I'm trying to promote a convention that a module foo_bar.[ch] would
export functions prefixed foo_bar_. Here, intel_bw_* like below.

BR,
Jani.


>  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
>  int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
