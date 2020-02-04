Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76466151D42
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289136F3A8;
	Tue,  4 Feb 2020 15:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20CB6F3A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:29:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 07:29:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="311075737"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 04 Feb 2020 07:29:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 17:29:27 +0200
Date: Tue, 4 Feb 2020 17:29:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204152927.GA13686@intel.com>
References: <20200204151810.8189-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204151810.8189-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: split out display debugfs to a
 separate file
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

On Tue, Feb 04, 2020 at 05:18:10PM +0200, Jani Nikula wrote:
> The i915_debugfs.c has grown more than a little unwieldy. Split out the
> display related debugfs code to a file of its own under display/,
> initialized with a separate call. No functional changes.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    1 +
>  .../drm/i915/display/intel_display_debugfs.c  | 1921 ++++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.h  |   20 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |    3 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |    3 +-
>  drivers/gpu/drm/i915/i915_debugfs.c           | 2032 +----------------
>  drivers/gpu/drm/i915/i915_debugfs.h           |    2 -
>  drivers/gpu/drm/i915/i915_drv.c               |    2 +
>  8 files changed, 2028 insertions(+), 1956 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 787ffe669810..ed91f6be19c6 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -69,6 +69,7 @@ i915-$(CONFIG_COMPAT)   +=3D i915_ioc32.o
>  i915-$(CONFIG_DEBUG_FS) +=3D \
>  	i915_debugfs.o \
>  	i915_debugfs_params.o \
> +	display/intel_display_debugfs.o \
>  	display/intel_pipe_crc.o
>  i915-$(CONFIG_PERF_EVENTS) +=3D i915_pmu.o
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> new file mode 100644
> index 000000000000..9e252b508479
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -0,0 +1,1921 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include <drm/drm_debugfs.h>
> +#include <drm/drm_fourcc.h>
> +
> +#include "intel_display_debugfs.h"
> +#include "intel_display_types.h"
> +#include "intel_dp.h"
> +#include "intel_fbc.h"
> +#include "intel_hdcp.h"
> +#include "intel_hdmi.h"
> +#include "intel_pm.h"
> +#include "intel_psr.h"
> +#include "intel_sideband.h"
> +
> +static inline struct drm_i915_private *node_to_i915(struct drm_info_node=
 *node)
> +{
> +	return to_i915(node->minor->dev);
> +}
> +
> +static int i915_fbc_status(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct intel_fbc *fbc =3D &dev_priv->fbc;
> +	intel_wakeref_t wakeref;
> +
> +	if (!HAS_FBC(dev_priv))
> +		return -ENODEV;
> +
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	mutex_lock(&fbc->lock);
> +
> +	if (intel_fbc_is_active(dev_priv))
> +		seq_puts(m, "FBC enabled\n");
> +	else
> +		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
> +
> +	if (intel_fbc_is_active(dev_priv)) {
> +		u32 mask;
> +
> +		if (INTEL_GEN(dev_priv) >=3D 8)
> +			mask =3D I915_READ(IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
> +		else if (INTEL_GEN(dev_priv) >=3D 7)
> +			mask =3D I915_READ(IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
> +		else if (INTEL_GEN(dev_priv) >=3D 5)
> +			mask =3D I915_READ(ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
> +		else if (IS_G4X(dev_priv))
> +			mask =3D I915_READ(DPFC_STATUS) & DPFC_COMP_SEG_MASK;
> +		else
> +			mask =3D I915_READ(FBC_STATUS) & (FBC_STAT_COMPRESSING |
> +							FBC_STAT_COMPRESSED);
> +
> +		seq_printf(m, "Compressing: %s\n", yesno(mask));
> +	}
> +
> +	mutex_unlock(&fbc->lock);
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +
> +	return 0;
> +}
> +
> +static int i915_fbc_false_color_get(void *data, u64 *val)
> +{
> +	struct drm_i915_private *dev_priv =3D data;
> +
> +	if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
> +		return -ENODEV;
> +
> +	*val =3D dev_priv->fbc.false_color;
> +
> +	return 0;
> +}
> +
> +static int i915_fbc_false_color_set(void *data, u64 val)
> +{
> +	struct drm_i915_private *dev_priv =3D data;
> +	u32 reg;
> +
> +	if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
> +		return -ENODEV;
> +
> +	mutex_lock(&dev_priv->fbc.lock);
> +
> +	reg =3D I915_READ(ILK_DPFC_CONTROL);
> +	dev_priv->fbc.false_color =3D val;
> +
> +	I915_WRITE(ILK_DPFC_CONTROL, val ?
> +		   (reg | FBC_CTL_FALSE_COLOR) :
> +		   (reg & ~FBC_CTL_FALSE_COLOR));
> +
> +	mutex_unlock(&dev_priv->fbc.lock);
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(i915_fbc_false_color_fops,
> +			i915_fbc_false_color_get, i915_fbc_false_color_set,
> +			"%llu\n");
> +
> +static int i915_ips_status(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	intel_wakeref_t wakeref;
> +
> +	if (!HAS_IPS(dev_priv))
> +		return -ENODEV;
> +
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +
> +	seq_printf(m, "Enabled by kernel parameter: %s\n",
> +		   yesno(i915_modparams.enable_ips));
> +
> +	if (INTEL_GEN(dev_priv) >=3D 8) {
> +		seq_puts(m, "Currently: unknown\n");
> +	} else {
> +		if (I915_READ(IPS_CTL) & IPS_ENABLE)
> +			seq_puts(m, "Currently: enabled\n");
> +		else
> +			seq_puts(m, "Currently: disabled\n");
> +	}
> +
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +
> +	return 0;
> +}
> +
> +static int i915_sr_status(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	intel_wakeref_t wakeref;
> +	bool sr_enabled =3D false;
> +
> +	wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		/* no global SR status; inspect per-plane WM */;
> +	else if (HAS_PCH_SPLIT(dev_priv))
> +		sr_enabled =3D I915_READ(WM1_LP_ILK) & WM1_LP_SR_EN;
> +	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
> +		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> +		sr_enabled =3D I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
> +	else if (IS_I915GM(dev_priv))
> +		sr_enabled =3D I915_READ(INSTPM) & INSTPM_SELF_EN;
> +	else if (IS_PINEVIEW(dev_priv))
> +		sr_enabled =3D I915_READ(DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
> +	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		sr_enabled =3D I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> +
> +	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> +
> +	seq_printf(m, "self-refresh: %s\n", enableddisabled(sr_enabled));
> +
> +	return 0;
> +}
> +
> +static int i915_opregion(struct seq_file *m, void *unused)
> +{
> +	struct intel_opregion *opregion =3D &node_to_i915(m->private)->opregion;
> +
> +	if (opregion->header)
> +		seq_write(m, opregion->header, OPREGION_SIZE);
> +
> +	return 0;
> +}
> +
> +static int i915_vbt(struct seq_file *m, void *unused)
> +{
> +	struct intel_opregion *opregion =3D &node_to_i915(m->private)->opregion;
> +
> +	if (opregion->vbt)
> +		seq_write(m, opregion->vbt, opregion->vbt_size);
> +
> +	return 0;
> +}
> +
> +static int i915_psr_sink_status_show(struct seq_file *m, void *data)
> +{
> +	u8 val;
> +	static const char * const sink_status[] =3D {
> +		"inactive",
> +		"transition to active, capture and display",
> +		"active, display from RFB",
> +		"active, capture and display on sink device timings",
> +		"transition to inactive, capture and display, timing re-sync",
> +		"reserved",
> +		"reserved",
> +		"sink internal error",
> +	};
> +	struct drm_connector *connector =3D m->private;
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +	struct intel_dp *intel_dp =3D
> +		intel_attached_dp(to_intel_connector(connector));
> +	int ret;
> +
> +	if (!CAN_PSR(dev_priv)) {
> +		seq_puts(m, "PSR Unsupported\n");
> +		return -ENODEV;
> +	}
> +
> +	if (connector->status !=3D connector_status_connected)
> +		return -ENODEV;
> +
> +	ret =3D drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
> +
> +	if (ret =3D=3D 1) {
> +		const char *str =3D "unknown";
> +
> +		val &=3D DP_PSR_SINK_STATE_MASK;
> +		if (val < ARRAY_SIZE(sink_status))
> +			str =3D sink_status[val];
> +		seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
> +	} else {
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_psr_sink_status);
> +
> +static void
> +psr_source_status(struct drm_i915_private *dev_priv, struct seq_file *m)
> +{
> +	u32 val, status_val;
> +	const char *status =3D "unknown";
> +
> +	if (dev_priv->psr.psr2_enabled) {
> +		static const char * const live_status[] =3D {
> +			"IDLE",
> +			"CAPTURE",
> +			"CAPTURE_FS",
> +			"SLEEP",
> +			"BUFON_FW",
> +			"ML_UP",
> +			"SU_STANDBY",
> +			"FAST_SLEEP",
> +			"DEEP_SLEEP",
> +			"BUF_ON",
> +			"TG_ON"
> +		};
> +		val =3D I915_READ(EDP_PSR2_STATUS(dev_priv->psr.transcoder));
> +		status_val =3D (val & EDP_PSR2_STATUS_STATE_MASK) >>
> +			      EDP_PSR2_STATUS_STATE_SHIFT;
> +		if (status_val < ARRAY_SIZE(live_status))
> +			status =3D live_status[status_val];
> +	} else {
> +		static const char * const live_status[] =3D {
> +			"IDLE",
> +			"SRDONACK",
> +			"SRDENT",
> +			"BUFOFF",
> +			"BUFON",
> +			"AUXACK",
> +			"SRDOFFACK",
> +			"SRDENT_ON",
> +		};
> +		val =3D I915_READ(EDP_PSR_STATUS(dev_priv->psr.transcoder));
> +		status_val =3D (val & EDP_PSR_STATUS_STATE_MASK) >>
> +			      EDP_PSR_STATUS_STATE_SHIFT;
> +		if (status_val < ARRAY_SIZE(live_status))
> +			status =3D live_status[status_val];
> +	}
> +
> +	seq_printf(m, "Source PSR status: %s [0x%08x]\n", status, val);
> +}
> +
> +static int i915_edp_psr_status(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct i915_psr *psr =3D &dev_priv->psr;
> +	intel_wakeref_t wakeref;
> +	const char *status;
> +	bool enabled;
> +	u32 val;
> +
> +	if (!HAS_PSR(dev_priv))
> +		return -ENODEV;
> +
> +	seq_printf(m, "Sink support: %s", yesno(psr->sink_support));
> +	if (psr->dp)
> +		seq_printf(m, " [0x%02x]", psr->dp->psr_dpcd[0]);
> +	seq_puts(m, "\n");
> +
> +	if (!psr->sink_support)
> +		return 0;
> +
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	mutex_lock(&psr->lock);
> +
> +	if (psr->enabled)
> +		status =3D psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
> +	else
> +		status =3D "disabled";
> +	seq_printf(m, "PSR mode: %s\n", status);
> +
> +	if (!psr->enabled) {
> +		seq_printf(m, "PSR sink not reliable: %s\n",
> +			   yesno(psr->sink_not_reliable));
> +
> +		goto unlock;
> +	}
> +
> +	if (psr->psr2_enabled) {
> +		val =3D I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
> +		enabled =3D val & EDP_PSR2_ENABLE;
> +	} else {
> +		val =3D I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder));
> +		enabled =3D val & EDP_PSR_ENABLE;
> +	}
> +	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
> +		   enableddisabled(enabled), val);
> +	psr_source_status(dev_priv, m);
> +	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
> +		   psr->busy_frontbuffer_bits);
> +
> +	/*
> +	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
> +	 */
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> +		val =3D I915_READ(EDP_PSR_PERF_CNT(dev_priv->psr.transcoder));
> +		val &=3D EDP_PSR_PERF_CNT_MASK;
> +		seq_printf(m, "Performance counter: %u\n", val);
> +	}
> +
> +	if (psr->debug & I915_PSR_DEBUG_IRQ) {
> +		seq_printf(m, "Last attempted entry at: %lld\n",
> +			   psr->last_entry_attempt);
> +		seq_printf(m, "Last exit at: %lld\n", psr->last_exit);
> +	}
> +
> +	if (psr->psr2_enabled) {
> +		u32 su_frames_val[3];
> +		int frame;
> +
> +		/*
> +		 * Reading all 3 registers before hand to minimize crossing a
> +		 * frame boundary between register reads
> +		 */
> +		for (frame =3D 0; frame < PSR2_SU_STATUS_FRAMES; frame +=3D 3) {
> +			val =3D I915_READ(PSR2_SU_STATUS(dev_priv->psr.transcoder,
> +						       frame));
> +			su_frames_val[frame / 3] =3D val;
> +		}
> +
> +		seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
> +
> +		for (frame =3D 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
> +			u32 su_blocks;
> +
> +			su_blocks =3D su_frames_val[frame / 3] &
> +				    PSR2_SU_STATUS_MASK(frame);
> +			su_blocks =3D su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
> +			seq_printf(m, "%d\t%d\n", frame, su_blocks);
> +		}
> +	}
> +
> +unlock:
> +	mutex_unlock(&psr->lock);
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +
> +	return 0;
> +}
> +
> +static int
> +i915_edp_psr_debug_set(void *data, u64 val)
> +{
> +	struct drm_i915_private *dev_priv =3D data;
> +	intel_wakeref_t wakeref;
> +	int ret;
> +
> +	if (!CAN_PSR(dev_priv))
> +		return -ENODEV;
> +
> +	drm_dbg_kms(&dev_priv->drm, "Setting PSR debug to %llx\n", val);
> +
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +
> +	ret =3D intel_psr_debug_set(dev_priv, val);
> +
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +
> +	return ret;
> +}
> +
> +static int
> +i915_edp_psr_debug_get(void *data, u64 *val)
> +{
> +	struct drm_i915_private *dev_priv =3D data;
> +
> +	if (!CAN_PSR(dev_priv))
> +		return -ENODEV;
> +
> +	*val =3D READ_ONCE(dev_priv->psr.debug);
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
> +			i915_edp_psr_debug_get, i915_edp_psr_debug_set,
> +			"%llu\n");
> +
> +static void intel_seq_print_mode(struct seq_file *m, int tabs,
> +				 const struct drm_display_mode *mode)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < tabs; i++)
> +		seq_putc(m, '\t');
> +
> +	seq_printf(m, DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
> +}
> +
> +static void intel_encoder_info(struct seq_file *m,
> +			       struct intel_crtc *crtc,
> +			       struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct drm_connector_list_iter conn_iter;
> +	struct drm_connector *connector;
> +
> +	seq_printf(m, "\t[ENCODER:%d:%s]: connectors:\n",
> +		   encoder->base.base.id, encoder->base.name);
> +
> +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		const struct drm_connector_state *conn_state =3D
> +			connector->state;
> +
> +		if (conn_state->best_encoder !=3D &encoder->base)
> +			continue;
> +
> +		seq_printf(m, "\t\t[CONNECTOR:%d:%s]\n",
> +			   connector->base.id, connector->name);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +}
> +
> +static void intel_panel_info(struct seq_file *m, struct intel_panel *pan=
el)
> +{
> +	const struct drm_display_mode *mode =3D panel->fixed_mode;
> +
> +	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
> +}
> +
> +static void intel_hdcp_info(struct seq_file *m,
> +			    struct intel_connector *intel_connector)
> +{
> +	bool hdcp_cap, hdcp2_cap;
> +
> +	hdcp_cap =3D intel_hdcp_capable(intel_connector);
> +	hdcp2_cap =3D intel_hdcp2_capable(intel_connector);
> +
> +	if (hdcp_cap)
> +		seq_puts(m, "HDCP1.4 ");
> +	if (hdcp2_cap)
> +		seq_puts(m, "HDCP2.2 ");
> +
> +	if (!hdcp_cap && !hdcp2_cap)
> +		seq_puts(m, "None");
> +
> +	seq_puts(m, "\n");
> +}
> +
> +static void intel_dp_info(struct seq_file *m,
> +			  struct intel_connector *intel_connector)
> +{
> +	struct intel_encoder *intel_encoder =3D intel_attached_encoder(intel_co=
nnector);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(intel_encoder);
> +
> +	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
> +	seq_printf(m, "\taudio support: %s\n", yesno(intel_dp->has_audio));
> +	if (intel_connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)
> +		intel_panel_info(m, &intel_connector->panel);
> +
> +	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
> +				&intel_dp->aux);
> +	if (intel_connector->hdcp.shim) {
> +		seq_puts(m, "\tHDCP version: ");
> +		intel_hdcp_info(m, intel_connector);
> +	}
> +}
> +
> +static void intel_dp_mst_info(struct seq_file *m,
> +			  struct intel_connector *intel_connector)
> +{
> +	struct intel_encoder *intel_encoder =3D intel_attached_encoder(intel_co=
nnector);
> +	struct intel_dp_mst_encoder *intel_mst =3D
> +		enc_to_mst(intel_encoder);
> +	struct intel_digital_port *intel_dig_port =3D intel_mst->primary;
> +	struct intel_dp *intel_dp =3D &intel_dig_port->dp;
> +	bool has_audio =3D drm_dp_mst_port_has_audio(&intel_dp->mst_mgr,
> +					intel_connector->port);
> +
> +	seq_printf(m, "\taudio support: %s\n", yesno(has_audio));
> +}
> +
> +static void intel_hdmi_info(struct seq_file *m,
> +			    struct intel_connector *intel_connector)
> +{
> +	struct intel_encoder *intel_encoder =3D intel_attached_encoder(intel_co=
nnector);
> +	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(intel_encoder);
> +
> +	seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
> +	if (intel_connector->hdcp.shim) {
> +		seq_puts(m, "\tHDCP version: ");
> +		intel_hdcp_info(m, intel_connector);
> +	}
> +}
> +
> +static void intel_lvds_info(struct seq_file *m,
> +			    struct intel_connector *intel_connector)
> +{
> +	intel_panel_info(m, &intel_connector->panel);
> +}
> +
> +static void intel_connector_info(struct seq_file *m,
> +				 struct drm_connector *connector)
> +{
> +	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> +	const struct drm_connector_state *conn_state =3D connector->state;
> +	struct intel_encoder *encoder =3D
> +		to_intel_encoder(conn_state->best_encoder);
> +	const struct drm_display_mode *mode;
> +
> +	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
> +		   connector->base.id, connector->name,
> +		   drm_get_connector_status_name(connector->status));
> +
> +	if (connector->status =3D=3D connector_status_disconnected)
> +		return;
> +
> +	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
> +		   connector->display_info.width_mm,
> +		   connector->display_info.height_mm);
> +	seq_printf(m, "\tsubpixel order: %s\n",
> +		   drm_get_subpixel_order_name(connector->display_info.subpixel_order)=
);
> +	seq_printf(m, "\tCEA rev: %d\n", connector->display_info.cea_rev);
> +
> +	if (!encoder)
> +		return;
> +
> +	switch (connector->connector_type) {
> +	case DRM_MODE_CONNECTOR_DisplayPort:
> +	case DRM_MODE_CONNECTOR_eDP:
> +		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			intel_dp_mst_info(m, intel_connector);
> +		else
> +			intel_dp_info(m, intel_connector);
> +		break;
> +	case DRM_MODE_CONNECTOR_LVDS:
> +		if (encoder->type =3D=3D INTEL_OUTPUT_LVDS)
> +			intel_lvds_info(m, intel_connector);
> +		break;
> +	case DRM_MODE_CONNECTOR_HDMIA:
> +		if (encoder->type =3D=3D INTEL_OUTPUT_HDMI ||
> +		    encoder->type =3D=3D INTEL_OUTPUT_DDI)
> +			intel_hdmi_info(m, intel_connector);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	seq_printf(m, "\tmodes:\n");
> +	list_for_each_entry(mode, &connector->modes, head)
> +		intel_seq_print_mode(m, 2, mode);
> +}
> +
> +static const char *plane_type(enum drm_plane_type type)
> +{
> +	switch (type) {
> +	case DRM_PLANE_TYPE_OVERLAY:
> +		return "OVL";
> +	case DRM_PLANE_TYPE_PRIMARY:
> +		return "PRI";
> +	case DRM_PLANE_TYPE_CURSOR:
> +		return "CUR";
> +	/*
> +	 * Deliberately omitting default: to generate compiler warnings
> +	 * when a new drm_plane_type gets added.
> +	 */
> +	}
> +
> +	return "unknown";
> +}
> +
> +static void plane_rotation(char *buf, size_t bufsize, unsigned int rotat=
ion)
> +{
> +	/*
> +	 * According to doc only one DRM_MODE_ROTATE_ is allowed but this
> +	 * will print them all to visualize if the values are misused
> +	 */
> +	snprintf(buf, bufsize,
> +		 "%s%s%s%s%s%s(0x%08x)",
> +		 (rotation & DRM_MODE_ROTATE_0) ? "0 " : "",
> +		 (rotation & DRM_MODE_ROTATE_90) ? "90 " : "",
> +		 (rotation & DRM_MODE_ROTATE_180) ? "180 " : "",
> +		 (rotation & DRM_MODE_ROTATE_270) ? "270 " : "",
> +		 (rotation & DRM_MODE_REFLECT_X) ? "FLIPX " : "",
> +		 (rotation & DRM_MODE_REFLECT_Y) ? "FLIPY " : "",
> +		 rotation);
> +}
> +
> +static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane=
 *plane)
