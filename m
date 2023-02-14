Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF8169636D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 13:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FDF10E215;
	Tue, 14 Feb 2023 12:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4705210E215
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 12:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676377457; x=1707913457;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EEF09UbWEiZAG5e6trQiDvfz2wqDK0zgMeTjn8Psqhc=;
 b=n5goXt+l3MZZCv2Rj1ExkawPX/d5Twd/A7oh7hNKN6dd2mLIvoV/5Fte
 ICHDTsc+ltB7nvXjb4x1jfXkkdIMocjm8Fkd66UlQdRzGYSrGUL1w+lvF
 Ed0VVl6ix75fTZI8QCAJEopooicR7o+ISzPT2YEe5IKardhLCLTVRaYZz
 02FClH1jwFbXxO7DhHDDvT8DXfdmKbCrMRBCz3quZVAz6f56bVg27Crhh
 jl1B2u1xgDnpry81We5MM9MTk2YDR1qq+MQ8XdvxwtixR99XkYkVmVXHl
 IqxKuCK/3kFzuniLRVtV03c5iDWPrVnxiLxZ4r7jkgx1RXgL95ocDxRP+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="319178312"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="319178312"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:24:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757968862"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="757968862"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:24:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208105932.21681-1-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208105932.21681-1-swati2.sharma@intel.com>
Date: Tue, 14 Feb 2023 14:24:12 +0200
Message-ID: <87ilg4sadv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a debugfs entry for
 fifo underruns
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
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Feb 2023, Swati Sharma <swati2.sharma@intel.com> wrote:
> From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
>
> Add a debugfs entry i915_fifo_underruns to indicate the count of
> fifo underruns for each pipe.
>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 28 ++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  .../drm/i915/display/intel_fifo_underrun.c    | 29 +++++++++++++++++++
>  3 files changed, 59 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 9e2fb8626c96..d64b4675766c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_fourcc.h>
>  
>  #include "i915_debugfs.h"
> +#include "intel_crtc.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> @@ -1057,6 +1058,32 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> +static int i915_fifo_underruns(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_crtc *crtc;
> +	enum pipe pipe;
> +	unsigned long flags;
> +	u32 cpu_fifo_underrun_count[I915_MAX_PIPES];
> +	u32 pch_fifo_underrun_count[I915_MAX_PIPES];
> +
> +	spin_lock_irqsave(&dev_priv->irq_lock, flags);
> +	for_each_pipe(dev_priv, pipe) {
> +		crtc = intel_crtc_for_pipe(dev_priv, pipe);

See the implementation of intel_crtc_for_pipe(). Looping over pipes and
then converting to crtcs is not great.

> +		cpu_fifo_underrun_count[pipe] = crtc->cpu_fifo_underrun_count;
> +		pch_fifo_underrun_count[pipe] = crtc->pch_fifo_underrun_count;
> +	}
> +	spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
> +
> +	seq_printf(m, "\t%-10s \t%10s\n", "cpu fifounderruns", "pch fifounderruns");
> +	for_each_pipe(dev_priv, pipe)
> +		seq_printf(m, "pipe:%c %10u %20u\n", pipe_name(pipe),
> +			   cpu_fifo_underrun_count[pipe],
> +			   pch_fifo_underrun_count[pipe]);

I would replace all of the above with a single for_each_intel_crtc()
loop, and ditch the local count arrays here. I'm not sure we care about
the counts being in sync across crtcs i.e. no need to take the irq lock
across the whole loop.

...

No wait. I think I'd actually replace all of that with a *crtc* specific
debugfs file instead. See below.

