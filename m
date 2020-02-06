Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAC41548BE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702E26FA99;
	Thu,  6 Feb 2020 16:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34026FA99
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:03:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 08:03:39 -0800
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="225056801"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 08:03:37 -0800
Date: Thu, 6 Feb 2020 18:03:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200206160319.GD24639@ideak-desk.fi.intel.com>
References: <20200205214945.131012-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205214945.131012-1-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dc3co: Add description of how it
 works
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 05, 2020 at 01:49:45PM -0800, Jos=E9 Roberto de Souza wrote:
> Add a basic description about how DC3CO works to help people not
> familiar with it.
> =

> While at it, I also improved the delayed work handle and function
> names and removed a debug message that is ambiguous and not much
> useful, no changes in behavior here.
> =

> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 31 +++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h          |  2 +-
>  2 files changed, 23 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index db3d1561e9bf..273c4896eb57 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -59,6 +59,20 @@
>   * get called by the frontbuffer tracking code. Note that because of loc=
king
>   * issues the self-refresh re-enable code is done from a work queue, whi=
ch
>   * must be correctly synchronized/cancelled when shutting down the pipe."
> + *
> + * DC3CO (DC3 clock off)
> + *
> + * On top of PSR2, GEN12 adds a intermediate power savings state that tu=
rns
> + * clock off automatically during PSR2 idle state.

Thanks, makes sense, please add something like the following to
explaining why/when DC3co is useful:

The smaller overhead of DC3co entry/exit vs. the overhead of PSR2 deep
sleep entry/exit allows the HW to enter a low-power state even when page
flipping periodically (for instance a 30fps video playback scenario).

Reviewed-by: Imre Deak <imre.deak@intel.com>

> + *
> + * Every time a flips occurs PSR2 will get out of deep sleep state(if it=
 was),
> + * so DC3CO is enabled and tgl_dc3co_disable_work is schedule to run aft=
er 6
> + * frames, if no other flip occurs and the function above is executed, D=
C3CO is
> + * disabled and PSR2 is configured to enter deep sleep, resetting again =
in case
> + * of another flip.
> + * Front buffer modifications do not trigger DC3CO activation on purpose=
 as it
> + * would bring a lot of complexity and most of the moderns systems will =
only
> + * use page flips.
>   */
>  =

>  static bool psr_global_enabled(u32 debug)
> @@ -583,17 +597,16 @@ static void tgl_psr2_disable_dc3co(struct drm_i915_=
private *dev_priv)
>  	psr2_program_idle_frames(dev_priv, psr_compute_idle_frames(intel_dp));
>  }
>  =

> -static void tgl_dc5_idle_thread(struct work_struct *work)
> +static void tgl_dc3co_disable_work(struct work_struct *work)
>  {
>  	struct drm_i915_private *dev_priv =3D
> -		container_of(work, typeof(*dev_priv), psr.idle_work.work);
> +		container_of(work, typeof(*dev_priv), psr.dc3co_work.work);
>  =

>  	mutex_lock(&dev_priv->psr.lock);
>  	/* If delayed work is pending, it is not idle */
> -	if (delayed_work_pending(&dev_priv->psr.idle_work))
> +	if (delayed_work_pending(&dev_priv->psr.dc3co_work))
>  		goto unlock;
>  =

> -	drm_dbg_kms(&dev_priv->drm, "DC5/6 idle thread\n");
>  	tgl_psr2_disable_dc3co(dev_priv);
>  unlock:
>  	mutex_unlock(&dev_priv->psr.lock);
> @@ -604,7 +617,7 @@ static void tgl_disallow_dc3co_on_psr2_exit(struct dr=
m_i915_private *dev_priv)
>  	if (!dev_priv->psr.dc3co_enabled)
>  		return;
>  =

> -	cancel_delayed_work(&dev_priv->psr.idle_work);
> +	cancel_delayed_work(&dev_priv->psr.dc3co_work);
>  	/* Before PSR2 exit disallow dc3co*/
>  	tgl_psr2_disable_dc3co(dev_priv);
>  }
> @@ -1040,7 +1053,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>  =

>  	mutex_unlock(&dev_priv->psr.lock);
>  	cancel_work_sync(&dev_priv->psr.work);
> -	cancel_delayed_work_sync(&dev_priv->psr.idle_work);
> +	cancel_delayed_work_sync(&dev_priv->psr.dc3co_work);
>  }
>  =

>  static void psr_force_hw_tracking_exit(struct drm_i915_private *dev_priv)
> @@ -1350,7 +1363,7 @@ void intel_psr_invalidate(struct drm_i915_private *=
dev_priv,
>   * When we will be completely rely on PSR2 S/W tracking in future,
>   * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
>   * event also therefore tgl_dc3co_flush() require to be changed
> - * accrodingly in future.
> + * accordingly in future.
>   */
>  static void
>  tgl_dc3co_flush(struct drm_i915_private *dev_priv,
> @@ -1373,7 +1386,7 @@ tgl_dc3co_flush(struct drm_i915_private *dev_priv,
>  		goto unlock;
>  =

>  	tgl_psr2_enable_dc3co(dev_priv);
> -	mod_delayed_work(system_wq, &dev_priv->psr.idle_work,
> +	mod_delayed_work(system_wq, &dev_priv->psr.dc3co_work,
>  			 dev_priv->psr.dc3co_exit_delay);
>  =

>  unlock:
> @@ -1458,7 +1471,7 @@ void intel_psr_init(struct drm_i915_private *dev_pr=
iv)
>  		dev_priv->psr.link_standby =3D dev_priv->vbt.psr.full_link;
>  =

>  	INIT_WORK(&dev_priv->psr.work, intel_psr_work);
> -	INIT_DELAYED_WORK(&dev_priv->psr.idle_work, tgl_dc5_idle_thread);
> +	INIT_DELAYED_WORK(&dev_priv->psr.dc3co_work, tgl_dc3co_disable_work);
>  	mutex_init(&dev_priv->psr.lock);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 3452926d7b77..da509d9b8895 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -504,7 +504,7 @@ struct i915_psr {
>  	u16 su_x_granularity;
>  	bool dc3co_enabled;
>  	u32 dc3co_exit_delay;
> -	struct delayed_work idle_work;
> +	struct delayed_work dc3co_work;
>  	bool initially_probed;
>  };
>  =

> -- =

> 2.25.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
