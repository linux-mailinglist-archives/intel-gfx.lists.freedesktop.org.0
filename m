Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C050590412
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 18:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C6510EB92;
	Thu, 11 Aug 2022 16:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C6210FDA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 16:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660236058; x=1691772058;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=D5KdjnlojWxOO0V74cSDfy+laOWMFChvptiAM7zIlF4=;
 b=ShkBV8rXSebO/3Z5jcmufgKjCe6MgnpDBFKhlTwp/Oyn/g7XWgceCHXC
 8c8zXV3DcKJsHoxqUAJBxZZrdKmxBfDgRfS2UN8FLJHbkWnG2pDyfkv8O
 Sf6ZqGSSBgcyYWYWkoi21keYpXt6rpjJc1K4W9wz1OPDQxF99IUiRjOr6
 1iCRwuTFP2egxdOJVEZqd8PpeqwtOCaCcND33OT6vv03C1N33D7pfuYq+
 aUJpqBYXVWLdVyCi/+e3z/QfT3XzKMUtRQSInIdV/CLGWvqVMgOmiJV6w
 CCxa3945z3+aGefntLRNHQGiki8SROkm7mOxI8uytVHmorYukDQYVG0/I Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278346787"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="278346787"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 09:40:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="634300059"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.23.62])
 ([10.213.23.62])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 09:40:56 -0700
Message-ID: <b6e37502-af46-38ba-20d0-07f37b28d6b4@intel.com>
Date: Thu, 11 Aug 2022 18:40:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Tapas Rana <tapas.rana@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220811112802.4167768-1-tapas.rana@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220811112802.4167768-1-tapas.rana@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] Fixes KW issues for NULL pointer dereference
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


On 11.08.2022 13:28, Tapas Rana wrote:

I guess even for trivial patches rules should be followed - subject 
should describe what has changed, commit message should describe why.


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 9a7e50534b84..0bbf44c34cff 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -435,6 +435,9 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
>   static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
>   				    struct ttm_resource *dst_mem)
>   {
> +	if(!bo)
> +		return NULL;


I guess it should be "return false"

Regards
Andrzej

> +
>   	if (i915_gem_object_needs_ccs_pages(i915_ttm_to_gem(bo)))
>   		return false;
>   

