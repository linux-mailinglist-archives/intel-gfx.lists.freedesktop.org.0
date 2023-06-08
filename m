Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF2F7279E4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 10:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE6110E084;
	Thu,  8 Jun 2023 08:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D88E10E084
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 08:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686212763; x=1717748763;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SblwfLZ3Z1SMNXlYtwBYaymnAGu4CYnXPdwZauhjuXI=;
 b=AcHqB6CIzXYxJocYiXA4O9VwBFAZ7g8ZOQpg+Ah6bL2e8V5CycCqgvWY
 jhqN3v5NesuqRQvwgMRnHXg60bq8cFaPVv55FwGYb+wRQzSbyeTu5SJcs
 fetpWWgyDT00D70/Yvmw5s0MyAKtWtDnP1kVIfSClefaSduxr/r9L49ET
 LxjEVyj8N/giEEQDS+vRuJ+VhPial+vehMYcB9YNaQF02n+x8uSVUdkzp
 VZE2OCl9AgybfTYw31yCO3S9iQ69sZMJQDj+wejC4RHlrmHVIa9s3umsA
 2WiQ1Q4CkrQb/9B+g4qvKFLs+h+kz3w7vckG+gQ1grINOFtno8WCexNgC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="360582186"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="360582186"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 01:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="709897956"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="709897956"
Received: from ovaispap-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.59.117])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 01:25:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230606163942.330052-3-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230606163942.330052-1-luciano.coelho@intel.com>
 <20230606163942.330052-3-luciano.coelho@intel.com>
