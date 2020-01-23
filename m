Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F95B146AEF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61936FD00;
	Thu, 23 Jan 2020 14:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B421F6FD00
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:13:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:13:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216269306"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Jan 2020 06:13:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jan 2020 16:13:41 +0200
Date: Thu, 23 Jan 2020 16:13:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200123141341.GT13686@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
 <20200123140004.14136-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123140004.14136-4-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH RESEND 4/6] drm/i915/gmbus: use intel de
 functions for forcewake register access
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

On Thu, Jan 23, 2020 at 04:00:02PM +0200, Jani Nikula wrote:
> Move away from I915_READ_FW() and I915_WRITE_FW() in display code, and
> switch to using intel_de_read_fw() and intel_de_write_fw(),
> respectively. Also switch I915_READ() and I915_WRITE() over in this file
> while at it.
> =

> No functional changes.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 74 ++++++++++------------
>  1 file changed, 35 insertions(+), 39 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm=
/i915/display/intel_gmbus.c
> index 3d4d19ac1d14..508308555dc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
<snip>
> @@ -404,15 +406,12 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_=
priv,
>  			len++;
>  		}
>  		size =3D len % 256 + 256;
> -		I915_WRITE_FW(GMBUS0, gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
> +		intel_de_write_fw(dev_priv, GMBUS0,
> +				  gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
>  	}
>  =

> -	I915_WRITE_FW(GMBUS1,
> -		      gmbus1_index |
> -		      GMBUS_CYCLE_WAIT |
> -		      (size << GMBUS_BYTE_COUNT_SHIFT) |
> -		      (addr << GMBUS_SLAVE_ADDR_SHIFT) |
> -		      GMBUS_SLAVE_READ | GMBUS_SW_RDY);
> +	intel_de_write_fw(dev_priv, GMBUS1,
> +			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) =
| (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);

This one turned a bit ugly.

>  	while (len) {
>  		int ret;
>  		u32 val, loop =3D 0;
> @@ -421,7 +420,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_pr=
iv,
>  		if (ret)
>  			return ret;
>  =

> -		val =3D I915_READ_FW(GMBUS3);
> +		val =3D intel_de_read_fw(dev_priv, GMBUS3);
>  		do {
>  			if (extra_byte_added && len =3D=3D 1)
>  				break;
> @@ -432,7 +431,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *dev_pr=
iv,
>  =

>  		if (burst_read && len =3D=3D size - 4)
>  			/* Reset the override bit */
> -			I915_WRITE_FW(GMBUS0, gmbus0_reg);
> +			intel_de_write_fw(dev_priv, GMBUS0, gmbus0_reg);
>  	}
>  =

>  	return 0;
> @@ -489,12 +488,9 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_=
priv,
>  		len -=3D 1;
>  	}
>  =

> -	I915_WRITE_FW(GMBUS3, val);
> -	I915_WRITE_FW(GMBUS1,
> -		      gmbus1_index | GMBUS_CYCLE_WAIT |
> -		      (chunk_size << GMBUS_BYTE_COUNT_SHIFT) |
> -		      (addr << GMBUS_SLAVE_ADDR_SHIFT) |
> -		      GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
> +	intel_de_write_fw(dev_priv, GMBUS3, val);
> +	intel_de_write_fw(dev_priv, GMBUS1,
> +			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_S=
HIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY=
);

ditto

>  	while (len) {
>  		int ret;
>  =

> @@ -503,7 +499,7 @@ gmbus_xfer_write_chunk(struct drm_i915_private *dev_p=
riv,
>  			val |=3D *buf++ << (8 * loop);
>  		} while (--len && ++loop < 4);
>  =

> -		I915_WRITE_FW(GMBUS3, val);
> +		intel_de_write_fw(dev_priv, GMBUS3, val);
>  =

>  		ret =3D gmbus_wait(dev_priv, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
>  		if (ret)
> @@ -568,7 +564,7 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, s=
truct i2c_msg *msgs,
>  =

>  	/* GMBUS5 holds 16-bit index */
>  	if (gmbus5)
> -		I915_WRITE_FW(GMBUS5, gmbus5);
> +		intel_de_write_fw(dev_priv, GMBUS5, gmbus5);
>  =

>  	if (msgs[1].flags & I2C_M_RD)
>  		ret =3D gmbus_xfer_read(dev_priv, &msgs[1], gmbus0_reg,
> @@ -578,7 +574,7 @@ gmbus_index_xfer(struct drm_i915_private *dev_priv, s=
truct i2c_msg *msgs,
>  =

>  	/* Clear GMBUS5 after each index transfer */
>  	if (gmbus5)
> -		I915_WRITE_FW(GMBUS5, 0);
> +		intel_de_write_fw(dev_priv, GMBUS5, 0);
>  =

>  	return ret;
>  }
> @@ -601,7 +597,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c=
_msg *msgs, int num,
>  		pch_gmbus_clock_gating(dev_priv, false);
>  =

>  retry:
> -	I915_WRITE_FW(GMBUS0, gmbus0_source | bus->reg0);
> +	intel_de_write_fw(dev_priv, GMBUS0, gmbus0_source | bus->reg0);
>  =

>  	for (; i < num; i +=3D inc) {
>  		inc =3D 1;
> @@ -629,7 +625,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c=
_msg *msgs, int num,
>  	 * a STOP on the very first cycle. To simplify the code we
>  	 * unconditionally generate the STOP condition with an additional gmbus
>  	 * cycle. */
> -	I915_WRITE_FW(GMBUS1, GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
> +	intel_de_write_fw(dev_priv, GMBUS1, GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
>  =

>  	/* Mark the GMBUS interface as disabled after waiting for idle.
>  	 * We will re-enable it at the start of the next xfer,
> @@ -640,7 +636,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c=
_msg *msgs, int num,
>  			 adapter->name);
>  		ret =3D -ETIMEDOUT;
>  	}
> -	I915_WRITE_FW(GMBUS0, 0);
> +	intel_de_write_fw(dev_priv, GMBUS0, 0);
>  	ret =3D ret ?: i;
>  	goto out;
>  =

> @@ -669,9 +665,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c=
_msg *msgs, int num,
>  	 * of resetting the GMBUS controller and so clearing the
>  	 * BUS_ERROR raised by the slave's NAK.
>  	 */
> -	I915_WRITE_FW(GMBUS1, GMBUS_SW_CLR_INT);
> -	I915_WRITE_FW(GMBUS1, 0);
> -	I915_WRITE_FW(GMBUS0, 0);
> +	intel_de_write_fw(dev_priv, GMBUS1, GMBUS_SW_CLR_INT);
> +	intel_de_write_fw(dev_priv, GMBUS1, 0);
> +	intel_de_write_fw(dev_priv, GMBUS0, 0);
>  =

>  	DRM_DEBUG_KMS("GMBUS [%s] NAK for addr: %04x %c(%d)\n",
>  			 adapter->name, msgs[i].addr,
> @@ -694,7 +690,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c=
_msg *msgs, int num,
>  timeout:
>  	DRM_DEBUG_KMS("GMBUS [%s] timed out, falling back to bit banging on pin=
 %d\n",
>  		      bus->adapter.name, bus->reg0 & 0xff);
> -	I915_WRITE_FW(GMBUS0, 0);
> +	intel_de_write_fw(dev_priv, GMBUS0, 0);
>  =

>  	/*
>  	 * Hardware may not support GMBUS over these pins? Try GPIO bitbanging
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