> +{
> +	const struct intel_plane_state *plane_state =3D
> +		to_intel_plane_state(plane->base.state);
> +	const struct drm_framebuffer *fb =3D plane_state->uapi.fb;
> +	struct drm_format_name_buf format_name;
> +	struct drm_rect src, dst;
> +	char rot_str[48];
> +
> +	src =3D drm_plane_state_src(&plane_state->uapi);
> +	dst =3D drm_plane_state_dest(&plane_state->uapi);
> +
> +	if (fb)
> +		drm_get_format_name(fb->format->format, &format_name);
> +
> +	plane_rotation(rot_str, sizeof(rot_str),
> +		       plane_state->uapi.rotation);
> +
> +	seq_printf(m, "\t\tuapi: fb=3D%d,%s,%dx%d, src=3D" DRM_RECT_FP_FMT ", d=
st=3D" DRM_RECT_FMT ", rotation=3D%s\n",
> +		   fb ? fb->base.id : 0, fb ? format_name.str : "n/a",
> +		   fb ? fb->width : 0, fb ? fb->height : 0,
> +		   DRM_RECT_FP_ARG(&src),
> +		   DRM_RECT_ARG(&dst),
> +		   rot_str);
> +}
> +
> +static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *=
plane)
> +{
> +	const struct intel_plane_state *plane_state =3D
> +		to_intel_plane_state(plane->base.state);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct drm_format_name_buf format_name;
> +	char rot_str[48];
> +
> +	if (!fb)
> +		return;
> +
> +	drm_get_format_name(fb->format->format, &format_name);
> +
> +	plane_rotation(rot_str, sizeof(rot_str),
> +		       plane_state->hw.rotation);
> +
> +	seq_printf(m, "\t\thw: fb=3D%d,%s,%dx%d, visible=3D%s, src=3D" DRM_RECT=
_FP_FMT ", dst=3D" DRM_RECT_FMT ", rotation=3D%s\n",
> +		   fb->base.id, format_name.str,
> +		   fb->width, fb->height,
> +		   yesno(plane_state->uapi.visible),
> +		   DRM_RECT_FP_ARG(&plane_state->uapi.src),
> +		   DRM_RECT_ARG(&plane_state->uapi.dst),
> +		   rot_str);
> +}
> +
> +static void intel_plane_info(struct seq_file *m, struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +		seq_printf(m, "\t[PLANE:%d:%s]: type=3D%s\n",
> +			   plane->base.base.id, plane->base.name,
> +			   plane_type(plane->base.type));
> +		intel_plane_uapi_info(m, plane);
> +		intel_plane_hw_info(m, plane);
> +	}
> +}
> +
> +static void intel_scaler_info(struct seq_file *m, struct intel_crtc *crt=
c)
> +{
> +	const struct intel_crtc_state *crtc_state =3D
> +		to_intel_crtc_state(crtc->base.state);
> +	int num_scalers =3D crtc->num_scalers;
> +	int i;
> +
> +	/* Not all platformas have a scaler */
> +	if (num_scalers) {
> +		seq_printf(m, "\tnum_scalers=3D%d, scaler_users=3D%x scaler_id=3D%d",
> +			   num_scalers,
> +			   crtc_state->scaler_state.scaler_users,
> +			   crtc_state->scaler_state.scaler_id);
> +
> +		for (i =3D 0; i < num_scalers; i++) {
> +			const struct intel_scaler *sc =3D
> +				&crtc_state->scaler_state.scalers[i];
> +
> +			seq_printf(m, ", scalers[%d]: use=3D%s, mode=3D%x",
> +				   i, yesno(sc->in_use), sc->mode);
> +		}
> +		seq_puts(m, "\n");
> +	} else {
> +		seq_puts(m, "\tNo scalers available on this platform\n");
> +	}
> +}
> +
> +static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	const struct intel_crtc_state *crtc_state =3D
> +		to_intel_crtc_state(crtc->base.state);
> +	struct intel_encoder *encoder;
> +
> +	seq_printf(m, "[CRTC:%d:%s]:\n",
> +		   crtc->base.base.id, crtc->base.name);
> +
> +	seq_printf(m, "\tuapi: enable=3D%s, active=3D%s, mode=3D" DRM_MODE_FMT =
"\n",
> +		   yesno(crtc_state->uapi.enable),
> +		   yesno(crtc_state->uapi.active),
> +		   DRM_MODE_ARG(&crtc_state->uapi.mode));
> +
> +	if (crtc_state->hw.enable) {
> +		seq_printf(m, "\thw: active=3D%s, adjusted_mode=3D" DRM_MODE_FMT "\n",
> +			   yesno(crtc_state->hw.active),
> +			   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
> +
> +		seq_printf(m, "\tpipe src size=3D%dx%d, dither=3D%s, bpp=3D%d\n",
> +			   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> +			   yesno(crtc_state->dither), crtc_state->pipe_bpp);
> +
> +		intel_scaler_info(m, crtc);
> +	}
> +
> +	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
> +				    crtc_state->uapi.encoder_mask)
> +		intel_encoder_info(m, crtc, encoder);
> +
> +	intel_plane_info(m, crtc);
> +
> +	seq_printf(m, "\tunderrun reporting: cpu=3D%s pch=3D%s\n",
> +		   yesno(!crtc->cpu_fifo_underrun_disabled),
> +		   yesno(!crtc->pch_fifo_underrun_disabled));
> +}
> +
> +static int i915_display_info(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_crtc *crtc;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +
> +	drm_modeset_lock_all(dev);
> +
> +	seq_printf(m, "CRTC info\n");
> +	seq_printf(m, "---------\n");
> +	for_each_intel_crtc(dev, crtc)
> +		intel_crtc_info(m, crtc);
> +
> +	seq_printf(m, "\n");
> +	seq_printf(m, "Connector info\n");
> +	seq_printf(m, "--------------\n");
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter)
> +		intel_connector_info(m, connector);
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	drm_modeset_unlock_all(dev);
> +
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +
> +	return 0;
> +}
> +
> +static int i915_shared_dplls_info(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	int i;
> +
> +	drm_modeset_lock_all(dev);
> +	for (i =3D 0; i < dev_priv->num_shared_dpll; i++) {
> +		struct intel_shared_dpll *pll =3D &dev_priv->shared_dplls[i];
> +
> +		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
> +			   pll->info->id);
> +		seq_printf(m, " crtc_mask: 0x%08x, active: 0x%x, on: %s\n",
> +			   pll->state.crtc_mask, pll->active_mask, yesno(pll->on));
> +		seq_printf(m, " tracked hardware state:\n");
> +		seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
> +		seq_printf(m, " dpll_md: 0x%08x\n",
> +			   pll->state.hw_state.dpll_md);
> +		seq_printf(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
> +		seq_printf(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
> +		seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
> +		seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
> +		seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
> +		seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
> +			   pll->state.hw_state.mg_refclkin_ctl);
> +		seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
> +			   pll->state.hw_state.mg_clktop2_coreclkctl1);
> +		seq_printf(m, " mg_clktop2_hsclkctl:    0x%08x\n",
> +			   pll->state.hw_state.mg_clktop2_hsclkctl);
> +		seq_printf(m, " mg_pll_div0:  0x%08x\n",
> +			   pll->state.hw_state.mg_pll_div0);
> +		seq_printf(m, " mg_pll_div1:  0x%08x\n",
> +			   pll->state.hw_state.mg_pll_div1);
> +		seq_printf(m, " mg_pll_lf:    0x%08x\n",
> +			   pll->state.hw_state.mg_pll_lf);
> +		seq_printf(m, " mg_pll_frac_lock: 0x%08x\n",
> +			   pll->state.hw_state.mg_pll_frac_lock);
> +		seq_printf(m, " mg_pll_ssc:   0x%08x\n",
> +			   pll->state.hw_state.mg_pll_ssc);
> +		seq_printf(m, " mg_pll_bias:  0x%08x\n",
> +			   pll->state.hw_state.mg_pll_bias);
> +		seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
> +			   pll->state.hw_state.mg_pll_tdc_coldst_bias);
> +	}
> +	drm_modeset_unlock_all(dev);
> +
> +	return 0;
> +}
> +
> +static int i915_ddb_info(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct skl_ddb_entry *entry;
> +	struct intel_crtc *crtc;
> +
> +	if (INTEL_GEN(dev_priv) < 9)
> +		return -ENODEV;
> +
> +	drm_modeset_lock_all(dev);
> +
> +	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		enum pipe pipe =3D crtc->pipe;
> +		enum plane_id plane_id;
> +
> +		seq_printf(m, "Pipe %c\n", pipe_name(pipe));
> +
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			entry =3D &crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			seq_printf(m, "  Plane%-8d%8u%8u%8u\n", plane_id + 1,
> +				   entry->start, entry->end,
> +				   skl_ddb_entry_size(entry));
> +		}
> +
> +		entry =3D &crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR];
> +		seq_printf(m, "  %-13s%8u%8u%8u\n", "Cursor", entry->start,
> +			   entry->end, skl_ddb_entry_size(entry));
> +	}
> +
> +	drm_modeset_unlock_all(dev);
> +
> +	return 0;
> +}
> +
> +static void drrs_status_per_crtc(struct seq_file *m,
> +				 struct drm_device *dev,
> +				 struct intel_crtc *intel_crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct i915_drrs *drrs =3D &dev_priv->drrs;
> +	int vrefresh =3D 0;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		if (connector->state->crtc !=3D &intel_crtc->base)
> +			continue;
> +
> +		seq_printf(m, "%s:\n", connector->name);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	seq_puts(m, "\n");
> +
> +	if (to_intel_crtc_state(intel_crtc->base.state)->has_drrs) {
> +		struct intel_panel *panel;
> +
> +		mutex_lock(&drrs->mutex);
> +		/* DRRS Supported */
> +		seq_puts(m, "\tDRRS Supported: Yes\n");
> +
> +		/* disable_drrs() will make drrs->dp NULL */
> +		if (!drrs->dp) {
> +			seq_puts(m, "Idleness DRRS: Disabled\n");
> +			if (dev_priv->psr.enabled)
> +				seq_puts(m,
> +				"\tAs PSR is enabled, DRRS is not enabled\n");
> +			mutex_unlock(&drrs->mutex);
> +			return;
> +		}
> +
> +		panel =3D &drrs->dp->attached_connector->panel;
> +		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
> +					drrs->busy_frontbuffer_bits);
> +
> +		seq_puts(m, "\n\t\t");
> +		if (drrs->refresh_rate_type =3D=3D DRRS_HIGH_RR) {
> +			seq_puts(m, "DRRS_State: DRRS_HIGH_RR\n");
> +			vrefresh =3D panel->fixed_mode->vrefresh;
> +		} else if (drrs->refresh_rate_type =3D=3D DRRS_LOW_RR) {
> +			seq_puts(m, "DRRS_State: DRRS_LOW_RR\n");
> +			vrefresh =3D panel->downclock_mode->vrefresh;
> +		} else {
> +			seq_printf(m, "DRRS_State: Unknown(%d)\n",
> +						drrs->refresh_rate_type);
> +			mutex_unlock(&drrs->mutex);
> +			return;
> +		}
> +		seq_printf(m, "\t\tVrefresh: %d", vrefresh);
> +
> +		seq_puts(m, "\n\t\t");
> +		mutex_unlock(&drrs->mutex);
> +	} else {
> +		/* DRRS not supported. Print the VBT parameter*/
> +		seq_puts(m, "\tDRRS Supported : No");
> +	}
> +	seq_puts(m, "\n");
> +}
> +
> +static int i915_drrs_status(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_crtc *intel_crtc;
> +	int active_crtc_cnt =3D 0;
> +
> +	drm_modeset_lock_all(dev);
> +	for_each_intel_crtc(dev, intel_crtc) {
> +		if (intel_crtc->base.state->active) {
> +			active_crtc_cnt++;
> +			seq_printf(m, "\nCRTC %d:  ", active_crtc_cnt);
> +
> +			drrs_status_per_crtc(m, dev, intel_crtc);
> +		}
> +	}
> +	drm_modeset_unlock_all(dev);
> +
> +	if (!active_crtc_cnt)
> +		seq_puts(m, "No active crtc found\n");
> +
> +	return 0;
> +}
> +
> +static int i915_dp_mst_info(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_encoder *intel_encoder;
> +	struct intel_digital_port *intel_dig_port;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		if (connector->connector_type !=3D DRM_MODE_CONNECTOR_DisplayPort)
> +			continue;
> +
> +		intel_encoder =3D intel_attached_encoder(to_intel_connector(connector)=
);
> +		if (!intel_encoder || intel_encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		intel_dig_port =3D enc_to_dig_port(intel_encoder);
> +		if (!intel_dig_port->dp.can_mst)
> +			continue;
> +
> +		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
> +			   intel_dig_port->base.base.base.id,
> +			   intel_dig_port->base.base.name);
> +		drm_dp_mst_dump_topology(m, &intel_dig_port->dp.mst_mgr);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return 0;
> +}
> +
> +static ssize_t i915_displayport_test_active_write(struct file *file,
> +						  const char __user *ubuf,
> +						  size_t len, loff_t *offp)
> +{
> +	char *input_buffer;
> +	int status =3D 0;
> +	struct drm_device *dev;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_dp *intel_dp;
> +	int val =3D 0;
> +
> +	dev =3D ((struct seq_file *)file->private_data)->private;
> +
> +	if (len =3D=3D 0)
> +		return 0;
> +
> +	input_buffer =3D memdup_user_nul(ubuf, len);
> +	if (IS_ERR(input_buffer))
> +		return PTR_ERR(input_buffer);
> +
> +	drm_dbg(&to_i915(dev)->drm,
> +		"Copied %d bytes from user\n", (unsigned int)len);
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		struct intel_encoder *encoder;
> +
> +		if (connector->connector_type !=3D
> +		    DRM_MODE_CONNECTOR_DisplayPort)
> +			continue;
> +
> +		encoder =3D to_intel_encoder(connector->encoder);
> +		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		if (encoder && connector->status =3D=3D connector_status_connected) {
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +			status =3D kstrtoint(input_buffer, 10, &val);
> +			if (status < 0)
> +				break;
> +			drm_dbg(&to_i915(dev)->drm,
> +				"Got %d for test active\n", val);
> +			/* To prevent erroneous activation of the compliance
> +			 * testing code, only accept an actual value of 1 here
> +			 */
> +			if (val =3D=3D 1)
> +				intel_dp->compliance.test_active =3D true;
> +			else
> +				intel_dp->compliance.test_active =3D false;
> +		}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +	kfree(input_buffer);
> +	if (status < 0)
> +		return status;
> +
> +	*offp +=3D len;
> +	return len;
> +}
> +
> +static int i915_displayport_test_active_show(struct seq_file *m, void *d=
ata)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_dp *intel_dp;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		struct intel_encoder *encoder;
> +
> +		if (connector->connector_type !=3D
> +		    DRM_MODE_CONNECTOR_DisplayPort)
> +			continue;
> +
> +		encoder =3D to_intel_encoder(connector->encoder);
> +		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		if (encoder && connector->status =3D=3D connector_status_connected) {
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +			if (intel_dp->compliance.test_active)
> +				seq_puts(m, "1");
> +			else
> +				seq_puts(m, "0");
> +		} else
> +			seq_puts(m, "0");
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return 0;
> +}
> +
> +static int i915_displayport_test_active_open(struct inode *inode,
> +					     struct file *file)
> +{
> +	return single_open(file, i915_displayport_test_active_show,
> +			   inode->i_private);
> +}
> +
> +static const struct file_operations i915_displayport_test_active_fops =
=3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_displayport_test_active_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_displayport_test_active_write
> +};
> +
> +static int i915_displayport_test_data_show(struct seq_file *m, void *dat=
a)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_dp *intel_dp;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		struct intel_encoder *encoder;
> +
> +		if (connector->connector_type !=3D
> +		    DRM_MODE_CONNECTOR_DisplayPort)
> +			continue;
> +
> +		encoder =3D to_intel_encoder(connector->encoder);
> +		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		if (encoder && connector->status =3D=3D connector_status_connected) {
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +			if (intel_dp->compliance.test_type =3D=3D
> +			    DP_TEST_LINK_EDID_READ)
> +				seq_printf(m, "%lx",
> +					   intel_dp->compliance.test_data.edid);
> +			else if (intel_dp->compliance.test_type =3D=3D
> +				 DP_TEST_LINK_VIDEO_PATTERN) {
> +				seq_printf(m, "hdisplay: %d\n",
> +					   intel_dp->compliance.test_data.hdisplay);
> +				seq_printf(m, "vdisplay: %d\n",
> +					   intel_dp->compliance.test_data.vdisplay);
> +				seq_printf(m, "bpc: %u\n",
> +					   intel_dp->compliance.test_data.bpc);
> +			}
> +		} else
> +			seq_puts(m, "0");
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_data);
> +
> +static int i915_displayport_test_type_show(struct seq_file *m, void *dat=
a)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_dp *intel_dp;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		struct intel_encoder *encoder;
> +
> +		if (connector->connector_type !=3D
> +		    DRM_MODE_CONNECTOR_DisplayPort)
> +			continue;
> +
> +		encoder =3D to_intel_encoder(connector->encoder);
> +		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		if (encoder && connector->status =3D=3D connector_status_connected) {
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +			seq_printf(m, "%02lx", intel_dp->compliance.test_type);
> +		} else
> +			seq_puts(m, "0");
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
> +
> +static void wm_latency_show(struct seq_file *m, const u16 wm[8])
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	int level;
> +	int num_levels;
> +
> +	if (IS_CHERRYVIEW(dev_priv))
> +		num_levels =3D 3;
> +	else if (IS_VALLEYVIEW(dev_priv))
> +		num_levels =3D 1;
> +	else if (IS_G4X(dev_priv))
> +		num_levels =3D 3;
> +	else
> +		num_levels =3D ilk_wm_max_level(dev_priv) + 1;
> +
> +	drm_modeset_lock_all(dev);
> +
> +	for (level =3D 0; level < num_levels; level++) {
> +		unsigned int latency =3D wm[level];
> +
> +		/*
> +		 * - WM1+ latency values in 0.5us units
> +		 * - latencies are in us on gen9/vlv/chv
> +		 */
> +		if (INTEL_GEN(dev_priv) >=3D 9 ||
> +		    IS_VALLEYVIEW(dev_priv) ||
> +		    IS_CHERRYVIEW(dev_priv) ||
> +		    IS_G4X(dev_priv))
> +			latency *=3D 10;
> +		else if (level > 0)
> +			latency *=3D 5;
> +
> +		seq_printf(m, "WM%d %u (%u.%u usec)\n",
> +			   level, wm[level], latency / 10, latency % 10);
> +	}
> +
> +	drm_modeset_unlock_all(dev);
> +}
> +
> +static int pri_wm_latency_show(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	const u16 *latencies;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		latencies =3D dev_priv->wm.skl_latency;
> +	else
> +		latencies =3D dev_priv->wm.pri_latency;
> +
> +	wm_latency_show(m, latencies);
> +
> +	return 0;
> +}
> +
> +static int spr_wm_latency_show(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	const u16 *latencies;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		latencies =3D dev_priv->wm.skl_latency;
> +	else
> +		latencies =3D dev_priv->wm.spr_latency;
> +
> +	wm_latency_show(m, latencies);
> +
> +	return 0;
> +}
> +
> +static int cur_wm_latency_show(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	const u16 *latencies;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		latencies =3D dev_priv->wm.skl_latency;
> +	else
> +		latencies =3D dev_priv->wm.cur_latency;
> +
> +	wm_latency_show(m, latencies);
> +
> +	return 0;
> +}
> +
> +static int pri_wm_latency_open(struct inode *inode, struct file *file)
> +{
> +	struct drm_i915_private *dev_priv =3D inode->i_private;
> +
> +	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
> +		return -ENODEV;
> +
> +	return single_open(file, pri_wm_latency_show, dev_priv);
> +}
> +
> +static int spr_wm_latency_open(struct inode *inode, struct file *file)
> +{
> +	struct drm_i915_private *dev_priv =3D inode->i_private;
> +
> +	if (HAS_GMCH(dev_priv))
> +		return -ENODEV;
> +
> +	return single_open(file, spr_wm_latency_show, dev_priv);
> +}
> +
> +static int cur_wm_latency_open(struct inode *inode, struct file *file)
> +{
> +	struct drm_i915_private *dev_priv =3D inode->i_private;
> +
> +	if (HAS_GMCH(dev_priv))
> +		return -ENODEV;
> +
> +	return single_open(file, cur_wm_latency_show, dev_priv);
> +}
> +
> +static ssize_t wm_latency_write(struct file *file, const char __user *ub=
uf,
> +				size_t len, loff_t *offp, u16 wm[8])
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	u16 new[8] =3D { 0 };
> +	int num_levels;
> +	int level;
> +	int ret;
> +	char tmp[32];
> +
> +	if (IS_CHERRYVIEW(dev_priv))
> +		num_levels =3D 3;
> +	else if (IS_VALLEYVIEW(dev_priv))
> +		num_levels =3D 1;
> +	else if (IS_G4X(dev_priv))
> +		num_levels =3D 3;
> +	else
> +		num_levels =3D ilk_wm_max_level(dev_priv) + 1;
> +
> +	if (len >=3D sizeof(tmp))
> +		return -EINVAL;
> +
> +	if (copy_from_user(tmp, ubuf, len))
> +		return -EFAULT;
> +
> +	tmp[len] =3D '\0';
> +
> +	ret =3D sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
> +		     &new[0], &new[1], &new[2], &new[3],
> +		     &new[4], &new[5], &new[6], &new[7]);
> +	if (ret !=3D num_levels)
> +		return -EINVAL;
> +
> +	drm_modeset_lock_all(dev);
> +
> +	for (level =3D 0; level < num_levels; level++)
> +		wm[level] =3D new[level];
> +
> +	drm_modeset_unlock_all(dev);
> +
> +	return len;
> +}
> +
> +
> +static ssize_t pri_wm_latency_write(struct file *file, const char __user=
 *ubuf,
> +				    size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	u16 *latencies;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		latencies =3D dev_priv->wm.skl_latency;
> +	else
> +		latencies =3D dev_priv->wm.pri_latency;
> +
> +	return wm_latency_write(file, ubuf, len, offp, latencies);
> +}
> +
> +static ssize_t spr_wm_latency_write(struct file *file, const char __user=
 *ubuf,
> +				    size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	u16 *latencies;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		latencies =3D dev_priv->wm.skl_latency;
> +	else
> +		latencies =3D dev_priv->wm.spr_latency;
> +
> +	return wm_latency_write(file, ubuf, len, offp, latencies);
> +}
> +
> +static ssize_t cur_wm_latency_write(struct file *file, const char __user=
 *ubuf,
> +				    size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	u16 *latencies;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		latencies =3D dev_priv->wm.skl_latency;
> +	else
> +		latencies =3D dev_priv->wm.cur_latency;
> +
> +	return wm_latency_write(file, ubuf, len, offp, latencies);
> +}
> +
> +static const struct file_operations i915_pri_wm_latency_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D pri_wm_latency_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D pri_wm_latency_write
> +};
> +
> +static const struct file_operations i915_spr_wm_latency_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D spr_wm_latency_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D spr_wm_latency_write
> +};
> +
> +static const struct file_operations i915_cur_wm_latency_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D cur_wm_latency_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D cur_wm_latency_write
> +};
> +
> +static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
> +
> +	/* Synchronize with everything first in case there's been an HPD
> +	 * storm, but we haven't finished handling it in the kernel yet
> +	 */
> +	intel_synchronize_irq(dev_priv);
> +	flush_work(&dev_priv->hotplug.dig_port_work);
> +	flush_delayed_work(&dev_priv->hotplug.hotplug_work);
> +
> +	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
> +	seq_printf(m, "Detected: %s\n",
> +		   yesno(delayed_work_pending(&hotplug->reenable_work)));
> +
> +	return 0;
> +}
> +
> +static ssize_t i915_hpd_storm_ctl_write(struct file *file,
> +					const char __user *ubuf, size_t len,
> +					loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
> +	unsigned int new_threshold;
> +	int i;
> +	char *newline;
> +	char tmp[16];
> +
> +	if (len >=3D sizeof(tmp))
> +		return -EINVAL;
> +
> +	if (copy_from_user(tmp, ubuf, len))
> +		return -EFAULT;
> +
> +	tmp[len] =3D '\0';
> +
> +	/* Strip newline, if any */
> +	newline =3D strchr(tmp, '\n');
> +	if (newline)
> +		*newline =3D '\0';
> +
> +	if (strcmp(tmp, "reset") =3D=3D 0)
> +		new_threshold =3D HPD_STORM_DEFAULT_THRESHOLD;
> +	else if (kstrtouint(tmp, 10, &new_threshold) !=3D 0)
> +		return -EINVAL;
> +
> +	if (new_threshold > 0)
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Setting HPD storm detection threshold to %d\n",
> +			    new_threshold);
> +	else
> +		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm detection\n");
> +
> +	spin_lock_irq(&dev_priv->irq_lock);
> +	hotplug->hpd_storm_threshold =3D new_threshold;
> +	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
> +	for_each_hpd_pin(i)
> +		hotplug->stats[i].count =3D 0;
> +	spin_unlock_irq(&dev_priv->irq_lock);
> +
> +	/* Re-enable hpd immediately if we were in an irq storm */
> +	flush_delayed_work(&dev_priv->hotplug.reenable_work);
> +
> +	return len;
> +}
> +
> +static int i915_hpd_storm_ctl_open(struct inode *inode, struct file *fil=
e)
> +{
> +	return single_open(file, i915_hpd_storm_ctl_show, inode->i_private);
> +}
> +
> +static const struct file_operations i915_hpd_storm_ctl_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_hpd_storm_ctl_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_hpd_storm_ctl_write
> +};
> +
> +static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
> +{
> +	struct drm_i915_private *dev_priv =3D m->private;
> +
> +	seq_printf(m, "Enabled: %s\n",
> +		   yesno(dev_priv->hotplug.hpd_short_storm_enabled));
> +
> +	return 0;
> +}
> +
> +static int
> +i915_hpd_short_storm_ctl_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, i915_hpd_short_storm_ctl_show,
> +			   inode->i_private);
> +}
> +
> +static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
> +					      const char __user *ubuf,
> +					      size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
> +	char *newline;
> +	char tmp[16];
> +	int i;
> +	bool new_state;
> +
> +	if (len >=3D sizeof(tmp))
> +		return -EINVAL;
> +
> +	if (copy_from_user(tmp, ubuf, len))
> +		return -EFAULT;
> +
> +	tmp[len] =3D '\0';
> +
> +	/* Strip newline, if any */
> +	newline =3D strchr(tmp, '\n');
> +	if (newline)
> +		*newline =3D '\0';
> +
> +	/* Reset to the "default" state for this system */
> +	if (strcmp(tmp, "reset") =3D=3D 0)
> +		new_state =3D !HAS_DP_MST(dev_priv);
> +	else if (kstrtobool(tmp, &new_state) !=3D 0)
> +		return -EINVAL;
> +
> +	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
> +		    new_state ? "En" : "Dis");
> +
> +	spin_lock_irq(&dev_priv->irq_lock);
> +	hotplug->hpd_short_storm_enabled =3D new_state;
> +	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
> +	for_each_hpd_pin(i)
> +		hotplug->stats[i].count =3D 0;
> +	spin_unlock_irq(&dev_priv->irq_lock);
> +
> +	/* Re-enable hpd immediately if we were in an irq storm */
> +	flush_delayed_work(&dev_priv->hotplug.reenable_work);
> +
> +	return len;
> +}
> +
> +static const struct file_operations i915_hpd_short_storm_ctl_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_hpd_short_storm_ctl_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_hpd_short_storm_ctl_write,
> +};
> +
> +static int i915_drrs_ctl_set(void *data, u64 val)
> +{
> +	struct drm_i915_private *dev_priv =3D data;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_crtc *crtc;
> +
> +	if (INTEL_GEN(dev_priv) < 7)
> +		return -ENODEV;
> +
> +	for_each_intel_crtc(dev, crtc) {
> +		struct drm_connector_list_iter conn_iter;
> +		struct intel_crtc_state *crtc_state;
> +		struct drm_connector *connector;
> +		struct drm_crtc_commit *commit;
> +		int ret;
> +
> +		ret =3D drm_modeset_lock_single_interruptible(&crtc->base.mutex);
> +		if (ret)
> +			return ret;
> +
> +		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +		if (!crtc_state->hw.active ||
> +		    !crtc_state->has_drrs)
> +			goto out;
> +
> +		commit =3D crtc_state->uapi.commit;
> +		if (commit) {
> +			ret =3D wait_for_completion_interruptible(&commit->hw_done);
> +			if (ret)
> +				goto out;
> +		}
> +
> +		drm_connector_list_iter_begin(dev, &conn_iter);
> +		drm_for_each_connector_iter(connector, &conn_iter) {
> +			struct intel_encoder *encoder;
> +			struct intel_dp *intel_dp;
> +
> +			if (!(crtc_state->uapi.connector_mask &
> +			      drm_connector_mask(connector)))
> +				continue;
> +
> +			encoder =3D intel_attached_encoder(to_intel_connector(connector));
> +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +				continue;
> +
> +			drm_dbg(&dev_priv->drm,
> +				"Manually %sabling DRRS. %llu\n",
> +				val ? "en" : "dis", val);
> +
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +			if (val)
> +				intel_edp_drrs_enable(intel_dp,
> +						      crtc_state);
> +			else
> +				intel_edp_drrs_disable(intel_dp,
> +						       crtc_state);
> +		}
> +		drm_connector_list_iter_end(&conn_iter);
> +
> +out:
> +		drm_modeset_unlock(&crtc->base.mutex);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(i915_drrs_ctl_fops, NULL, i915_drrs_ctl_set, "%l=
lu\n");
> +
> +static ssize_t
> +i915_fifo_underrun_reset_write(struct file *filp,
> +			       const char __user *ubuf,
> +			       size_t cnt, loff_t *ppos)
> +{
> +	struct drm_i915_private *dev_priv =3D filp->private_data;
> +	struct intel_crtc *intel_crtc;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	int ret;
> +	bool reset;
> +
> +	ret =3D kstrtobool_from_user(ubuf, cnt, &reset);
> +	if (ret)
> +		return ret;
> +
> +	if (!reset)
> +		return cnt;
> +
> +	for_each_intel_crtc(dev, intel_crtc) {
> +		struct drm_crtc_commit *commit;
> +		struct intel_crtc_state *crtc_state;
> +
> +		ret =3D drm_modeset_lock_single_interruptible(&intel_crtc->base.mutex);
> +		if (ret)
> +			return ret;
> +
> +		crtc_state =3D to_intel_crtc_state(intel_crtc->base.state);
> +		commit =3D crtc_state->uapi.commit;
> +		if (commit) {
> +			ret =3D wait_for_completion_interruptible(&commit->hw_done);
> +			if (!ret)
> +				ret =3D wait_for_completion_interruptible(&commit->flip_done);
> +		}
> +
> +		if (!ret && crtc_state->hw.active) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Re-arming FIFO underruns on pipe %c\n",
> +				    pipe_name(intel_crtc->pipe));
> +
> +			intel_crtc_arm_fifo_underrun(intel_crtc, crtc_state);
> +		}
> +
> +		drm_modeset_unlock(&intel_crtc->base.mutex);
> +
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret =3D intel_fbc_reset_underrun(dev_priv);
> +	if (ret)
> +		return ret;
> +
> +	return cnt;
> +}
> +
> +static const struct file_operations i915_fifo_underrun_reset_ops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D simple_open,
> +	.write =3D i915_fifo_underrun_reset_write,
> +	.llseek =3D default_llseek,
> +};
> +
> +static const struct drm_info_list intel_display_debugfs_list[] =3D {
> +	{"i915_ddb_info", i915_ddb_info, 0},
> +	{"i915_display_info", i915_display_info, 0},
> +	{"i915_dp_mst_info", i915_dp_mst_info, 0},
> +	{"i915_drrs_status", i915_drrs_status, 0},
> +	{"i915_edp_psr_status", i915_edp_psr_status, 0},
> +	{"i915_fbc_status", i915_fbc_status, 0},
> +	{"i915_ips_status", i915_ips_status, 0},
> +	{"i915_opregion", i915_opregion, 0},
> +	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
> +	{"i915_sr_status", i915_sr_status, 0},
> +	{"i915_vbt", i915_vbt, 0},
> +};
> +
> +static const struct {
> +	const char *name;
> +	const struct file_operations *fops;
> +} intel_display_debugfs_files[] =3D {
> +	{"i915_cur_wm_latency", &i915_cur_wm_latency_fops},
> +	{"i915_dp_test_active", &i915_displayport_test_active_fops},
> +	{"i915_dp_test_data", &i915_displayport_test_data_fops},
> +	{"i915_dp_test_type", &i915_displayport_test_type_fops},
> +	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
> +	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
> +	{"i915_fbc_false_color", &i915_fbc_false_color_fops},
> +	{"i915_fifo_underrun_reset", &i915_fifo_underrun_reset_ops},
> +	{"i915_hpd_short_storm_ctl", &i915_hpd_short_storm_ctl_fops},
> +	{"i915_hpd_storm_ctl", &i915_hpd_storm_ctl_fops},
> +	{"i915_pri_wm_latency", &i915_pri_wm_latency_fops},
> +	{"i915_spr_wm_latency", &i915_spr_wm_latency_fops},
> +};
> +
> +int intel_display_debugfs_register(struct drm_i915_private *i915)
> +{
> +	struct drm_minor *minor =3D i915->drm.primary;
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
> +		debugfs_create_file(intel_display_debugfs_files[i].name,
> +				    S_IRUGO | S_IWUSR,
> +				    minor->debugfs_root,
> +				    to_i915(minor->dev),
> +				    intel_display_debugfs_files[i].fops);
> +	}
> +
> +	return drm_debugfs_create_files(intel_display_debugfs_list,
> +					ARRAY_SIZE(intel_display_debugfs_list),
> +					minor->debugfs_root, minor);
> +}
> +
> +static int i915_panel_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector =3D m->private;
> +	struct intel_dp *intel_dp =3D
> +		intel_attached_dp(to_intel_connector(connector));
> +
> +	if (connector->status !=3D connector_status_connected)
> +		return -ENODEV;
> +
> +	seq_printf(m, "Panel power up delay: %d\n",
> +		   intel_dp->panel_power_up_delay);
> +	seq_printf(m, "Panel power down delay: %d\n",
> +		   intel_dp->panel_power_down_delay);
> +	seq_printf(m, "Backlight on delay: %d\n",
> +		   intel_dp->backlight_on_delay);
> +	seq_printf(m, "Backlight off delay: %d\n",
> +		   intel_dp->backlight_off_delay);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_panel);
> +
> +static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector =3D m->private;
> +	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> +
> +	if (connector->status !=3D connector_status_connected)
> +		return -ENODEV;
> +
> +	/* HDCP is supported by connector */
> +	if (!intel_connector->hdcp.shim)
> +		return -EINVAL;
> +
> +	seq_printf(m, "%s:%d HDCP version: ", connector->name,
> +		   connector->base.id);
> +	intel_hdcp_info(m, intel_connector);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
> +
> +static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector =3D m->private;
> +	struct drm_device *dev =3D connector->dev;
> +	struct drm_crtc *crtc;
> +	struct intel_dp *intel_dp;
> +	struct drm_modeset_acquire_ctx ctx;
> +	struct intel_crtc_state *crtc_state =3D NULL;
> +	int ret =3D 0;
> +	bool try_again =3D false;
> +
> +	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
> +
> +	do {
> +		try_again =3D false;
> +		ret =3D drm_modeset_lock(&dev->mode_config.connection_mutex,
> +				       &ctx);
> +		if (ret) {
> +			if (ret =3D=3D -EDEADLK && !drm_modeset_backoff(&ctx)) {
> +				try_again =3D true;
> +				continue;
> +			}
> +			break;
> +		}
> +		crtc =3D connector->state->crtc;
> +		if (connector->status !=3D connector_status_connected || !crtc) {
> +			ret =3D -ENODEV;
> +			break;
> +		}
> +		ret =3D drm_modeset_lock(&crtc->mutex, &ctx);
> +		if (ret =3D=3D -EDEADLK) {
> +			ret =3D drm_modeset_backoff(&ctx);
> +			if (!ret) {
> +				try_again =3D true;
> +				continue;
> +			}
> +			break;
> +		} else if (ret) {
> +			break;
> +		}
> +		intel_dp =3D intel_attached_dp(to_intel_connector(connector));
> +		crtc_state =3D to_intel_crtc_state(crtc->state);
> +		seq_printf(m, "DSC_Enabled: %s\n",
> +			   yesno(crtc_state->dsc.compression_enable));
> +		seq_printf(m, "DSC_Sink_Support: %s\n",
> +			   yesno(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
> +		seq_printf(m, "Force_DSC_Enable: %s\n",
> +			   yesno(intel_dp->force_dsc_en));
> +		if (!intel_dp_is_edp(intel_dp))
> +			seq_printf(m, "FEC_Sink_Support: %s\n",
> +				   yesno(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
> +	} while (try_again);
> +
> +	drm_modeset_drop_locks(&ctx);
> +	drm_modeset_acquire_fini(&ctx);
> +
> +	return ret;
> +}
> +
> +static ssize_t i915_dsc_fec_support_write(struct file *file,
> +					  const char __user *ubuf,
> +					  size_t len, loff_t *offp)
> +{
> +	bool dsc_enable =3D false;
> +	int ret;
> +	struct drm_connector *connector =3D
> +		((struct seq_file *)file->private_data)->private;
> +	struct intel_encoder *encoder =3D intel_attached_encoder(to_intel_conne=
ctor(connector));
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	if (len =3D=3D 0)
> +		return 0;
> +
> +	drm_dbg(&i915->drm,
> +		"Copied %zu bytes from user to force DSC\n", len);
> +
> +	ret =3D kstrtobool_from_user(ubuf, len, &dsc_enable);
> +	if (ret < 0)
> +		return ret;
> +
> +	drm_dbg(&i915->drm, "Got %s for DSC Enable\n",
> +		(dsc_enable) ? "true" : "false");
> +	intel_dp->force_dsc_en =3D dsc_enable;
> +
> +	*offp +=3D len;
> +	return len;
> +}
> +
> +static int i915_dsc_fec_support_open(struct inode *inode,
> +				     struct file *file)
> +{
> +	return single_open(file, i915_dsc_fec_support_show,
> +			   inode->i_private);
> +}
> +
> +static const struct file_operations i915_dsc_fec_support_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_dsc_fec_support_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_dsc_fec_support_write
> +};
> +
> +/**
> + * intel_connector_debugfs_add - add i915 specific connector debugfs fil=
es
> + * @connector: pointer to a registered drm_connector
> + *
> + * Cleanup will be done by drm_connector_unregister() through a call to
> + * drm_debugfs_connector_remove().
> + *
> + * Returns 0 on success, negative error codes on error.
> + */
> +int intel_connector_debugfs_add(struct drm_connector *connector)
> +{
> +	struct dentry *root =3D connector->debugfs_entry;
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +
> +	/* The connector must have been registered beforehands. */
> +	if (!root)
> +		return -ENODEV;
> +
> +	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP) {
> +		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
> +				    connector, &i915_panel_fops);
> +		debugfs_create_file("i915_psr_sink_status", S_IRUGO, root,
> +				    connector, &i915_psr_sink_status_fops);
> +	}
> +
> +	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
> +	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
> +		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
> +				    connector, &i915_hdcp_sink_capability_fops);
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 10 &&
> +	    (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	     connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP))
> +		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> +				    connector, &i915_dsc_fec_support_fops);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.h
> new file mode 100644
> index 000000000000..a3bea1ce04c2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_DEBUGFS_H__
> +#define __INTEL_DISPLAY_DEBUGFS_H__
> +
> +struct drm_connector;
> +struct drm_i915_private;
> +
> +#ifdef CONFIG_DEBUG_FS
> +int intel_display_debugfs_register(struct drm_i915_private *i915);
> +int intel_connector_debugfs_add(struct drm_connector *connector);
> +#else
> +static inline int intel_display_debugfs_register(struct drm_i915_private=
 *i915) { return 0; }
