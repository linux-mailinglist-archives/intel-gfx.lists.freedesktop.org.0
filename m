Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7E016FAAF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF526E3A4;
	Wed, 26 Feb 2020 09:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14ECC6E3A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:27:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 01:27:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="226658999"
Received: from mkoeck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.250])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 01:27:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200225143604.500731-2-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200225143604.500731-1-chris@chris-wilson.co.uk>
 <20200225143604.500731-2-chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 11:27:58 +0200
Message-ID: <87r1yhsnoh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Drop I915_RESET_TIMEOUT and
 friends
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

On Tue, 25 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> These were used to set various timeouts for the reset procedure
> (deciding when the engine was dead, and even if the reset itself was not
> making forward progress). No longer used.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

\o/

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index de1f1cbcc41d..6b56f31c850f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -611,12 +611,6 @@ struct i915_gem_mm {
>  #define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
>  
>  unsigned long i915_fence_timeout(const struct drm_i915_private *i915);
> -#define I915_RESET_TIMEOUT (10 * HZ) /* 10s */
> -
> -#define I915_ENGINE_DEAD_TIMEOUT  (4 * HZ)  /* Seqno, head and subunits dead */
> -#define I915_SEQNO_DEAD_TIMEOUT   (12 * HZ) /* Seqno dead with active head */
> -
> -#define I915_ENGINE_WEDGED_TIMEOUT  (60 * HZ)  /* Reset but no recovery? */
>  
>  /* Amount of SAGV/QGV points, BSpec precisely defines this */
>  #define I915_NUM_QGV_POINTS 8

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
