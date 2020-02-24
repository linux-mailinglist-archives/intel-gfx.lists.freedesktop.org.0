Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0D1169E48
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 07:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1336B6E075;
	Mon, 24 Feb 2020 06:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF2D6E075
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 06:12:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 22:12:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="230539624"
Received: from sdodaev-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 22:12:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200223173959.3885742-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200223173959.3885742-1-chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 08:12:53 +0200
Message-ID: <87blpotswq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix inverted WARN_ON
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

On Sun, 23 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Restore the previous WARN_ON(cond) so that we don't complain about poor
> old Cherryview.
>
> Fixes: eb020ca3d43f ("drm/i915/display/dp: Make WARN* drm specific where drm_device ptr is available")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Auch.

How did a cocci patch have something like this? Manual edits on top?

I did read the patches through, despite them being cocci stuff, but
missed this anyway.

But how did CI not complain? Did I miss the warning?

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2f93326c16a3..e8bebd27004d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1023,9 +1023,10 @@ void intel_power_sequencer_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_encoder *encoder;
>  
> -	if (drm_WARN_ON(&dev_priv->drm, !IS_VALLEYVIEW(dev_priv) &&
> -			IS_CHERRYVIEW(dev_priv) &&
> -			!IS_GEN9_LP(dev_priv)))
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			!(IS_VALLEYVIEW(dev_priv) ||
> +			  IS_CHERRYVIEW(dev_priv) ||
> +			  IS_GEN9_LP(dev_priv))))
>  		return;
>  
>  	/*

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
