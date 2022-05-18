Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF89752B90C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 13:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA32310E298;
	Wed, 18 May 2022 11:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA17110E298
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 11:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652874650; x=1684410650;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YkxIQ5PjYH6c2XA+vhbkSsd5F50VshgsuLaw8B+MuZc=;
 b=izw71nrfn860uklUbhUsIgZQ28Hxoe8XROI0uuTr5pSxxNLnSynhbT/6
 sjd2hxGoqBmerRcKIjW0b5JwpSP6SWn6GfldH2BF6m2J4hGTQCkVaz1ta
 aH0PAcohqYl8KT/VnK9pHqbXrBkwGdEBwTwc128o8HCT4jEx2ML23wvPh
 cUH5w7+MKE5Gx7ZgKKqfyO5HixAyXEuoda6eDr+44a4cw7OIHFlNQ6E6m
 fzGwn3WXKcXrp6UfAWAnb7dAnP8PRvPQWyVn4Q52aMfbGH0IC/7+BrHZf
 6o3h24uuSLwPySfmcBeyzEng0MvmCwZF/WYOH2TS/Nl1r3eZQ0r5m/VVm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="251528513"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="251528513"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:50:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="569432394"
Received: from jwasiuki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.47])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:50:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220518074540.36398-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220518074540.36398-1-jouni.hogander@intel.com>
Date: Wed, 18 May 2022 14:50:45 +0300
Message-ID: <87bkvvdppm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Debugfs statistics interface
 for psr
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
Cc: Nischal Varide <nischal.varide@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 May 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently there is no mean to get understanding how psr is utilized.
> E.g. How much psr is actually enabled or how often driver falls back
> to full update.
>
> This patch addresses this by adding new debugfs interface
> i915_edp_psr_stats. Statistics gathering is started by writing 1/y/Y and
> stopped by writing 0/n/N into this new interface.

