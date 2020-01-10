Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ED1136B01
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 11:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1515A6E9B1;
	Fri, 10 Jan 2020 10:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311FC6E9AF;
 Fri, 10 Jan 2020 10:24:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 02:24:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,416,1571727600"; d="scan'208";a="223700705"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 02:24:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@linux.ie, daniel@ffwll.ch,
 alexander.deucher@amd.com, christian.koenig@amd.com, David1.Zhou@amd.com,
 maarten.lankhorst@linux.intel.com, patrik.r.jakobsson@gmail.com,
 robdclark@gmail.com, sean@poorly.run, benjamin.gaignard@linaro.org,
 vincent.abriou@st.com, yannick.fertre@st.com, philippe.cornu@st.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, eric@anholt.net,
 rodrigosiqueiramelo@gmail.com, hamohammed.sa@gmail.com,
 linux-graphics-maintainer@vmware.com, thellstrom@vmware.com,
 bskeggs@redhat.com, harry.wentland@amd.com, sunpeng.li@amd.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com
In-Reply-To: <20200110092127.27847-2-tzimmermann@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200110092127.27847-1-tzimmermann@suse.de>
 <20200110092127.27847-2-tzimmermann@suse.de>
Date: Fri, 10 Jan 2020 12:24:06 +0200
Message-ID: <87muavobi1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/23] drm: Add get_scanout_position() to
 struct drm_crtc_helper_funcs
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, nouveau@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jan 2020, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> The new callback get_scanout_position() reads the current location of
> the scanout process. The operation is currentyl located in struct
> drm_driver, but really belongs to the CRTC. Drivers will be converted
> in separate patches.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_vblank.c             | 24 ++++++++----
>  include/drm/drm_drv.h                    |  7 +---
>  include/drm/drm_modeset_helper_vtables.h | 47 ++++++++++++++++++++++++
>  3 files changed, 65 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 1659b13b178c..c12f0b333e14 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -30,6 +30,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_framebuffer.h>
> +#include <drm/drm_modeset_helper_vtables.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
>  
> @@ -590,7 +591,7 @@ EXPORT_SYMBOL(drm_calc_timestamping_constants);
>   * Implements calculation of exact vblank timestamps from given drm_display_mode
>   * timings and current video scanout position of a CRTC. This can be directly
>   * used as the &drm_driver.get_vblank_timestamp implementation of a kms driver
> - * if &drm_driver.get_scanout_position is implemented.
> + * if &drm_crtc_helper_funcs.get_scanout_position is implemented.
>   *
>   * The current implementation only handles standard video modes. For double scan
>   * and interlaced modes the driver is supposed to adjust the hardware mode
> @@ -632,8 +633,9 @@ bool drm_calc_vbltimestamp_from_scanoutpos(struct drm_device *dev,
>  	}
>  
>  	/* Scanout position query not supported? Should not happen. */
> -	if (!dev->driver->get_scanout_position) {
> -		DRM_ERROR("Called from driver w/o get_scanout_position()!?\n");
> +	if (!dev->driver->get_scanout_position ||
> +	    !crtc->helper_private->get_scanout_position) {

ITYM s/||/&&/

BR,
Jani.


> +		DRM_ERROR("Called from CRTC w/o get_scanout_position()!?\n");
>  		return false;
>  	}
>  
> @@ -664,11 +666,17 @@ bool drm_calc_vbltimestamp_from_scanoutpos(struct drm_device *dev,
>  		 * Get vertical and horizontal scanout position vpos, hpos,
>  		 * and bounding timestamps stime, etime, pre/post query.
>  		 */
> -		vbl_status = dev->driver->get_scanout_position(dev, pipe,
> -							       in_vblank_irq,
> -							       &vpos, &hpos,
> -							       &stime, &etime,
> -							       mode);
> +		if (crtc->helper_private->get_scanout_position) {
> +			vbl_status =
> +				crtc->helper_private->get_scanout_position(
> +					crtc, in_vblank_irq, &vpos, &hpos,
> +					&stime, &etime, mode);
> +		} else {
> +			vbl_status =
> +				dev->driver->get_scanout_position(
> +					dev, pipe, in_vblank_irq, &vpos,
> +					&hpos, &stime, &etime, mode);
> +		}
>  
>  		/* Return as no-op if scanout query unsupported or failed. */
>  		if (!vbl_status) {
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index cf13470810a5..d0049e5786fc 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -362,11 +362,8 @@ struct drm_driver {
>  	 * True on success, false if a reliable scanout position counter could
>  	 * not be read out.
>  	 *
> -	 * FIXME:
> -	 *
> -	 * Since this is a helper to implement @get_vblank_timestamp, we should
> -	 * move it to &struct drm_crtc_helper_funcs, like all the other
> -	 * helper-internal hooks.
> +	 * This is deprecated and should not be used by new drivers.
> +	 * Use &drm_crtc_helper_funcs.get_scanout_position instead.
>  	 */
>  	bool (*get_scanout_position) (struct drm_device *dev, unsigned int pipe,
>  				      bool in_vblank_irq, int *vpos, int *hpos,
> diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
> index 5a87f1bd7a3f..e398512bfd5f 100644
> --- a/include/drm/drm_modeset_helper_vtables.h
> +++ b/include/drm/drm_modeset_helper_vtables.h
> @@ -450,6 +450,53 @@ struct drm_crtc_helper_funcs {
>  	 */
>  	void (*atomic_disable)(struct drm_crtc *crtc,
>  			       struct drm_crtc_state *old_crtc_state);
> +
> +	/**
> +	 * @get_scanout_position:
> +	 *
> +	 * Called by vblank timestamping code.
> +	 *
> +	 * Returns the current display scanout position from a CRTC and an
> +	 * optional accurate ktime_get() timestamp of when the position was
> +	 * measured. Note that this is a helper callback which is only used
> +	 * if a driver uses drm_calc_vbltimestamp_from_scanoutpos() for the
> +	 * @drm_driver.get_vblank_timestamp callback.
> +	 *
> +	 * Parameters:
> +	 *
> +	 * crtc:
> +	 *     The CRTC.
> +	 * in_vblank_irq:
> +	 *     True when called from drm_crtc_handle_vblank(). Some drivers
> +	 *     need to apply some workarounds for gpu-specific vblank irq
> +	 *     quirks if the flag is set.
> +	 * vpos:
> +	 *     Target location for current vertical scanout position.
> +	 * hpos:
> +	 *     Target location for current horizontal scanout position.
> +	 * stime:
> +	 *     Target location for timestamp taken immediately before
> +	 *     scanout position query. Can be NULL to skip timestamp.
> +	 * etime:
> +	 *     Target location for timestamp taken immediately after
> +	 *     scanout position query. Can be NULL to skip timestamp.
> +	 * mode:
> +	 *     Current display timings.
> +	 *
> +	 * Returns vpos as a positive number while in active scanout area.
> +	 * Returns vpos as a negative number inside vblank, counting the number
> +	 * of scanlines to go until end of vblank, e.g., -1 means "one scanline
> +	 * until start of active scanout / end of vblank."
> +	 *
> +	 * Returns:
> +	 *
> +	 * True on success, false if a reliable scanout position counter could
> +	 * not be read out.
> +	 */
> +	bool (*get_scanout_position)(struct drm_crtc *crtc,
> +				     bool in_vblank_irq, int *vpos, int *hpos,
> +				     ktime_t *stime, ktime_t *etime,
> +				     const struct drm_display_mode *mode);
>  };
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
