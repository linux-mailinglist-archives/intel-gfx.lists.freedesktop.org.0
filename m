Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43864651EDB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 11:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6A910E375;
	Tue, 20 Dec 2022 10:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB20610E375
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671532328; x=1703068328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oYQOSGHKY8Dx0wzJKDeOXQHcHuyQsSvUSqeHny8vvi4=;
 b=PiC9Es0La5rpVBY9VBGLwcH+tC0P7TPLJYz3Zfw0wCFxJkrFG/PvaThZ
 BDvL6Otvj/fAEQxXAmMS3PuK2I5hqW8Tg0bL35COhgzKUT7JpBFY1lQJ2
 vaupZTrhl5hIEgLQXyWDm+odJUtzFp2iVSm6GFdEj+8RW2nFM3cW1ObGw
 /+6QScXfSo+shTkdiXq1VGY6WSjj0Ai7tb4nrQAr/ERlI8uCC5SwE6Da/
 /U4+2Vx3hTsH34ERrHDMON63y7rXyCX1kVM8HDn5PcJ1SX+k97Ui6m+y9
 3+Lpjf9ZWMaUZtlMeYnTiL9TAS3sbMISb8UowLSiqOW8Pa2td8IZmzSEd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="307263031"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307263031"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="714374243"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="714374243"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 20 Dec 2022 02:32:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 12:32:05 +0200
Date: Tue, 20 Dec 2022 12:32:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sasa Dragic <sasa.dragic@gmail.com>
Message-ID: <Y6GPJcaHBx/xs3Hi@intel.com>
References: <20221219172927.9603-1-sasa.dragic@gmail.com>
 <20221219172927.9603-2-sasa.dragic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221219172927.9603-2-sasa.dragic@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: re-disable RC6p on Sandy
 Bridge
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 19, 2022 at 06:29:27PM +0100, Sasa Dragic wrote:
> RC6p on Sandy Bridge got re-enabled over time, causing visual glitches
> and GPU hangs.
> 
> Disabled originally in commit 1c8ecf80fdee ("drm/i915: do not enable
> RC6p on Sandy Bridge").

re cover letter:
> It was originally disabled in commit 1c8ecf80fdee ("drm/i915: do not
> enable RC6p on Sandy Bridge"), and subsequently re-enabled by
> 13c5a577b342 ("drm/i915/gt: Select the deepest available parking mode
> for rc6"), which seems to focus only on Ivy Bridge.

That only kicks in while parked (ie. fully idle from
software POV). I think the real bad commit is
fb6db0f5bf1d ("drm/i915: Remove unsafe i915.enable_rc6")
which seems to affects which rc6 level is selected while
unparked.

We should mention both of those commits here:
Fixes: fb6db0f5bf1d ("drm/i915: Remove unsafe i915.enable_rc6")
Fixes: 13c5a577b342 ("drm/i915/gt: Select the deepest available parking mode for rc6")

Also we want
Cc: stable@vger.kernel.org

We can add those while pushing, so no need to resend for that.

> 
> Signed-off-by: Sasa Dragic <sasa.dragic@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 668e9da52584..69377564028a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -423,7 +423,8 @@ static const struct intel_device_info ilk_m_info = {
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
>  	.has_rc6 = 1, \
> -	.has_rc6p = 1, \
> +	/* snb does support rc6p, but enabling it causes various issues */ \
> +	.has_rc6p = 0, \

The one downside of doing it this way is that we also lose
the debugfs/sysfs files so we can't monitor rc6+/++
residency anymore to make sure they are not entered.

I think ideally we'd split this into two parts: which rc6
states the hw actually has vs. which rc6 states we actually
want to use. But at least for the time being I think this
simple should be sufficient, and should be easy to backport
to stable releases.

>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
>  	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
