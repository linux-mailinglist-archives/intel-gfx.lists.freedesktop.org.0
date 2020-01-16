Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C2213F500
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F38BE6EE8E;
	Thu, 16 Jan 2020 18:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA9E6EE8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:53:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 10:53:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214192962"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 10:53:38 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
 <20200115140822.55756-3-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <99c65a63-e8df-4977-fe30-03b3f3ccbf9e@intel.com>
Date: Thu, 16 Jan 2020 10:53:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115140822.55756-3-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] i915/drm/guc: Don't pass CTB while
 writing
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



On 1/15/20 6:08 AM, Michal Wajdeczko wrote:
> Since we only have one SEND buffer we don't need to explicitly pass
> it to the write function.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 0d3556a820a3..dedbf3b8ab01 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -311,12 +311,13 @@ static u32 ct_get_next_fence(struct intel_guc_ct *ct)
>    *                   ^-----------------len-------------------^
>    */
>   
> -static int ctb_write(struct intel_guc_ct_buffer *ctb,
> -		     const u32 *action,
> -		     u32 len /* in dwords */,
> -		     u32 fence,
> -		     bool want_response)
> +static int ct_write(struct intel_guc_ct *ct,
> +		    const u32 *action,
> +		    u32 len /* in dwords */,
> +		    u32 fence,
> +		    bool want_response)
>   {
> +	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_SEND];
>   	struct guc_ct_buffer_desc *desc = ctb->desc;
>   	u32 head = desc->head / 4;	/* in dwords */
>   	u32 tail = desc->tail / 4;	/* in dwords */
> @@ -492,7 +493,7 @@ static int ct_send(struct intel_guc_ct *ct,
>   	list_add_tail(&request.link, &ct->requests.pending);
>   	spin_unlock_irqrestore(&ct->requests.lock, flags);
>   
> -	err = ctb_write(ctb, action, len, fence, !!response_buf);
> +	err = ct_write(ct, action, len, fence, !!response_buf);

I'd update wait_for_ctb_desc_update() to work on struct intel_guc_ct as 
well, so we can hide the ctb desc access in the lower level functions 
and drop the ctb variable from ct_send(). With or without that:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   	if (unlikely(err))
>   		goto unlink;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