> +static inline int intel_connector_debugfs_add(struct drm_connector *conn=
ector) { return 0; }
> +#endif
> +
> +#endif /* __INTEL_DISPLAY_DEBUGFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f4dede6253f8..9541ab11624d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -49,6 +49,7 @@
>  #include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
> +#include "intel_display_debugfs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -5851,7 +5852,7 @@ intel_dp_connector_register(struct drm_connector *c=
onnector)
>  	if (ret)
>  		return ret;
>  =

> -	i915_debugfs_connector_add(connector);
> +	intel_connector_debugfs_add(connector);
>  =

>  	DRM_DEBUG_KMS("registering %s bus for %s\n",
>  		      intel_dp->aux.name, connector->kdev->kobj.name);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index e68bafb76cb1..a3a5cfe49aba 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -45,6 +45,7 @@
>  #include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
> +#include "intel_display_debugfs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dpio_phy.h"
> @@ -2823,7 +2824,7 @@ intel_hdmi_connector_register(struct drm_connector =
*connector)
>  	if (ret)
>  		return ret;
>  =

> -	i915_debugfs_connector_add(connector);
> +	intel_connector_debugfs_add(connector);
>  =

>  	intel_hdmi_create_i2c_symlink(connector);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index c313c90405cb..7d1d3d16c09e 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1232,140 +1232,6 @@ static int i915_frontbuffer_tracking(struct seq_f=
ile *m, void *unused)
>  	return 0;
>  }
>  =

