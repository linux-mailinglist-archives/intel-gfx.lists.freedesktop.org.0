Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F692CC690
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 20:24:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8452389895;
	Wed,  2 Dec 2020 19:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7AA89895
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 19:24:38 +0000 (UTC)
IronPort-SDR: T0Aj0MbfdWs5XKPKZtE3P4CYl8bZ76AOysewMU7upJ979cilu5IDbxSyBXpDDCIcVzmBGyK429
 y0paoj/PSQoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="257785218"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="257785218"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 11:24:37 -0800
IronPort-SDR: lf+zE4ohZzqyfDGo8Y3ensWvhH/ZWOGFjl219OGEcZxThPiaBQ3BI/TOQB9z6tiv04GQwdHygu
 Rx4XY7+or1BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="373280258"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Dec 2020 11:24:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Dec 2020 21:24:33 +0200
Date: Wed, 2 Dec 2020 21:24:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201202192433.GD6112@intel.com>
References: <20201126211317.15291-1-chris@chris-wilson.co.uk>
 <20201127161841.24806-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201127161841.24806-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Record the plane
 update times for debugging
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 27, 2020 at 04:18:41PM +0000, Chris Wilson wrote:
> Since we try and estimate how long we require to update the registers to
> perform a plane update, it is of vital importance that we measure the
> distribution of plane updates to better guide our estimate. If we
> underestimate how long it takes to perform the plane update, we may
> slip into the next scanout frame causing a tear. If we overestimate, we
> may unnecessarily delay the update to the next frame, causing visible
> jitter.
> =

> Replace the warning that we exceed some arbitrary threshold for the
> vblank update with a histogram for debugfs.
> =

> v2: Add a per-crtc debugfs entry so that the information is easier to
> extract when testing individual CRTC, and so that it can be reset before
> a test.
> =

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1982
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
>  .../drm/i915/display/intel_display_debugfs.c  | 117 ++++++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.h  |   3 +
>  .../drm/i915/display/intel_display_types.h    |   9 ++
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  49 +++++---
>  drivers/gpu/drm/i915/display/intel_sprite.h   |  10 ++
>  6 files changed, 180 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ba26545392bc..9187a20a8aca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -45,6 +45,7 @@
>  =

>  #include "display/intel_crt.h"
>  #include "display/intel_ddi.h"
> +#include "display/intel_display_debugfs.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dp_mst.h"
>  #include "display/intel_dpll_mgr.h"
> @@ -17266,6 +17267,12 @@ intel_cursor_plane_create(struct drm_i915_privat=
e *dev_priv,
>  	return ERR_PTR(ret);
>  }
>  =

> +static int intel_crtc_late_register(struct drm_crtc *crtc)
> +{
> +	intel_crtc_debugfs_add(crtc);
> +	return 0;
> +}
> +
>  #define INTEL_CRTC_FUNCS \
>  	.gamma_set =3D drm_atomic_helper_legacy_gamma_set, \
>  	.set_config =3D drm_atomic_helper_set_config, \
> @@ -17275,7 +17282,8 @@ intel_cursor_plane_create(struct drm_i915_private=
 *dev_priv,
>  	.atomic_destroy_state =3D intel_crtc_destroy_state, \
>  	.set_crc_source =3D intel_crtc_set_crc_source, \
>  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
> -	.get_crc_sources =3D intel_crtc_get_crc_sources
> +	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> +	.late_register =3D intel_crtc_late_register
>  =

>  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
>  	INTEL_CRTC_FUNCS,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index ca41e8c00ad7..08db0ff022e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -18,6 +18,7 @@
>  #include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sideband.h"
> +#include "intel_sprite.h"
>  =

>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node=
 *node)
>  {
> @@ -865,6 +866,103 @@ static void intel_scaler_info(struct seq_file *m, s=
truct intel_crtc *crtc)
>  	}
>  }
>  =

> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_VBLANK_EVADE)
> +static void crtc_updates_info(struct seq_file *m,
> +			      struct intel_crtc *crtc,
> +			      const char *hdr)
> +{
> +	char buf[ARRAY_SIZE(crtc->debug.vbl.times) + 1] =3D {};
> +	int h, row, max;
> +	u64 count;
> +
> +	max =3D 0;
> +	count =3D 0;
> +	for (h =3D 0; h < ARRAY_SIZE(crtc->debug.vbl.times); h++) {
> +		if (crtc->debug.vbl.times[h] > max)
> +			max =3D crtc->debug.vbl.times[h];
> +		count +=3D crtc->debug.vbl.times[h];
> +	}
> +	seq_printf(m, "%sUpdates: %llu\n", hdr, count);
> +	if (!count)
> +		return;
> +
> +	memset(buf, '-', sizeof(buf) - 1);
> +	seq_printf(m, "%s  |%s|\n", hdr, buf);
> +
> +	for (row =3D ilog2(max) - 1; row; row--) {

row >=3D 0?

> +		memset(buf, ' ', sizeof(buf) - 1);
> +		for (h =3D 0; h < ARRAY_SIZE(crtc->debug.vbl.times); h++) {
> +			if (ilog2(crtc->debug.vbl.times[h]) >=3D row)
> +				buf[h] =3D '*';
> +		}
> +		seq_printf(m, "%s  |%s|\n", hdr, buf);
> +	}

I have a feeling that putting the graph on its side would make it more
readable since then we could easily label more (all even?) of the bins.
Right now I'm having a hard time seeing what's what exactly.

> +	memset(buf, '-', sizeof(buf) - 1);
> +	seq_printf(m, "%s  |%s|\n", hdr, buf);
> +	seq_printf(m, "%s    1us     (log)      1ms\n", hdr);
> +
> +	seq_printf(m, "%sMin update: %lluns\n",
> +		   hdr, crtc->debug.vbl.min);
> +	seq_printf(m, "%sMax update: %lluns\n",
> +		   hdr, crtc->debug.vbl.max);
> +	seq_printf(m, "%sAverage update: %lluns\n",
> +		   hdr, div64_u64(crtc->debug.vbl.sum,  count));
> +	seq_printf(m, "%sOverruns > %uus: %lu\n",
> +		   hdr, VBLANK_EVASION_TIME_US, crtc->debug.vbl.over);
> +}
> +
> +static int crtc_updates_show(struct seq_file *m, void *data)
> +{
> +	crtc_updates_info(m, m->private, "");
> +	return 0;
> +}
> +
> +static int crtc_updates_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, crtc_updates_show, inode->i_private);
> +}
> +
> +static ssize_t crtc_updates_write(struct file *file,
> +				  const char __user *ubuf,
> +				  size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct intel_crtc *crtc =3D m->private;
> +
> +	/* May race with an update. Meh. */
> +	memset(&crtc->debug.vbl, 0, sizeof(crtc->debug.vbl));
> +
> +	return len;
> +}
> +
> +static const struct file_operations crtc_updates_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D crtc_updates_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D crtc_updates_write
> +};
> +
> +static void crtc_updates_add(struct drm_crtc *crtc)
> +{
> +	debugfs_create_file("i915_update_info", 0644, crtc->debugfs_entry,
> +			    to_intel_crtc(crtc), &crtc_updates_fops);
> +}
> +
> +#else
> +static void crtc_updates_info(struct seq_file *m,
> +			      struct intel_crtc *crtc,
> +			      const char *hdr)
> +{
> +}
> +
> +static void crtc_updates_add(struct drm_crtc *crtc)
> +{
> +}
> +#endif
> +
>  static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -907,6 +1005,8 @@ static void intel_crtc_info(struct seq_file *m, stru=
ct intel_crtc *crtc)
>  	seq_printf(m, "\tunderrun reporting: cpu=3D%s pch=3D%s\n",
>  		   yesno(!crtc->cpu_fifo_underrun_disabled),
>  		   yesno(!crtc->pch_fifo_underrun_disabled));
> +
> +	crtc_updates_info(m, crtc, "\t");
>  }
>  =

>  static int i915_display_info(struct seq_file *m, void *unused)
> @@ -2278,3 +2378,20 @@ int intel_connector_debugfs_add(struct drm_connect=
or *connector)
>  =

>  	return 0;
>  }
> +
> +/**
> + * intel_crtc_debugfs_add - add i915 specific crtc debugfs files
> + * @crtc: pointer to a drm_crtc
> + *
> + * Returns 0 on success, negative error codes on error.
> + *
> + * Failure to add debugfs entries should generally be ignored.
> + */
> +int intel_crtc_debugfs_add(struct drm_crtc *crtc)
> +{
> +	if (!crtc->debugfs_entry)
> +		return -ENODEV;
> +
> +	crtc_updates_add(crtc);
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.h
> index c922c1745bfe..557901f3eb90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
> @@ -7,14 +7,17 @@
>  #define __INTEL_DISPLAY_DEBUGFS_H__
>  =

>  struct drm_connector;
> +struct drm_crtc;
>  struct drm_i915_private;
>  =

>  #ifdef CONFIG_DEBUG_FS
>  void intel_display_debugfs_register(struct drm_i915_private *i915);
>  int intel_connector_debugfs_add(struct drm_connector *connector);
> +int intel_crtc_debugfs_add(struct drm_crtc *crtc);
>  #else
>  static inline void intel_display_debugfs_register(struct drm_i915_privat=
e *i915) {}
>  static inline int intel_connector_debugfs_add(struct drm_connector *conn=
ector) { return 0; }
> +static inline int intel_crtc_debugfs_add(struct drm_crtc *crtc) { return=
 0; }
>  #endif
>  =

>  #endif /* __INTEL_DISPLAY_DEBUGFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index ce82d654d0f2..30c82bc5ca98 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1186,6 +1186,15 @@ struct intel_crtc {
>  		ktime_t start_vbl_time;
>  		int min_vbl, max_vbl;
>  		int scanline_start;
> +#ifdef CONFIG_DRM_I915_DEBUG_VBLANK_EVADE
> +		struct {
> +			u64 min;
> +			u64 max;
> +			u64 sum;
> +			unsigned long over;

Was there a particular reason for the long? The bins are
ints so can't really see why this couldn't be an in too.

Apart from those lgtm
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +			unsigned int times[21]; /* [1us, 1ms] */
> +		} vbl;
> +#endif
>  	} debug;
>  =

