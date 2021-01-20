Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 041472FD6E6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 18:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773136E409;
	Wed, 20 Jan 2021 17:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE8156E40B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 17:32:09 +0000 (UTC)
IronPort-SDR: 3XkVcR/lsEsEF+y7AdNeqhTfVN7YYetB5zG+ryIP3D4Bxc2+talsLFB8x9eo7rS7YcBF22XAg+
 xX7RclqoS3UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="197875679"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="197875679"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 09:31:52 -0800
IronPort-SDR: WzXEXHLT9tjSEXi9msZZjykJiNAqQnDVbxVcM4mkcMc7LqPzplMoQ7YDUCdVBg2ujKtcFY56g2
 KO5jHptkDfVQ==
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="399844206"
Received: from sbhatta1-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.212.249.40])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 09:31:50 -0800
Date: Wed, 20 Jan 2021 12:31:49 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210120173149.GC3970@intel.com>
References: <20210120101834.19813-1-jani.nikula@intel.com>
 <20210120101834.19813-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120101834.19813-4-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dp: split out aux
 functionality to intel_dp_aux.c
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

On Wed, Jan 20, 2021 at 12:18:34PM +0200, Jani Nikula wrote:
> Split out the DP aux functionality to a new intel_dp_aux.[ch]. This is a
> surprisingly clean cut.

I had wondered about this split in the past... surprisingly clean cut indee=
d...

> =

> v2:
> - Remove intel_dp_pack_aux declaration from intel_dp.h (Anshuman)
> - Fixed some whitespace/comment checkpatch warnings
> =

> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile               |   1 +
>  drivers/gpu/drm/i915/display/intel_dp.c     | 680 +------------------
>  drivers/gpu/drm/i915/display/intel_dp.h     |   1 -
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 692 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_aux.h |  18 +
>  drivers/gpu/drm/i915/display/intel_psr.c    |   3 +-
>  6 files changed, 714 insertions(+), 681 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 006dec54408d..ea1cc5736049 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -243,6 +243,7 @@ i915-y +=3D \
>  	display/intel_crt.o \
>  	display/intel_ddi.o \
>  	display/intel_dp.o \
> +	display/intel_dp_aux.o \
>  	display/intel_dp_aux_backlight.o \
>  	display/intel_dp_hdcp.o \
>  	display/intel_dp_link_training.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d815087a26aa..8979996f1747 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -41,13 +41,13 @@
>  =

>  #include "i915_debugfs.h"
>  #include "i915_drv.h"
> -#include "i915_trace.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dp_aux.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
> @@ -862,684 +862,6 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
>  }
>  =