> +
> +	return 0;
> +}
> +
>  static int i915_dp_mst_info(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> @@ -1586,6 +1613,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>  	{"i915_ddb_info", i915_ddb_info, 0},
>  	{"i915_lpsp_status", i915_lpsp_status, 0},
> +	{"i915_fifo_underruns", i915_fifo_underruns, 0},

The direction now is to add debugfs files next to the implementation.

So with the crtc specific files, you'd add

void intel_fifo_underrun_debugfs_add(struct intel_crtc *crtc)

in intel_fifo_underrun.[ch] and call that from intel_crtc_debugfs_add().

It handles exactly one crtc. See for example
intel_drrs_crtc_debugfs_add().

>  };
>  
>  static const struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9ccae7a46020..b0468ac70059 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1438,6 +1438,8 @@ struct intel_crtc {
>  
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> +	u32 cpu_fifo_underrun_count;
> +	u32 pch_fifo_underrun_count;
>  #endif
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index d636d21fa9ce..7131dd400ac3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -88,6 +88,17 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
>  	return true;
>  }
>  
> +static void intel_fifo_underrun_inc_count(struct intel_crtc *crtc,
> +					  bool is_cpu_fifo)

What Andy said, but please don't add #defines, just add two separate
functions like:

intel_cpu_fifo_underrun_count_inc()
intel_pch_fifo_underrun_count_inc()

Those go hand in hand with:

intel_cpu_fifo_underrun_count_reset()
intel_pch_fifo_underrun_count_reset()

which we'll also need instead of messing with the counts directly in
some places and via accessors in some others.

> +{
> +#ifdef CONFIG_DEBUG_FS

The #ifdefs go outside the function. See coding-style.rst.

> +	if (is_cpu_fifo)
> +		crtc->cpu_fifo_underrun_count++;
> +	else
> +		crtc->pch_fifo_underrun_count++;
> +#endif
> +}
> +
>  static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -103,6 +114,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>  	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
>  	intel_de_posting_read(dev_priv, reg);
>  
> +	intel_fifo_underrun_inc_count(crtc, true);
>  	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
>  	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
>  }
> @@ -156,6 +168,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
>  	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
>  	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
>  
> +	intel_fifo_underrun_inc_count(crtc, true);
>  	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
>  	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
>  }
> @@ -244,6 +257,7 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
>  		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
>  	intel_de_posting_read(dev_priv, SERR_INT);
>  
> +	intel_fifo_underrun_inc_count(crtc, false);
>  	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
>  	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
>  		pipe_name(pch_transcoder));
> @@ -286,6 +300,11 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>  
>  	old = !crtc->cpu_fifo_underrun_disabled;
>  	crtc->cpu_fifo_underrun_disabled = !enable;
> +#ifdef CONFIG_DEBUG_FS
> +	/* don't reset count in fifo underrun irq path */
> +	if (!in_irq() && !enable)
> +		crtc->cpu_fifo_underrun_count = 0;
> +#endif

Please, no #ifdefs inline in code. Use them to choose between defining
alternate versions of a function,
e.g. intel_cpu_fifo_underrun_count_reset()

The in_irq() part needs to be handled in some other way, can't use that.

As a tip, when using functions like this, see how much it's used
elsewhere in kernel. A kind of popularity contest. If it's not widely
used, figure out why, and think again.

$ git grep -w "in_irq()" | wc -l
12

>  
>  	if (HAS_GMCH(dev_priv))
>  		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
> @@ -365,6 +384,11 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
>  
>  	old = !crtc->pch_fifo_underrun_disabled;
>  	crtc->pch_fifo_underrun_disabled = !enable;
> +#ifdef CONFIG_DEBUG_FS
> +	/* don't reset count in fifo underrun irq path */
> +	if (!in_irq() && !enable)
> +		crtc->pch_fifo_underrun_count = 0;
> +#endif
>  
>  	if (HAS_PCH_IBX(dev_priv))
>  		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
> @@ -434,6 +458,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>  	}
>  
> +	intel_fifo_underrun_inc_count(crtc, true);
>  	intel_fbc_handle_fifo_underrun_irq(dev_priv);
>  }
>  
> @@ -449,6 +474,10 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  					 enum pipe pch_transcoder)
>  {
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pch_transcoder);
> +
> +	intel_fifo_underrun_inc_count(crtc, false);
> +
>  	if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
>  						  false)) {
>  		trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);

-- 
Jani Nikula, Intel Open Source Graphics Center
