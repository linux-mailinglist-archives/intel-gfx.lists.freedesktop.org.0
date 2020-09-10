Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D7926470A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1EF6E0D3;
	Thu, 10 Sep 2020 13:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15446E0D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:33:53 +0000 (UTC)
IronPort-SDR: 5VVdRmwflKY0JbCj+/3Tox95Tpv9aDts2nZdo7r6y4R86emWQ/yPrCML9mECkqXjtuYgFsR02Q
 crVMy4h5e/Dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="138563244"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="138563244"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:33:53 -0700
IronPort-SDR: cQvBgO3WYSnb7TgZAHyKH+l5oTkO0rLJ8LxL6suKqLA0ld5VuD4fhLKpsN9T8H8GS4lxMeUa8N
 ZFkKiEBVsEfw==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="480890694"
Received: from nfhickey-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.64])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:33:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200910121153.6749-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200910121153.6749-1-uma.shankar@intel.com>
Date: Thu, 10 Sep 2020 16:33:53 +0300
Message-ID: <878sdh21tq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait for FBC
 activation within same frame
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

On Thu, 10 Sep 2020, Uma Shankar <uma.shankar@intel.com> wrote:
> Add a vblank wait when fbc activation request comes for the
> same frame on TGL. This helps fix underrun related to fbc.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 135f5e8a4d70..3e1d715e4a4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1055,6 +1055,7 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct intel_fbc *fbc = &dev_priv->fbc;
> +	static u32 old_frame_cnt, new_frame_cnt;

In the strongest terms, do not add static data. These would be shared
across devices, which is certainly a bug.

BR,
Jani.

>  
>  	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
>  
> @@ -1075,10 +1076,18 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
>  	if (!intel_fbc_can_activate(crtc))
>  		return;
>  
> -	if (!fbc->busy_bits)
> +	old_frame_cnt = new_frame_cnt;
> +	new_frame_cnt = intel_crtc_get_vblank_counter(crtc);
> +	if (!fbc->busy_bits) {
> +		if (IS_TIGERLAKE(dev_priv) &&
> +		    old_frame_cnt == new_frame_cnt) {
> +			drm_dbg_kms(&dev_priv->drm, "Wait for vblank before Activating FBC");
> +			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
> +		}
>  		intel_fbc_hw_activate(dev_priv);
> -	else
> +	} else {
>  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> +	}
>  }
>  
>  void intel_fbc_post_update(struct intel_atomic_state *state,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
