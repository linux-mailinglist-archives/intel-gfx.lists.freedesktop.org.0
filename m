Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2CD5EBB8A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 09:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D969910E0C0;
	Tue, 27 Sep 2022 07:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E95010E0C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 07:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664264084; x=1695800084;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=seRz00gR5ZCyfR9Av3m54a9Qc+WmUp7nSvP3jbOmS8Y=;
 b=eqC+PC+t10Gpe5LImFj1wjDSKQ82j/zQvVOHxQFy4xF1JFzwT76anaEW
 7GOKh9lseWlvN/81/cKrWDN+bwoC2C9c5xCxTu6ZEye/CCXxeyKQsZjes
 UOlj+z9Et/6xA/Cq4+IcMBPbPVLQ+YRE7mYSwRgSNvID3m2s9Or2Ignpr
 6msRZox+UgCGhhsmNMOQcqnc2aqbOD+VT8txzrYzXebPMTsV1XJX3vmgQ
 UorLZ9SDqsbv6iFJYUfoDxAsoWb4ImckzZcji95bSqkuuCRHBXijrGNao
 BjmmIa0fR6IyWw7XalFEuKgIlxnHrXTNRzyToWMxb+jXSzNmIVc6570CK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="363085935"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="363085935"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:34:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="623662557"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="623662557"
Received: from bvoinov-mobl1.ger.corp.intel.com (HELO [10.213.221.221])
 ([10.213.221.221])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:34:42 -0700
Message-ID: <a75c355d-24c7-41e1-4924-2689fde5c4e0@linux.intel.com>
Date: Tue, 27 Sep 2022 08:34:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220927054016.21474-1-niranjana.vishwanathapura@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220927054016.21474-1-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 27/09/2022 06:40, Niranjana Vishwanathapura wrote:
> In await_fence_array(), unpacking syncobj pointer is not needed.
> Remove it.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index cd75b0ca2555..8f5796cf9c9c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2954,11 +2954,6 @@ await_fence_array(struct i915_execbuffer *eb,
>   	int err;
>   
>   	for (n = 0; n < eb->num_fences; n++) {
> -		struct drm_syncobj *syncobj;
> -		unsigned int flags;
> -
> -		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
> -

Seems it was left hanging unused since 13149e8bafc4 ("drm/i915: add 
syncobj timeline support").

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

>   		if (!eb->fences[n].dma_fence)
>   			continue;
>   