> -static int i915_fbc_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_fbc *fbc =3D &dev_priv->fbc;
> -	intel_wakeref_t wakeref;
> -
> -	if (!HAS_FBC(dev_priv))
> -		return -ENODEV;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -	mutex_lock(&fbc->lock);
> -
> -	if (intel_fbc_is_active(dev_priv))
> -		seq_puts(m, "FBC enabled\n");
> -	else
> -		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
> -
> -	if (intel_fbc_is_active(dev_priv)) {
> -		u32 mask;
> -
> -		if (INTEL_GEN(dev_priv) >=3D 8)
> -			mask =3D I915_READ(IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
> -		else if (INTEL_GEN(dev_priv) >=3D 7)
> -			mask =3D I915_READ(IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
> -		else if (INTEL_GEN(dev_priv) >=3D 5)
> -			mask =3D I915_READ(ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
> -		else if (IS_G4X(dev_priv))
> -			mask =3D I915_READ(DPFC_STATUS) & DPFC_COMP_SEG_MASK;
> -		else
> -			mask =3D I915_READ(FBC_STATUS) & (FBC_STAT_COMPRESSING |
> -							FBC_STAT_COMPRESSED);
> -
> -		seq_printf(m, "Compressing: %s\n", yesno(mask));
> -	}
> -
> -	mutex_unlock(&fbc->lock);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
> -static int i915_fbc_false_color_get(void *data, u64 *val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -
> -	if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
> -		return -ENODEV;
> -
> -	*val =3D dev_priv->fbc.false_color;
> -
> -	return 0;
> -}
> -
> -static int i915_fbc_false_color_set(void *data, u64 val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -	u32 reg;
> -
> -	if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
> -		return -ENODEV;
> -
> -	mutex_lock(&dev_priv->fbc.lock);
> -
> -	reg =3D I915_READ(ILK_DPFC_CONTROL);
> -	dev_priv->fbc.false_color =3D val;
> -
> -	I915_WRITE(ILK_DPFC_CONTROL, val ?
> -		   (reg | FBC_CTL_FALSE_COLOR) :
> -		   (reg & ~FBC_CTL_FALSE_COLOR));
> -
> -	mutex_unlock(&dev_priv->fbc.lock);
> -	return 0;
> -}
> -
> -DEFINE_SIMPLE_ATTRIBUTE(i915_fbc_false_color_fops,
> -			i915_fbc_false_color_get, i915_fbc_false_color_set,
> -			"%llu\n");
> -
> -static int i915_ips_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	intel_wakeref_t wakeref;
> -
> -	if (!HAS_IPS(dev_priv))
> -		return -ENODEV;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	seq_printf(m, "Enabled by kernel parameter: %s\n",
> -		   yesno(i915_modparams.enable_ips));
> -
> -	if (INTEL_GEN(dev_priv) >=3D 8) {
> -		seq_puts(m, "Currently: unknown\n");
> -	} else {
> -		if (I915_READ(IPS_CTL) & IPS_ENABLE)
> -			seq_puts(m, "Currently: enabled\n");
> -		else
> -			seq_puts(m, "Currently: disabled\n");
> -	}
> -
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
> -static int i915_sr_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	intel_wakeref_t wakeref;
> -	bool sr_enabled =3D false;
> -
> -	wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		/* no global SR status; inspect per-plane WM */;
> -	else if (HAS_PCH_SPLIT(dev_priv))
> -		sr_enabled =3D I915_READ(WM1_LP_ILK) & WM1_LP_SR_EN;
> -	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
> -		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> -		sr_enabled =3D I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
> -	else if (IS_I915GM(dev_priv))
> -		sr_enabled =3D I915_READ(INSTPM) & INSTPM_SELF_EN;
> -	else if (IS_PINEVIEW(dev_priv))
> -		sr_enabled =3D I915_READ(DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		sr_enabled =3D I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> -
> -	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> -
> -	seq_printf(m, "self-refresh: %s\n", enableddisabled(sr_enabled));
> -
> -	return 0;
> -}
> -
>  static int i915_ring_freq_table(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -1407,26 +1273,6 @@ static int i915_ring_freq_table(struct seq_file *m=
, void *unused)
>  	return 0;
>  }
>  =

> -static int i915_opregion(struct seq_file *m, void *unused)
> -{
> -	struct intel_opregion *opregion =3D &node_to_i915(m->private)->opregion;
> -
> -	if (opregion->header)
> -		seq_write(m, opregion->header, OPREGION_SIZE);
> -
> -	return 0;
> -}
> -
> -static int i915_vbt(struct seq_file *m, void *unused)
> -{
> -	struct intel_opregion *opregion =3D &node_to_i915(m->private)->opregion;
> -
> -	if (opregion->vbt)
> -		seq_write(m, opregion->vbt, opregion->vbt_size);
> -
> -	return 0;
> -}
> -
>  static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -1964,230 +1810,6 @@ static const struct file_operations i915_guc_log_=
relay_fops =3D {
>  	.release =3D i915_guc_log_relay_release,
>  };
>  =

> -static int i915_psr_sink_status_show(struct seq_file *m, void *data)
> -{
> -	u8 val;
> -	static const char * const sink_status[] =3D {
> -		"inactive",
> -		"transition to active, capture and display",
> -		"active, display from RFB",
> -		"active, capture and display on sink device timings",
> -		"transition to inactive, capture and display, timing re-sync",
> -		"reserved",
> -		"reserved",
> -		"sink internal error",
> -	};
> -	struct drm_connector *connector =3D m->private;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_dp *intel_dp =3D
> -		intel_attached_dp(to_intel_connector(connector));
> -	int ret;
> -
> -	if (!CAN_PSR(dev_priv)) {
> -		seq_puts(m, "PSR Unsupported\n");
> -		return -ENODEV;
> -	}
> -
> -	if (connector->status !=3D connector_status_connected)
> -		return -ENODEV;
> -
> -	ret =3D drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
> -
> -	if (ret =3D=3D 1) {
> -		const char *str =3D "unknown";
> -
> -		val &=3D DP_PSR_SINK_STATE_MASK;
> -		if (val < ARRAY_SIZE(sink_status))
> -			str =3D sink_status[val];
> -		seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
> -	} else {
> -		return ret;
> -	}
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_psr_sink_status);
> -
> -static void
> -psr_source_status(struct drm_i915_private *dev_priv, struct seq_file *m)
> -{
> -	u32 val, status_val;
> -	const char *status =3D "unknown";
> -
> -	if (dev_priv->psr.psr2_enabled) {
> -		static const char * const live_status[] =3D {
> -			"IDLE",
> -			"CAPTURE",
> -			"CAPTURE_FS",
> -			"SLEEP",
> -			"BUFON_FW",
> -			"ML_UP",
> -			"SU_STANDBY",
> -			"FAST_SLEEP",
> -			"DEEP_SLEEP",
> -			"BUF_ON",
> -			"TG_ON"
> -		};
> -		val =3D I915_READ(EDP_PSR2_STATUS(dev_priv->psr.transcoder));
> -		status_val =3D (val & EDP_PSR2_STATUS_STATE_MASK) >>
> -			      EDP_PSR2_STATUS_STATE_SHIFT;
> -		if (status_val < ARRAY_SIZE(live_status))
> -			status =3D live_status[status_val];
> -	} else {
> -		static const char * const live_status[] =3D {
> -			"IDLE",
> -			"SRDONACK",
> -			"SRDENT",
> -			"BUFOFF",
> -			"BUFON",
> -			"AUXACK",
> -			"SRDOFFACK",
> -			"SRDENT_ON",
> -		};
> -		val =3D I915_READ(EDP_PSR_STATUS(dev_priv->psr.transcoder));
> -		status_val =3D (val & EDP_PSR_STATUS_STATE_MASK) >>
> -			      EDP_PSR_STATUS_STATE_SHIFT;
> -		if (status_val < ARRAY_SIZE(live_status))
> -			status =3D live_status[status_val];
> -	}
> -
> -	seq_printf(m, "Source PSR status: %s [0x%08x]\n", status, val);
> -}
> -
> -static int i915_edp_psr_status(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct i915_psr *psr =3D &dev_priv->psr;
> -	intel_wakeref_t wakeref;
> -	const char *status;
> -	bool enabled;
> -	u32 val;
> -
> -	if (!HAS_PSR(dev_priv))
> -		return -ENODEV;
> -
> -	seq_printf(m, "Sink support: %s", yesno(psr->sink_support));
> -	if (psr->dp)
> -		seq_printf(m, " [0x%02x]", psr->dp->psr_dpcd[0]);
> -	seq_puts(m, "\n");
> -
> -	if (!psr->sink_support)
> -		return 0;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -	mutex_lock(&psr->lock);
> -
> -	if (psr->enabled)
> -		status =3D psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
> -	else
> -		status =3D "disabled";
> -	seq_printf(m, "PSR mode: %s\n", status);
> -
> -	if (!psr->enabled) {
> -		seq_printf(m, "PSR sink not reliable: %s\n",
> -			   yesno(psr->sink_not_reliable));
> -
> -		goto unlock;
> -	}
> -
> -	if (psr->psr2_enabled) {
> -		val =3D I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
> -		enabled =3D val & EDP_PSR2_ENABLE;
> -	} else {
> -		val =3D I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder));
> -		enabled =3D val & EDP_PSR_ENABLE;
> -	}
> -	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
> -		   enableddisabled(enabled), val);
> -	psr_source_status(dev_priv, m);
> -	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
> -		   psr->busy_frontbuffer_bits);
> -
> -	/*
> -	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
> -	 */
> -	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -		val =3D I915_READ(EDP_PSR_PERF_CNT(dev_priv->psr.transcoder));
> -		val &=3D EDP_PSR_PERF_CNT_MASK;
> -		seq_printf(m, "Performance counter: %u\n", val);
> -	}
> -
> -	if (psr->debug & I915_PSR_DEBUG_IRQ) {
> -		seq_printf(m, "Last attempted entry at: %lld\n",
> -			   psr->last_entry_attempt);
> -		seq_printf(m, "Last exit at: %lld\n", psr->last_exit);
> -	}
> -
> -	if (psr->psr2_enabled) {
> -		u32 su_frames_val[3];
> -		int frame;
> -
> -		/*
> -		 * Reading all 3 registers before hand to minimize crossing a
> -		 * frame boundary between register reads
> -		 */
> -		for (frame =3D 0; frame < PSR2_SU_STATUS_FRAMES; frame +=3D 3) {
> -			val =3D I915_READ(PSR2_SU_STATUS(dev_priv->psr.transcoder,
> -						       frame));
> -			su_frames_val[frame / 3] =3D val;
> -		}
> -
> -		seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
> -
> -		for (frame =3D 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
> -			u32 su_blocks;
> -
> -			su_blocks =3D su_frames_val[frame / 3] &
> -				    PSR2_SU_STATUS_MASK(frame);
> -			su_blocks =3D su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
> -			seq_printf(m, "%d\t%d\n", frame, su_blocks);
> -		}
> -	}
> -
> -unlock:
> -	mutex_unlock(&psr->lock);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
> -static int
> -i915_edp_psr_debug_set(void *data, u64 val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -	intel_wakeref_t wakeref;
> -	int ret;
> -
> -	if (!CAN_PSR(dev_priv))
> -		return -ENODEV;
> -
> -	drm_dbg_kms(&dev_priv->drm, "Setting PSR debug to %llx\n", val);
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	ret =3D intel_psr_debug_set(dev_priv, val);
> -
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return ret;
> -}
> -
> -static int
> -i915_edp_psr_debug_get(void *data, u64 *val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -
> -	if (!CAN_PSR(dev_priv))
> -		return -ENODEV;
> -
> -	*val =3D READ_ONCE(dev_priv->psr.debug);
> -	return 0;
> -}
> -
> -DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
> -			i915_edp_psr_debug_get, i915_edp_psr_debug_set,
> -			"%llu\n");
> -
>  static int i915_energy_uJ(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> @@ -2326,1123 +1948,129 @@ static int i915_dmc_info(struct seq_file *m, v=
oid *unused)
>  	return 0;
>  }
>  =

