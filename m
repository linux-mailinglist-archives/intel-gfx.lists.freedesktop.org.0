Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2657139C65
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 23:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D46F6E177;
	Mon, 13 Jan 2020 22:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66AC6E181
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 22:26:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 14:26:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="246129221"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.255.88.44])
 ([10.255.88.44])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 14:26:10 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
 <20200111231114.59208-5-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <144f8c55-dcd3-604c-fa15-1b0e61b527c0@intel.com>
Date: Mon, 13 Jan 2020 14:26:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200111231114.59208-5-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/guc: Use correct name for last
 CT fence
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



On 1/11/2020 3:11 PM, Michal Wajdeczko wrote:
> While we have function that returns "next fence" that can be used
> by new CT request, we internally store value of the last used fence.
>
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 1da69425029b..73f617cbcf55 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -290,7 +290,7 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
>   static u32 ct_get_next_fence(struct intel_guc_ct *ct)
>   {
>   	/* For now it's trivial */
> -	return ++ct->requests.next_fence;
> +	return ++ct->requests.last_fence;
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index 3e7fe237cfa5..97913bbb8be3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -49,7 +49,7 @@ struct intel_guc_ct {
>   	struct intel_guc_ct_buffer ctbs[2];
>   
>   	struct {
> -		u32 next_fence; /* fence to be used with next request to send */
> +		u32 last_fence; /* last fence used to send request */
>   
>   		spinlock_t lock; /* protects pending requests list */
>   		struct list_head pending; /* requests waiting for response */

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