IMO time to move all PSR debugfs handling to intel_psr.c before
this. See e.g. commit d2de8ccfb299 ("drm/i915/fbc: Move FBC debugfs
stuff into intel_fbc.c") for FBC.

With that, I think you could also split out intel_psr_regs.h and
encapsulate psr register access to intel_psr.c.

BR,
Jani.

>
> Following fields are provided for reading by this new interface:
>
> "PSR disabled vblank count"
>
> Over how many vblank periods  PSR was disabled after statistics
> gathering got started. I.e. How many normal updates were sent to panel.
>
> "Total vblank count"
>
> Total vblank count after statistics gathering got started.
>
> "Selective update count"
>
> How many selective updates (PSR2) were done after statistics gathering
> got started.
>
> "Full update count"
>
> How many times driver decided to fall back to full update when trying to
> perform selective update.
>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 100 ++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  16 ++
>  drivers/gpu/drm/i915/display/intel_psr.c      | 144 ++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_psr.h      |   2 +
>  4 files changed, 236 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 452d773fd4e3..c29f151062e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_fourcc.h>
>=20=20
>  #include "i915_debugfs.h"
> +#include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
> @@ -1868,6 +1869,95 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  	return cnt;
>  }
>=20=20
> +static int intel_psr_stats(struct seq_file *m, struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D (m->private);
> +	struct intel_psr *psr =3D &intel_dp->psr;
> +	struct drm_crtc *crtc =3D &intel_crtc_for_pipe(dev_priv, psr->pipe)->ba=
se;
> +	u64 total_vblank_count =3D psr->stats.total_vblank_count,
> +		non_psr_vblank_count =3D psr->stats.non_psr_vblank_count;
> +	ktime_t vblanktime;
> +
> +	if (!psr->active)
> +		non_psr_vblank_count +=3D drm_crtc_vblank_count_and_time(crtc, &vblank=
time) -
> +			psr->stats.psr_disable_vblank;
> +
> +	seq_printf(m, "PSR disabled vblank count : %llu\n", non_psr_vblank_coun=
t);
> +
> +	if (psr->stats.enable)
> +		total_vblank_count +=3D drm_crtc_vblank_count_and_time(crtc, &vblankti=
me) -
> +			psr->stats.start_vblank;
> +
> +	seq_printf(m, "Total vblank count : %llu\n", total_vblank_count);
> +	seq_printf(m, "Selective update count : %llu\n", psr->stats.selective_u=
pdate_count);
> +	seq_printf(m, "Full update count : %llu\n", psr->stats.full_update_coun=
t);
> +
> +	return 0;
> +}
> +
> +static int i915_edp_psr_stats_show(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D (m->private);
> +	struct intel_dp *intel_dp =3D NULL;
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_PSR(dev_priv))
> +		return -ENODEV;
> +
> +	/* Find the first EDP which supports PSR */
> +	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> +		intel_dp =3D enc_to_intel_dp(encoder);
> +		break;
> +	}
> +
> +	if (!intel_dp)
> +		return -ENODEV;
> +
> +	return intel_psr_stats(m, intel_dp);
> +}
> +
> +static ssize_t
> +i915_edp_psr_stats_write(struct file *filp, const char __user *ubuf,
> +			 size_t cnt, loff_t *ppos)
> +{
> +	struct seq_file *m =3D filp->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct intel_dp *intel_dp =3D NULL;
> +	struct intel_encoder *encoder;
> +	int ret;
> +	bool enable_stats;
> +
> +	ret =3D kstrtobool_from_user(ubuf, cnt, &enable_stats);
> +	if (ret)
> +		return ret;
> +
> +	if (!HAS_PSR(dev_priv))
> +		return -ENODEV;
> +
> +	/* Find the first EDP which supports PSR */
> +	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> +		intel_dp =3D enc_to_intel_dp(encoder);
> +		break;
> +	}
> +
> +	if (!intel_dp)
> +		return -ENODEV;
> +
> +	if (enable_stats)
> +		intel_psr_stats_enable_stats(intel_dp);
> +	else
> +		intel_psr_stats_disable_stats(intel_dp);
> +
> +	return cnt;
> +}
> +
> +static int i915_edp_psr_stats_open(struct inode *inode, struct file *fil=
e)
> +{
> +	struct drm_i915_private *dev_priv =3D inode->i_private;
> +
> +	return single_open(file, i915_edp_psr_stats_show, dev_priv);
> +}
> +
>  static const struct file_operations i915_fifo_underrun_reset_ops =3D {
>  	.owner =3D THIS_MODULE,
>  	.open =3D simple_open,
> @@ -1875,6 +1965,15 @@ static const struct file_operations i915_fifo_unde=
rrun_reset_ops =3D {
>  	.llseek =3D default_llseek,
>  };
>=20=20
> +static const struct file_operations i915_edp_psr_stats_ops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_edp_psr_stats_open,
> +	.read =3D seq_read,
> +	.write =3D i915_edp_psr_stats_write,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
>  static const struct drm_info_list intel_display_debugfs_list[] =3D {
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
>  	{"i915_ips_status", i915_ips_status, 0},
> @@ -1908,6 +2007,7 @@ static const struct {
>  	{"i915_ipc_status", &i915_ipc_status_fops},
>  	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
>  	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
> +	{"i915_edp_psr_stats", &i915_edp_psr_stats_ops},
>  };
>=20=20
>  void intel_display_debugfs_register(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 408152f9f46a..07fa820187ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1498,6 +1498,21 @@ struct intel_pps {
>  	struct edp_power_seq pps_delays;
>  };
>=20=20
> +struct intel_psr_stats {
> +	/* vblank counts used to calculate psr usage */
> +	u64 start_vblank;
> +	u64 psr_disable_vblank;
> +
> +	u64 non_psr_vblank_count;
> +	u64 total_vblank_count;
> +
> +	/* psr statistics */
> +	u64 selective_update_count;
> +	u64 full_update_count;
> +
> +	bool enable;
> +};
> +
>  struct intel_psr {
>  	/* Mutex for PSR state of the transcoder */
>  	struct mutex lock;
> @@ -1537,6 +1552,7 @@ struct intel_psr {
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
> +	struct intel_psr_stats stats;
>  };
>=20=20
>  struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 36356893c7ca..fe493ff53e4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1048,6 +1048,118 @@ void intel_psr_get_config(struct intel_encoder *e=
ncoder,
>  	mutex_unlock(&intel_dp->psr.lock);
>  }
>=20=20
> +static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
> +{
> +	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
> +}
> +
> +static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private=
 *dev_priv)
> +{
> +	return IS_ALDERLAKE_P(dev_priv) ?
> +	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
> +	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> +}
> +
> +static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *de=
v_priv)
> +{
> +	return IS_ALDERLAKE_P(dev_priv) ?
> +	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
> +	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> +}
> +
> +static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev=
_priv)
> +{
> +	return IS_ALDERLAKE_P(dev_priv) ?
> +		ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
> +		PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
> +}
> +
> +static void intel_psr_stats_update(struct intel_dp *intel_dp, u32 psr2_m=
an_track_ctl)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_psr *psr =3D &intel_dp->psr;
> +
> +	if (!psr->enabled || !psr->stats.enable)
> +		return;
> +
> +	if (psr->psr2_sel_fetch_cff_enabled ||
> +	    psr2_man_track_ctl & (man_trk_ctl_single_full_frame_bit_get(dev_pri=
v) |
> +				man_trk_ctl_single_full_frame_bit_get(dev_priv)))
> +		psr->stats.full_update_count +=3D 1;
> +	else if (psr2_man_track_ctl & man_trk_ctl_partial_frame_bit_get(dev_pri=
v))
> +		psr->stats.selective_update_count +=3D 1;
> +}
> +
> +static void intel_psr_stats_enable_psr(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_psr *psr =3D &intel_dp->psr;
> +	ktime_t vblanktime;
> +
> +	if (psr->stats.enable)
> +		psr->stats.non_psr_vblank_count +=3D
> +			drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
> +									    psr->pipe)->base,
> +						       &vblanktime) -
> +			psr->stats.psr_disable_vblank;
> +}
> +
> +static void intel_psr_stats_disable_psr(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_psr *psr =3D &intel_dp->psr;
> +	ktime_t vblanktime;
> +
> +	if (psr->stats.enable)
> +		psr->stats.psr_disable_vblank =3D
> +			drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
> +									    psr->pipe)->base,
> +						       &vblanktime);
> +}
> +
> +void intel_psr_stats_enable_stats(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_psr *psr =3D &intel_dp->psr;
> +	ktime_t vblanktime;
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	memset(&psr->stats, 0, sizeof(psr->stats));
> +	psr->stats.start_vblank =3D
> +		drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
> +								    psr->pipe)->base,
> +					       &vblanktime);
> +	if (!psr->active)
> +		psr->stats.psr_disable_vblank =3D psr->stats.start_vblank;
> +	psr->stats.enable =3D true;
> +	mutex_unlock(&psr->lock);
> +}
> +
> +void intel_psr_stats_disable_stats(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_psr *psr =3D &intel_dp->psr;
> +	ktime_t vblanktime;
> +
> +	if (!psr->stats.enable)
> +		return;
> +
> +	mutex_lock(&psr->lock);
> +	psr->stats.enable =3D false;
> +	psr->stats.total_vblank_count =3D
> +		drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
> +								    psr->pipe)->base,
> +					       &vblanktime) -
> +		psr->stats.start_vblank;
> +	if (!psr->active)
> +		psr->stats.non_psr_vblank_count +=3D
> +			drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
> +									    psr->pipe)->base,
> +						       &vblanktime) -
> +			psr->stats.psr_disable_vblank;
> +	mutex_unlock(&psr->lock);
> +}
> +
>  static void intel_psr_activate(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -1069,6 +1181,8 @@ static void intel_psr_activate(struct intel_dp *int=
el_dp)
>  		hsw_activate_psr1(intel_dp);
>=20=20
>  	intel_dp->psr.active =3D true;
> +
> +	intel_psr_stats_enable_psr(intel_dp);
>  }
>=20=20
>  static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
> @@ -1280,6 +1394,8 @@ static void intel_psr_exit(struct intel_dp *intel_d=
p)
>  			       EDP_PSR_CTL(intel_dp->psr.transcoder), val);
>  	}
>  	intel_dp->psr.active =3D false;
> +
> +	intel_psr_stats_disable_psr(intel_dp);
>  }
>=20=20
>  static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
> @@ -1444,32 +1560,6 @@ void intel_psr_resume(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>  }
>=20=20
> -static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
> -{
> -	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
> -}
> -
> -static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private=
 *dev_priv)
