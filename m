Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C6B692322
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 17:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A17410ED74;
	Fri, 10 Feb 2023 16:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308A210ED74;
 Fri, 10 Feb 2023 16:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676045935; x=1707581935;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LNli9C8I1bCKtveMYGNRtYmBjGQUs7smo7X/jsNZR+w=;
 b=lzkQa0I5fc49CBpOYOjzos5IOo6I/zkHNrqvpprOm1m41h6Pvtch6oHh
 WNJRtaO+m6i6PdGVkxDZ9dzDUIlaNwSVqHGHVtM/z8PxuxXuVcqocmm/j
 Xf0cGomVbr1gHsIRqPp8fkkDRrO0hSZ/c9aSg4mDJ85875nA7IVCPR9WZ
 gMP3WxIj/ZrILx5QcA1ddgNwmmWeu7qRAhefAX07m01/jO6iOzmgZx4XX
 Dp0JLqyJRQiI7kIOvSDUAwAh8kiYHUWDwCAkRPfbao4llPr1AEk/Q0bYr
 pdUAtt/i9bMn0/Rzr/c7ehjuCOVnkYhZrkDthRWnQKqQsN3vBqhW2Od9J Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="332594406"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="332594406"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 08:18:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="698461100"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="698461100"
Received: from barcinsk-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.16.80])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 08:18:52 -0800
Date: Fri, 10 Feb 2023 17:18:50 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Message-ID: <20230210161850.yowh6au7f4dye3vu@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Christopher Snowhill <kode54@gmail.com>,
 Christopher Snowhill <chris@kode54.net>
References: <20230210152207.585007-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230210152207.585007-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Add compute class names
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
Cc: Christopher Snowhill <kode54@gmail.com>,
 Christopher Snowhill <chris@kode54.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-02-10 at 15:22:07 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> No one remembered to add names for the new compute engines.

Actually there was patch:
https://patchwork.freedesktop.org/series/112674/
intel_gpu_top: Add display name for compute engine class
Submitted by Christopher Snowhill on Jan. 11, 2023, 1:22 p.m. 

What prevented me from merge was From: != s-o-b

Christopher Snowhill <kode54@gmail.com> != Christopher Snowhill <chris@kode54.net>

warning from checkpatch.pl but if you think it is minor warn
you are free to give r-b and to merge that.

+cc Christopher

Regards,
Kamil

> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tools/intel_gpu_top.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index c043c8960dd0..e13e35b71f4b 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -281,6 +281,8 @@ static const char *class_display_name(unsigned int class)
>  		return "Video";
>  	case I915_ENGINE_CLASS_VIDEO_ENHANCE:
>  		return "VideoEnhance";
> +	case I915_ENGINE_CLASS_COMPUTE:
> +		return "Compute";
>  	default:
>  		return "[unknown]";
>  	}
> @@ -297,6 +299,8 @@ static const char *class_short_name(unsigned int class)
>  		return "VCS";
>  	case I915_ENGINE_CLASS_VIDEO_ENHANCE:
>  		return "VECS";
> +	case I915_ENGINE_CLASS_COMPUTE:
> +		return "CCS";
>  	default:
>  		return "UNKN";
>  	}
> -- 
> 2.34.1
> 
