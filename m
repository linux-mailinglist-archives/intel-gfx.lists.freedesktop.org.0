Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0072513FC0D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 23:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549EC6EE6F;
	Thu, 16 Jan 2020 22:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902336EE6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 22:16:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 14:16:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214258095"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 14:16:49 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
 <20200115140822.55756-6-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <613df6a0-1b04-ff78-b1ca-bb57f957226c@intel.com>
Date: Thu, 16 Jan 2020 14:16:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115140822.55756-6-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/guc: Introduce CT_DEBUG
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
> As we now have "ct" available almost in all functions we can
> start using dev variants of logs also for debug.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 41 +++++++++++------------
>   1 file changed, 19 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index a435b01c46d6..93d7dc3748df 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -10,9 +10,10 @@
>   #define CT_ERROR(_ct, _fmt, ...) \
>   	DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>   #ifdef CONFIG_DRM_I915_DEBUG_GUC
> -#define CT_DEBUG_DRIVER(...)	DRM_DEBUG_DRIVER(__VA_ARGS__)
> +#define CT_DEBUG(_ct, _fmt, ...) \
> +	DRM_DEV_DEBUG_DRIVER(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>   #else
> -#define CT_DEBUG_DRIVER(...)	do { } while (0)
> +#define CT_DEBUG(...)	do { } while (0)
>   #endif
>   
>   struct ct_request {
> @@ -81,7 +82,6 @@ static inline const char *guc_ct_buffer_type_to_str(u32 type)
>   static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
>   				    u32 cmds_addr, u32 size)
>   {
> -	CT_DEBUG_DRIVER("CT: init addr=%#x size=%u\n", cmds_addr, size);
>   	memset(desc, 0, sizeof(*desc));
>   	desc->addr = cmds_addr;
>   	desc->size = size;
> @@ -90,8 +90,6 @@ static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
>   
>   static void guc_ct_buffer_desc_reset(struct guc_ct_buffer_desc *desc)
>   {
> -	CT_DEBUG_DRIVER("CT: desc %p reset head=%u tail=%u\n",
> -			desc, desc->head, desc->tail);
>   	desc->head = 0;
>   	desc->tail = 0;
>   	desc->is_in_error = 0;
> @@ -189,8 +187,7 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>   		return err;
>   	}
>   
> -	CT_DEBUG_DRIVER("CT: vma base=%#x\n",
> -			intel_guc_ggtt_offset(guc, ct->vma));
> +	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(guc, ct->vma));
>   
>   	/* store pointers to desc and cmds */
>   	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
> @@ -224,7 +221,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>   int intel_guc_ct_enable(struct intel_guc_ct *ct)
>   {
>   	struct intel_guc *guc = ct_to_guc(ct);
> -	u32 base;
> +	u32 base, cmds, size;
>   	int err;
>   	int i;
>   
> @@ -239,9 +236,10 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>   	 */
>   	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
>   		GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
> -		guc_ct_buffer_desc_init(ct->ctbs[i].desc,
> -					base + PAGE_SIZE/4 * i + PAGE_SIZE/2,
> -					PAGE_SIZE/4);
> +		cmds = base + PAGE_SIZE / 4 * i + PAGE_SIZE / 2;
> +		size = PAGE_SIZE / 4;
> +		CT_DEBUG(ct, "%d: addr=%#x size=%u\n", i, cmds, size);
> +		guc_ct_buffer_desc_init(ct->ctbs[i].desc, cmds, size);
>   	}
>   
>   	/*
> @@ -356,9 +354,8 @@ static int ct_write(struct intel_guc_ct *ct,
>   		 (want_response ? GUC_CT_MSG_SEND_STATUS : 0) |
>   		 (action[0] << GUC_CT_MSG_ACTION_SHIFT);
>   
> -	CT_DEBUG_DRIVER("CT: writing %*ph %*ph %*ph\n",
> -			4, &header, 4, &fence,
> -			4 * (len - 1), &action[1]);
> +	CT_DEBUG(ct, "writing %*ph %*ph %*ph\n",
> +		 4, &header, 4, &fence, 4 * (len - 1), &action[1]);
>   
>   	cmds[tail] = header;
>   	tail = (tail + 1) % size;
> @@ -553,8 +550,8 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
>   		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
>   			 action[0], ret, status);
>   	} else if (unlikely(ret)) {
> -		CT_DEBUG_DRIVER("CT: send action %#x returned %d (%#x)\n",
> -				action[0], ret, ret);
> +		CT_DEBUG(ct, "send action %#x returned %d (%#x)\n",
> +			 action[0], ret, ret);
>   	}
>   
>   	mutex_unlock(&guc->send_mutex);
> @@ -612,7 +609,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
>   	/* beware of buffer wrap case */
>   	if (unlikely(available < 0))
>   		available += size;
> -	CT_DEBUG_DRIVER("CT: available %d (%u:%u)\n", available, head, tail);
> +	CT_DEBUG(ct, "available %d (%u:%u)\n", available, head, tail);
>   	GEM_BUG_ON(available < 0);
>   
>   	data[0] = cmds[head];
> @@ -634,7 +631,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
>   		data[i] = cmds[head];
>   		head = (head + 1) % size;
>   	}
> -	CT_DEBUG_DRIVER("CT: received %*ph\n", 4 * len, data);
> +	CT_DEBUG(ct, "received %*ph\n", 4 * len, data);
>   
>   	desc->head = head * 4;
>   	return 0;
> @@ -694,13 +691,13 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   		return -EPROTO;
>   	}
>   
> -	CT_DEBUG_DRIVER("CT: response fence %u status %#x\n", fence, status);
> +	CT_DEBUG(ct, "response fence %u status %#x\n", fence, status);
>   
>   	spin_lock(&ct->requests.lock);
>   	list_for_each_entry(req, &ct->requests.pending, link) {
>   		if (unlikely(fence != req->fence)) {
> -			CT_DEBUG_DRIVER("CT: request %u awaits response\n",
> -					req->fence);
> +			CT_DEBUG(ct, "request %u awaits response\n",
> +				 req->fence);
>   			continue;
>   		}
>   		if (unlikely(datalen > req->response_len)) {
> @@ -728,7 +725,7 @@ static void ct_process_request(struct intel_guc_ct *ct,
>   	struct intel_guc *guc = ct_to_guc(ct);
>   	int ret;
>   
> -	CT_DEBUG_DRIVER("CT: request %x %*ph\n", action, 4 * len, payload);
> +	CT_DEBUG(ct, "request %x %*ph\n", action, 4 * len, payload);
>   
>   	switch (action) {
>   	case INTEL_GUC_ACTION_DEFAULT:
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
