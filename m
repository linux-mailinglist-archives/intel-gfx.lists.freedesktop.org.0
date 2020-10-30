Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094652A093E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 16:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B566EDC6;
	Fri, 30 Oct 2020 15:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE1A6EDC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 15:08:05 +0000 (UTC)
IronPort-SDR: Ct/UTdGJQIFlkP5GHH0payWOTsZ3NEcQY2+qdF4zJKW+2RsqIl5QEp+vptEbL11J5gJ0mfUAnR
 BMZB2vnWH2qQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="253327537"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="253327537"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 08:08:05 -0700
IronPort-SDR: nuQl9fTmPxkzqTKv/FR3Rf0mjwYoW5RAHE8qY6Ew9H8b03srGC1aWzYgenIFriEAbi48FW2ATx
 ShZEH85jtLxw==
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="537095404"
Received: from sfhansen-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.254.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 08:08:04 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-21-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <1b38a307-0d57-9abd-d72d-a0e783b39183@linux.intel.com>
Date: Fri, 30 Oct 2020 16:08:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-21-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 20/61] drm/i915: Rework clflush to work
 correctly without obj->mm.lock.
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


On 10/16/20 12:44 PM, Maarten Lankhorst wrote:
> Pin in the caller, not in the work itself. This should also
> work better for dma-fence annotations.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_clflush.c | 15 +++++++--------
>   1 file changed, 7 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> index bc0223716906..daf9284ef1f5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> @@ -27,15 +27,8 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
>   static int clflush_work(struct dma_fence_work *base)
>   {
>   	struct clflush *clflush = container_of(base, typeof(*clflush), base);
> -	struct drm_i915_gem_object *obj = clflush->obj;
> -	int err;
>   
> -	err = i915_gem_object_pin_pages(obj);
> -	if (err)
> -		return err;
> -
> -	__do_clflush(obj);
> -	i915_gem_object_unpin_pages(obj);
> +	__do_clflush(clflush->obj);
>   
>   	return 0;
>   }
> @@ -44,6 +37,7 @@ static void clflush_release(struct dma_fence_work *base)
>   {
>   	struct clflush *clflush = container_of(base, typeof(*clflush), base);
>   
> +	i915_gem_object_unpin_pages(clflush->obj);

Hmm, Could we do without pinning here? Pages present are protected first 
by the object lock, then by the fence?

/Thomas



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
