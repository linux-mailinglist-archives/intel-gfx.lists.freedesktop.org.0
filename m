Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E552BAC25
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 15:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5190B6E8CD;
	Fri, 20 Nov 2020 14:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE59D6E8CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:49:20 +0000 (UTC)
IronPort-SDR: VljPklppnFyHYsIht0yO5cdLl3RkxmVgNweduveg5GBVbVxyUWoQRUMGOwH8on7G4aqVEDVVRJ
 wjbZL56penBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="256191915"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="256191915"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 06:49:20 -0800
IronPort-SDR: juCmdhGq0yzR7FZEF25gUYRDLPov0cJ+Web2nWida9p2uFTF9kSrIilllixIjTGsOzx9b2LKU2
 wtNe1IHuXx2Q==
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="545465581"
Received: from shilatbx-mobl1.ger.corp.intel.com (HELO [10.255.201.139])
 ([10.255.201.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 06:49:19 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201120140314.24749-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7a87abac-106c-cc66-f885-a8e36605e918@linux.intel.com>
Date: Fri, 20 Nov 2020 14:49:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201120140314.24749-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 1/3] drm/i915/gem: Remove incorrect early dbg
 print
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/11/2020 14:03, Chris Wilson wrote:
> We print out the "logical" context support before we discover whether or
> not the engines have logical contexts. No one seems to have noticed the
> error, so the debug message must not be useful to anyone.

I have, many months ago! :)

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 4fd38101bb56..a6299da64de4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -904,9 +904,6 @@ static void init_contexts(struct i915_gem_contexts *gc)
>   void i915_gem_init__contexts(struct drm_i915_private *i915)
>   {
>   	init_contexts(&i915->gem.contexts);
> -	drm_dbg(&i915->drm, "%s context support initialized\n",
> -		DRIVER_CAPS(i915)->has_logical_contexts ?
> -		"logical" : "fake");
>   }
>   
>   void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