> -{
> -	return IS_ALDERLAKE_P(dev_priv) ?
> -	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
> -	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> -}
> -
> -static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *de=
v_priv)
> -{
> -	return IS_ALDERLAKE_P(dev_priv) ?
> -	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
> -	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> -}
> -
> -static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev=
_priv)
> -{
> -	return IS_ALDERLAKE_P(dev_priv) ?
> -	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
> -	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
> -}
> -
>  static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -1911,6 +2001,8 @@ static void _intel_psr_post_plane_update(const stru=
ct intel_atomic_state *state,
>=20=20
>  		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes=
);
>=20=20
> +		intel_psr_stats_update(intel_dp, crtc_state->psr2_man_track_ctl);
> +
>  		/* Only enable if there is active planes */
>  		if (!psr->enabled && crtc_state->active_planes)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index 2ac3a46cccc5..cda50e423ec9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -58,4 +58,6 @@ void intel_psr_resume(struct intel_dp *intel_dp);
>  void intel_psr_lock(const struct intel_crtc_state *crtc_state);
>  void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
>=20=20
> +void intel_psr_stats_enable_stats(struct intel_dp *intel_dp);
> +void intel_psr_stats_disable_stats(struct intel_dp *intel_dp);
>  #endif /* __INTEL_PSR_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
