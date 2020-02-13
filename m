Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3EE15CC5E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 21:25:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A540D6F879;
	Thu, 13 Feb 2020 20:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79846F879
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 20:25:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 12:25:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,437,1574150400"; d="scan'208";a="234226034"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with SMTP; 13 Feb 2020 12:25:33 -0800
Date: Thu, 13 Feb 2020 12:25:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200213202533.GH2014153@mdroper-desk1.amr.corp.intel.com>
References: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
 <20200213140412.32697-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213140412.32697-2-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 1/3] drm/i915: Ensure no conflicts with
 BIOS when updating Dbuf
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 13, 2020 at 04:04:10PM +0200, Stanislav Lisovskiy wrote:
> TGL BIOS seems to enable both DBuf slices ocasionally, depending
> how many displays are connected, while i915 according to BSpec
> was powering on S1 DBuf slice, until a modeset was done.
> 
> This was causing a brief flash during the boot as we were
> disabling slice, previously used by BIOS with that.
> 
> To prevent this, now we are ensuring tht we are enabling
> _at least_ one slice, but if there are more, let's not
> power them off.
> 
> Fixes: ff2cd8635e41 ("drm/i915: Correctly map DBUF slices to pipes")
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 53056def5414..b9a9cbad8a03 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4470,11 +4470,13 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  
>  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
>  {
> +	skl_ddb_get_hw_state(dev_priv);

Might want to add a blank line here to make it visually easier to read.

>  	/*
> -	 * Just power up 1 slice, we will
> +	 * Just power up at least 1 slice, we will

You might want to say "at least slice S1" since if the BIOS were to
initialize only S2, that wouldn't be sufficient for us (according to the
bspec).

>  	 * figure out later which slices we have and what we need.
>  	 */
> -	icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
> +	icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask |
> +			       BIT(DBUF_S1));

We could potentially avoid some unnecessary work by checking whether
what we read back above was already good enough or not.

        if (!(dev_priv->enabled_dbuf_slices_mask & BIT(DBUF_S1)))
                icl_dbuf_slices_update(...)

But either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  }
>  
>  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