Date: Thu, 08 Jun 2023 11:25:38 +0300
Message-ID: <873532tl6l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 2/3] drm/i915: add a dedicated workqueue
 inside drm_i915_private
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 06 Jun 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
> In order to avoid flush_scheduled_work() usage, add a dedicated
> workqueue in the drm_i915_private structure.  In this way, we don't
> need to use the system queue anymore.
>
> This change is mostly mechanical and based on Tetsuo's original
> patch[1].
>
> Link: https://patchwork.freedesktop.org/series/114608/ [1]
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +++-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 18 ++++++++++-----
>  drivers/gpu/drm/i915/display/intel_opregion.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_pps.c      |  4 +++-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++---
>  .../drm/i915/gt/intel_execlists_submission.c  |  5 ++--
>  .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 10 ++++----
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 10 ++++----
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++++--------
>  drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            | 13 +++++++++++
>  drivers/gpu/drm/i915/i915_drv.h               | 10 ++++++++
>  drivers/gpu/drm/i915/i915_request.c           |  2 +-
>  drivers/gpu/drm/i915/intel_wakeref.c          |  2 +-
>  24 files changed, 103 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f23dd937c27c..a2afb19ca0e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7166,11 +7166,12 @@ intel_atomic_commit_ready(struct i915_sw_fence *f=
ence,
>  		break;
>  	case FENCE_FREE:
>  		{
> +			struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  			struct intel_atomic_helper *helper =3D
> -				&to_i915(state->base.dev)->display.atomic_helper;
> +				&i915->display.atomic_helper;
>=20=20
>  			if (llist_add(&state->freed, &helper->free_list))
> -				schedule_work(&helper->free_work);
> +				queue_work(i915->unordered_wq, &helper->free_work);
>  			break;
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 60ce10fc7205..a9e36ddb6c1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -435,7 +435,7 @@ void intel_display_driver_remove_noirq(struct drm_i91=
5_private *i915)
>  	intel_unregister_dsm_handler();
>=20=20
>  	/* flush any delayed tasks or pending work */
> -	flush_scheduled_work();
> +	flush_workqueue(i915->unordered_wq);
>=20=20
>  	intel_hdcp_component_fini(i915);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index 8a88de67ff0a..5f479f3828bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1057,7 +1057,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
>  	i915->display.dmc.dmc =3D dmc;
>=20=20
>  	drm_dbg_kms(&i915->drm, "Loading %s\n", dmc->fw_path);
> -	schedule_work(&dmc->work);
> +	queue_work(i915->unordered_wq, &dmc->work);
>=20=20
>  	return;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f4192fda1a76..09dc6c88ad28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5251,7 +5251,7 @@ static void intel_dp_oob_hotplug_event(struct drm_c=
onnector *connector)
>  	spin_lock_irq(&i915->irq_lock);
>  	i915->display.hotplug.event_bits |=3D BIT(encoder->hpd_pin);
>  	spin_unlock_irq(&i915->irq_lock);
> -	queue_delayed_work(system_wq, &i915->display.hotplug.hotplug_work, 0);
> +	queue_delayed_work(i915->unordered_wq, &i915->display.hotplug.hotplug_w=
ork, 0);
>  }
>=20=20
>  static const struct drm_connector_funcs intel_dp_connector_funcs =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 0952a707358c..2cccc0a970f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1064,6 +1064,7 @@ static void intel_dp_schedule_fallback_link_trainin=
g(struct intel_dp *intel_dp,
>  						     const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>=20=20
>  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected si=
nk.\n");
> @@ -1081,7 +1082,7 @@ static void intel_dp_schedule_fallback_link_trainin=
g(struct intel_dp *intel_dp,
>  	}
>=20=20
>  	/* Schedule a Hotplug Uevent to userspace to start modeset */
> -	schedule_work(&intel_connector->modeset_retry_work);
> +	queue_work(i915->unordered_wq, &intel_connector->modeset_retry_work);
>  }
>=20=20
>  /* Perform the link training on all LTTPRs and the DPRX on a link. */
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 760e63cdc0c8..0d35b6be5b6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -111,7 +111,9 @@ static void intel_drrs_set_state(struct intel_crtc *c=
rtc,
>=20=20
>  static void intel_drrs_schedule_work(struct intel_crtc *crtc)
>  {
> -	mod_delayed_work(system_wq, &crtc->drrs.work, msecs_to_jiffies(1000));
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	mod_delayed_work(i915->unordered_wq, &crtc->drrs.work, msecs_to_jiffies=
(1000));
>  }
>=20=20
>  static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_=
state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 1966f9396201..89bb7c588f05 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1600,7 +1600,7 @@ static void __intel_fbc_handle_fifo_underrun_irq(st=
ruct intel_fbc *fbc)
>  	if (READ_ONCE(fbc->underrun_detected))
>  		return;
>=20=20
> -	schedule_work(&fbc->underrun_work);
> +	queue_work(fbc->i915->unordered_wq, &fbc->underrun_work);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 3b5690acd720..1cc0ddc6a310 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -696,7 +696,8 @@ void intel_fbdev_set_suspend(struct drm_device *dev, =
int state, bool synchronous
>  			/* Don't block our own workqueue as this can
>  			 * be run in parallel with other i915.ko tasks.
>  			 */
> -			schedule_work(&dev_priv->display.fbdev.suspend_work);
> +			queue_work(dev_priv->unordered_wq,
> +				   &dev_priv->display.fbdev.suspend_work);
>  			return;
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index 17542c28dfd5..5ed450111f77 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -983,6 +983,7 @@ static void intel_hdcp_update_value(struct intel_conn=
ector *connector,
>  	struct drm_device *dev =3D connector->base.dev;
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
>  	drm_WARN_ON(connector->base.dev, !mutex_is_locked(&hdcp->mutex));
>=20=20
> @@ -1001,7 +1002,7 @@ static void intel_hdcp_update_value(struct intel_co=
nnector *connector,
>  	hdcp->value =3D value;
>  	if (update_property) {
>  		drm_connector_get(&connector->base);
> -		schedule_work(&hdcp->prop_work);
> +		queue_work(i915->unordered_wq, &hdcp->prop_work);
>  	}
>  }
>=20=20
> @@ -2090,16 +2091,17 @@ static void intel_hdcp_check_work(struct work_str=
uct *work)
>  					       struct intel_hdcp,
>  					       check_work);
>  	struct intel_connector *connector =3D intel_hdcp_to_connector(hdcp);
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
>  	if (drm_connector_is_unregistered(&connector->base))
>  		return;
>=20=20
>  	if (!intel_hdcp2_check_link(connector))
> -		schedule_delayed_work(&hdcp->check_work,
> -				      DRM_HDCP2_CHECK_PERIOD_MS);
> +		queue_delayed_work(i915->unordered_wq, &hdcp->check_work,
> +				   DRM_HDCP2_CHECK_PERIOD_MS);
>  	else if (!intel_hdcp_check_link(connector))
> -		schedule_delayed_work(&hdcp->check_work,
> -				      DRM_HDCP_CHECK_PERIOD_MS);
> +		queue_delayed_work(i915->unordered_wq, &hdcp->check_work,
> +				   DRM_HDCP_CHECK_PERIOD_MS);
>  }
>=20=20
>  static int i915_hdcp_component_bind(struct device *i915_kdev,
> @@ -2398,7 +2400,8 @@ int intel_hdcp_enable(struct intel_atomic_state *st=
ate,
>  	}
>=20=20
>  	if (!ret) {
> -		schedule_delayed_work(&hdcp->check_work, check_link_interval);
> +		queue_delayed_work(i915->unordered_wq, &hdcp->check_work,
> +				   check_link_interval);
>  		intel_hdcp_update_value(connector,
>  					DRM_MODE_CONTENT_PROTECTION_ENABLED,
>  					true);
> @@ -2447,6 +2450,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_sta=
te *state,
>  				to_intel_connector(conn_state->connector);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	bool content_protection_type_changed, desired_and_not_enabled =3D false;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
>  	if (!connector->hdcp.shim)
>  		return;
> @@ -2473,7 +2477,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_sta=
te *state,
>  		mutex_lock(&hdcp->mutex);
>  		hdcp->value =3D DRM_MODE_CONTENT_PROTECTION_DESIRED;
>  		drm_connector_get(&connector->base);
> -		schedule_work(&hdcp->prop_work);
> +		queue_work(i915->unordered_wq, &hdcp->prop_work);
>  		mutex_unlock(&hdcp->mutex);
>  	}
>=20=20
> @@ -2490,7 +2494,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_sta=
te *state,
>  		 */
>  		if (!desired_and_not_enabled && !content_protection_type_changed) {
>  			drm_connector_get(&connector->base);
> -			schedule_work(&hdcp->prop_work);
> +			queue_work(i915->unordered_wq, &hdcp->prop_work);
>  		}
>  	}
>=20=20
> @@ -2602,6 +2606,7 @@ void intel_hdcp_atomic_check(struct drm_connector *=
connector,
>  void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
>  {
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
>  	if (!hdcp->shim)
>  		return;
> @@ -2609,5 +2614,5 @@ void intel_hdcp_handle_cp_irq(struct intel_connecto=
r *connector)
>  	atomic_inc(&connector->hdcp.cp_irq_count);
>  	wake_up_all(&connector->hdcp.cp_irq_queue);
>=20=20
> -	schedule_delayed_work(&hdcp->check_work, 0);
> +	queue_delayed_work(i915->unordered_wq, &hdcp->check_work, 0);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 23a5e1a875f1..1160fa20433b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -212,7 +212,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915=
_private *dev_priv)
>  	/* Enable polling and queue hotplug re-enabling. */
>  	if (hpd_disabled) {
>  		drm_kms_helper_poll_enable(&dev_priv->drm);
> -		mod_delayed_work(system_wq, &dev_priv->display.hotplug.reenable_work,
> +		mod_delayed_work(dev_priv->unordered_wq,
> +				 &dev_priv->display.hotplug.reenable_work,
>  				 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
>  	}
>  }
> @@ -339,7 +340,8 @@ static void i915_digport_work_func(struct work_struct=
 *work)
>  		spin_lock_irq(&dev_priv->irq_lock);
>  		dev_priv->display.hotplug.event_bits |=3D old_bits;
>  		spin_unlock_irq(&dev_priv->irq_lock);
> -		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work,=
 0);
> +		queue_delayed_work(dev_priv->unordered_wq,
> +				   &dev_priv->display.hotplug.hotplug_work, 0);
>  	}
>  }
>=20=20
> @@ -446,7 +448,8 @@ static void i915_hotplug_work_func(struct work_struct=
 *work)
>  		dev_priv->display.hotplug.retry_bits |=3D retry;
>  		spin_unlock_irq(&dev_priv->irq_lock);
>=20=20
> -		mod_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work,
> +		mod_delayed_work(dev_priv->unordered_wq,
> +				 &dev_priv->display.hotplug.hotplug_work,
>  				 msecs_to_jiffies(HPD_RETRY_DELAY));
>  	}
>  }
> @@ -577,7 +580,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>  	if (queue_dig)
>  		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug=
.dig_port_work);
>  	if (queue_hp)
> -		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work,=
 0);
