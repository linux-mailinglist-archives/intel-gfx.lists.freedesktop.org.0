Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865C113F406
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E7886E23B;
	Thu, 16 Jan 2020 18:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE54F6E23B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:47:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 10:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214190477"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 10:47:05 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
 <20200115140822.55756-2-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ec38e7fd-c810-bada-4645-2419f25552f9@intel.com>
Date: Thu, 16 Jan 2020 10:46:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115140822.55756-2-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Don't GEM_BUG_ON on
 corrupted G2H CTB
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
> We should never BUG_ON on any corruption in CTB descriptor as
> data there can be also modified by the GuC. Instead we can
> use flag "is_in_error" to indicate that we will not process
> any further messages over this CTB (until reset). While here
> move descriptor error reporting to the function that actually
> touches that descriptor.
> 
> Note that unexpected content of the specific CT messages, that
> still complies with generic CT message format, shall not trigger
> disabling whole CTB, as that might just indicate new unsupported
> message types.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 42 ++++++++++++++---------
>   1 file changed, 26 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index a55c336cc5ef..0d3556a820a3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -578,19 +578,29 @@ static inline bool ct_header_is_response(u32 header)
>   static int ctb_read(struct intel_guc_ct_buffer *ctb, u32 *data)
>   {
>   	struct guc_ct_buffer_desc *desc = ctb->desc;
> -	u32 head = desc->head / 4;	/* in dwords */
> -	u32 tail = desc->tail / 4;	/* in dwords */
> -	u32 size = desc->size / 4;	/* in dwords */
> +	u32 head = desc->head;
> +	u32 tail = desc->tail;
> +	u32 size = desc->size;
>   	u32 *cmds = ctb->cmds;
> -	s32 available;			/* in dwords */
> +	s32 available;
>   	unsigned int len;
>   	unsigned int i;
>   
> -	GEM_BUG_ON(desc->size % 4);
> -	GEM_BUG_ON(desc->head % 4);
> -	GEM_BUG_ON(desc->tail % 4);
> -	GEM_BUG_ON(tail >= size);
> -	GEM_BUG_ON(head >= size);
> +	if (unlikely(desc->is_in_error))
> +		return -EPIPE;

How do we recover from this situation? before we marked the buffer as 
in_error but didn't stop processing of G2H, but with this return here we 
do. Do we need to reset the CTB desc to recover?

> +
> +	if (unlikely(!IS_ALIGNED(head, 4) ||
> +		     !IS_ALIGNED(tail, 4) ||
> +		     !IS_ALIGNED(size, 4) ||
> +		     (tail >= size) || (head >= size))) {
> +		DRM_ERROR("CT: Invalid data in descriptor\n");

nit: this log is redundant since we have a better message after the jump 
which includes the values

Daniele

> +		goto corrupted;
> +	}
> +
> +	/* later calculations will be done in dwords */
> +	head /= 4;
> +	tail /= 4;
> +	size /= 4;
>   
>   	/* tail == head condition indicates empty */
>   	available = tail - head;
> @@ -615,7 +625,7 @@ static int ctb_read(struct intel_guc_ct_buffer *ctb, u32 *data)
>   			       size - head : available - 1), &cmds[head],
>   			  4 * (head + available - 1 > size ?
>   			       available - 1 - size + head : 0), &cmds[0]);
> -		return -EPROTO;
> +		goto corrupted;
>   	}
>   
>   	for (i = 1; i < len; i++) {
> @@ -626,6 +636,12 @@ static int ctb_read(struct intel_guc_ct_buffer *ctb, u32 *data)
>   
>   	desc->head = head * 4;
>   	return 0;
> +
> +corrupted:
> +	DRM_ERROR("CT: Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
> +		  desc->addr, desc->head, desc->tail, desc->size);
> +	desc->is_in_error = 1;
> +	return -EPIPE;
>   }
>   
>   /**
> @@ -836,10 +852,4 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>   		else
>   			err = ct_handle_request(ct, msg);
>   	} while (!err);
> -
> -	if (GEM_WARN_ON(err == -EPROTO)) {
> -		CT_ERROR(ct, "Corrupted message: %#x\n", msg[0]);
> -		ctb->desc->is_in_error = 1;
> -	}
>   }
> -
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
