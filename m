Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E02B0139AFA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 21:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43AA76E159;
	Mon, 13 Jan 2020 20:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3EF6E159
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 20:52:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 12:52:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="219396074"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jan 2020 12:52:20 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.88])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00DKqKbw029096; Mon, 13 Jan 2020 20:52:21 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
 <20200111231114.59208-3-michal.wajdeczko@intel.com>
 <138a54aa-de99-c4f3-1b9f-32d8f34a28db@intel.com>
Date: Mon, 13 Jan 2020 21:52:20 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0ecmxiozxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <138a54aa-de99-c4f3-1b9f-32d8f34a28db@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 Jan 2020 21:20:25 +0100, Daniele Ceraolo Spurio  
<daniele.ceraolospurio@intel.com> wrote:

>
>
> On 1/11/2020 3:11 PM, Michal Wajdeczko wrote:
>> We should start using dev variants of error logging and
>> to simplify that introduce helper macro that will do any
>> necessary conversions to obtain pointer to device struct.
>>
>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 46 ++++++++++++++++-------
>>   1 file changed, 32 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c  
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index 4aa07a53a9cf..eb123543392a 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -5,7 +5,10 @@
>>     #include "i915_drv.h"
>>   #include "intel_guc_ct.h"
>> +#include "gt/intel_gt.h"
>>   +#define CT_ERROR(_ct, _fmt, ...) \
>> +	DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>>   #ifdef CONFIG_DRM_I915_DEBUG_GUC
>>   #define CT_DEBUG_DRIVER(...)	DRM_DEBUG_DRIVER(__VA_ARGS__)
>
> I'm not convinced by the fact that CT_ERROR and CT_DEBUG_DRIVER now have  
> different styles. Maybe we should go with something like:
>
> #define __CT_MSG(level, _ct, _fmt, ...) \
> 	DRM_DEV_##level(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>
> #define CT_ERROR(_ct, _fmt, ...) __CT_MSG(ERROR, _ct, _fmt,  
> ##__VA_ARGS__)
>
> #ifdef CONFIG_DRM_I915_DEBUG_GUC
> #define CT_DEBUG(_ct, _fmt, ...) \
> 	__CT_MSG(DEBUG_DRIVER, _ct, _fmt, ##__VA_ARGS__)
> #else
> #define CT_DEBUG(...)  do { } while (0)
> #endif
>
>
> Thoughts?

This is on my todo-list: I'm planning to add CT_DEBUG (with unified
style) after completing some other necessary refactoring to get 'ct'
in all places where we would like to replace old CT_DEBUG_DRIVER (as
you may notice now in some places we don't have ct/dev handy)

Michal

>
> Daniele
>
>>   #else
>> @@ -48,6 +51,21 @@ static inline struct intel_guc *ct_to_guc(struct  
>> intel_guc_ct *ct)
>>   	return container_of(ct, struct intel_guc, ct);
>>   }
>>   +static inline struct intel_gt *ct_to_gt(struct intel_guc_ct *ct)
>> +{
>> +	return guc_to_gt(ct_to_guc(ct));
>> +}
>> +
>> +static inline struct drm_i915_private *ct_to_i915(struct intel_guc_ct  
>> *ct)
>> +{
>> +	return ct_to_gt(ct)->i915;
>> +}
>> +
>> +static inline struct device *ct_to_dev(struct intel_guc_ct *ct)
>> +{
>> +	return ct_to_i915(ct)->drm.dev;
>> +}
>> +
>>   static inline const char *guc_ct_buffer_type_to_str(u32 type)
>>   {
>>   	switch (type) {
>> @@ -157,8 +175,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>   	 */
>>     	err = intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ct->vma,  
>> &blob);
>> -	if (err) {
>> -		DRM_ERROR("CT: channel allocation failed; err=%d\n", err);
>> +	if (unlikely(err)) {
>> +		CT_ERROR(ct, "Failed to allocate CT channel (err=%d)\n", err);
>>   		return err;
>>   	}
>>   @@ -240,7 +258,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>   	guc_action_deregister_ct_buffer(guc,
>>   					INTEL_GUC_CT_BUFFER_TYPE_RECV);
>>   err_out:
>> -	DRM_ERROR("CT: can't open channel; err=%d\n", err);
>> +	CT_ERROR(ct, "Failed to open open CT channel (err=%d)\n", err);
>>   	return err;
>>   }
>>   @@ -526,8 +544,8 @@ int intel_guc_ct_send(struct intel_guc_ct *ct,  
>> const u32 *action, u32 len,
>>     	ret = ct_send(ct, action, len, response_buf, response_buf_size,  
>> &status);
>>   	if (unlikely(ret < 0)) {
>> -		DRM_ERROR("CT: send action %#X failed; err=%d status=%#X\n",
>> -			  action[0], ret, status);
>> +		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
>> +			 action[0], ret, status);
>>   	} else if (unlikely(ret)) {
>>   		CT_DEBUG_DRIVER("CT: send action %#x returned %d (%#x)\n",
>>   				action[0], ret, ret);
>> @@ -639,7 +657,7 @@ static int ct_handle_response(struct intel_guc_ct  
>> *ct, const u32 *msg)
>>     	/* Response payload shall at least include fence and status */
>>   	if (unlikely(len < 2)) {
>> -		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
>> +		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
>>   		return -EPROTO;
>>   	}
>>   @@ -649,7 +667,7 @@ static int ct_handle_response(struct intel_guc_ct  
>> *ct, const u32 *msg)
>>     	/* Format of the status follows RESPONSE message */
>>   	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
>> -		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
>> +		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
>>   		return -EPROTO;
>>   	}
>>   @@ -663,8 +681,8 @@ static int ct_handle_response(struct intel_guc_ct  
>> *ct, const u32 *msg)
>>   			continue;
>>   		}
>>   		if (unlikely(datalen > req->response_len)) {
>> -			DRM_ERROR("CT: response %u too long %*ph\n",
>> -				  req->fence, msgsize, msg);
>> +			CT_ERROR(ct, "Response for %u is too long %*ph\n",
>> +				 req->fence, msgsize, msg);
>>   			datalen = 0;
>>   		}
>>   		if (datalen)
>> @@ -677,7 +695,7 @@ static int ct_handle_response(struct intel_guc_ct  
>> *ct, const u32 *msg)
>>   	spin_unlock(&ct->requests.lock);
>>     	if (!found)
>> -		DRM_ERROR("CT: unsolicited response %*ph\n", msgsize, msg);
>> +		CT_ERROR(ct, "Unsolicited response %*ph\n", msgsize, msg);
>>   	return 0;
>>   }
>>   @@ -698,8 +716,8 @@ static void ct_process_request(struct  
>> intel_guc_ct *ct,
>>     	default:
>>   fail_unexpected:
>> -		DRM_ERROR("CT: unexpected request %x %*ph\n",
>> -			  action, 4 * len, payload);
>> +		CT_ERROR(ct, "Unexpected request %x %*ph\n",
>> +			 action, 4 * len, payload);
>>   		break;
>>   	}
>>   }
>> @@ -775,7 +793,7 @@ static int ct_handle_request(struct intel_guc_ct  
>> *ct, const u32 *msg)
>>     	request = kmalloc(sizeof(*request) + msgsize, GFP_ATOMIC);
>>   	if (unlikely(!request)) {
>> -		DRM_ERROR("CT: dropping request %*ph\n", msgsize, msg);
>> +		CT_ERROR(ct, "Dropping request %*ph\n", msgsize, msg);
>>   		return 0; /* XXX: -ENOMEM ? */
>>   	}
>>   	memcpy(request->msg, msg, msgsize);
>> @@ -815,7 +833,7 @@ void intel_guc_ct_event_handler(struct intel_guc_ct  
>> *ct)
>>   	} while (!err);
>>     	if (GEM_WARN_ON(err == -EPROTO)) {
>> -		DRM_ERROR("CT: corrupted message detected!\n");
>> +		CT_ERROR(ct, "Corrupted message: %#x\n", msg[0]);
>>   		ctb->desc->is_in_error = 1;
>>   	}
>>   }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
