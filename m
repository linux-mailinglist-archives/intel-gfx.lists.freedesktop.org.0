Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A4459E3FD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816F88E509;
	Tue, 23 Aug 2022 12:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961968CF98
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661259428; x=1692795428;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=W3VaUY193MgO/tFJ8wVndYaSAkAt18y4pv/VswjUrDM=;
 b=TUagigBOndiU3d5w+FQFoY+h3XKwMfJHN2HoBsldE56CFxprqbR+GunR
 NAvD00iffICS/iqZ+AcqwnU1PxO+OveagBZgJq5OhiWCMXaBrW8Xrxv7M
 RDCNJOwdUFkSKdRQthJP8JlT4kKy1zhQu4qHgxJYopCAWVNIiI8nuSXX+
 peVCTE0AAS40IPoKO7F7YAjgZSWvmhMXaaaZQKohg4z02M0KvwI5dUDQs
 J/4OO2ghwjie8PYX8vUNrcHr1uZYHHv+xLIzYObKmHN/M6a1zG03cof2x
 ZUvqWiXwdAEo0GJpaqznSoO/UPgxKW78JGnlSqYiQltTB5EGptG0YGBwV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294961788"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="294961788"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 05:57:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="712596959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by fmsmga002.fm.intel.com with SMTP; 23 Aug 2022 05:57:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Aug 2022 15:57:04 +0300
Date: Tue, 23 Aug 2022 15:57:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <YwTOoCLIBf8KhjWB@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220704161548.1343042-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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

On Mon, Jul 04, 2022 at 09:45:48PM +0530, Arun R Murthy wrote:
> Intel Gen do support Async Flip is supported on linear buffers. Since we
> didn't had a use case, it was not enabled. Now that as part of hybrid
> graphics for unsupported hardware pixel formats, its being converted to
> linear memory and then flipped, hence enabling!
> This patch enables support for async on linear buffer.
> 
> v2: added use case
> v3: enabled async on linear for pre Gen 12 as well

I didn't think it went all the way back to gen9?

Also we still don't seem to have any tests for this stuff...

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a0f84cbe974f..99ad67af74e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6614,6 +6614,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
