Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7A2688178
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 16:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1888310E55A;
	Thu,  2 Feb 2023 15:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04FD010E55A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 15:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675350993; x=1706886993;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ILVOgceOI/W/HZ9ehK/p8kggYQ9wuSmnFIUrFo7NLhM=;
 b=CuEb8zbi6zSk9/4V6FCE+7SzDeLwbw5wP7Rv5EOlq47uuMxIccUq3YKL
 LzSrDYtgXNX8OeQBzet0K9YqrVlJ/DANqfAKvi89g1g64+nxjLu4x3L1y
 pxlyhCNGOS0QvZxEA7FJDpYobUrFekgLlGec0O4KoebMYTEA8CqShQvlZ
 qxEzu32HdElduYCFCTcEQ/CWzAuGOxgHd/dR++fWRUWnT7EGDHBJAXJmN
 FLU2GoZR8cRlebmZjkFohySK6tqTTeC2AbIYKXwkyhQ3TgZvRtOgrCDg2
 owarh8SQzmYNmh/fwR5E+2yGFmCshHenCypDrdfGhxLdOCCVEJlUh//k7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="355811130"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="355811130"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 07:13:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="733964653"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="733964653"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 07:13:47 -0800
Date: Thu, 2 Feb 2023 17:13:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y9vTKDHR9Ojd7Yn9@ideak-desk.fi.intel.com>
References: <cover.1675339447.git.jani.nikula@intel.com>
 <6a349c3a2b2def5fc31a48c9844ebd72ee55a22b.1675339447.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a349c3a2b2def5fc31a48c9844ebd72ee55a22b.1675339447.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/dmc: check incoming dmc id
 validity
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 02, 2023 at 02:04:52PM +0200, Jani Nikula wrote:
> Add validity checks for the dmc ids computed from pipe parameters in
> intel_dmc_enable_pipe() and intel_dmc_disable_pipe(). It's slightly
> difficult for humans and static analyzers alike to ensure the resulting
> dmc ids are within bounds. Just check them and reject invalid ones.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Patchset looks ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index ab0ad8e3e620..3b8e8193d042 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -415,7 +415,9 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  
>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>  {
> -	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> +
> +	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
>  		return;
>  
>  	if (DISPLAY_VER(i915) >= 14)
> @@ -426,7 +428,9 @@ void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>  
>  void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>  {
> -	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> +
> +	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
>  		return;
>  
>  	if (DISPLAY_VER(i915) >= 14)
> -- 
> 2.34.1
> 
