Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC7B139AA9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 21:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828268990D;
	Mon, 13 Jan 2020 20:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C9B8990D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 20:20:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 12:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="245758021"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.255.88.44])
 ([10.255.88.44])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 12:20:26 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
 <20200111231114.59208-3-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <138a54aa-de99-c4f3-1b9f-32d8f34a28db@intel.com>
Date: Mon, 13 Jan 2020 12:20:25 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200111231114.59208-3-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/guc: Introduce CT_ERROR
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
> We should start using dev variants of error logging and
> to simplify that introduce helper macro that will do any
> necessary conversions to obtain pointer to device struct.
>
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 46 ++++++++++++++++-------
>   1 file changed, 32 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 4aa07a53a9cf..eb123543392a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -5,7 +5,10 @@
>   
>   #include "i915_drv.h"
>   #include "intel_guc_ct.h"
> +#include "gt/intel_gt.h"
>   
> +#define CT_ERROR(_ct, _fmt, ...) \
> +	DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>   #ifdef CONFIG_DRM_I915_DEBUG_GUC
>   #define CT_DEBUG_DRIVER(...)	DRM_DEBUG_DRIVER(__VA_ARGS__)

I'm not convinced by the fact that CT_ERROR and CT_DEBUG_DRIVER now have 
different styles. Maybe we should go with something like:

#define __CT_MSG(level, _ct, _fmt, ...) \
	DRM_DEV_##level(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)

#define CT_ERROR(_ct, _fmt, ...) __CT_MSG(ERROR, _ct, _fmt, ##__VA_ARGS__)

#ifdef CONFIG_DRM_I915_DEBUG_GUC
#define CT_DEBUG(_ct, _fmt, ...) \
	__CT_MSG(DEBUG_DRIVER, _ct, _fmt, ##__VA_ARGS__)
#else
#define CT_DEBUG(...)  do { } while (0)
#endif


Thoughts?

Daniele

>   #else
> @@ -48,6 +51,21 @@ static inline struct intel_guc *ct_to_guc(struct intel_guc_ct *ct)
>   	return container_of(ct, struct intel_guc, ct);
>   }
>   
> +static inline struct intel_gt *ct_to_gt(struct intel_guc_ct *ct)
> +{
> +	return guc_to_gt(ct_to_guc(ct));
> +}
> +
> +static inline struct drm_i915_private *ct_to_i915(struct intel_guc_ct *ct)
> +{
> +	return ct_to_gt(ct)->i915;
> +}
> +
> +static inline struct device *ct_to_dev(struct intel_guc_ct *ct)
> +{
> +	return ct_to_i915(ct)->drm.dev;
> +}
> +
>   static inline const char *guc_ct_buffer_type_to_str(u32 type)
>   {
>   	switch (type) {
> @@ -157,8 +175,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>   	 */
>   
>   	err = intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ct->vma, &blob);
> -	if (err) {
> -		DRM_ERROR("CT: channel allocation failed; err=%d\n", err);
> +	if (unlikely(err)) {
> +		CT_ERROR(ct, "Failed to allocate CT channel (err=%d)\n", err);
>   		return err;
>   	}
>   
> @@ -240,7 +258,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>   	guc_action_deregister_ct_buffer(guc,
>   					INTEL_GUC_CT_BUFFER_TYPE_RECV);
>   err_out:
> -	DRM_ERROR("CT: can't open channel; err=%d\n", err);
> +	CT_ERROR(ct, "Failed to open open CT channel (err=%d)\n", err);
>   	return err;
>   }
>   
> @@ -526,8 +544,8 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
>   
>   	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
>   	if (unlikely(ret < 0)) {
> -		DRM_ERROR("CT: send action %#X failed; err=%d status=%#X\n",
> -			  action[0], ret, status);
> +		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
> +			 action[0], ret, status);
>   	} else if (unlikely(ret)) {
>   		CT_DEBUG_DRIVER("CT: send action %#x returned %d (%#x)\n",
>   				action[0], ret, ret);
> @@ -639,7 +657,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   
>   	/* Response payload shall at least include fence and status */
>   	if (unlikely(len < 2)) {
> -		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
> +		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
>   		return -EPROTO;
>   	}
>   
> @@ -649,7 +667,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   
>   	/* Format of the status follows RESPONSE message */
>   	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
> -		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
> +		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
>   		return -EPROTO;
>   	}
>   
> @@ -663,8 +681,8 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   			continue;
>   		}
>   		if (unlikely(datalen > req->response_len)) {
> -			DRM_ERROR("CT: response %u too long %*ph\n",
> -				  req->fence, msgsize, msg);
> +			CT_ERROR(ct, "Response for %u is too long %*ph\n",
> +				 req->fence, msgsize, msg);
>   			datalen = 0;
>   		}
>   		if (datalen)
> @@ -677,7 +695,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   	spin_unlock(&ct->requests.lock);
>   
>   	if (!found)
> -		DRM_ERROR("CT: unsolicited response %*ph\n", msgsize, msg);
> +		CT_ERROR(ct, "Unsolicited response %*ph\n", msgsize, msg);
>   	return 0;
>   }
>   
> @@ -698,8 +716,8 @@ static void ct_process_request(struct intel_guc_ct *ct,
>   
>   	default:
>   fail_unexpected:
> -		DRM_ERROR("CT: unexpected request %x %*ph\n",
> -			  action, 4 * len, payload);
> +		CT_ERROR(ct, "Unexpected request %x %*ph\n",
> +			 action, 4 * len, payload);
>   		break;
>   	}
>   }
> @@ -775,7 +793,7 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
>   
>   	request = kmalloc(sizeof(*request) + msgsize, GFP_ATOMIC);
>   	if (unlikely(!request)) {
> -		DRM_ERROR("CT: dropping request %*ph\n", msgsize, msg);
> +		CT_ERROR(ct, "Dropping request %*ph\n", msgsize, msg);
>   		return 0; /* XXX: -ENOMEM ? */
>   	}
>   	memcpy(request->msg, msg, msgsize);
> @@ -815,7 +833,7 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>   	} while (!err);
>   
>   	if (GEM_WARN_ON(err == -EPROTO)) {
> -		DRM_ERROR("CT: corrupted message detected!\n");
> +		CT_ERROR(ct, "Corrupted message: %#x\n", msg[0]);
>   		ctb->desc->is_in_error = 1;
>   	}
>   }

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
