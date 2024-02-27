Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F56868B70
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 09:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A888B10E8B8;
	Tue, 27 Feb 2024 08:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mf34IioT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663C810E8B8;
 Tue, 27 Feb 2024 08:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709024232; x=1740560232;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZQoqMBY8QfGcpP/PpX7IeyyZFQ9W9B12ya9zymo8HGM=;
 b=Mf34IioT7CF9ScLl4Yb3bHwLyh1TIBbLcNZVou2s4SmpIBk8jh406Cmp
 uMVYFg0uUgsv0JY4XQJninnSbt22FoAXu+/ozhh1C/RtxpvMvAIDzMsOe
 nxnHovjPwAwhhrB6oX2LkVbgROu3l7z8OBq2UqEM3K8iNmVHDswIY70Tx
 XmxQtXMgaNzRIn3JiDPcpy1WZMAnV+u7PtEBDVuaRxz4mCqhqiy1Mr1RV
 YyYfuKRSQeJK/Kw21hBUQHCTm6mcKQdzeKqKav9siprCBCpb2FQAnrZXu
 1QA+EcQbFkpM6E4cxVzGk4XxfbjeojsL6PdJtD2/4S1D8dnlZNg3jCXgc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14777591"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="14777591"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 00:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6838519"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 00:57:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, "Souza, Jose"
 <jose.souza@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
In-Reply-To: <20240226203651.818678-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240226203651.818678-1-juhapekka.heikkila@gmail.com>
Date: Tue, 27 Feb 2024 10:57:06 +0200
Message-ID: <871q8yl1y5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 26 Feb 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> AuxCCS framebuffers don't work on Xe driver hence disable them
> from plane capabilities until they are fixed. FlatCCS framebuffers
> work and they are left enabled. CCS is left untouched for i915
> driver.
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
> Let's try adding those ifdefs as IS_ENABLED(I915) will result in
> warnings from checkpatch and there was wishes not to break
> universal plane into smaller parts. IS_ENABLED(CONFIG_I915) is
> always true when building both Xe and i915.

Please ignore the checkpatch warning in this case.

BR,
Jani.

>
>  .../gpu/drm/i915/display/skl_universal_plane.c  | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index e941e2e4fd14..7e0a7283d01d 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2283,6 +2283,15 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>  	return plane_id < PLANE_SPRITE4;
>  }
>  
> +static bool running_on_i915(void)
> +{
> +#ifdef I915
> +	return true;
> +#else
> +	return false;
> +#endif
> +}
> +
>  static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  			     enum pipe pipe, enum plane_id plane_id)
>  {
> @@ -2295,6 +2304,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  	if (HAS_4TILE(i915))
>  		caps |= INTEL_PLANE_CAP_TILING_4;
>  
> +	/*
> +	 * FIXME: Below if(running_on_i915()..) is because Xe driver
> +	 * can't use AuxCCS framebuffers. Once they are fixed this need to be
> +	 * removed.
> +	 */
> +	if (!running_on_i915() && !HAS_FLAT_CCS(i915))
> +		return caps;
> +
>  	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>  		caps |= INTEL_PLANE_CAP_CCS_RC;
>  		if (DISPLAY_VER(i915) >= 12)

-- 
Jani Nikula, Intel