> +		queue_delayed_work(dev_priv->unordered_wq,
> +				   &dev_priv->display.hotplug.hotplug_work, 0);
>  }
>=20=20
>  /**
> @@ -687,7 +691,8 @@ void intel_hpd_poll_enable(struct drm_i915_private *d=
ev_priv)
>  	 * As well, there's no issue if we race here since we always reschedule
>  	 * this worker anyway
>  	 */
> -	schedule_work(&dev_priv->display.hotplug.poll_init_work);
> +	queue_work(dev_priv->unordered_wq,
> +		   &dev_priv->display.hotplug.poll_init_work);
>  }
>=20=20
>  /**
> @@ -715,7 +720,8 @@ void intel_hpd_poll_disable(struct drm_i915_private *=
dev_priv)
>  		return;
>=20=20
>  	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
> -	schedule_work(&dev_priv->display.hotplug.poll_init_work);
> +	queue_work(dev_priv->unordered_wq,
> +		   &dev_priv->display.hotplug.poll_init_work);
>  }
>=20=20
>  void intel_hpd_init_early(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index b7973a05d022..84078fb82b2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -635,7 +635,8 @@ static void asle_work(struct work_struct *work)
>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>  {
>  	if (dev_priv->display.opregion.asle)
> -		schedule_work(&dev_priv->display.opregion.asle_work);
> +		queue_work(dev_priv->unordered_wq,
> +			   &dev_priv->display.opregion.asle_work);
>  }
>=20=20
>  #define ACPI_EV_DISPLAY_SWITCH (1<<0)
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 5e7ba594e7e7..73f0f1714b37 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -867,6 +867,7 @@ static void edp_panel_vdd_work(struct work_struct *__=
work)
>=20=20
>  static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	unsigned long delay;
>=20=20
>  	/*
> @@ -882,7 +883,8 @@ static void edp_panel_vdd_schedule_off(struct intel_d=
p *intel_dp)
>  	 * operations.
>  	 */
>  	delay =3D msecs_to_jiffies(intel_dp->pps.panel_power_cycle_delay * 5);
> -	schedule_delayed_work(&intel_dp->pps.panel_vdd_work, delay);
> +	queue_delayed_work(i915->unordered_wq,
> +			   &intel_dp->pps.panel_vdd_work, delay);
>  }
>=20=20
>  /*
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index ea0389c5f656..d58ed9b62e67 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -341,7 +341,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp,=
 u32 psr_iir)
>  		 */
>  		intel_de_rmw(dev_priv, imr_reg, 0, psr_irq_psr_error_bit_get(intel_dp)=
);
>=20=20
> -		schedule_work(&intel_dp->psr.work);
> +		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
>  	}
>  }
>=20=20
> @@ -2440,6 +2440,8 @@ static void
>  tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuff=
er_bits,
>  		       enum fb_op_origin origin)
>  {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
>  	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.psr2_enabled ||
>  	    !intel_dp->psr.active)
>  		return;
> @@ -2453,7 +2455,7 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, u=
nsigned int frontbuffer_bits,
>  		return;
>=20=20
>  	tgl_psr2_enable_dc3co(intel_dp);
> -	mod_delayed_work(system_wq, &intel_dp->psr.dc3co_work,
> +	mod_delayed_work(i915->unordered_wq, &intel_dp->psr.dc3co_work,
>  			 intel_dp->psr.dc3co_exit_delay);
>  }
>=20=20
> @@ -2493,7 +2495,7 @@ static void _psr_flush_handle(struct intel_dp *inte=
l_dp)
>  		psr_force_hw_tracking_exit(intel_dp);
>=20=20
>  		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
> -			schedule_work(&intel_dp->psr.work);
> +			queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
>  	}
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drive=
rs/gpu/drm/i915/gt/intel_execlists_submission.c
> index 750326434677..2ebd937f3b4c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2327,6 +2327,7 @@ static u32 active_ccid(struct intel_engine_cs *engi=
ne)
>=20=20
>  static void execlists_capture(struct intel_engine_cs *engine)
>  {
> +	struct drm_i915_private *i915 =3D engine->i915;
>  	struct execlists_capture *cap;
>=20=20
>  	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
> @@ -2375,7 +2376,7 @@ static void execlists_capture(struct intel_engine_c=
s *engine)
>  		goto err_rq;
>=20=20
>  	INIT_WORK(&cap->work, execlists_capture_work);
> -	schedule_work(&cap->work);
> +	queue_work(i915->unordered_wq, &cap->work);
>  	return;
>=20=20
>  err_rq:
> @@ -3680,7 +3681,7 @@ static void virtual_context_destroy(struct kref *kr=
ef)
>  	 * lock, we can delegate the free of the engine to an RCU worker.
>  	 */
>  	INIT_RCU_WORK(&ve->rcu, rcu_virtual_context_destroy);
> -	queue_rcu_work(system_wq, &ve->rcu);
> +	queue_rcu_work(ve->context.engine->i915->unordered_wq, &ve->rcu);
>  }
>=20=20
>  static void virtual_engine_initial_hint(struct virtual_engine *ve)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu=
/drm/i915/gt/intel_gt_buffer_pool.c
> index cadfd85785b1..86b5a9ba323d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> @@ -88,10 +88,11 @@ static void pool_free_work(struct work_struct *wrk)
>  {
>  	struct intel_gt_buffer_pool *pool =3D
>  		container_of(wrk, typeof(*pool), work.work);
> +	struct intel_gt *gt =3D container_of(pool, struct intel_gt, buffer_pool=
);
>=20=20
>  	if (pool_free_older_than(pool, HZ))
> -		schedule_delayed_work(&pool->work,
> -				      round_jiffies_up_relative(HZ));
> +		queue_delayed_work(gt->i915->unordered_wq, &pool->work,
> +				   round_jiffies_up_relative(HZ));
>  }
>=20=20
>  static void pool_retire(struct i915_active *ref)
> @@ -99,6 +100,7 @@ static void pool_retire(struct i915_active *ref)
>  	struct intel_gt_buffer_pool_node *node =3D
>  		container_of(ref, typeof(*node), active);
>  	struct intel_gt_buffer_pool *pool =3D node->pool;
> +	struct intel_gt *gt =3D container_of(pool, struct intel_gt, buffer_pool=
);
>  	struct list_head *list =3D bucket_for_size(pool, node->obj->base.size);
>  	unsigned long flags;
>=20=20
> @@ -116,8 +118,8 @@ static void pool_retire(struct i915_active *ref)
>  	WRITE_ONCE(node->age, jiffies ?: 1); /* 0 reserved for active nodes */
>  	spin_unlock_irqrestore(&pool->lock, flags);
>=20=20
> -	schedule_delayed_work(&pool->work,
> -			      round_jiffies_up_relative(HZ));
> +	queue_delayed_work(gt->i915->unordered_wq, &pool->work,
> +			   round_jiffies_up_relative(HZ));
>  }
>=20=20
>  void intel_gt_buffer_pool_mark_used(struct intel_gt_buffer_pool_node *no=
de)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i91=
5/gt/intel_gt_irq.c
> index 8f888d36f16d..62fd00c9e519 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -376,7 +376,7 @@ static void gen7_parity_error_irq_handler(struct inte=
l_gt *gt, u32 iir)
>  	if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT)
>  		gt->i915->l3_parity.which_slice |=3D 1 << 0;
>=20=20
> -	schedule_work(&gt->i915->l3_parity.error_work);
> +	queue_work(gt->i915->unordered_wq, &gt->i915->l3_parity.error_work);
>  }
>=20=20
>  void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/dr=
m/i915/gt/intel_gt_requests.c
> index 1dfd01668c79..d1a382dfaa1d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -116,7 +116,7 @@ void intel_engine_add_retire(struct intel_engine_cs *=
engine,
>  	GEM_BUG_ON(intel_engine_is_virtual(engine));
>=20=20
>  	if (add_retire(engine, tl))
> -		schedule_work(&engine->retire_work);
> +		queue_work(engine->i915->unordered_wq, &engine->retire_work);
>  }
>=20=20
>  void intel_engine_init_retire(struct intel_engine_cs *engine)
> @@ -207,8 +207,8 @@ static void retire_work_handler(struct work_struct *w=
ork)
>  	struct intel_gt *gt =3D
>  		container_of(work, typeof(*gt), requests.retire_work.work);
>=20=20
> -	schedule_delayed_work(&gt->requests.retire_work,
> -			      round_jiffies_up_relative(HZ));
> +	queue_delayed_work(gt->i915->unordered_wq, &gt->requests.retire_work,
> +			   round_jiffies_up_relative(HZ));
>  	intel_gt_retire_requests(gt);
>  }
>=20=20
> @@ -224,8 +224,8 @@ void intel_gt_park_requests(struct intel_gt *gt)
>=20=20
>  void intel_gt_unpark_requests(struct intel_gt *gt)
>  {
> -	schedule_delayed_work(&gt->requests.retire_work,
> -			      round_jiffies_up_relative(HZ));
> +	queue_delayed_work(gt->i915->unordered_wq, &gt->requests.retire_work,
> +			   round_jiffies_up_relative(HZ));
>  }
>=20=20
>  void intel_gt_fini_requests(struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 195ff72d7a14..e2152f75ba2e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1625,7 +1625,7 @@ void __intel_init_wedge(struct intel_wedge_me *w,
>  	w->name =3D name;
>=20=20
>  	INIT_DELAYED_WORK_ONSTACK(&w->work, intel_wedge_me);
> -	schedule_delayed_work(&w->work, timeout);
> +	queue_delayed_work(gt->i915->unordered_wq, &w->work, timeout);
>  }
>=20=20
>  void __intel_fini_wedge(struct intel_wedge_me *w)
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/g=
t/intel_rps.c
> index e68a99205599..e92e626d4994 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -73,13 +73,14 @@ static void set(struct intel_uncore *uncore, i915_reg=
_t reg, u32 val)
>  static void rps_timer(struct timer_list *t)
>  {
>  	struct intel_rps *rps =3D from_timer(rps, t, timer);
> +	struct intel_gt *gt =3D rps_to_gt(rps);
>  	struct intel_engine_cs *engine;
>  	ktime_t dt, last, timestamp;
>  	enum intel_engine_id id;
>  	s64 max_busy[3] =3D {};
>=20=20
>  	timestamp =3D 0;
> -	for_each_engine(engine, rps_to_gt(rps), id) {
> +	for_each_engine(engine, gt, id) {
>  		s64 busy;
>  		int i;
>=20=20
> @@ -123,7 +124,7 @@ static void rps_timer(struct timer_list *t)
>=20=20
>  			busy +=3D div_u64(max_busy[i], 1 << i);
>  		}
> -		GT_TRACE(rps_to_gt(rps),
> +		GT_TRACE(gt,
>  			 "busy:%lld [%d%%], max:[%lld, %lld, %lld], interval:%d\n",
>  			 busy, (int)div64_u64(100 * busy, dt),
>  			 max_busy[0], max_busy[1], max_busy[2],
> @@ -133,12 +134,12 @@ static void rps_timer(struct timer_list *t)
>  		    rps->cur_freq < rps->max_freq_softlimit) {
>  			rps->pm_iir |=3D GEN6_PM_RP_UP_THRESHOLD;
>  			rps->pm_interval =3D 1;
> -			schedule_work(&rps->work);
> +			queue_work(gt->i915->unordered_wq, &rps->work);
>  		} else if (100 * busy < rps->power.down_threshold * dt &&
>  			   rps->cur_freq > rps->min_freq_softlimit) {
>  			rps->pm_iir |=3D GEN6_PM_RP_DOWN_THRESHOLD;
>  			rps->pm_interval =3D 1;
> -			schedule_work(&rps->work);
> +			queue_work(gt->i915->unordered_wq, &rps->work);
>  		} else {
>  			rps->last_adj =3D 0;
>  		}
> @@ -973,7 +974,7 @@ static int rps_set_boost_freq(struct intel_rps *rps, =
u32 val)
>  	}
>  	mutex_unlock(&rps->lock);
>  	if (boost)
> -		schedule_work(&rps->work);
> +		queue_work(rps_to_gt(rps)->i915->unordered_wq, &rps->work);
>=20=20
>  	return 0;
>  }
> @@ -1025,7 +1026,8 @@ void intel_rps_boost(struct i915_request *rq)
>  			if (!atomic_fetch_inc(&slpc->num_waiters)) {
>  				GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
>  					 rq->fence.context, rq->fence.seqno);
> -				schedule_work(&slpc->boost_work);
> +				queue_work(rps_to_gt(rps)->i915->unordered_wq,
> +					   &slpc->boost_work);
>  			}
>=20=20
>  			return;
> @@ -1041,7 +1043,7 @@ void intel_rps_boost(struct i915_request *rq)
>  			 rq->fence.context, rq->fence.seqno);
>=20=20
>  		if (READ_ONCE(rps->cur_freq) < rps->boost_freq)
> -			schedule_work(&rps->work);
> +			queue_work(rps_to_gt(rps)->i915->unordered_wq, &rps->work);
>=20=20
>  		WRITE_ONCE(rps->boosts, rps->boosts + 1); /* debug only */
>  	}
> @@ -1900,7 +1902,7 @@ void gen11_rps_irq_handler(struct intel_rps *rps, u=
32 pm_iir)
>  	gen6_gt_pm_mask_irq(gt, events);
>=20=20
>  	rps->pm_iir |=3D events;
> -	schedule_work(&rps->work);
> +	queue_work(gt->i915->unordered_wq, &rps->work);
>  }
>=20=20
>  void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
> @@ -1917,7 +1919,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u3=
2 pm_iir)
>  		gen6_gt_pm_mask_irq(gt, events);
>  		rps->pm_iir |=3D events;
>=20=20
> -		schedule_work(&rps->work);
> +		queue_work(gt->i915->unordered_wq, &rps->work);
>  		spin_unlock(gt->irq_lock);
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/d=
rm/i915/gt/selftest_engine_cs.c
> index 542ce6d2de19..78cdfc6f315f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> @@ -27,7 +27,7 @@ static void perf_begin(struct intel_gt *gt)
>=20=20
>  	/* Boost gpufreq to max [waitboost] and keep it fixed */
>  	atomic_inc(&gt->rps.num_waiters);
> -	schedule_work(&gt->rps.work);
> +	queue_work(gt->i915->unordered_wq, &gt->rps.work);
>  	flush_work(&gt->rps.work);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index ace8534b6cc5..75cbc43b326d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -132,8 +132,20 @@ static int i915_workqueues_init(struct drm_i915_priv=
ate *dev_priv)
>  	if (dev_priv->display.hotplug.dp_wq =3D=3D NULL)
>  		goto out_free_wq;
>=20=20
> +	/*
> +	 * The unordered i915 workqueue should be used for all work
> +	 * scheduling that do not require running in order, which used
> +	 * to be scheduled on the system_wq before moving to a driver
> +	 * instance due deprecation of flush_scheduled_work().
> +	 */
> +	dev_priv->unordered_wq =3D alloc_workqueue("i915-unordered", 0, 0);
> +	if (dev_priv->unordered_wq =3D=3D NULL)
> +		goto out_free_dp_wq;
> +
>  	return 0;
>=20=20
> +out_free_dp_wq:
> +	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
>  out_free_wq:
>  	destroy_workqueue(dev_priv->wq);
>  out_err:
> @@ -144,6 +156,7 @@ static int i915_workqueues_init(struct drm_i915_priva=
te *dev_priv)
>=20=20
>  static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
>  {
> +	destroy_workqueue(dev_priv->unordered_wq);
>  	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
>  	destroy_workqueue(dev_priv->wq);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 812665ad78d2..08c8f8c249bb 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -260,6 +260,16 @@ struct drm_i915_private {
>  	 */
>  	struct workqueue_struct *wq;
>=20=20
> +	/**
> +	 * unordered_wq - internal workqueue for unordered work
> +	 *
> +	 * This workqueue should be used for all unordered work
> +	 * scheduling within i915, which used to be scheduled on the
> +	 * system_wq before moving to a driver instance due
> +	 * deprecation of flush_scheduled_work().
> +	 */
> +	struct workqueue_struct *unordered_wq;
> +
>  	/* pm private clock gating functions */
>  	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i=
915_request.c
> index 630a732aaecc..894068bb37b6 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -290,7 +290,7 @@ static enum hrtimer_restart __rq_watchdog_expired(str=
uct hrtimer *hrtimer)
>=20=20
>  	if (!i915_request_completed(rq)) {
>  		if (llist_add(&rq->watchdog.link, &gt->watchdog.list))
> -			schedule_work(&gt->watchdog.work);
> +			queue_work(gt->i915->unordered_wq, &gt->watchdog.work);
>  	} else {
>  		i915_request_put(rq);
>  	}
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/=
intel_wakeref.c
> index 40aafe676017..718f2f1b6174 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.c
> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
> @@ -75,7 +75,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf,=
 unsigned long flags)
>=20=20
>  	/* Assume we are not in process context and so cannot sleep. */
>  	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
> -		mod_delayed_work(system_wq, &wf->work,
> +		mod_delayed_work(wf->i915->unordered_wq, &wf->work,
>  				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
>  		return;
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