> -static void intel_seq_print_mode(struct seq_file *m, int tabs,
> -				 const struct drm_display_mode *mode)
> +static int i915_engine_info(struct seq_file *m, void *unused)
>  {
> -	int i;
> +	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> +	struct intel_engine_cs *engine;
> +	intel_wakeref_t wakeref;
> +	struct drm_printer p;
> +
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +
> +	seq_printf(m, "GT awake? %s [%d]\n",
> +		   yesno(dev_priv->gt.awake),
> +		   atomic_read(&dev_priv->gt.wakeref.count));
> +	seq_printf(m, "CS timestamp frequency: %u kHz\n",
> +		   RUNTIME_INFO(dev_priv)->cs_timestamp_frequency_khz);
> +
> +	p =3D drm_seq_file_printer(m);
> +	for_each_uabi_engine(engine, dev_priv)
> +		intel_engine_dump(engine, &p, "%s\n", engine->name);
>  =

> -	for (i =3D 0; i < tabs; i++)
> -		seq_putc(m, '\t');
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  =

> -	seq_printf(m, DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
> +	return 0;
>  }
>  =

> -static void intel_encoder_info(struct seq_file *m,
> -			       struct intel_crtc *crtc,
> -			       struct intel_encoder *encoder)
> +static int i915_rcs_topology(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_connector_list_iter conn_iter;
> -	struct drm_connector *connector;
> -
> -	seq_printf(m, "\t[ENCODER:%d:%s]: connectors:\n",
> -		   encoder->base.base.id, encoder->base.name);
> -
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		const struct drm_connector_state *conn_state =3D
> -			connector->state;
> +	struct drm_printer p =3D drm_seq_file_printer(m);
>  =

> -		if (conn_state->best_encoder !=3D &encoder->base)
> -			continue;
> +	intel_device_info_print_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);
>  =

> -		seq_printf(m, "\t\t[CONNECTOR:%d:%s]\n",
> -			   connector->base.id, connector->name);
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> +	return 0;
>  }
>  =

> -static void intel_panel_info(struct seq_file *m, struct intel_panel *pan=
el)
> +static int i915_shrinker_info(struct seq_file *m, void *unused)
>  {
> -	const struct drm_display_mode *mode =3D panel->fixed_mode;
> +	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> +
> +	seq_printf(m, "seeks =3D %d\n", i915->mm.shrinker.seeks);
> +	seq_printf(m, "batch =3D %lu\n", i915->mm.shrinker.batch);
>  =

> -	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
> +	return 0;
>  }
>  =

> -static void intel_hdcp_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +static int i915_wa_registers(struct seq_file *m, void *unused)
>  {
> -	bool hdcp_cap, hdcp2_cap;
> +	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> +	struct intel_engine_cs *engine;
>  =

> -	hdcp_cap =3D intel_hdcp_capable(intel_connector);
> -	hdcp2_cap =3D intel_hdcp2_capable(intel_connector);
> +	for_each_uabi_engine(engine, i915) {
> +		const struct i915_wa_list *wal =3D &engine->ctx_wa_list;
> +		const struct i915_wa *wa;
> +		unsigned int count;
>  =

> -	if (hdcp_cap)
> -		seq_puts(m, "HDCP1.4 ");
> -	if (hdcp2_cap)
> -		seq_puts(m, "HDCP2.2 ");
> +		count =3D wal->count;
> +		if (!count)
> +			continue;
>  =

> -	if (!hdcp_cap && !hdcp2_cap)
> -		seq_puts(m, "None");
> +		seq_printf(m, "%s: Workarounds applied: %u\n",
> +			   engine->name, count);
>  =

> -	seq_puts(m, "\n");
> -}
> +		for (wa =3D wal->list; count--; wa++)
> +			seq_printf(m, "0x%X: 0x%08X, mask: 0x%08X\n",
> +				   i915_mmio_reg_offset(wa->reg),
> +				   wa->set, wa->clr);
>  =

> -static void intel_dp_info(struct seq_file *m,
> -			  struct intel_connector *intel_connector)
> -{
> -	struct intel_encoder *intel_encoder =3D intel_attached_encoder(intel_co=
nnector);
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(intel_encoder);
> -
> -	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
> -	seq_printf(m, "\taudio support: %s\n", yesno(intel_dp->has_audio));
> -	if (intel_connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)
> -		intel_panel_info(m, &intel_connector->panel);
> -
> -	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
> -				&intel_dp->aux);
> -	if (intel_connector->hdcp.shim) {
> -		seq_puts(m, "\tHDCP version: ");
> -		intel_hdcp_info(m, intel_connector);
> +		seq_printf(m, "\n");
>  	}
> -}
>  =

> -static void intel_dp_mst_info(struct seq_file *m,
> -			  struct intel_connector *intel_connector)
> -{
> -	struct intel_encoder *intel_encoder =3D intel_attached_encoder(intel_co=
nnector);
> -	struct intel_dp_mst_encoder *intel_mst =3D
> -		enc_to_mst(intel_encoder);
> -	struct intel_digital_port *intel_dig_port =3D intel_mst->primary;
> -	struct intel_dp *intel_dp =3D &intel_dig_port->dp;
> -	bool has_audio =3D drm_dp_mst_port_has_audio(&intel_dp->mst_mgr,
> -					intel_connector->port);
> -
> -	seq_printf(m, "\taudio support: %s\n", yesno(has_audio));
> +	return 0;
>  }
>  =

> -static void intel_hdmi_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +static int i915_ipc_status_show(struct seq_file *m, void *data)
>  {
> -	struct intel_encoder *intel_encoder =3D intel_attached_encoder(intel_co=
nnector);
> -	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(intel_encoder);
> +	struct drm_i915_private *dev_priv =3D m->private;
>  =

> -	seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
> -	if (intel_connector->hdcp.shim) {
> -		seq_puts(m, "\tHDCP version: ");
> -		intel_hdcp_info(m, intel_connector);
> -	}
> +	seq_printf(m, "Isochronous Priority Control: %s\n",
> +			yesno(dev_priv->ipc_enabled));
> +	return 0;
>  }
>  =

> -static void intel_lvds_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +static int i915_ipc_status_open(struct inode *inode, struct file *file)
>  {
> -	intel_panel_info(m, &intel_connector->panel);
> +	struct drm_i915_private *dev_priv =3D inode->i_private;
> +
> +	if (!HAS_IPC(dev_priv))
> +		return -ENODEV;
> +
> +	return single_open(file, i915_ipc_status_show, dev_priv);
>  }
>  =

> -static void intel_connector_info(struct seq_file *m,
> -				 struct drm_connector *connector)
> +static ssize_t i915_ipc_status_write(struct file *file, const char __use=
r *ubuf,
> +				     size_t len, loff_t *offp)
>  {
> -	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -	const struct drm_connector_state *conn_state =3D connector->state;
> -	struct intel_encoder *encoder =3D
> -		to_intel_encoder(conn_state->best_encoder);
> -	const struct drm_display_mode *mode;
> +	struct seq_file *m =3D file->private_data;
> +	struct drm_i915_private *dev_priv =3D m->private;
> +	intel_wakeref_t wakeref;
> +	bool enable;
> +	int ret;
>  =

> -	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
> -		   connector->base.id, connector->name,
> -		   drm_get_connector_status_name(connector->status));
> +	ret =3D kstrtobool_from_user(ubuf, len, &enable);
> +	if (ret < 0)
> +		return ret;
>  =