>  	/* scalers available on this crtc */
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 019a2d6d807a..b7e208816074 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -61,14 +61,6 @@ int intel_usecs_to_scanlines(const struct drm_display_=
mode *adjusted_mode,
>  			    1000 * adjusted_mode->crtc_htotal);
>  }
>  =

> -/* FIXME: We should instead only take spinlocks once for the entire upda=
te
> - * instead of once per mmio. */
> -#if IS_ENABLED(CONFIG_PROVE_LOCKING)
> -#define VBLANK_EVASION_TIME_US 250
> -#else
> -#define VBLANK_EVASION_TIME_US 100
> -#endif
> -
>  /**
>   * intel_pipe_update_start() - start update of a set of display registers
>   * @new_crtc_state: the new crtc state
> @@ -187,6 +179,36 @@ void intel_pipe_update_start(const struct intel_crtc=
_state *new_crtc_state)
>  	local_irq_disable();
>  }
>  =

> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_VBLANK_EVADE)
> +static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
> +{
> +	u64 delta =3D ktime_to_ns(ktime_sub(end, crtc->debug.start_vbl_time));
> +	unsigned int h;
> +
> +	h =3D ilog2(delta >> 9);
> +	if (h >=3D ARRAY_SIZE(crtc->debug.vbl.times))
> +		h =3D ARRAY_SIZE(crtc->debug.vbl.times) - 1;
> +	crtc->debug.vbl.times[h]++;
> +
> +	crtc->debug.vbl.sum +=3D delta;
> +	if (!crtc->debug.vbl.min || delta < crtc->debug.vbl.min)
> +		crtc->debug.vbl.min =3D delta;
> +	if (delta > crtc->debug.vbl.max)
> +		crtc->debug.vbl.max =3D delta;
> +
> +	if (delta > 1000 * VBLANK_EVASION_TIME_US) {
> +		drm_dbg_kms(crtc->base.dev,
> +			    "Atomic update on pipe (%c) took %lld us, max time under evasion =
is %u us\n",
> +			    pipe_name(crtc->pipe),
> +			    div_u64(delta, 1000),
> +			    VBLANK_EVASION_TIME_US);
> +		crtc->debug.vbl.over++;
> +	}
> +}
> +#else
> +static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
> +#endif
> +
>  /**
>   * intel_pipe_update_end() - end update of a set of display registers
>   * @new_crtc_state: the new crtc state
> @@ -249,15 +271,8 @@ void intel_pipe_update_end(struct intel_crtc_state *=
new_crtc_state)
>  			crtc->debug.min_vbl, crtc->debug.max_vbl,
>  			crtc->debug.scanline_start, scanline_end);
>  	}
> -#ifdef CONFIG_DRM_I915_DEBUG_VBLANK_EVADE
> -	else if (ktime_us_delta(end_vbl_time, crtc->debug.start_vbl_time) >
> -		 VBLANK_EVASION_TIME_US)
> -		drm_warn(&dev_priv->drm,
> -			 "Atomic update on pipe (%c) took %lld us, max time under evasion is =
%u us\n",
> -			 pipe_name(pipe),
> -			 ktime_us_delta(end_vbl_time, crtc->debug.start_vbl_time),
> -			 VBLANK_EVASION_TIME_US);
> -#endif
> +
> +	dbg_vblank_evade(crtc, end_vbl_time);
>  }
>  =

>  int intel_plane_check_stride(const struct intel_plane_state *plane_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/dr=
m/i915/display/intel_sprite.h
> index cd2104ba1ca1..76126dd8d584 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> @@ -17,6 +17,16 @@ struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_plane_state;
>  =

> +/*
> + * FIXME: We should instead only take spinlocks once for the entire upda=
te
> + * instead of once per mmio.
> + */
> +#if IS_ENABLED(CONFIG_PROVE_LOCKING)
> +#define VBLANK_EVASION_TIME_US 250
> +#else
> +#define VBLANK_EVASION_TIME_US 100
> +#endif
> +
>  int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mod=
e,
>  			     int usecs);
>  struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *d=
ev_priv,
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