> -u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
> -{
> -	int i;
> -	u32 v =3D 0;
> -
> -	if (src_bytes > 4)
> -		src_bytes =3D 4;
> -	for (i =3D 0; i < src_bytes; i++)
> -		v |=3D ((u32)src[i]) << ((3 - i) * 8);
> -	return v;
> -}
> -
> -static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
> -{
> -	int i;
> -	if (dst_bytes > 4)
> -		dst_bytes =3D 4;
> -	for (i =3D 0; i < dst_bytes; i++)
> -		dst[i] =3D src >> ((3-i) * 8);
> -}
> -
> -static u32
> -intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> -	const unsigned int timeout_ms =3D 10;
> -	u32 status;
> -	bool done;
> -
> -#define C (((status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl)=
) & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> -	done =3D wait_event_timeout(i915->gmbus_wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> -
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> -
> -	if (!done)
> -		drm_err(&i915->drm,
> -			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> -			intel_dp->aux.name, timeout_ms, status);
> -#undef C
> -
> -	return status;
> -}
> -
> -static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -
> -	if (index)
> -		return 0;
> -
> -	/*
> -	 * The clock divider is based off the hrawclk, and would like to run at
> -	 * 2MHz.  So, take the hrawclk value and divide by 2000 and use that
> -	 */
> -	return DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)->rawclk_freq, 2000);
> -}
> -
> -static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	u32 freq;
> -
> -	if (index)
> -		return 0;
> -
> -	/*
> -	 * The clock divider is based off the cdclk or PCH rawclk, and would
> -	 * like to run at 2MHz.  So, take the cdclk or PCH rawclk value and
> -	 * divide by 2000 and use that
> -	 */
> -	if (dig_port->aux_ch =3D=3D AUX_CH_A)
> -		freq =3D dev_priv->cdclk.hw.cdclk;
> -	else
> -		freq =3D RUNTIME_INFO(dev_priv)->rawclk_freq;
> -	return DIV_ROUND_CLOSEST(freq, 2000);
> -}
> -
> -static u32 hsw_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -
> -	if (dig_port->aux_ch !=3D AUX_CH_A && HAS_PCH_LPT_H(dev_priv)) {
> -		/* Workaround for non-ULT HSW */
> -		switch (index) {
> -		case 0: return 63;
> -		case 1: return 72;
> -		default: return 0;
> -		}
> -	}
> -
> -	return ilk_get_aux_clock_divider(intel_dp, index);
> -}
> -
> -static u32 skl_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> -{
> -	/*
> -	 * SKL doesn't need us to program the AUX clock divider (Hardware will
> -	 * derive the clock from CDCLK automatically). We still implement the
> -	 * get_aux_clock_divider vfunc to plug-in into the existing code.
> -	 */
> -	return index ? 0 : 1;
> -}
> -
> -static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
> -				int send_bytes,
> -				u32 aux_clock_divider)
> -{
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv =3D
> -			to_i915(dig_port->base.base.dev);
> -	u32 precharge, timeout;
> -
> -	if (IS_GEN(dev_priv, 6))
> -		precharge =3D 3;
> -	else
> -		precharge =3D 5;
> -
> -	if (IS_BROADWELL(dev_priv))
> -		timeout =3D DP_AUX_CH_CTL_TIME_OUT_600us;
> -	else
> -		timeout =3D DP_AUX_CH_CTL_TIME_OUT_400us;
> -
> -	return DP_AUX_CH_CTL_SEND_BUSY |
> -	       DP_AUX_CH_CTL_DONE |
> -	       DP_AUX_CH_CTL_INTERRUPT |
> -	       DP_AUX_CH_CTL_TIME_OUT_ERROR |
> -	       timeout |
> -	       DP_AUX_CH_CTL_RECEIVE_ERROR |
> -	       (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
> -	       (precharge << DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT) |
> -	       (aux_clock_divider << DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT);
> -}
> -
> -static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
> -				int send_bytes,
> -				u32 unused)
> -{
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *i915 =3D
> -			to_i915(dig_port->base.base.dev);
> -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> -	u32 ret;
> -
> -	ret =3D DP_AUX_CH_CTL_SEND_BUSY |
> -	      DP_AUX_CH_CTL_DONE |
> -	      DP_AUX_CH_CTL_INTERRUPT |
> -	      DP_AUX_CH_CTL_TIME_OUT_ERROR |
> -	      DP_AUX_CH_CTL_TIME_OUT_MAX |
> -	      DP_AUX_CH_CTL_RECEIVE_ERROR |
> -	      (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
> -	      DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(32) |
> -	      DP_AUX_CH_CTL_SYNC_PULSE_SKL(32);
> -
> -	if (intel_phy_is_tc(i915, phy) &&
> -	    dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT)
> -		ret |=3D DP_AUX_CH_CTL_TBT_IO;
> -
> -	return ret;
> -}
> -
> -static int
> -intel_dp_aux_xfer(struct intel_dp *intel_dp,
> -		  const u8 *send, int send_bytes,
> -		  u8 *recv, int recv_size,
> -		  u32 aux_send_ctl_flags)
> -{
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *i915 =3D
> -			to_i915(dig_port->base.base.dev);
> -	struct intel_uncore *uncore =3D &i915->uncore;
> -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> -	bool is_tc_port =3D intel_phy_is_tc(i915, phy);
> -	i915_reg_t ch_ctl, ch_data[5];
> -	u32 aux_clock_divider;
> -	enum intel_display_power_domain aux_domain;
> -	intel_wakeref_t aux_wakeref;
> -	intel_wakeref_t pps_wakeref;
> -	int i, ret, recv_bytes;
> -	int try, clock =3D 0;
> -	u32 status;
> -	bool vdd;
> -
> -	ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> -	for (i =3D 0; i < ARRAY_SIZE(ch_data); i++)
> -		ch_data[i] =3D intel_dp->aux_ch_data_reg(intel_dp, i);
> -
> -	if (is_tc_port)
> -		intel_tc_port_lock(dig_port);
> -
> -	aux_domain =3D intel_aux_power_domain(dig_port);
> -
> -	aux_wakeref =3D intel_display_power_get(i915, aux_domain);
> -	pps_wakeref =3D intel_pps_lock(intel_dp);
> -
> -	/*
> -	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> -	 * In such cases we want to leave VDD enabled and it's up to upper laye=
rs
> -	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> -	 * ourselves.
> -	 */
> -	vdd =3D intel_pps_vdd_on_unlocked(intel_dp);
> -
> -	/* dp aux is extremely sensitive to irq latency, hence request the
> -	 * lowest possible wakeup latency and so prevent the cpu from going into
> -	 * deep sleep states.
> -	 */
> -	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
> -
> -	intel_pps_check_power_unlocked(intel_dp);
> -
> -	/* Try to wait for any previous AUX channel activity */
> -	for (try =3D 0; try < 3; try++) {
> -		status =3D intel_uncore_read_notrace(uncore, ch_ctl);
> -		if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> -			break;
> -		msleep(1);
> -	}
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> -
> -	if (try =3D=3D 3) {
> -		const u32 status =3D intel_uncore_read(uncore, ch_ctl);
> -
> -		if (status !=3D intel_dp->aux_busy_last_status) {
> -			drm_WARN(&i915->drm, 1,
> -				 "%s: not started (status 0x%08x)\n",
> -				 intel_dp->aux.name, status);
> -			intel_dp->aux_busy_last_status =3D status;
> -		}
> -
> -		ret =3D -EBUSY;
> -		goto out;
> -	}
> -
> -	/* Only 5 data registers! */
> -	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
> -		ret =3D -E2BIG;
> -		goto out;
> -	}
> -
> -	while ((aux_clock_divider =3D intel_dp->get_aux_clock_divider(intel_dp,=
 clock++))) {
> -		u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> -							  send_bytes,
> -							  aux_clock_divider);
> -
> -		send_ctl |=3D aux_send_ctl_flags;
> -
> -		/* Must try at least 3 times according to DP spec */
> -		for (try =3D 0; try < 5; try++) {
> -			/* Load the send data into the aux channel data registers */
> -			for (i =3D 0; i < send_bytes; i +=3D 4)
> -				intel_uncore_write(uncore,
> -						   ch_data[i >> 2],
> -						   intel_dp_pack_aux(send + i,
> -								     send_bytes - i));
> -
> -			/* Send the command and wait for it to complete */
> -			intel_uncore_write(uncore, ch_ctl, send_ctl);
> -
> -			status =3D intel_dp_aux_wait_done(intel_dp);
> -
> -			/* Clear done status and any errors */
> -			intel_uncore_write(uncore,
> -					   ch_ctl,
> -					   status |
> -					   DP_AUX_CH_CTL_DONE |
> -					   DP_AUX_CH_CTL_TIME_OUT_ERROR |
> -					   DP_AUX_CH_CTL_RECEIVE_ERROR);
> -
> -			/* DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
> -			 *   400us delay required for errors and timeouts
> -			 *   Timeout errors from the HW already meet this
> -			 *   requirement so skip to next iteration
> -			 */
> -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> -				continue;
> -
> -			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> -				usleep_range(400, 500);
> -				continue;
> -			}
> -			if (status & DP_AUX_CH_CTL_DONE)
> -				goto done;
> -		}
> -	}
> -
> -	if ((status & DP_AUX_CH_CTL_DONE) =3D=3D 0) {
> -		drm_err(&i915->drm, "%s: not done (status 0x%08x)\n",
> -			intel_dp->aux.name, status);
> -		ret =3D -EBUSY;
> -		goto out;
> -	}
> -
> -done:
> -	/* Check for timeout or receive error.
> -	 * Timeouts occur when the sink is not connected
> -	 */
> -	if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> -		drm_err(&i915->drm, "%s: receive error (status 0x%08x)\n",
> -			intel_dp->aux.name, status);
> -		ret =3D -EIO;
> -		goto out;
> -	}
> -
> -	/* Timeouts occur when the device isn't connected, so they're
> -	 * "normal" -- don't fill the kernel log with these */
> -	if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
> -		drm_dbg_kms(&i915->drm, "%s: timeout (status 0x%08x)\n",
> -			    intel_dp->aux.name, status);
> -		ret =3D -ETIMEDOUT;
> -		goto out;
> -	}
> -
> -	/* Unload any bytes sent back from the other side */
> -	recv_bytes =3D ((status & DP_AUX_CH_CTL_MESSAGE_SIZE_MASK) >>
> -		      DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT);
> -
> -	/*
> -	 * By BSpec: "Message sizes of 0 or >20 are not allowed."
> -	 * We have no idea of what happened so we return -EBUSY so
> -	 * drm layer takes care for the necessary retries.
> -	 */
> -	if (recv_bytes =3D=3D 0 || recv_bytes > 20) {
> -		drm_dbg_kms(&i915->drm,
> -			    "%s: Forbidden recv_bytes =3D %d on aux transaction\n",
> -			    intel_dp->aux.name, recv_bytes);
> -		ret =3D -EBUSY;
> -		goto out;
> -	}
> -
> -	if (recv_bytes > recv_size)
> -		recv_bytes =3D recv_size;
> -
> -	for (i =3D 0; i < recv_bytes; i +=3D 4)
> -		intel_dp_unpack_aux(intel_uncore_read(uncore, ch_data[i >> 2]),
> -				    recv + i, recv_bytes - i);
> -
> -	ret =3D recv_bytes;
> -out:
> -	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> -
> -	if (vdd)
> -		intel_pps_vdd_off_unlocked(intel_dp, false);
> -
> -	intel_pps_unlock(intel_dp, pps_wakeref);
> -	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> -
> -	if (is_tc_port)
> -		intel_tc_port_unlock(dig_port);
> -
> -	return ret;
> -}
> -
> -#define BARE_ADDRESS_SIZE	3
> -#define HEADER_SIZE		(BARE_ADDRESS_SIZE + 1)
> -
> -static void
> -intel_dp_aux_header(u8 txbuf[HEADER_SIZE],
> -		    const struct drm_dp_aux_msg *msg)
> -{
> -	txbuf[0] =3D (msg->request << 4) | ((msg->address >> 16) & 0xf);
> -	txbuf[1] =3D (msg->address >> 8) & 0xff;
> -	txbuf[2] =3D msg->address & 0xff;
> -	txbuf[3] =3D msg->size - 1;
> -}
> -
> -static u32 intel_dp_aux_xfer_flags(const struct drm_dp_aux_msg *msg)
> -{
> -	/*
> -	 * If we're trying to send the HDCP Aksv, we need to set a the Aksv
> -	 * select bit to inform the hardware to send the Aksv after our header
> -	 * since we can't access that data from software.
> -	 */
> -	if ((msg->request & ~DP_AUX_I2C_MOT) =3D=3D DP_AUX_NATIVE_WRITE &&
> -	    msg->address =3D=3D DP_AUX_HDCP_AKSV)
> -		return DP_AUX_CH_CTL_AUX_AKSV_SELECT;
> -
> -	return 0;
> -}
> -
> -static ssize_t
> -intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
> -{
> -	struct intel_dp *intel_dp =3D container_of(aux, struct intel_dp, aux);
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -	u8 txbuf[20], rxbuf[20];
> -	size_t txsize, rxsize;
> -	u32 flags =3D intel_dp_aux_xfer_flags(msg);
> -	int ret;
> -
> -	intel_dp_aux_header(txbuf, msg);
> -
> -	switch (msg->request & ~DP_AUX_I2C_MOT) {
> -	case DP_AUX_NATIVE_WRITE:
> -	case DP_AUX_I2C_WRITE:
> -	case DP_AUX_I2C_WRITE_STATUS_UPDATE:
> -		txsize =3D msg->size ? HEADER_SIZE + msg->size : BARE_ADDRESS_SIZE;
> -		rxsize =3D 2; /* 0 or 1 data bytes */
> -
> -		if (drm_WARN_ON(&i915->drm, txsize > 20))
> -			return -E2BIG;
> -
> -		drm_WARN_ON(&i915->drm, !msg->buffer !=3D !msg->size);
> -
> -		if (msg->buffer)
> -			memcpy(txbuf + HEADER_SIZE, msg->buffer, msg->size);
> -
> -		ret =3D intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> -					rxbuf, rxsize, flags);
> -		if (ret > 0) {
> -			msg->reply =3D rxbuf[0] >> 4;
> -
> -			if (ret > 1) {
> -				/* Number of bytes written in a short write. */
> -				ret =3D clamp_t(int, rxbuf[1], 0, msg->size);
> -			} else {
> -				/* Return payload size. */
> -				ret =3D msg->size;
> -			}
> -		}
> -		break;
> -
> -	case DP_AUX_NATIVE_READ:
> -	case DP_AUX_I2C_READ:
> -		txsize =3D msg->size ? HEADER_SIZE : BARE_ADDRESS_SIZE;
> -		rxsize =3D msg->size + 1;
> -
> -		if (drm_WARN_ON(&i915->drm, rxsize > 20))
> -			return -E2BIG;
> -
> -		ret =3D intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> -					rxbuf, rxsize, flags);
> -		if (ret > 0) {
> -			msg->reply =3D rxbuf[0] >> 4;
> -			/*
> -			 * Assume happy day, and copy the data. The caller is
> -			 * expected to check msg->reply before touching it.
> -			 *
> -			 * Return payload size.
> -			 */
> -			ret--;
> -			memcpy(msg->buffer, rxbuf + 1, ret);
> -		}
> -		break;
> -
> -	default:
> -		ret =3D -EINVAL;
> -		break;
> -	}
> -
> -	return ret;
> -}
> -
> -
> -static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_D:
> -		return DP_AUX_CH_CTL(aux_ch);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_CTL(AUX_CH_B);
> -	}
> -}
> -
> -static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_D:
> -		return DP_AUX_CH_DATA(aux_ch, index);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_DATA(AUX_CH_B, index);
> -	}
> -}
> -
> -static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -		return DP_AUX_CH_CTL(aux_ch);
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_D:
> -		return PCH_DP_AUX_CH_CTL(aux_ch);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_CTL(AUX_CH_A);
> -	}
> -}
> -
> -static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -		return DP_AUX_CH_DATA(aux_ch, index);
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_D:
> -		return PCH_DP_AUX_CH_DATA(aux_ch, index);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_DATA(AUX_CH_A, index);
> -	}
> -}
> -
> -static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_D:
> -	case AUX_CH_E:
> -	case AUX_CH_F:
> -		return DP_AUX_CH_CTL(aux_ch);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_CTL(AUX_CH_A);
> -	}
> -}
> -
> -static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_D:
> -	case AUX_CH_E:
> -	case AUX_CH_F:
> -		return DP_AUX_CH_DATA(aux_ch, index);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_DATA(AUX_CH_A, index);
> -	}
> -}
> -
> -static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_USBC1:
> -	case AUX_CH_USBC2:
> -	case AUX_CH_USBC3:
> -	case AUX_CH_USBC4:
> -	case AUX_CH_USBC5:
> -	case AUX_CH_USBC6:
> -		return DP_AUX_CH_CTL(aux_ch);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_CTL(AUX_CH_A);
> -	}
> -}
> -
> -static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	switch (aux_ch) {
> -	case AUX_CH_A:
> -	case AUX_CH_B:
> -	case AUX_CH_C:
> -	case AUX_CH_USBC1:
> -	case AUX_CH_USBC2:
> -	case AUX_CH_USBC3:
> -	case AUX_CH_USBC4:
> -	case AUX_CH_USBC5:
> -	case AUX_CH_USBC6:
> -		return DP_AUX_CH_DATA(aux_ch, index);
> -	default:
> -		MISSING_CASE(aux_ch);
> -		return DP_AUX_CH_DATA(AUX_CH_A, index);
> -	}
> -}
> -
> -static void
> -intel_dp_aux_fini(struct intel_dp *intel_dp)
> -{
> -	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
> -		cpu_latency_qos_remove_request(&intel_dp->pm_qos);
> -
> -	kfree(intel_dp->aux.name);
> -}
> -
> -static void
> -intel_dp_aux_init(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct intel_encoder *encoder =3D &dig_port->base;
> -	enum aux_ch aux_ch =3D dig_port->aux_ch;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		intel_dp->aux_ch_ctl_reg =3D tgl_aux_ctl_reg;
> -		intel_dp->aux_ch_data_reg =3D tgl_aux_data_reg;
> -	} else if (INTEL_GEN(dev_priv) >=3D 9) {
> -		intel_dp->aux_ch_ctl_reg =3D skl_aux_ctl_reg;
> -		intel_dp->aux_ch_data_reg =3D skl_aux_data_reg;
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		intel_dp->aux_ch_ctl_reg =3D ilk_aux_ctl_reg;
> -		intel_dp->aux_ch_data_reg =3D ilk_aux_data_reg;
> -	} else {
> -		intel_dp->aux_ch_ctl_reg =3D g4x_aux_ctl_reg;
> -		intel_dp->aux_ch_data_reg =3D g4x_aux_data_reg;
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		intel_dp->get_aux_clock_divider =3D skl_get_aux_clock_divider;
> -	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -		intel_dp->get_aux_clock_divider =3D hsw_get_aux_clock_divider;
> -	else if (HAS_PCH_SPLIT(dev_priv))
> -		intel_dp->get_aux_clock_divider =3D ilk_get_aux_clock_divider;
> -	else
> -		intel_dp->get_aux_clock_divider =3D g4x_get_aux_clock_divider;
> -
> -	if (INTEL_GEN(dev_priv) >=3D 9)
> -		intel_dp->get_aux_send_ctl =3D skl_get_aux_send_ctl;
> -	else
> -		intel_dp->get_aux_send_ctl =3D g4x_get_aux_send_ctl;
> -
> -	drm_dp_aux_init(&intel_dp->aux);
> -
> -	/* Failure to allocate our preferred name is not critical */
> -	if (INTEL_GEN(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
> -		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
> -					       aux_ch - AUX_CH_USBC1 + '1',
> -					       encoder->base.name);
> -	else
> -		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
> -					       aux_ch_name(aux_ch),
> -					       encoder->base.name);
> -
> -	intel_dp->aux.transfer =3D intel_dp_aux_transfer;
> -	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> -}
> -
>  bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp)
>  {
>  	int max_rate =3D intel_dp->source_rates[intel_dp->num_source_rates - 1];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 40e70531296c..d80839139bfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -75,7 +75,6 @@ void intel_dp_mst_resume(struct drm_i915_private *dev_p=
riv);
>  int intel_dp_max_link_rate(struct intel_dp *intel_dp);
>  int intel_dp_max_lane_count(struct intel_dp *intel_dp);
>  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
> -u32 intel_dp_pack_aux(const u8 *src, int src_bytes);
>  =

>  void intel_edp_drrs_enable(struct intel_dp *intel_dp,
>  			   const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> new file mode 100644
> index 000000000000..c7c82a6cd63c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -0,0 +1,692 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation

2021?!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> + */
> +
> +#include "i915_drv.h"
> +#include "i915_trace.h"
> +#include "intel_display_types.h"
> +#include "intel_dp_aux.h"
> +#include "intel_pps.h"
> +#include "intel_tc.h"
> +
> +u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
> +{
> +	int i;
> +	u32 v =3D 0;
> +
> +	if (src_bytes > 4)
> +		src_bytes =3D 4;
> +	for (i =3D 0; i < src_bytes; i++)
> +		v |=3D ((u32)src[i]) << ((3 - i) * 8);
> +	return v;
> +}
> +
> +static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
> +{
> +	int i;
> +
> +	if (dst_bytes > 4)
> +		dst_bytes =3D 4;
> +	for (i =3D 0; i < dst_bytes; i++)
> +		dst[i] =3D src >> ((3 - i) * 8);
> +}
> +
> +static u32
> +intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> +	const unsigned int timeout_ms =3D 10;
> +	u32 status;
> +	bool done;
> +
> +#define C (((status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl)=
) & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> +	done =3D wait_event_timeout(i915->gmbus_wait_queue, C,
> +				  msecs_to_jiffies_timeout(timeout_ms));
> +
> +	/* just trace the final value */
> +	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +
> +	if (!done)
> +		drm_err(&i915->drm,
> +			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> +			intel_dp->aux.name, timeout_ms, status);
> +#undef C
> +
> +	return status;
> +}
> +
> +static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +
> +	if (index)
> +		return 0;
> +
> +	/*
> +	 * The clock divider is based off the hrawclk, and would like to run at
> +	 * 2MHz.  So, take the hrawclk value and divide by 2000 and use that
> +	 */
> +	return DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)->rawclk_freq, 2000);
> +}
> +
> +static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	u32 freq;
> +
> +	if (index)
> +		return 0;
> +
> +	/*
> +	 * The clock divider is based off the cdclk or PCH rawclk, and would
> +	 * like to run at 2MHz.  So, take the cdclk or PCH rawclk value and
> +	 * divide by 2000 and use that
> +	 */
> +	if (dig_port->aux_ch =3D=3D AUX_CH_A)
> +		freq =3D dev_priv->cdclk.hw.cdclk;
> +	else
> +		freq =3D RUNTIME_INFO(dev_priv)->rawclk_freq;
> +	return DIV_ROUND_CLOSEST(freq, 2000);
> +}
> +
> +static u32 hsw_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +
> +	if (dig_port->aux_ch !=3D AUX_CH_A && HAS_PCH_LPT_H(dev_priv)) {
> +		/* Workaround for non-ULT HSW */
> +		switch (index) {
> +		case 0: return 63;
> +		case 1: return 72;
> +		default: return 0;
> +		}
> +	}
> +
> +	return ilk_get_aux_clock_divider(intel_dp, index);
> +}
> +
> +static u32 skl_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
> +{
> +	/*
> +	 * SKL doesn't need us to program the AUX clock divider (Hardware will
> +	 * derive the clock from CDCLK automatically). We still implement the
> +	 * get_aux_clock_divider vfunc to plug-in into the existing code.
> +	 */
> +	return index ? 0 : 1;
> +}
> +
> +static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
> +				int send_bytes,
> +				u32 aux_clock_divider)
> +{
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *dev_priv =3D
> +			to_i915(dig_port->base.base.dev);
> +	u32 precharge, timeout;
> +
> +	if (IS_GEN(dev_priv, 6))
> +		precharge =3D 3;
> +	else
> +		precharge =3D 5;
> +
> +	if (IS_BROADWELL(dev_priv))
> +		timeout =3D DP_AUX_CH_CTL_TIME_OUT_600us;
> +	else
> +		timeout =3D DP_AUX_CH_CTL_TIME_OUT_400us;
> +
> +	return DP_AUX_CH_CTL_SEND_BUSY |
> +	       DP_AUX_CH_CTL_DONE |
> +	       DP_AUX_CH_CTL_INTERRUPT |
> +	       DP_AUX_CH_CTL_TIME_OUT_ERROR |
> +	       timeout |
> +	       DP_AUX_CH_CTL_RECEIVE_ERROR |
> +	       (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
> +	       (precharge << DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT) |
> +	       (aux_clock_divider << DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT);
> +}
> +
> +static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
> +				int send_bytes,
> +				u32 unused)
> +{
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *i915 =3D
> +			to_i915(dig_port->base.base.dev);
> +	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> +	u32 ret;
> +
> +	ret =3D DP_AUX_CH_CTL_SEND_BUSY |
> +	      DP_AUX_CH_CTL_DONE |
> +	      DP_AUX_CH_CTL_INTERRUPT |
> +	      DP_AUX_CH_CTL_TIME_OUT_ERROR |
> +	      DP_AUX_CH_CTL_TIME_OUT_MAX |
> +	      DP_AUX_CH_CTL_RECEIVE_ERROR |
> +	      (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
> +	      DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(32) |
> +	      DP_AUX_CH_CTL_SYNC_PULSE_SKL(32);
> +
> +	if (intel_phy_is_tc(i915, phy) &&
> +	    dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT)
> +		ret |=3D DP_AUX_CH_CTL_TBT_IO;
> +
> +	return ret;
> +}
> +
> +static int
> +intel_dp_aux_xfer(struct intel_dp *intel_dp,
> +		  const u8 *send, int send_bytes,
> +		  u8 *recv, int recv_size,
> +		  u32 aux_send_ctl_flags)
> +{
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *i915 =3D
> +			to_i915(dig_port->base.base.dev);
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> +	bool is_tc_port =3D intel_phy_is_tc(i915, phy);
> +	i915_reg_t ch_ctl, ch_data[5];
> +	u32 aux_clock_divider;
> +	enum intel_display_power_domain aux_domain;
> +	intel_wakeref_t aux_wakeref;
> +	intel_wakeref_t pps_wakeref;
> +	int i, ret, recv_bytes;
> +	int try, clock =3D 0;
> +	u32 status;
> +	bool vdd;
> +
> +	ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> +	for (i =3D 0; i < ARRAY_SIZE(ch_data); i++)
> +		ch_data[i] =3D intel_dp->aux_ch_data_reg(intel_dp, i);
> +
> +	if (is_tc_port)
> +		intel_tc_port_lock(dig_port);
> +
> +	aux_domain =3D intel_aux_power_domain(dig_port);
> +
> +	aux_wakeref =3D intel_display_power_get(i915, aux_domain);
> +	pps_wakeref =3D intel_pps_lock(intel_dp);
> +
> +	/*
> +	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> +	 * In such cases we want to leave VDD enabled and it's up to upper laye=
rs
> +	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> +	 * ourselves.
> +	 */
> +	vdd =3D intel_pps_vdd_on_unlocked(intel_dp);
> +
> +	/*
> +	 * dp aux is extremely sensitive to irq latency, hence request the
> +	 * lowest possible wakeup latency and so prevent the cpu from going into
> +	 * deep sleep states.
> +	 */
> +	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
> +
> +	intel_pps_check_power_unlocked(intel_dp);
> +
> +	/* Try to wait for any previous AUX channel activity */
> +	for (try =3D 0; try < 3; try++) {
> +		status =3D intel_uncore_read_notrace(uncore, ch_ctl);
> +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> +			break;
> +		msleep(1);
> +	}
> +	/* just trace the final value */
> +	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +
> +	if (try =3D=3D 3) {
> +		const u32 status =3D intel_uncore_read(uncore, ch_ctl);
> +
> +		if (status !=3D intel_dp->aux_busy_last_status) {
> +			drm_WARN(&i915->drm, 1,
> +				 "%s: not started (status 0x%08x)\n",
> +				 intel_dp->aux.name, status);
> +			intel_dp->aux_busy_last_status =3D status;
> +		}
> +
> +		ret =3D -EBUSY;
> +		goto out;
> +	}
> +
> +	/* Only 5 data registers! */
> +	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
> +		ret =3D -E2BIG;
> +		goto out;
> +	}
> +
> +	while ((aux_clock_divider =3D intel_dp->get_aux_clock_divider(intel_dp,=
 clock++))) {
> +		u32 send_ctl =3D intel_dp->get_aux_send_ctl(intel_dp,
> +							  send_bytes,
> +							  aux_clock_divider);
> +
> +		send_ctl |=3D aux_send_ctl_flags;
> +
> +		/* Must try at least 3 times according to DP spec */
> +		for (try =3D 0; try < 5; try++) {
> +			/* Load the send data into the aux channel data registers */
> +			for (i =3D 0; i < send_bytes; i +=3D 4)
> +				intel_uncore_write(uncore,
> +						   ch_data[i >> 2],
> +						   intel_dp_pack_aux(send + i,
> +								     send_bytes - i));
> +
> +			/* Send the command and wait for it to complete */
> +			intel_uncore_write(uncore, ch_ctl, send_ctl);
> +
> +			status =3D intel_dp_aux_wait_done(intel_dp);
> +
> +			/* Clear done status and any errors */
> +			intel_uncore_write(uncore,
> +					   ch_ctl,
> +					   status |
> +					   DP_AUX_CH_CTL_DONE |
> +					   DP_AUX_CH_CTL_TIME_OUT_ERROR |
> +					   DP_AUX_CH_CTL_RECEIVE_ERROR);
> +
> +			/*
> +			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
> +			 *   400us delay required for errors and timeouts
> +			 *   Timeout errors from the HW already meet this
> +			 *   requirement so skip to next iteration
> +			 */
> +			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> +				continue;
> +
> +			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> +				usleep_range(400, 500);
> +				continue;
> +			}
> +			if (status & DP_AUX_CH_CTL_DONE)
> +				goto done;
> +		}
> +	}
> +
> +	if ((status & DP_AUX_CH_CTL_DONE) =3D=3D 0) {
> +		drm_err(&i915->drm, "%s: not done (status 0x%08x)\n",
> +			intel_dp->aux.name, status);
> +		ret =3D -EBUSY;
> +		goto out;
> +	}
> +
> +done:
> +	/*
> +	 * Check for timeout or receive error. Timeouts occur when the sink is
> +	 * not connected.
> +	 */
> +	if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> +		drm_err(&i915->drm, "%s: receive error (status 0x%08x)\n",
> +			intel_dp->aux.name, status);
> +		ret =3D -EIO;
> +		goto out;
> +	}
> +
> +	/*
> +	 * Timeouts occur when the device isn't connected, so they're "normal"
> +	 * -- don't fill the kernel log with these
> +	 */
> +	if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
> +		drm_dbg_kms(&i915->drm, "%s: timeout (status 0x%08x)\n",
> +			    intel_dp->aux.name, status);
> +		ret =3D -ETIMEDOUT;
> +		goto out;
> +	}
> +
> +	/* Unload any bytes sent back from the other side */
> +	recv_bytes =3D ((status & DP_AUX_CH_CTL_MESSAGE_SIZE_MASK) >>
> +		      DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT);
> +
> +	/*
> +	 * By BSpec: "Message sizes of 0 or >20 are not allowed."
> +	 * We have no idea of what happened so we return -EBUSY so
> +	 * drm layer takes care for the necessary retries.
> +	 */
> +	if (recv_bytes =3D=3D 0 || recv_bytes > 20) {
> +		drm_dbg_kms(&i915->drm,
> +			    "%s: Forbidden recv_bytes =3D %d on aux transaction\n",
> +			    intel_dp->aux.name, recv_bytes);
> +		ret =3D -EBUSY;
> +		goto out;
> +	}
> +
> +	if (recv_bytes > recv_size)
> +		recv_bytes =3D recv_size;
> +
> +	for (i =3D 0; i < recv_bytes; i +=3D 4)
> +		intel_dp_unpack_aux(intel_uncore_read(uncore, ch_data[i >> 2]),
> +				    recv + i, recv_bytes - i);
> +
> +	ret =3D recv_bytes;
> +out:
> +	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> +
> +	if (vdd)
> +		intel_pps_vdd_off_unlocked(intel_dp, false);
> +
> +	intel_pps_unlock(intel_dp, pps_wakeref);
> +	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> +
> +	if (is_tc_port)
> +		intel_tc_port_unlock(dig_port);
> +
> +	return ret;
> +}
> +
> +#define BARE_ADDRESS_SIZE	3
> +#define HEADER_SIZE		(BARE_ADDRESS_SIZE + 1)
> +
> +static void
> +intel_dp_aux_header(u8 txbuf[HEADER_SIZE],
> +		    const struct drm_dp_aux_msg *msg)
> +{
> +	txbuf[0] =3D (msg->request << 4) | ((msg->address >> 16) & 0xf);
> +	txbuf[1] =3D (msg->address >> 8) & 0xff;
> +	txbuf[2] =3D msg->address & 0xff;
> +	txbuf[3] =3D msg->size - 1;
> +}
> +
> +static u32 intel_dp_aux_xfer_flags(const struct drm_dp_aux_msg *msg)
> +{
> +	/*
> +	 * If we're trying to send the HDCP Aksv, we need to set a the Aksv
> +	 * select bit to inform the hardware to send the Aksv after our header
> +	 * since we can't access that data from software.
> +	 */
> +	if ((msg->request & ~DP_AUX_I2C_MOT) =3D=3D DP_AUX_NATIVE_WRITE &&
> +	    msg->address =3D=3D DP_AUX_HDCP_AKSV)
> +		return DP_AUX_CH_CTL_AUX_AKSV_SELECT;
> +
> +	return 0;
> +}
> +
> +static ssize_t
> +intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
> +{
> +	struct intel_dp *intel_dp =3D container_of(aux, struct intel_dp, aux);
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	u8 txbuf[20], rxbuf[20];
> +	size_t txsize, rxsize;
> +	u32 flags =3D intel_dp_aux_xfer_flags(msg);
> +	int ret;
> +
> +	intel_dp_aux_header(txbuf, msg);
> +
> +	switch (msg->request & ~DP_AUX_I2C_MOT) {
> +	case DP_AUX_NATIVE_WRITE:
> +	case DP_AUX_I2C_WRITE:
> +	case DP_AUX_I2C_WRITE_STATUS_UPDATE:
> +		txsize =3D msg->size ? HEADER_SIZE + msg->size : BARE_ADDRESS_SIZE;
> +		rxsize =3D 2; /* 0 or 1 data bytes */
> +
> +		if (drm_WARN_ON(&i915->drm, txsize > 20))
> +			return -E2BIG;
> +
> +		drm_WARN_ON(&i915->drm, !msg->buffer !=3D !msg->size);
> +
> +		if (msg->buffer)
> +			memcpy(txbuf + HEADER_SIZE, msg->buffer, msg->size);
> +
> +		ret =3D intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> +					rxbuf, rxsize, flags);
> +		if (ret > 0) {
> +			msg->reply =3D rxbuf[0] >> 4;
> +
> +			if (ret > 1) {
> +				/* Number of bytes written in a short write. */
> +				ret =3D clamp_t(int, rxbuf[1], 0, msg->size);
> +			} else {
> +				/* Return payload size. */
> +				ret =3D msg->size;
> +			}
> +		}
> +		break;
> +
> +	case DP_AUX_NATIVE_READ:
> +	case DP_AUX_I2C_READ:
> +		txsize =3D msg->size ? HEADER_SIZE : BARE_ADDRESS_SIZE;
> +		rxsize =3D msg->size + 1;
> +
> +		if (drm_WARN_ON(&i915->drm, rxsize > 20))
> +			return -E2BIG;
> +
> +		ret =3D intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> +					rxbuf, rxsize, flags);
> +		if (ret > 0) {
> +			msg->reply =3D rxbuf[0] >> 4;
> +			/*
> +			 * Assume happy day, and copy the data. The caller is
> +			 * expected to check msg->reply before touching it.
> +			 *
> +			 * Return payload size.
> +			 */
> +			ret--;
> +			memcpy(msg->buffer, rxbuf + 1, ret);
> +		}
> +		break;
> +
> +	default:
> +		ret =3D -EINVAL;
> +		break;
> +	}
> +
> +	return ret;
> +}
> +
> +static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +		return DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_CTL(AUX_CH_B);
> +	}
> +}
> +
> +static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +		return DP_AUX_CH_DATA(aux_ch, index);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_DATA(AUX_CH_B, index);
> +	}
> +}
> +
> +static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +		return DP_AUX_CH_CTL(aux_ch);
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +		return PCH_DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_CTL(AUX_CH_A);
> +	}
> +}
> +
> +static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +		return DP_AUX_CH_DATA(aux_ch, index);
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +		return PCH_DP_AUX_CH_DATA(aux_ch, index);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_DATA(AUX_CH_A, index);
> +	}
> +}
> +
> +static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +	case AUX_CH_E:
> +	case AUX_CH_F:
> +		return DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_CTL(AUX_CH_A);
> +	}
> +}
> +
> +static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +	case AUX_CH_E:
> +	case AUX_CH_F:
> +		return DP_AUX_CH_DATA(aux_ch, index);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_DATA(AUX_CH_A, index);
> +	}
> +}
> +
> +static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_USBC1:
> +	case AUX_CH_USBC2:
> +	case AUX_CH_USBC3:
> +	case AUX_CH_USBC4:
> +	case AUX_CH_USBC5:
> +	case AUX_CH_USBC6:
> +		return DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_CTL(AUX_CH_A);
> +	}
> +}
> +
> +static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_USBC1:
> +	case AUX_CH_USBC2:
> +	case AUX_CH_USBC3:
> +	case AUX_CH_USBC4:
> +	case AUX_CH_USBC5:
> +	case AUX_CH_USBC6:
> +		return DP_AUX_CH_DATA(aux_ch, index);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return DP_AUX_CH_DATA(AUX_CH_A, index);
> +	}
> +}
> +
> +void intel_dp_aux_fini(struct intel_dp *intel_dp)
> +{
> +	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
> +		cpu_latency_qos_remove_request(&intel_dp->pm_qos);
> +
> +	kfree(intel_dp->aux.name);
> +}
> +
> +void intel_dp_aux_init(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	struct intel_encoder *encoder =3D &dig_port->base;
> +	enum aux_ch aux_ch =3D dig_port->aux_ch;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12) {
> +		intel_dp->aux_ch_ctl_reg =3D tgl_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg =3D tgl_aux_data_reg;
> +	} else if (INTEL_GEN(dev_priv) >=3D 9) {
> +		intel_dp->aux_ch_ctl_reg =3D skl_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg =3D skl_aux_data_reg;
> +	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +		intel_dp->aux_ch_ctl_reg =3D ilk_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg =3D ilk_aux_data_reg;
> +	} else {
> +		intel_dp->aux_ch_ctl_reg =3D g4x_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg =3D g4x_aux_data_reg;
> +	}
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		intel_dp->get_aux_clock_divider =3D skl_get_aux_clock_divider;
> +	else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> +		intel_dp->get_aux_clock_divider =3D hsw_get_aux_clock_divider;
> +	else if (HAS_PCH_SPLIT(dev_priv))
> +		intel_dp->get_aux_clock_divider =3D ilk_get_aux_clock_divider;
> +	else
> +		intel_dp->get_aux_clock_divider =3D g4x_get_aux_clock_divider;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		intel_dp->get_aux_send_ctl =3D skl_get_aux_send_ctl;
> +	else
> +		intel_dp->get_aux_send_ctl =3D g4x_get_aux_send_ctl;
> +
> +	drm_dp_aux_init(&intel_dp->aux);
> +
> +	/* Failure to allocate our preferred name is not critical */
> +	if (INTEL_GEN(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
> +		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
> +					       aux_ch - AUX_CH_USBC1 + '1',
> +					       encoder->base.name);
> +	else
> +		intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
> +					       aux_ch_name(aux_ch),
> +					       encoder->base.name);
> +
> +	intel_dp->aux.transfer =3D intel_dp_aux_transfer;
> +	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.h
> new file mode 100644
> index 000000000000..cea58dd86c49
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DP_AUX_H__
> +#define __INTEL_DP_AUX_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_dp;
> +
> +u32 intel_dp_pack_aux(const u8 *src, int src_bytes);
> +
> +void intel_dp_aux_fini(struct intel_dp *intel_dp);
> +void intel_dp_aux_init(struct intel_dp *intel_dp);
> +
> +#endif /* __INTEL_DP_AUX_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 1e6c1fa59d4a..72d4c61e142e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -28,9 +28,10 @@
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
>  #include "intel_display_types.h"
> +#include "intel_dp_aux.h"
> +#include "intel_hdmi.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> -#include "intel_hdmi.h"
>  =

>  /**
>   * DOC: Panel Self Refresh (PSR/SRD)
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