> -	if (connector->status =3D=3D connector_status_disconnected)
> -		return;
> -
> -	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
> -		   connector->display_info.width_mm,
> -		   connector->display_info.height_mm);
> -	seq_printf(m, "\tsubpixel order: %s\n",
> -		   drm_get_subpixel_order_name(connector->display_info.subpixel_order)=
);
> -	seq_printf(m, "\tCEA rev: %d\n", connector->display_info.cea_rev);
> -
> -	if (!encoder)
> -		return;
> -
> -	switch (connector->connector_type) {
> -	case DRM_MODE_CONNECTOR_DisplayPort:
> -	case DRM_MODE_CONNECTOR_eDP:
> -		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			intel_dp_mst_info(m, intel_connector);
> -		else
> -			intel_dp_info(m, intel_connector);
> -		break;
> -	case DRM_MODE_CONNECTOR_LVDS:
> -		if (encoder->type =3D=3D INTEL_OUTPUT_LVDS)
> -			intel_lvds_info(m, intel_connector);
> -		break;
> -	case DRM_MODE_CONNECTOR_HDMIA:
> -		if (encoder->type =3D=3D INTEL_OUTPUT_HDMI ||
> -		    encoder->type =3D=3D INTEL_OUTPUT_DDI)
> -			intel_hdmi_info(m, intel_connector);
> -		break;
> -	default:
> -		break;
> -	}
> -
> -	seq_printf(m, "\tmodes:\n");
> -	list_for_each_entry(mode, &connector->modes, head)
> -		intel_seq_print_mode(m, 2, mode);
> -}
> -
> -static const char *plane_type(enum drm_plane_type type)
> -{
> -	switch (type) {
> -	case DRM_PLANE_TYPE_OVERLAY:
> -		return "OVL";
> -	case DRM_PLANE_TYPE_PRIMARY:
> -		return "PRI";
> -	case DRM_PLANE_TYPE_CURSOR:
> -		return "CUR";
> -	/*
> -	 * Deliberately omitting default: to generate compiler warnings
> -	 * when a new drm_plane_type gets added.
> -	 */
> -	}
> -
> -	return "unknown";
> -}
> -
> -static void plane_rotation(char *buf, size_t bufsize, unsigned int rotat=
ion)
> -{
> -	/*
> -	 * According to doc only one DRM_MODE_ROTATE_ is allowed but this
> -	 * will print them all to visualize if the values are misused
> -	 */
> -	snprintf(buf, bufsize,
> -		 "%s%s%s%s%s%s(0x%08x)",
> -		 (rotation & DRM_MODE_ROTATE_0) ? "0 " : "",
> -		 (rotation & DRM_MODE_ROTATE_90) ? "90 " : "",
> -		 (rotation & DRM_MODE_ROTATE_180) ? "180 " : "",
> -		 (rotation & DRM_MODE_ROTATE_270) ? "270 " : "",
> -		 (rotation & DRM_MODE_REFLECT_X) ? "FLIPX " : "",
> -		 (rotation & DRM_MODE_REFLECT_Y) ? "FLIPY " : "",
> -		 rotation);
> -}
> -
> -static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane=
 *plane)
> -{
> -	const struct intel_plane_state *plane_state =3D
> -		to_intel_plane_state(plane->base.state);
> -	const struct drm_framebuffer *fb =3D plane_state->uapi.fb;
> -	struct drm_format_name_buf format_name;
> -	struct drm_rect src, dst;
> -	char rot_str[48];
> -
> -	src =3D drm_plane_state_src(&plane_state->uapi);
> -	dst =3D drm_plane_state_dest(&plane_state->uapi);
> -
> -	if (fb)
> -		drm_get_format_name(fb->format->format, &format_name);
> -
> -	plane_rotation(rot_str, sizeof(rot_str),
> -		       plane_state->uapi.rotation);
> -
> -	seq_printf(m, "\t\tuapi: fb=3D%d,%s,%dx%d, src=3D" DRM_RECT_FP_FMT ", d=
st=3D" DRM_RECT_FMT ", rotation=3D%s\n",
> -		   fb ? fb->base.id : 0, fb ? format_name.str : "n/a",
> -		   fb ? fb->width : 0, fb ? fb->height : 0,
> -		   DRM_RECT_FP_ARG(&src),
> -		   DRM_RECT_ARG(&dst),
> -		   rot_str);
> -}
> -
> -static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *=
plane)
> -{
> -	const struct intel_plane_state *plane_state =3D
> -		to_intel_plane_state(plane->base.state);
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	struct drm_format_name_buf format_name;
> -	char rot_str[48];
> -
> -	if (!fb)
> -		return;
> -
> -	drm_get_format_name(fb->format->format, &format_name);
> -
> -	plane_rotation(rot_str, sizeof(rot_str),
> -		       plane_state->hw.rotation);
> -
> -	seq_printf(m, "\t\thw: fb=3D%d,%s,%dx%d, visible=3D%s, src=3D" DRM_RECT=
_FP_FMT ", dst=3D" DRM_RECT_FMT ", rotation=3D%s\n",
> -		   fb->base.id, format_name.str,
> -		   fb->width, fb->height,
> -		   yesno(plane_state->uapi.visible),
> -		   DRM_RECT_FP_ARG(&plane_state->uapi.src),
> -		   DRM_RECT_ARG(&plane_state->uapi.dst),
> -		   rot_str);
> -}
> -
> -static void intel_plane_info(struct seq_file *m, struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_plane *plane;
> -
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -		seq_printf(m, "\t[PLANE:%d:%s]: type=3D%s\n",
> -			   plane->base.base.id, plane->base.name,
> -			   plane_type(plane->base.type));
> -		intel_plane_uapi_info(m, plane);
> -		intel_plane_hw_info(m, plane);
> -	}
> -}
> -
> -static void intel_scaler_info(struct seq_file *m, struct intel_crtc *crt=
c)
> -{
> -	const struct intel_crtc_state *crtc_state =3D
> -		to_intel_crtc_state(crtc->base.state);
> -	int num_scalers =3D crtc->num_scalers;
> -	int i;
> -
> -	/* Not all platformas have a scaler */
> -	if (num_scalers) {
> -		seq_printf(m, "\tnum_scalers=3D%d, scaler_users=3D%x scaler_id=3D%d",
> -			   num_scalers,
> -			   crtc_state->scaler_state.scaler_users,
> -			   crtc_state->scaler_state.scaler_id);
> -
> -		for (i =3D 0; i < num_scalers; i++) {
> -			const struct intel_scaler *sc =3D
> -				&crtc_state->scaler_state.scalers[i];
> -
> -			seq_printf(m, ", scalers[%d]: use=3D%s, mode=3D%x",
> -				   i, yesno(sc->in_use), sc->mode);
> -		}
> -		seq_puts(m, "\n");
> -	} else {
> -		seq_puts(m, "\tNo scalers available on this platform\n");
> -	}
> -}
> -
> -static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	const struct intel_crtc_state *crtc_state =3D
> -		to_intel_crtc_state(crtc->base.state);
> -	struct intel_encoder *encoder;
> -
> -	seq_printf(m, "[CRTC:%d:%s]:\n",
> -		   crtc->base.base.id, crtc->base.name);
> -
> -	seq_printf(m, "\tuapi: enable=3D%s, active=3D%s, mode=3D" DRM_MODE_FMT =
"\n",
> -		   yesno(crtc_state->uapi.enable),
> -		   yesno(crtc_state->uapi.active),
> -		   DRM_MODE_ARG(&crtc_state->uapi.mode));
> -
> -	if (crtc_state->hw.enable) {
> -		seq_printf(m, "\thw: active=3D%s, adjusted_mode=3D" DRM_MODE_FMT "\n",
> -			   yesno(crtc_state->hw.active),
> -			   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
> -
> -		seq_printf(m, "\tpipe src size=3D%dx%d, dither=3D%s, bpp=3D%d\n",
> -			   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> -			   yesno(crtc_state->dither), crtc_state->pipe_bpp);
> -
> -		intel_scaler_info(m, crtc);
> -	}
> -
> -	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
> -				    crtc_state->uapi.encoder_mask)
> -		intel_encoder_info(m, crtc, encoder);
> -
> -	intel_plane_info(m, crtc);
> -
> -	seq_printf(m, "\tunderrun reporting: cpu=3D%s pch=3D%s\n",
> -		   yesno(!crtc->cpu_fifo_underrun_disabled),
> -		   yesno(!crtc->pch_fifo_underrun_disabled));
> -}
> -
> -static int i915_display_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct intel_crtc *crtc;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	intel_wakeref_t wakeref;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	drm_modeset_lock_all(dev);
> -
> -	seq_printf(m, "CRTC info\n");
> -	seq_printf(m, "---------\n");
> -	for_each_intel_crtc(dev, crtc)
> -		intel_crtc_info(m, crtc);
> -
> -	seq_printf(m, "\n");
> -	seq_printf(m, "Connector info\n");
> -	seq_printf(m, "--------------\n");
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter)
> -		intel_connector_info(m, connector);
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	drm_modeset_unlock_all(dev);
> -
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
> -static int i915_engine_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_engine_cs *engine;
> -	intel_wakeref_t wakeref;
> -	struct drm_printer p;
> -
> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	seq_printf(m, "GT awake? %s [%d]\n",
> -		   yesno(dev_priv->gt.awake),
> -		   atomic_read(&dev_priv->gt.wakeref.count));
> -	seq_printf(m, "CS timestamp frequency: %u kHz\n",
> -		   RUNTIME_INFO(dev_priv)->cs_timestamp_frequency_khz);
> -
> -	p =3D drm_seq_file_printer(m);
> -	for_each_uabi_engine(engine, dev_priv)
> -		intel_engine_dump(engine, &p, "%s\n", engine->name);
> -
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
> -static int i915_rcs_topology(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_printer p =3D drm_seq_file_printer(m);
> -
> -	intel_device_info_print_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);
> -
> -	return 0;
> -}
> -
> -static int i915_shrinker_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> -
> -	seq_printf(m, "seeks =3D %d\n", i915->mm.shrinker.seeks);
> -	seq_printf(m, "batch =3D %lu\n", i915->mm.shrinker.batch);
> -
> -	return 0;
> -}
> -
> -static int i915_shared_dplls_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	int i;
> -
> -	drm_modeset_lock_all(dev);
> -	for (i =3D 0; i < dev_priv->num_shared_dpll; i++) {
> -		struct intel_shared_dpll *pll =3D &dev_priv->shared_dplls[i];
> -
> -		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
> -			   pll->info->id);
> -		seq_printf(m, " crtc_mask: 0x%08x, active: 0x%x, on: %s\n",
> -			   pll->state.crtc_mask, pll->active_mask, yesno(pll->on));
> -		seq_printf(m, " tracked hardware state:\n");
> -		seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
> -		seq_printf(m, " dpll_md: 0x%08x\n",
> -			   pll->state.hw_state.dpll_md);
> -		seq_printf(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
> -		seq_printf(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
> -		seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
> -		seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
> -		seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
> -		seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
> -			   pll->state.hw_state.mg_refclkin_ctl);
> -		seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
> -			   pll->state.hw_state.mg_clktop2_coreclkctl1);
> -		seq_printf(m, " mg_clktop2_hsclkctl:    0x%08x\n",
> -			   pll->state.hw_state.mg_clktop2_hsclkctl);
> -		seq_printf(m, " mg_pll_div0:  0x%08x\n",
> -			   pll->state.hw_state.mg_pll_div0);
> -		seq_printf(m, " mg_pll_div1:  0x%08x\n",
> -			   pll->state.hw_state.mg_pll_div1);
> -		seq_printf(m, " mg_pll_lf:    0x%08x\n",
> -			   pll->state.hw_state.mg_pll_lf);
> -		seq_printf(m, " mg_pll_frac_lock: 0x%08x\n",
> -			   pll->state.hw_state.mg_pll_frac_lock);
> -		seq_printf(m, " mg_pll_ssc:   0x%08x\n",
> -			   pll->state.hw_state.mg_pll_ssc);
> -		seq_printf(m, " mg_pll_bias:  0x%08x\n",
> -			   pll->state.hw_state.mg_pll_bias);
> -		seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
> -			   pll->state.hw_state.mg_pll_tdc_coldst_bias);
> -	}
> -	drm_modeset_unlock_all(dev);
> -
> -	return 0;
> -}
> -
> -static int i915_wa_registers(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> -	struct intel_engine_cs *engine;
> -
> -	for_each_uabi_engine(engine, i915) {
> -		const struct i915_wa_list *wal =3D &engine->ctx_wa_list;
> -		const struct i915_wa *wa;
> -		unsigned int count;
> -
> -		count =3D wal->count;
> -		if (!count)
> -			continue;
> -
> -		seq_printf(m, "%s: Workarounds applied: %u\n",
> -			   engine->name, count);
> -
> -		for (wa =3D wal->list; count--; wa++)
> -			seq_printf(m, "0x%X: 0x%08X, mask: 0x%08X\n",
> -				   i915_mmio_reg_offset(wa->reg),
> -				   wa->set, wa->clr);
> -
> -		seq_printf(m, "\n");
> -	}
> -
> -	return 0;
> -}
> -
> -static int i915_ipc_status_show(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -
> -	seq_printf(m, "Isochronous Priority Control: %s\n",
> -			yesno(dev_priv->ipc_enabled));
> -	return 0;
> -}
> -
> -static int i915_ipc_status_open(struct inode *inode, struct file *file)
> -{
> -	struct drm_i915_private *dev_priv =3D inode->i_private;
> -
> -	if (!HAS_IPC(dev_priv))
> -		return -ENODEV;
> -
> -	return single_open(file, i915_ipc_status_show, dev_priv);
> -}
> -
> -static ssize_t i915_ipc_status_write(struct file *file, const char __use=
r *ubuf,
> -				     size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	intel_wakeref_t wakeref;
> -	bool enable;
> -	int ret;
> -
> -	ret =3D kstrtobool_from_user(ubuf, len, &enable);
> -	if (ret < 0)
> -		return ret;
> -
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> -		if (!dev_priv->ipc_enabled && enable)
> -			drm_info(&dev_priv->drm,
> -				 "Enabling IPC: WM will be proper only after next commit\n");
> -		dev_priv->wm.distrust_bios_wm =3D true;
> -		dev_priv->ipc_enabled =3D enable;
> -		intel_enable_ipc(dev_priv);
> -	}
> -
> -	return len;
> -}
> -
> -static const struct file_operations i915_ipc_status_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D i915_ipc_status_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D i915_ipc_status_write
> -};
> -
> -static int i915_ddb_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct skl_ddb_entry *entry;
> -	struct intel_crtc *crtc;
> -
> -	if (INTEL_GEN(dev_priv) < 9)
> -		return -ENODEV;
> -
> -	drm_modeset_lock_all(dev);
> -
> -	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -		enum pipe pipe =3D crtc->pipe;
> -		enum plane_id plane_id;
> -
> -		seq_printf(m, "Pipe %c\n", pipe_name(pipe));
> -
> -		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			entry =3D &crtc_state->wm.skl.plane_ddb_y[plane_id];
> -			seq_printf(m, "  Plane%-8d%8u%8u%8u\n", plane_id + 1,
> -				   entry->start, entry->end,
> -				   skl_ddb_entry_size(entry));
> -		}
> -
> -		entry =3D &crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR];
> -		seq_printf(m, "  %-13s%8u%8u%8u\n", "Cursor", entry->start,
> -			   entry->end, skl_ddb_entry_size(entry));
> -	}
> -
> -	drm_modeset_unlock_all(dev);
> -
> -	return 0;
> -}
> -
> -static void drrs_status_per_crtc(struct seq_file *m,
> -				 struct drm_device *dev,
> -				 struct intel_crtc *intel_crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct i915_drrs *drrs =3D &dev_priv->drrs;
> -	int vrefresh =3D 0;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		if (connector->state->crtc !=3D &intel_crtc->base)
> -			continue;
> -
> -		seq_printf(m, "%s:\n", connector->name);
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	seq_puts(m, "\n");
> -
> -	if (to_intel_crtc_state(intel_crtc->base.state)->has_drrs) {
> -		struct intel_panel *panel;
> -
> -		mutex_lock(&drrs->mutex);
> -		/* DRRS Supported */
> -		seq_puts(m, "\tDRRS Supported: Yes\n");
> -
> -		/* disable_drrs() will make drrs->dp NULL */
> -		if (!drrs->dp) {
> -			seq_puts(m, "Idleness DRRS: Disabled\n");
> -			if (dev_priv->psr.enabled)
> -				seq_puts(m,
> -				"\tAs PSR is enabled, DRRS is not enabled\n");
> -			mutex_unlock(&drrs->mutex);
> -			return;
> -		}
> -
> -		panel =3D &drrs->dp->attached_connector->panel;
> -		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
> -					drrs->busy_frontbuffer_bits);
> -
> -		seq_puts(m, "\n\t\t");
> -		if (drrs->refresh_rate_type =3D=3D DRRS_HIGH_RR) {
> -			seq_puts(m, "DRRS_State: DRRS_HIGH_RR\n");
> -			vrefresh =3D panel->fixed_mode->vrefresh;
> -		} else if (drrs->refresh_rate_type =3D=3D DRRS_LOW_RR) {
> -			seq_puts(m, "DRRS_State: DRRS_LOW_RR\n");
> -			vrefresh =3D panel->downclock_mode->vrefresh;
> -		} else {
> -			seq_printf(m, "DRRS_State: Unknown(%d)\n",
> -						drrs->refresh_rate_type);
> -			mutex_unlock(&drrs->mutex);
> -			return;
> -		}
> -		seq_printf(m, "\t\tVrefresh: %d", vrefresh);
> -
> -		seq_puts(m, "\n\t\t");
> -		mutex_unlock(&drrs->mutex);
> -	} else {
> -		/* DRRS not supported. Print the VBT parameter*/
> -		seq_puts(m, "\tDRRS Supported : No");
> -	}
> -	seq_puts(m, "\n");
> -}
> -
> -static int i915_drrs_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct intel_crtc *intel_crtc;
> -	int active_crtc_cnt =3D 0;
> -
> -	drm_modeset_lock_all(dev);
> -	for_each_intel_crtc(dev, intel_crtc) {
> -		if (intel_crtc->base.state->active) {
> -			active_crtc_cnt++;
> -			seq_printf(m, "\nCRTC %d:  ", active_crtc_cnt);
> -
> -			drrs_status_per_crtc(m, dev, intel_crtc);
> -		}
> -	}
> -	drm_modeset_unlock_all(dev);
> -
> -	if (!active_crtc_cnt)
> -		seq_puts(m, "No active crtc found\n");
> -
> -	return 0;
> -}
> -
> -static int i915_dp_mst_info(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct intel_encoder *intel_encoder;
> -	struct intel_digital_port *intel_dig_port;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		if (connector->connector_type !=3D DRM_MODE_CONNECTOR_DisplayPort)
> -			continue;
> -
> -		intel_encoder =3D intel_attached_encoder(to_intel_connector(connector)=
);
> -		if (!intel_encoder || intel_encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		intel_dig_port =3D enc_to_dig_port(intel_encoder);
> -		if (!intel_dig_port->dp.can_mst)
> -			continue;
> -
> -		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
> -			   intel_dig_port->base.base.base.id,
> -			   intel_dig_port->base.base.name);
> -		drm_dp_mst_dump_topology(m, &intel_dig_port->dp.mst_mgr);
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	return 0;
> -}
> -
> -static ssize_t i915_displayport_test_active_write(struct file *file,
> -						  const char __user *ubuf,
> -						  size_t len, loff_t *offp)
> -{
> -	char *input_buffer;
> -	int status =3D 0;
> -	struct drm_device *dev;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_dp *intel_dp;
> -	int val =3D 0;
> -
> -	dev =3D ((struct seq_file *)file->private_data)->private;
> -
> -	if (len =3D=3D 0)
> -		return 0;
> -
> -	input_buffer =3D memdup_user_nul(ubuf, len);
> -	if (IS_ERR(input_buffer))
> -		return PTR_ERR(input_buffer);
> -
> -	drm_dbg(&to_i915(dev)->drm,
> -		"Copied %d bytes from user\n", (unsigned int)len);
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		struct intel_encoder *encoder;
> -
> -		if (connector->connector_type !=3D
> -		    DRM_MODE_CONNECTOR_DisplayPort)
> -			continue;
> -
> -		encoder =3D to_intel_encoder(connector->encoder);
> -		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		if (encoder && connector->status =3D=3D connector_status_connected) {
> -			intel_dp =3D enc_to_intel_dp(encoder);
> -			status =3D kstrtoint(input_buffer, 10, &val);
> -			if (status < 0)
> -				break;
> -			drm_dbg(&to_i915(dev)->drm,
> -				"Got %d for test active\n", val);
> -			/* To prevent erroneous activation of the compliance
> -			 * testing code, only accept an actual value of 1 here
> -			 */
> -			if (val =3D=3D 1)
> -				intel_dp->compliance.test_active =3D true;
> -			else
> -				intel_dp->compliance.test_active =3D false;
> -		}
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -	kfree(input_buffer);
> -	if (status < 0)
> -		return status;
> -
> -	*offp +=3D len;
> -	return len;
> -}
> -
> -static int i915_displayport_test_active_show(struct seq_file *m, void *d=
ata)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_dp *intel_dp;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		struct intel_encoder *encoder;
> -
> -		if (connector->connector_type !=3D
> -		    DRM_MODE_CONNECTOR_DisplayPort)
> -			continue;
> -
> -		encoder =3D to_intel_encoder(connector->encoder);
> -		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		if (encoder && connector->status =3D=3D connector_status_connected) {
> -			intel_dp =3D enc_to_intel_dp(encoder);
> -			if (intel_dp->compliance.test_active)
> -				seq_puts(m, "1");
> -			else
> -				seq_puts(m, "0");
> -		} else
> -			seq_puts(m, "0");
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	return 0;
> -}
> -
> -static int i915_displayport_test_active_open(struct inode *inode,
> -					     struct file *file)
> -{
> -	return single_open(file, i915_displayport_test_active_show,
> -			   inode->i_private);
> -}
> -
> -static const struct file_operations i915_displayport_test_active_fops =
=3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D i915_displayport_test_active_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D i915_displayport_test_active_write
> -};
> -
> -static int i915_displayport_test_data_show(struct seq_file *m, void *dat=
a)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_dp *intel_dp;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		struct intel_encoder *encoder;
> -
> -		if (connector->connector_type !=3D
> -		    DRM_MODE_CONNECTOR_DisplayPort)
> -			continue;
> -
> -		encoder =3D to_intel_encoder(connector->encoder);
> -		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		if (encoder && connector->status =3D=3D connector_status_connected) {
> -			intel_dp =3D enc_to_intel_dp(encoder);
> -			if (intel_dp->compliance.test_type =3D=3D
> -			    DP_TEST_LINK_EDID_READ)
> -				seq_printf(m, "%lx",
> -					   intel_dp->compliance.test_data.edid);
> -			else if (intel_dp->compliance.test_type =3D=3D
> -				 DP_TEST_LINK_VIDEO_PATTERN) {
> -				seq_printf(m, "hdisplay: %d\n",
> -					   intel_dp->compliance.test_data.hdisplay);
> -				seq_printf(m, "vdisplay: %d\n",
> -					   intel_dp->compliance.test_data.vdisplay);
> -				seq_printf(m, "bpc: %u\n",
> -					   intel_dp->compliance.test_data.bpc);
> -			}
> -		} else
> -			seq_puts(m, "0");
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_data);
> -
> -static int i915_displayport_test_type_show(struct seq_file *m, void *dat=
a)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_dp *intel_dp;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		struct intel_encoder *encoder;
> -
> -		if (connector->connector_type !=3D
> -		    DRM_MODE_CONNECTOR_DisplayPort)
> -			continue;
> -
> -		encoder =3D to_intel_encoder(connector->encoder);
> -		if (encoder && encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		if (encoder && connector->status =3D=3D connector_status_connected) {
> -			intel_dp =3D enc_to_intel_dp(encoder);
> -			seq_printf(m, "%02lx", intel_dp->compliance.test_type);
> -		} else
> -			seq_puts(m, "0");
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
> -
> -static void wm_latency_show(struct seq_file *m, const u16 wm[8])
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	int level;
> -	int num_levels;
> -
> -	if (IS_CHERRYVIEW(dev_priv))
> -		num_levels =3D 3;
> -	else if (IS_VALLEYVIEW(dev_priv))
> -		num_levels =3D 1;
> -	else if (IS_G4X(dev_priv))
> -		num_levels =3D 3;
> -	else
> -		num_levels =3D ilk_wm_max_level(dev_priv) + 1;
> -
> -	drm_modeset_lock_all(dev);
> -
> -	for (level =3D 0; level < num_levels; level++) {
> -		unsigned int latency =3D wm[level];
> -
> -		/*
> -		 * - WM1+ latency values in 0.5us units
> -		 * - latencies are in us on gen9/vlv/chv
> -		 */
> -		if (INTEL_GEN(dev_priv) >=3D 9 ||
> -		    IS_VALLEYVIEW(dev_priv) ||
> -		    IS_CHERRYVIEW(dev_priv) ||
> -		    IS_G4X(dev_priv))
> -			latency *=3D 10;
> -		else if (level > 0)
> -			latency *=3D 5;
> -
> -		seq_printf(m, "WM%d %u (%u.%u usec)\n",
> -			   level, wm[level], latency / 10, latency % 10);
> -	}
> -
> -	drm_modeset_unlock_all(dev);
> -}
> -
> -static int pri_wm_latency_show(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	const u16 *latencies;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> -	else
> -		latencies =3D dev_priv->wm.pri_latency;
> -
> -	wm_latency_show(m, latencies);
> -
> -	return 0;
> -}
> -
> -static int spr_wm_latency_show(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	const u16 *latencies;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> -	else
> -		latencies =3D dev_priv->wm.spr_latency;
> -
> -	wm_latency_show(m, latencies);
> -
> -	return 0;
> -}
> -
> -static int cur_wm_latency_show(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	const u16 *latencies;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> -	else
> -		latencies =3D dev_priv->wm.cur_latency;
> -
> -	wm_latency_show(m, latencies);
> -
> -	return 0;
> -}
> -
> -static int pri_wm_latency_open(struct inode *inode, struct file *file)
> -{
> -	struct drm_i915_private *dev_priv =3D inode->i_private;
> -
> -	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
> -		return -ENODEV;
> -
> -	return single_open(file, pri_wm_latency_show, dev_priv);
> -}
> -
> -static int spr_wm_latency_open(struct inode *inode, struct file *file)
> -{
> -	struct drm_i915_private *dev_priv =3D inode->i_private;
> -
> -	if (HAS_GMCH(dev_priv))
> -		return -ENODEV;
> -
> -	return single_open(file, spr_wm_latency_show, dev_priv);
> -}
> -
> -static int cur_wm_latency_open(struct inode *inode, struct file *file)
> -{
> -	struct drm_i915_private *dev_priv =3D inode->i_private;
> -
> -	if (HAS_GMCH(dev_priv))
> -		return -ENODEV;
> -
> -	return single_open(file, cur_wm_latency_show, dev_priv);
> -}
> -
> -static ssize_t wm_latency_write(struct file *file, const char __user *ub=
uf,
> -				size_t len, loff_t *offp, u16 wm[8])
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	u16 new[8] =3D { 0 };
> -	int num_levels;
> -	int level;
> -	int ret;
> -	char tmp[32];
> -
> -	if (IS_CHERRYVIEW(dev_priv))
> -		num_levels =3D 3;
> -	else if (IS_VALLEYVIEW(dev_priv))
> -		num_levels =3D 1;
> -	else if (IS_G4X(dev_priv))
> -		num_levels =3D 3;
> -	else
> -		num_levels =3D ilk_wm_max_level(dev_priv) + 1;
> -
> -	if (len >=3D sizeof(tmp))
> -		return -EINVAL;
> -
> -	if (copy_from_user(tmp, ubuf, len))
> -		return -EFAULT;
> -
> -	tmp[len] =3D '\0';
> -
> -	ret =3D sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
> -		     &new[0], &new[1], &new[2], &new[3],
> -		     &new[4], &new[5], &new[6], &new[7]);
> -	if (ret !=3D num_levels)
> -		return -EINVAL;
> -
> -	drm_modeset_lock_all(dev);
> -
> -	for (level =3D 0; level < num_levels; level++)
> -		wm[level] =3D new[level];
> -
> -	drm_modeset_unlock_all(dev);
> +	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> +		if (!dev_priv->ipc_enabled && enable)
> +			drm_info(&dev_priv->drm,
> +				 "Enabling IPC: WM will be proper only after next commit\n");
> +		dev_priv->wm.distrust_bios_wm =3D true;
> +		dev_priv->ipc_enabled =3D enable;
> +		intel_enable_ipc(dev_priv);
> +	}
>  =

