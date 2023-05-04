Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1B96F696A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 13:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C38B10E04F;
	Thu,  4 May 2023 11:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD4710E04F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 11:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683198136; x=1714734136;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bGBbP4Z4LcPibMpPAWgr6K75u0hWGA5EAILcyX32UtA=;
 b=O49TcbJ7D41fA7nTklor3ptEKbwRdG7TiNd2QstUmcUAUFsEdDoNsyMJ
 jpZcQHHxFMceI4TdfwU5d0YuAtAWLrNbhxwY4tbZ6x8DQ3tUhHn5XtPwx
 v06RgNX1FvVZ6kj+BjLvYJf/cCzmoKrgs8eXy+WP5GX1vTa6BCem0UHAB
 8Q3H8ECtF3d0avZD4bQvQ5pwVdXF7ImuncJSfbGiXty0GXSmsnihUrqun
 tlIovEJa12Tnj4fTI5gKwaQmFM/uyLLJ0ftg7xsjh9QQXSB7HAs0iPeW9
 S+cP+Nsg+oPIZQYnM9UVh2JWDZumqwbvA6PQEZpSuefEtQ4RcEVMmUbcn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="346376119"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="346376119"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 04:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="841102958"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="841102958"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.36.244])
 ([10.252.36.244])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 04:02:14 -0700
Message-ID: <97b8773e-f584-8d0f-b6dd-77e6194f5846@linux.intel.com>
Date: Thu, 4 May 2023 13:02:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230504092320.1787627-1-jani.nikula@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230504092320.1787627-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/ttm: fix i915_ttm_to_gem()
 kernel-doc
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/4/2023 11:23 AM, Jani Nikula wrote:
> drivers/gpu/drm/i915/gem/i915_gem_ttm.h:50: warning: Function parameter or member 'bo' not described in 'i915_ttm_to_gem'
>
> v2: Fix return value documentation while at it (Rodrigo)
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> index f8f6bed1b297..67347e62e29b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> @@ -42,8 +42,9 @@ static inline bool i915_ttm_is_ghost_object(struct ttm_buffer_object *bo)
>   /**
>    * i915_ttm_to_gem - Convert a struct ttm_buffer_object to an embedding
>    * struct drm_i915_gem_object.
> + * @bo: Pointer to the ttm buffer object
>    *
> - * Return: Pointer to the embedding struct ttm_buffer_object.
> + * Return: Pointer to the embedding struct drm_i915_gem_object.
>    */
>   static inline struct drm_i915_gem_object *
>   i915_ttm_to_gem(struct ttm_buffer_object *bo)
