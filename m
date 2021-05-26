Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18004391A1B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DB66ED23;
	Wed, 26 May 2021 14:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C139E6ED23
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 14:27:05 +0000 (UTC)
IronPort-SDR: OPK4DCN4MnKdyAby0hB1OSd8tYnL6B9RHOYN5m5DRg3nExupjItDR7+SaHSVSnCG0gDP6dbrcr
 OP6gaHBZiKow==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="288057519"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="288057519"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:27:03 -0700
IronPort-SDR: vCwU3PkB+Jc3FCETTs4lOxPgqZZgNSquiRa5wdPzspVCB0DIOcZNcSRto3oZWda+O2/TDdV/Ul
 eatq4eNa8KlA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="443062472"
Received: from astiegle-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:27:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, anshuman.gupta@intel.com
In-Reply-To: <20210526181728.14817-3-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
 <20210526181728.14817-3-bhanuprakash.modem@intel.com>
Date: Wed, 26 May 2021 17:26:56 +0300
Message-ID: <87im35bmfj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
 status via debugfs
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

On Wed, 26 May 2021, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> It's useful to know the dithering state & pipe bpc for IGT testing.
> This patch will expose the dithering state for the crtc via a debugfs
> file "dither".
>
> Example usage: cat /sys/kernel/debug/dri/0/crtc-0/dither
>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Nischal Varide <nischal.varide@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 94e5cbd86e77..a6fefc7d5ab9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2158,11 +2158,43 @@ static const struct {
>  	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
>  };
>  
> +static int dither_state_show(struct seq_file *m, void *data)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(m->private);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state;
> +	int ret;
> +
> +	if (!HAS_DISPLAY(dev_priv))
> +		return -ENODEV;

Unneeded.

> +
> +	ret = drm_modeset_lock_single_interruptible(&crtc->base.mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state = to_intel_crtc_state(crtc->base.state);
> +	seq_printf(m, "bpc: %u\n", crtc_state->pipe_bpp / 3);
> +	seq_printf(m, "Dither: %u\n", (crtc_state->dither) ? 1 : 0);
> +	seq_printf(m, "Dither_CC1: %u\n",
> +		(crtc_state->gamma_mode & GAMMA_MODE_DITHER_AFTER_CC1) ? 1 : 0);

Are you looking to duplicate the conditions for enabling this CC1 mode
in IGT, and then checking if the driver set the bit as well?

I thought the direction has been that we don't do this type of
validation in IGT. There is no end to it.

Ville?

> +
> +	drm_modeset_unlock(&crtc->base.mutex);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(dither_state);
> +
>  void intel_display_debugfs_register(struct drm_i915_private *i915)
>  {
>  	struct drm_minor *minor = i915->drm.primary;
> +	struct drm_device *dev = &i915->drm;
> +	struct drm_crtc *crtc;
>  	int i;
>  
> +	drm_for_each_crtc(crtc, dev)
> +		debugfs_create_file("dither", 0444, crtc->debugfs_entry, crtc,
> +				    &dither_state_fops);
> +

See intel_crtc_debugfs_add(), called from intel_crtc_late_register().

>  	for (i = 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
>  		debugfs_create_file(intel_display_debugfs_files[i].name,
>  				    S_IRUGO | S_IWUSR,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
