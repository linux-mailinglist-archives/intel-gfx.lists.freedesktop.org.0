Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C36D5EBAFE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 08:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1BA10E8C9;
	Tue, 27 Sep 2022 06:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DBC810E8C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 06:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664261589; x=1695797589;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AzXGu3oJhiEz27V3Pes5B8Fhh9Vd4bqNZ4FDxpbrHw0=;
 b=ZhpxcAW2BZX1sUUfyfxFc9pJo2pg+AnLKv/7Fd9VgTYlVWrzoWg1sxaX
 N+IflgbNd1JM4iLB5Lngbxf5Yb5uaG23pW1dOKIY2v1xWlHU/WexJP4t6
 O8SvZ5AWCZfc9/q/P+T+cehK8+pfXco0/yaPSrEKOb1XDNOwFdcf7Va6Q
 f8GVjoffwClxcpfRc5zhdVcOpDmgcXN1NVZrTc9Od6SV2Op7o321MCJvG
 6PkDOemNepnSORFnvA4CcHYUwTQxvqb6lYRHf37HG1cen0dZi/rVFSFey
 7xKgs8ppqvbjCn5gP3BHZUhAhG7mTI8F2hlkOPeBQKVv6VbZUaUBKa9OG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="302150951"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="302150951"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 23:53:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="796666384"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="796666384"
Received: from aakhmylo-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.103])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 23:53:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220927054016.21474-1-niranjana.vishwanathapura@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220927054016.21474-1-niranjana.vishwanathapura@intel.com>
Date: Tue, 27 Sep 2022 09:52:46 +0300
Message-ID: <87sfkd1f7l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unwanted pointer unpacking
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 26 Sep 2022, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com> wrote:
> In await_fence_array(), unpacking syncobj pointer is not needed.
> Remove it.

Where are we with the goal of getting rid of all of ptr_pack_bits(),
ptr_unpack_bits(), ptr_mask_bits() and ptr_unmask_bits()?

BR,
Jani.


>
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index cd75b0ca2555..8f5796cf9c9c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2954,11 +2954,6 @@ await_fence_array(struct i915_execbuffer *eb,
>  	int err;
>  
>  	for (n = 0; n < eb->num_fences; n++) {
> -		struct drm_syncobj *syncobj;
> -		unsigned int flags;
> -
> -		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
> -
>  		if (!eb->fences[n].dma_fence)
>  			continue;

-- 
Jani Nikula, Intel Open Source Graphics Center
