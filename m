Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E9516A474
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:58:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E066E42A;
	Mon, 24 Feb 2020 10:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A266E42A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 10:58:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 02:58:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="230609537"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 02:58:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200224102429.4076883-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200224102429.4076883-1-chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 12:58:03 +0200
Message-ID: <87r1yktfpg.fsf@intel.com>
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

On Mon, 24 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Restore the previous WARN_ON(cond) so that we don't complain about poor
> old Cherryview.
>
> Fixes: eb020ca3d43f ("drm/i915/display/dp: Make WARN* drm specific where drm_device ptr is available")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>

Why the resubmission? Already r-b'd the original.

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
