Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8E815AC0B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 16:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921B66E8BC;
	Wed, 12 Feb 2020 15:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 596296E8BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 15:36:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:36:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="237737947"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 07:36:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200212152525.23108-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200212152525.23108-1-stanislav.lisovskiy@intel.com>
Date: Wed, 12 Feb 2020 17:36:40 +0200
Message-ID: <87o8u3yfzr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Ensure no conflicts with BIOS
 when updating Dbuf
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

On Wed, 12 Feb 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
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
>  	/*
> -	 * Just power up 1 slice, we will
> +	 * Just power up at least 1 slice, we will
>  	 * figure out later which slices we have and what we need.
>  	 */
> -	icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
> +	icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask |
> +			       BIT(DBUF_S1));

I don't know anything about this, but it seems obvious to me the
enabling code should not do hardware readout; they should be separated
from a much higher level.

BR,
Jani.


>  }
>  
>  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