>  	return len;
>  }
>  =

> -
> -static ssize_t pri_wm_latency_write(struct file *file, const char __user=
 *ubuf,
> -				    size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	u16 *latencies;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> -	else
> -		latencies =3D dev_priv->wm.pri_latency;
> -
> -	return wm_latency_write(file, ubuf, len, offp, latencies);
> -}
> -
> -static ssize_t spr_wm_latency_write(struct file *file, const char __user=
 *ubuf,
> -				    size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	u16 *latencies;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> -	else
> -		latencies =3D dev_priv->wm.spr_latency;
> -
> -	return wm_latency_write(file, ubuf, len, offp, latencies);
> -}
> -
> -static ssize_t cur_wm_latency_write(struct file *file, const char __user=
 *ubuf,
> -				    size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	u16 *latencies;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		latencies =3D dev_priv->wm.skl_latency;
> -	else
> -		latencies =3D dev_priv->wm.cur_latency;
> -
> -	return wm_latency_write(file, ubuf, len, offp, latencies);
> -}
> -
> -static const struct file_operations i915_pri_wm_latency_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D pri_wm_latency_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D pri_wm_latency_write
> -};
> -
> -static const struct file_operations i915_spr_wm_latency_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D spr_wm_latency_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D spr_wm_latency_write
> -};
> -
> -static const struct file_operations i915_cur_wm_latency_fops =3D {
> +static const struct file_operations i915_ipc_status_fops =3D {
>  	.owner =3D THIS_MODULE,
> -	.open =3D cur_wm_latency_open,
> +	.open =3D i915_ipc_status_open,
>  	.read =3D seq_read,
>  	.llseek =3D seq_lseek,
>  	.release =3D single_release,
> -	.write =3D cur_wm_latency_write
> +	.write =3D i915_ipc_status_write
>  };
>  =

>  static int
> @@ -3943,295 +2571,6 @@ static const struct file_operations i915_forcewak=
e_fops =3D {
>  	.release =3D i915_forcewake_release,
>  };
>  =

> -static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
> -
> -	/* Synchronize with everything first in case there's been an HPD
> -	 * storm, but we haven't finished handling it in the kernel yet
> -	 */
> -	intel_synchronize_irq(dev_priv);
> -	flush_work(&dev_priv->hotplug.dig_port_work);
> -	flush_delayed_work(&dev_priv->hotplug.hotplug_work);
> -
> -	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
> -	seq_printf(m, "Detected: %s\n",
> -		   yesno(delayed_work_pending(&hotplug->reenable_work)));
> -
> -	return 0;
> -}
> -
> -static ssize_t i915_hpd_storm_ctl_write(struct file *file,
> -					const char __user *ubuf, size_t len,
> -					loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
> -	unsigned int new_threshold;
> -	int i;
> -	char *newline;
> -	char tmp[16];
> -
> -	if (len >=3D sizeof(tmp))
> -		return -EINVAL;
> -
> -	if (copy_from_user(tmp, ubuf, len))
> -		return -EFAULT;
> -
> -	tmp[len] =3D '\0';
> -
> -	/* Strip newline, if any */
> -	newline =3D strchr(tmp, '\n');
> -	if (newline)
> -		*newline =3D '\0';
> -
> -	if (strcmp(tmp, "reset") =3D=3D 0)
> -		new_threshold =3D HPD_STORM_DEFAULT_THRESHOLD;
> -	else if (kstrtouint(tmp, 10, &new_threshold) !=3D 0)
> -		return -EINVAL;
> -
> -	if (new_threshold > 0)
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Setting HPD storm detection threshold to %d\n",
> -			    new_threshold);
> -	else
> -		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm detection\n");
> -
> -	spin_lock_irq(&dev_priv->irq_lock);
> -	hotplug->hpd_storm_threshold =3D new_threshold;
> -	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
> -	for_each_hpd_pin(i)
> -		hotplug->stats[i].count =3D 0;
> -	spin_unlock_irq(&dev_priv->irq_lock);
> -
> -	/* Re-enable hpd immediately if we were in an irq storm */
> -	flush_delayed_work(&dev_priv->hotplug.reenable_work);
> -
> -	return len;
> -}
> -
> -static int i915_hpd_storm_ctl_open(struct inode *inode, struct file *fil=
e)
> -{
> -	return single_open(file, i915_hpd_storm_ctl_show, inode->i_private);
> -}
> -
> -static const struct file_operations i915_hpd_storm_ctl_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D i915_hpd_storm_ctl_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D i915_hpd_storm_ctl_write
> -};
> -
> -static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
> -{
> -	struct drm_i915_private *dev_priv =3D m->private;
> -
> -	seq_printf(m, "Enabled: %s\n",
> -		   yesno(dev_priv->hotplug.hpd_short_storm_enabled));
> -
> -	return 0;
> -}
> -
> -static int
> -i915_hpd_short_storm_ctl_open(struct inode *inode, struct file *file)
> -{
> -	return single_open(file, i915_hpd_short_storm_ctl_show,
> -			   inode->i_private);
> -}
> -
> -static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
> -					      const char __user *ubuf,
> -					      size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct i915_hotplug *hotplug =3D &dev_priv->hotplug;
> -	char *newline;
> -	char tmp[16];
> -	int i;
> -	bool new_state;
> -
> -	if (len >=3D sizeof(tmp))
> -		return -EINVAL;
> -
> -	if (copy_from_user(tmp, ubuf, len))
> -		return -EFAULT;
> -
> -	tmp[len] =3D '\0';
> -
> -	/* Strip newline, if any */
> -	newline =3D strchr(tmp, '\n');
> -	if (newline)
> -		*newline =3D '\0';
> -
> -	/* Reset to the "default" state for this system */
> -	if (strcmp(tmp, "reset") =3D=3D 0)
> -		new_state =3D !HAS_DP_MST(dev_priv);
> -	else if (kstrtobool(tmp, &new_state) !=3D 0)
> -		return -EINVAL;
> -
> -	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
> -		    new_state ? "En" : "Dis");
> -
> -	spin_lock_irq(&dev_priv->irq_lock);
> -	hotplug->hpd_short_storm_enabled =3D new_state;
> -	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
> -	for_each_hpd_pin(i)
> -		hotplug->stats[i].count =3D 0;
> -	spin_unlock_irq(&dev_priv->irq_lock);
> -
> -	/* Re-enable hpd immediately if we were in an irq storm */
> -	flush_delayed_work(&dev_priv->hotplug.reenable_work);
> -
> -	return len;
> -}
> -
> -static const struct file_operations i915_hpd_short_storm_ctl_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D i915_hpd_short_storm_ctl_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D i915_hpd_short_storm_ctl_write,
> -};
> -
> -static int i915_drrs_ctl_set(void *data, u64 val)
> -{
> -	struct drm_i915_private *dev_priv =3D data;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	struct intel_crtc *crtc;
> -
> -	if (INTEL_GEN(dev_priv) < 7)
> -		return -ENODEV;
> -
> -	for_each_intel_crtc(dev, crtc) {
> -		struct drm_connector_list_iter conn_iter;
> -		struct intel_crtc_state *crtc_state;
> -		struct drm_connector *connector;
> -		struct drm_crtc_commit *commit;
> -		int ret;
> -
> -		ret =3D drm_modeset_lock_single_interruptible(&crtc->base.mutex);
> -		if (ret)
> -			return ret;
> -
> -		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> -
> -		if (!crtc_state->hw.active ||
> -		    !crtc_state->has_drrs)
> -			goto out;
> -
> -		commit =3D crtc_state->uapi.commit;
> -		if (commit) {
> -			ret =3D wait_for_completion_interruptible(&commit->hw_done);
> -			if (ret)
> -				goto out;
> -		}
> -
> -		drm_connector_list_iter_begin(dev, &conn_iter);
> -		drm_for_each_connector_iter(connector, &conn_iter) {
> -			struct intel_encoder *encoder;
> -			struct intel_dp *intel_dp;
> -
> -			if (!(crtc_state->uapi.connector_mask &
> -			      drm_connector_mask(connector)))
> -				continue;
> -
> -			encoder =3D intel_attached_encoder(to_intel_connector(connector));
> -			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> -				continue;
> -
> -			drm_dbg(&dev_priv->drm,
> -				"Manually %sabling DRRS. %llu\n",
> -				val ? "en" : "dis", val);
> -
> -			intel_dp =3D enc_to_intel_dp(encoder);
> -			if (val)
> -				intel_edp_drrs_enable(intel_dp,
> -						      crtc_state);
> -			else
> -				intel_edp_drrs_disable(intel_dp,
> -						       crtc_state);
> -		}
> -		drm_connector_list_iter_end(&conn_iter);
> -
> -out:
> -		drm_modeset_unlock(&crtc->base.mutex);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -DEFINE_SIMPLE_ATTRIBUTE(i915_drrs_ctl_fops, NULL, i915_drrs_ctl_set, "%l=
lu\n");
> -
> -static ssize_t
> -i915_fifo_underrun_reset_write(struct file *filp,
> -			       const char __user *ubuf,
> -			       size_t cnt, loff_t *ppos)
> -{
> -	struct drm_i915_private *dev_priv =3D filp->private_data;
> -	struct intel_crtc *intel_crtc;
> -	struct drm_device *dev =3D &dev_priv->drm;
> -	int ret;
> -	bool reset;
> -
> -	ret =3D kstrtobool_from_user(ubuf, cnt, &reset);
> -	if (ret)
> -		return ret;
> -
> -	if (!reset)
> -		return cnt;
> -
> -	for_each_intel_crtc(dev, intel_crtc) {
> -		struct drm_crtc_commit *commit;
> -		struct intel_crtc_state *crtc_state;
> -
> -		ret =3D drm_modeset_lock_single_interruptible(&intel_crtc->base.mutex);
> -		if (ret)
> -			return ret;
> -
> -		crtc_state =3D to_intel_crtc_state(intel_crtc->base.state);
> -		commit =3D crtc_state->uapi.commit;
> -		if (commit) {
> -			ret =3D wait_for_completion_interruptible(&commit->hw_done);
> -			if (!ret)
> -				ret =3D wait_for_completion_interruptible(&commit->flip_done);
> -		}
> -
> -		if (!ret && crtc_state->hw.active) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Re-arming FIFO underruns on pipe %c\n",
> -				    pipe_name(intel_crtc->pipe));
> -
> -			intel_crtc_arm_fifo_underrun(intel_crtc, crtc_state);
> -		}
> -
> -		drm_modeset_unlock(&intel_crtc->base.mutex);
> -
> -		if (ret)
> -			return ret;
> -	}
> -
> -	ret =3D intel_fbc_reset_underrun(dev_priv);
> -	if (ret)
> -		return ret;
> -
> -	return cnt;
> -}
> -
> -static const struct file_operations i915_fifo_underrun_reset_ops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D simple_open,
> -	.write =3D i915_fifo_underrun_reset_write,
> -	.llseek =3D default_llseek,
> -};
> -
>  static const struct drm_info_list i915_debugfs_list[] =3D {
>  	{"i915_capabilities", i915_capabilities, 0},
>  	{"i915_gem_objects", i915_gem_object_info, 0},
> @@ -4247,31 +2586,20 @@ static const struct drm_info_list i915_debugfs_li=
st[] =3D {
>  	{"i915_drpc_info", i915_drpc_info, 0},
>  	{"i915_ring_freq_table", i915_ring_freq_table, 0},
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},

^ should probably be under display

> -	{"i915_fbc_status", i915_fbc_status, 0},
> -	{"i915_ips_status", i915_ips_status, 0},
> -	{"i915_sr_status", i915_sr_status, 0},
> -	{"i915_opregion", i915_opregion, 0},
> -	{"i915_vbt", i915_vbt, 0},
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},

