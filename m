Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54187A9294
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 10:30:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22ED10E584;
	Thu, 21 Sep 2023 08:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E78110E584
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 08:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695284996; x=1726820996;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=N08VdlhvUQTW2XYThuIDOFH1nixh5gjpoTG/tRyF0kM=;
 b=OA5woJ4lGQNdwRxlTcwEj4mRAfZTU3DNE5efaQuxRqZ45vHf54gnarCF
 uUQ/2PtiV4MpjFsJ4syBhvXz0TFL9GRFaaiOnkmLw2RlE08+wcv9eMaX2
 WKVthgWtDxbPNdOiAM1uoYLuAuorLnX+xER2NYD2as8O1JRFMgU0nmaDU
 Xr0A/pUirNCBWGPIdozrCj179htDSfkdR8pvhNdSYZw3JZ+p2PyK0uHO7
 xWwmTk96/C0jFAnktkmihfwaCD/GSOkhukIyriaHy06YPmknnggwu+GLB
 K+pzIEByrQOQ90zJL8FPhLC9wc4Pr+VMiEK+4jfyVS4tXbs9DO9yT8WFx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360705665"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="360705665"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="817283109"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="817283109"
Received: from asilke-mobl2.ger.corp.intel.com (HELO [10.213.199.249])
 ([10.213.199.249])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:29:54 -0700
Message-ID: <e038e664-2ab0-75bf-8df5-1158cae9c685@linux.intel.com>
Date: Thu, 21 Sep 2023 09:29:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230823213901.335696-1-rodrigo.vivi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230823213901.335696-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing CCS documentation.
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/08/2023 22:39, Rodrigo Vivi wrote:
> Let's introduce the basic documentation about CCS.
> While doing that, also removed the legacy execution flag name. That flag
> simply doesn't exist for CCS and it is not needed on current context
> submission. Those flag names are only needed on legacy context,
> while on new ones we only need to pass the engine ID.
> 
> It is worth mention that this documentation should probably live with
> the engine definitions rather than in the i915.rst file directly and
> that more updates are likely need in this section. But this should
> come later.
> 
> Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   Documentation/gpu/i915.rst | 24 +++++++++++-------------
>   1 file changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 60ea21734902..87bdcd616944 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -267,19 +267,17 @@ i915 driver.
>   Intel GPU Basics
>   ----------------
>   
> -An Intel GPU has multiple engines. There are several engine types.
> -
> -- RCS engine is for rendering 3D and performing compute, this is named
> -  `I915_EXEC_RENDER` in user space.
> -- BCS is a blitting (copy) engine, this is named `I915_EXEC_BLT` in user
> -  space.
> -- VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
> -  in user space
> -- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
> -  space.
> -- The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
> -  instead it is to be used by user space to specify a default rendering
> -  engine (for 3D) that may or may not be the same as RCS.
> +An Intel GPU has multiple engines. There are several engine types:
> +
> +- Render Command Streamer (RCS). An engine for rendering 3D and
> +  performing compute on platforms without CCS.

To be tweaked as already agreed in the thread.

> +- Blitting Command Streamer (BCS). An engine for performing blitting and/or
> +  copying operations.
> +- Video Command Streamer. An engine used for video decoding. For historical

You deliberately dropped encoding?

> +  reasons this engine was alsso called 'BCS'.

BSD as already pointed out in the thread.

Probably replace historical reasons with "also sometimes called", in hw 
docs, or something. Also sometimes called VDBOX. And VEBOX for VECS to 
complete the confusion. :)

s/alsso/also

> +- Video Enhancement Command Streamer (VECS). The engine used only by media.

Old explanation seems to contain marginally more information so I would 
keep the video enhancement as explanation.

> +- Compute Command Streamer (CCS). An engine that has access to the media and
> +  GPGPU pipelines, but not the 3D pipeline.
>   
>   The Intel GPU family is a family of integrated GPU's using Unified
>   Memory Access. For having the GPU "do work", user space will feed the

Overall I agree I915_EXEC_DEFAULT should be removed from this blurb 
since the thing seems to be explaining hw components and not uapi.

Only not sure if uapi references for other engines should be removed or 
not. Perhaps they are useful for cross-referencing, and I don't see 
i915_drm.h is explaining what they are.

Regards,

Tvrtko
