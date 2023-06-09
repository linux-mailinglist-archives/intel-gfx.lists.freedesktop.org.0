Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6B3729C73
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF4D10E6AF;
	Fri,  9 Jun 2023 14:12:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B983510E6AC;
 Fri,  9 Jun 2023 14:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686319968; x=1717855968;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kJBpfpkIvDQDRsUOXdS3ZxWSPVTNUSX10+Cnfi2IzkE=;
 b=FJ8jOK4wwOCHeTujFBW7zScmRyNfRMVjUoJ68cC+g7hZfUoVGm3ftpvF
 5wESV+aPhA757WLQm5Zu85gUQErEhGpo/AlUkBBQ117rSFlHbbL3la3/4
 pXS20FpyWZBuA4245P6P853gY/S/Ded1VLjx/fHuC83jjhmyCNfSKtDZ2
 Wbm0BgMeMOCEluJi4Z517izu9Y18afTysGitymD5jUIt+9txlVsVrzLQT
 TlAyd5OhjmdxqI3IwmwM0yzBKXyZ7xWAW5Bb7Jbib9p0nDsf1I0unPcrq
 1WEEDmkU5l4q7Q6QbpeCsfQxG+evp/mESiItyi8Tetc9lvKko9V70pJlb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="355093296"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="355093296"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="800233912"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="800233912"
Received: from pjdillon-mobl1.ger.corp.intel.com (HELO [10.213.210.241])
 ([10.213.210.241])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:12:46 -0700
Message-ID: <bfa71c75-4b61-ce17-8eba-0aa48ec14097@linux.intel.com>
Date: Fri, 9 Jun 2023 15:12:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>,
 Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20230609121143.1232420-1-tvrtko.ursulin@linux.intel.com>
 <20230609121143.1232420-7-tvrtko.ursulin@linux.intel.com>
 <2faa3900-6456-136c-0a1a-8629ed6d3784@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <2faa3900-6456-136c-0a1a-8629ed6d3784@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 6/8] drm: Add drm_gem_prime_fd_to_handle_obj
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


On 09/06/2023 13:44, Iddamsetty, Aravind wrote:
> On 09-06-2023 17:41, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> I need a new flavour of the drm_gem_prime_fd_to_handle helper, one which
>> will return a reference to a newly created GEM objects (if created), in
>> order to enable tracking of imported i915 GEM objects in the following
>> patch.
> 
> instead of this what if we implement the open call back in i915
> 
> struct drm_gem_object_funcs {
> 
>          /**
>           * @open:
>           *
>           * Called upon GEM handle creation.
>           *
>           * This callback is optional.
>           */
>          int (*open)(struct drm_gem_object *obj, struct drm_file *file);
> 
> which gets called whenever a handle(drm_gem_handle_create_tail) is
> created and in the open we can check if to_intel_bo(obj)->base.dma_buf
> then it is imported if not it is owned or created by it.

I wanted to track as much memory usage as we have which is buffer object 
backed, including page tables and contexts. And since those are not user 
visible (they don't have handles), they wouldn't be covered by the 
obj->funcs->open() callback.

If we wanted to limit to objects with handles we could simply do what 
Rob proposed and that is to walk the handles idr. But that does not feel 
like the right direction to me. Open for discussion I guess.

Regards,

Tvrtko