^ that too maybe?

>  	{"i915_context_status", i915_context_status, 0},
>  	{"i915_forcewake_domains", i915_forcewake_domains, 0},
>  	{"i915_swizzle_info", i915_swizzle_info, 0},
>  	{"i915_llc", i915_llc, 0},
> -	{"i915_edp_psr_status", i915_edp_psr_status, 0},
>  	{"i915_energy_uJ", i915_energy_uJ, 0},
>  	{"i915_runtime_pm_status", i915_runtime_pm_status, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_dmc_info", i915_dmc_info, 0},

power domains and dmc too maybe?

> -	{"i915_display_info", i915_display_info, 0},
>  	{"i915_engine_info", i915_engine_info, 0},
>  	{"i915_rcs_topology", i915_rcs_topology, 0},
>  	{"i915_shrinker_info", i915_shrinker_info, 0},
> -	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
> -	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>  	{"i915_wa_registers", i915_wa_registers, 0},
> -	{"i915_ddb_info", i915_ddb_info, 0},
>  	{"i915_sseu_status", i915_sseu_status, 0},
> -	{"i915_drrs_status", i915_drrs_status, 0},
>  	{"i915_rps_boost_info", i915_rps_boost_info, 0},
>  };
>  #define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
> @@ -4288,21 +2616,9 @@ static const struct i915_debugfs_files {
>  	{"i915_error_state", &i915_error_state_fops},
>  	{"i915_gpu_info", &i915_gpu_info_fops},
>  #endif
> -	{"i915_fifo_underrun_reset", &i915_fifo_underrun_reset_ops},
> -	{"i915_pri_wm_latency", &i915_pri_wm_latency_fops},
> -	{"i915_spr_wm_latency", &i915_spr_wm_latency_fops},
> -	{"i915_cur_wm_latency", &i915_cur_wm_latency_fops},
> -	{"i915_fbc_false_color", &i915_fbc_false_color_fops},
> -	{"i915_dp_test_data", &i915_displayport_test_data_fops},
> -	{"i915_dp_test_type", &i915_displayport_test_type_fops},
> -	{"i915_dp_test_active", &i915_displayport_test_active_fops},
>  	{"i915_guc_log_level", &i915_guc_log_level_fops},
>  	{"i915_guc_log_relay", &i915_guc_log_relay_fops},
> -	{"i915_hpd_storm_ctl", &i915_hpd_storm_ctl_fops},
> -	{"i915_hpd_short_storm_ctl", &i915_hpd_short_storm_ctl_fops},
>  	{"i915_ipc_status", &i915_ipc_status_fops},

^ that should be under display, or just nuked from orbit.

> -	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
> -	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops}
>  };
>  =

>  int i915_debugfs_register(struct drm_i915_private *dev_priv)
> @@ -4326,191 +2642,3 @@ int i915_debugfs_register(struct drm_i915_private=
 *dev_priv)
>  					I915_DEBUGFS_ENTRIES,
>  					minor->debugfs_root, minor);
>  }
> -
> -static int i915_panel_show(struct seq_file *m, void *data)
> -{
> -	struct drm_connector *connector =3D m->private;
> -	struct intel_dp *intel_dp =3D
> -		intel_attached_dp(to_intel_connector(connector));
> -
> -	if (connector->status !=3D connector_status_connected)
> -		return -ENODEV;
> -
> -	seq_printf(m, "Panel power up delay: %d\n",
> -		   intel_dp->panel_power_up_delay);
> -	seq_printf(m, "Panel power down delay: %d\n",
> -		   intel_dp->panel_power_down_delay);
> -	seq_printf(m, "Backlight on delay: %d\n",
> -		   intel_dp->backlight_on_delay);
> -	seq_printf(m, "Backlight off delay: %d\n",
> -		   intel_dp->backlight_off_delay);
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_panel);
> -
> -static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
> -{
> -	struct drm_connector *connector =3D m->private;
> -	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
> -
> -	if (connector->status !=3D connector_status_connected)
> -		return -ENODEV;
> -
> -	/* HDCP is supported by connector */
> -	if (!intel_connector->hdcp.shim)
> -		return -EINVAL;
> -
> -	seq_printf(m, "%s:%d HDCP version: ", connector->name,
> -		   connector->base.id);
> -	intel_hdcp_info(m, intel_connector);
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_hdcp_sink_capability);
> -
> -static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
> -{
> -	struct drm_connector *connector =3D m->private;
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_crtc *crtc;
> -	struct intel_dp *intel_dp;
> -	struct drm_modeset_acquire_ctx ctx;
> -	struct intel_crtc_state *crtc_state =3D NULL;
> -	int ret =3D 0;
> -	bool try_again =3D false;
> -
> -	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
> -
> -	do {
> -		try_again =3D false;
> -		ret =3D drm_modeset_lock(&dev->mode_config.connection_mutex,
> -				       &ctx);
> -		if (ret) {
> -			if (ret =3D=3D -EDEADLK && !drm_modeset_backoff(&ctx)) {
> -				try_again =3D true;
> -				continue;
> -			}
> -			break;
> -		}
> -		crtc =3D connector->state->crtc;
> -		if (connector->status !=3D connector_status_connected || !crtc) {
> -			ret =3D -ENODEV;
> -			break;
> -		}
> -		ret =3D drm_modeset_lock(&crtc->mutex, &ctx);
> -		if (ret =3D=3D -EDEADLK) {
> -			ret =3D drm_modeset_backoff(&ctx);
> -			if (!ret) {
> -				try_again =3D true;
> -				continue;
> -			}
> -			break;
> -		} else if (ret) {
> -			break;
> -		}
> -		intel_dp =3D intel_attached_dp(to_intel_connector(connector));
> -		crtc_state =3D to_intel_crtc_state(crtc->state);
> -		seq_printf(m, "DSC_Enabled: %s\n",
> -			   yesno(crtc_state->dsc.compression_enable));
> -		seq_printf(m, "DSC_Sink_Support: %s\n",
> -			   yesno(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
> -		seq_printf(m, "Force_DSC_Enable: %s\n",
> -			   yesno(intel_dp->force_dsc_en));
> -		if (!intel_dp_is_edp(intel_dp))
> -			seq_printf(m, "FEC_Sink_Support: %s\n",
> -				   yesno(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
> -	} while (try_again);
> -
> -	drm_modeset_drop_locks(&ctx);
> -	drm_modeset_acquire_fini(&ctx);
> -
> -	return ret;
> -}
> -
> -static ssize_t i915_dsc_fec_support_write(struct file *file,
> -					  const char __user *ubuf,
> -					  size_t len, loff_t *offp)
> -{
> -	bool dsc_enable =3D false;
> -	int ret;
> -	struct drm_connector *connector =3D
> -		((struct seq_file *)file->private_data)->private;
> -	struct intel_encoder *encoder =3D intel_attached_encoder(to_intel_conne=
ctor(connector));
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
> -	if (len =3D=3D 0)
> -		return 0;
> -
> -	drm_dbg(&i915->drm,
> -		"Copied %zu bytes from user to force DSC\n", len);
> -
> -	ret =3D kstrtobool_from_user(ubuf, len, &dsc_enable);
> -	if (ret < 0)
> -		return ret;
> -
> -	drm_dbg(&i915->drm, "Got %s for DSC Enable\n",
> -		(dsc_enable) ? "true" : "false");
> -	intel_dp->force_dsc_en =3D dsc_enable;
> -
> -	*offp +=3D len;
> -	return len;
> -}
> -
> -static int i915_dsc_fec_support_open(struct inode *inode,
> -				     struct file *file)
> -{
> -	return single_open(file, i915_dsc_fec_support_show,
> -			   inode->i_private);
> -}
> -
> -static const struct file_operations i915_dsc_fec_support_fops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D i915_dsc_fec_support_open,
> -	.read =3D seq_read,
> -	.llseek =3D seq_lseek,
> -	.release =3D single_release,
> -	.write =3D i915_dsc_fec_support_write
> -};
> -
> -/**
> - * i915_debugfs_connector_add - add i915 specific connector debugfs files
> - * @connector: pointer to a registered drm_connector
> - *
> - * Cleanup will be done by drm_connector_unregister() through a call to
> - * drm_debugfs_connector_remove().
> - *
> - * Returns 0 on success, negative error codes on error.
> - */
> -int i915_debugfs_connector_add(struct drm_connector *connector)
> -{
> -	struct dentry *root =3D connector->debugfs_entry;
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -
> -	/* The connector must have been registered beforehands. */
> -	if (!root)
> -		return -ENODEV;
> -
> -	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP) {
> -		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
> -				    connector, &i915_panel_fops);
> -		debugfs_create_file("i915_psr_sink_status", S_IRUGO, root,
> -				    connector, &i915_psr_sink_status_fops);
> -	}
> -
> -	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> -	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
> -	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB) {
> -		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,
> -				    connector, &i915_hdcp_sink_capability_fops);
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 10 &&
> -	    (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> -	     connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP))
> -		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> -				    connector, &i915_dsc_fec_support_fops);
> -
> -	return 0;
> -}
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.h b/drivers/gpu/drm/i915/i=
915_debugfs.h
> index c0cd22eb916d..f0309219ed4c 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.h
> +++ b/drivers/gpu/drm/i915/i915_debugfs.h
> @@ -11,10 +11,8 @@ struct drm_connector;
>  =

>  #ifdef CONFIG_DEBUG_FS
>  int i915_debugfs_register(struct drm_i915_private *dev_priv);
> -int i915_debugfs_connector_add(struct drm_connector *connector);
>  #else
>  static inline int i915_debugfs_register(struct drm_i915_private *dev_pri=
v) { return 0; }
> -static inline int i915_debugfs_connector_add(struct drm_connector *conne=
ctor) { return 0; }
>  #endif
>  =

>  #endif /* __I915_DEBUGFS_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 516536234e97..4ab3689420e6 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -50,6 +50,7 @@
>  #include "display/intel_audio.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
> +#include "display/intel_display_debugfs.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_fbdev.h"
> @@ -1330,6 +1331,7 @@ static void i915_driver_register(struct drm_i915_pr=
ivate *dev_priv)
>  	/* Reveal our presence to userspace */
>  	if (drm_dev_register(dev, 0) =3D=3D 0) {
>  		i915_debugfs_register(dev_priv);
> +		intel_display_debugfs_register(dev_priv);
>  		i915_setup_sysfs(dev_priv);
>  =

>  		/* Depends on sysfs having been initialized */
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
