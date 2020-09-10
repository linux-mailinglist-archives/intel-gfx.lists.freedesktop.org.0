Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6BB2646EB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDEB6E927;
	Thu, 10 Sep 2020 13:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E4D6E927
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:26:46 +0000 (UTC)
IronPort-SDR: N/uxgwRONMRbb2wiQ8xxQwpnyC2I/0R7obQ0km2vKHL+Zce8y47YgZzz83JoYMVQzUounIRoEZ
 Dr2SRj2cB9Pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157809091"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="157809091"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:26:46 -0700
IronPort-SDR: VhjaeVw03oKckxC0hXEtDq+C0sJmQC7qs8IS2fFsZX9fLQvY75tXxDab5M0HIgHfu76cG3MVLn
 C5PipIKLlLNQ==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449597480"
Received: from nfhickey-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.64])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:26:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200908052540.26905-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200908052540.26905-1-animesh.manna@intel.com>
Date: Thu, 10 Sep 2020 16:26:46 +0300
Message-ID: <87een9225l.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable frontbuffer tracking
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

On Tue, 08 Sep 2020, Animesh Manna <animesh.manna@intel.com> wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>

The "why" would go here.

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Please add your own Signed-off-by when you send someone else's patches.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index d898b370d7a4..0f1d7a34dcf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -166,6 +166,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
>  {
>  	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
>  
> +	if (origin != ORIGIN_FLIP)
> +		return;
> +
>  	if (origin == ORIGIN_CS) {
>  		spin_lock(&i915->fb_tracking.lock);
>  		i915->fb_tracking.busy_bits |= frontbuffer_bits;
> @@ -185,6 +188,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>  {
>  	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
>  
> +	if (origin != ORIGIN_FLIP)
> +		return;
> +
>  	if (origin == ORIGIN_CS) {
>  		spin_lock(&i915->fb_tracking.lock);
>  		/* Filter out new bits since rendering started. */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
