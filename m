Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5924198D7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 18:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6C689FFD;
	Mon, 27 Sep 2021 16:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295AA89FFD
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 16:25:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="247001177"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="247001177"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 09:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="553342480"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 27 Sep 2021 09:25:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Sep 2021 19:25:51 +0300
Date: Mon, 27 Sep 2021 19:25:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YVHwj5tH1hpx7nnr@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <YU3iHhIkFtn9p7G5@intel.com>
 <4c64fd0f7ee4f5501dbcbdc0d4c8f938f18e1ba7.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4c64fd0f7ee4f5501dbcbdc0d4c8f938f18e1ba7.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/display: Wait PSR2 get out of
 deep sleep to update pipe
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

On Fri, Sep 24, 2021 at 05:10:44PM +0000, Souza, Jose wrote:
> On Fri, 2021-09-24 at 17:35 +0300, Ville Syrjälä wrote:
> > On Thu, Sep 23, 2021 at 12:46:11PM -0700, José Roberto de Souza wrote:
> > > Alderlake-P was getting 'max time under evasion' messages when PSR2
> > > was enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
> > > period of time longer than VBLANK_EVASION_TIME_US.
> > > 
> > > For PSR1 we had the same issue so intel_psr_wait_for_idle() was
> > > implemented to wait for PSR1 to get into idle state but nothing was
> > > done for PSR2.
> > > 
> > > For PSR2 we can't only wait for idle state as PSR2 tends to keep
> > > into sleep state that means it is ready to send selective updates.
> > > 
> > > To do so it was necessary to add intel_wait_for_condition(), this
> > > takes as parameter a function that will return true when the desidered
> > > condition is meet.
> > > 
> > > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_debugfs.c  |  3 +-
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 64 ++++++++++++-------
> > >  drivers/gpu/drm/i915/i915_reg.h               |  5 +-
> > >  drivers/gpu/drm/i915/intel_uncore.c           | 47 ++++++++++++++
> > >  drivers/gpu/drm/i915/intel_uncore.h           |  7 ++
> > >  5 files changed, 100 insertions(+), 26 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index 68f4ba8c46e75..662596adb1da6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
> > >  		};
> > >  		val = intel_de_read(dev_priv,
> > >  				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
> > > -		status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
> > > -			      EDP_PSR2_STATUS_STATE_SHIFT;
> > > +		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
> > >  		if (status_val < ARRAY_SIZE(live_status))
> > >  			status = live_status[status_val];
> > >  	} else {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 19a96d3c4acf4..a2e4ef42be60a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1796,15 +1796,33 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
> > >  		_intel_psr_post_plane_update(state, crtc_state);
> > >  }
> > >  
> > > -/**
> > > - * psr_wait_for_idle - wait for PSR1 to idle
> > > - * @intel_dp: Intel DP
> > > - * @out_value: PSR status in case of failure
> > > - *
> > > - * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
> > > - *
> > > - */
> > > -static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
> > > +static bool _is_psr2_read_for_pipe_update(void *data)
> > > +{
> > > +	struct intel_dp *intel_dp = data;
> > > +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > +	u32 val;
> > > +
> > > +	val = intel_uncore_read_fw(&dev_priv->uncore,
> > > +				   EDP_PSR2_STATUS(intel_dp->psr.transcoder));
> > > +	val &= EDP_PSR2_STATUS_STATE_MASK;
> > > +
> > > +	return val == EDP_PSR2_STATUS_STATE_SLEEP || val == EDP_PSR2_STATUS_STATE_IDLE;
> > > +}
> > > +
> > > +static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
> > > +{
> > > +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > > +	unsigned int fw;
> > > +
> > > +	fw = intel_uncore_forcewake_for_reg(&dev_priv->uncore,
> > > +					    EDP_PSR2_STATUS(intel_dp->psr.transcoder),
> > > +					    FW_REG_READ);
> > > +	return intel_wait_for_condition(&dev_priv->uncore,
> > > +					_is_psr2_read_for_pipe_update,
> > > +					intel_dp, fw, 50);
> > > +}
> > > +
> > > +static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
> > >  {
> > >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > >  
> > > @@ -1814,15 +1832,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
> > >  	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
> > >  	 * defensive enough to cover everything.
> > >  	 */
> > > -	return __intel_wait_for_register(&dev_priv->uncore,
> > > -					 EDP_PSR_STATUS(intel_dp->psr.transcoder),
> > > -					 EDP_PSR_STATUS_STATE_MASK,
> > > -					 EDP_PSR_STATUS_STATE_IDLE, 2, 50,
> > > -					 out_value);
> > > +	return intel_de_wait_for_clear(dev_priv,
> > > +				       EDP_PSR_STATUS(intel_dp->psr.transcoder),
> > > +				       EDP_PSR_STATUS_STATE_MASK, 50);
> > >  }
> > >  
> > >  /**
> > > - * intel_psr_wait_for_idle - wait for PSR1 to idle
> > > + * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
> > >   * @new_crtc_state: new CRTC state
> > >   *
> > >   * This function is expected to be called from pipe_update_start() where it is
> > > @@ -1839,19 +1855,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
> > >  	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
> > >  					     new_crtc_state->uapi.encoder_mask) {
> > >  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > -		u32 psr_status;
> > > +		int ret;
> > >  
> > >  		mutex_lock(&intel_dp->psr.lock);
> > > -		if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
> > > +
> > > +		if (!intel_dp->psr.enabled) {
> > >  			mutex_unlock(&intel_dp->psr.lock);
> > >  			continue;
> > >  		}
> > >  
> > > -		/* when the PSR1 is enabled */
> > > -		if (psr_wait_for_idle(intel_dp, &psr_status))
> > > -			drm_err(&dev_priv->drm,
> > > -				"PSR idle timed out 0x%x, atomic update may fail\n",
> > > -				psr_status);
> > > +		if (intel_dp->psr.psr2_enabled)
> > > +			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
> > > +		else
> > > +			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
> > > +
> > > +		if (ret)
> > > +			drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
> > > +
> > >  		mutex_unlock(&intel_dp->psr.lock);
> > >  	}
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index cad84c3b864bf..a827f5bf973cb 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -4698,8 +4698,9 @@ enum {
> > >  #define _PSR2_STATUS_A			0x60940
> > >  #define _PSR2_STATUS_EDP		0x6f940
> > >  #define EDP_PSR2_STATUS(tran)		_MMIO_TRANS2(tran, _PSR2_STATUS_A)
> > > -#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
> > > -#define EDP_PSR2_STATUS_STATE_SHIFT    28
> > > +#define EDP_PSR2_STATUS_STATE_MASK     REG_GENMASK(31, 28)
> > > +#define EDP_PSR2_STATUS_STATE_SLEEP    REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x3)
> > > +#define EDP_PSR2_STATUS_STATE_IDLE     REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x0)
> > >  
> > >  #define _PSR2_SU_STATUS_A		0x60914
> > >  #define _PSR2_SU_STATUS_EDP		0x6f914
> > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> > > index 678a99de07fee..1b3ea7318c2d5 100644
> > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > @@ -2383,6 +2383,28 @@ int __intel_wait_for_register_fw(struct intel_uncore *uncore,
> > >  #undef done
> > >  }
> > >  
> > > +static int __intel_wait_for_condition_fw(bool (*func)(void *data), void *data,
> > > +					 unsigned int fast_timeout_us,
> > > +					 unsigned int slow_timeout_ms)
> > > +{
> > > +#define done (func(data))
> > > +	int ret;
> > > +
> > > +	/* Catch any overuse of this function */
> > > +	might_sleep_if(slow_timeout_ms);
> > > +	GEM_BUG_ON(fast_timeout_us > 20000);
> > > +	GEM_BUG_ON(!fast_timeout_us && !slow_timeout_ms);
> > > +
> > > +	ret = -ETIMEDOUT;
> > > +	if (fast_timeout_us && fast_timeout_us <= 20000)
> > > +		ret = _wait_for_atomic(done, fast_timeout_us, 0);
> > > +	if (ret && slow_timeout_ms)
> > > +		ret = wait_for(done, slow_timeout_ms);
> > 
> > Is there a particular reason for these complicated wrappers
> > instead of just using wait_for() directly?
> 
> Just replicated what __intel_wait_for_register_fw() do.
> I guess the first one sleep less for cases that condition is meet in a few usecs.

wait_for() should already start with a short delay with
exponential backoff the longer it has to wait. So unless there
is a demonstrable problem with wait_for() I don't think we
should be adding even more complex wait macros.

-- 
Ville Syrjälä
Intel
