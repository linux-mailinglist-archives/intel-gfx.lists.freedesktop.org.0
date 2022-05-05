Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B4251BDAF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 13:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9622F10F080;
	Thu,  5 May 2022 11:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2A810F080
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 11:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651748689; x=1683284689;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=wpU+eAW/aome4L8p/xUBZbIJs+ZWykutE6QmrtR4fwU=;
 b=SjUp8mfK+DGHOeakqhajCW62+prCTQQ6y1me2Xc+S3YEZRmQ4O0ur+Ug
 Foll9Fc/2CRLG9tZ0PJVsppTiGPs2rTQpfh+HCjy0tEqcEs2/W6f5n1k3
 cbTfgqRVnty4ngCap8z1lFHLLfSuBI/P9HGZFUzvTMrySzbACCAaKZc7e
 MNC8DXFl5/c2Y7rM86YTF55rj0AGO63acip3Z6Qf9c5t4UWQruSRA53ug
 h8lXPmucS135QFEy0jHZX0wN7MUOKY2jIkF/SDZKBdKqn3qOfd7lG+bvo
 9IhfM9fL7kT6PeXoIXVodyAWivSTt7pxsFn45d6HF/5C0FyjRdOmUCOV6 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="255548855"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="255548855"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 04:04:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="517462192"
Received: from mrbroom-mobl.ger.corp.intel.com (HELO [10.213.206.41])
 ([10.213.206.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 04:04:48 -0700
Message-ID: <a5d218bd-77ed-6d49-c246-014e2e241aaf@linux.intel.com>
Date: Thu, 5 May 2022 12:04:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220504183716.987793-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220504183716.987793-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: remove unused
 GEM_DEBUG_DECL() and GEM_DEBUG_BUG_ON()
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


On 04/05/2022 19:37, Jani Nikula wrote:
> There are already too many choices here, take away the unused ones.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gem.h | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index d0752e5553db..b7b257f54d2e 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -54,9 +54,7 @@ struct drm_i915_private;
>   	} while(0)
>   #define GEM_WARN_ON(expr) WARN_ON(expr)
>   
> -#define GEM_DEBUG_DECL(var) var
>   #define GEM_DEBUG_EXEC(expr) expr
> -#define GEM_DEBUG_BUG_ON(expr) GEM_BUG_ON(expr)
>   #define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
>   
>   #else
> @@ -66,9 +64,7 @@ struct drm_i915_private;
>   #define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
>   #define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
>   
> -#define GEM_DEBUG_DECL(var)
>   #define GEM_DEBUG_EXEC(expr) do { } while (0)
> -#define GEM_DEBUG_BUG_ON(expr)
>   #define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
>   #endif
>   

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
