Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347167AE82B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 418A610E0E5;
	Tue, 26 Sep 2023 08:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D39510E0C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717417; x=1727253417;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mbbpNiqC+CBuMF9eyGbTmIbPWNAps+oE+IMzpnhnIaw=;
 b=IKlTWJ886QunMmeujb8ALaotTguTYiSFL9sCtShYU9/wC0vYa+tH+bxD
 rJePF8A7d24nrk/s5yw+Rw+IleuP4cZ2xYXwlJ6/4S8FIQK+Qdtt1DyxV
 hB29Le9GEiA/LmtOm/lY1tAn5k5jyThdTS+iD/6zGALiw7eVVFec7ICNA
 U761vX6xkrkj5eqTjj8ruY9CJTHKHf+6yiqxt6IIQHTfV1s9DgQ0GoA9f
 c/UajpNbKBUfbyVJQFqMSjX5UfqiX48fFS8dN8gQBddjtS6nc1DAGmbg7
 p+uS46hNmf2Dhh9qULMd/IJyrcOVXH2wak/1n7DdsN7h0U2BGn7TBr414 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="361762550"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="361762550"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:36:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="864323786"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="864323786"
Received: from dilipban-mobl.ger.corp.intel.com (HELO [10.213.201.63])
 ([10.213.201.63])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:36:55 -0700
Message-ID: <3dd3f8be-f071-0edb-5613-6732f4f76f02@linux.intel.com>
Date: Tue, 26 Sep 2023 09:36:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <e038e664-2ab0-75bf-8df5-1158cae9c685@linux.intel.com>
 <20230926020053.245046-1-rodrigo.vivi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230926020053.245046-1-rodrigo.vivi@intel.com>
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


On 26/09/2023 03:00, Rodrigo Vivi wrote:
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
> v2: Overall improvements from Matt and Tvrtko.
> 
> Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   Documentation/gpu/i915.rst | 25 ++++++++++++-------------
>   1 file changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 378e825754d5..13de8bcaaa29 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -267,19 +267,18 @@ i915 driver.
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
> +  performing compute.
> +- Blitting Command Streamer (BCS). An engine for performing blitting and/or
> +  copying operations.
> +- Video Command Streamer. An engine used for video encoding and decoding. Also
> +  sometimes called 'BSD' in hardware documentation.
> +- Video Enhancement Command Streamer (VECS). An engine for video enhancement.
> +  Also sometimes called 'VEBOX' in hardware documentation.
> +- Compute Command Streamer (CCS). An engine that has access to the media and
> +  GPGPU pipelines, but not the 3D pipeline.
>   
>   The Intel GPU family is a family of integrated GPU's using Unified
>   Memory Access. For having the GPU "do work", user space will feed the

LGTM.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
