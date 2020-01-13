Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0CB139A6E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 20:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D216E14F;
	Mon, 13 Jan 2020 19:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802B76E14A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 19:59:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 11:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="245661688"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.255.88.44])
 ([10.255.88.44])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 11:59:09 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
 <20200111231114.59208-2-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <068c3cd8-985a-5cce-73bc-eb735ca16169@intel.com>
Date: Mon, 13 Jan 2020 11:59:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200111231114.59208-2-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/guc: Simpler CT message size
 calculation
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
> We need CT message size in bytes so just use that in helper var.
>
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 18 +++++++++---------
>   1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index c6f971a049f9..4aa07a53a9cf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -627,7 +627,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   {
>   	u32 header = msg[0];
>   	u32 len = ct_header_get_len(header);
> -	u32 msglen = len + 1; /* total message length including header */
> +	u32 msgsize = (len + 1) * sizeof(u32); /* msg size in bytes w/header */
>   	u32 fence;
>   	u32 status;
>   	u32 datalen;
> @@ -639,7 +639,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   
>   	/* Response payload shall at least include fence and status */
>   	if (unlikely(len < 2)) {
> -		DRM_ERROR("CT: corrupted response %*ph\n", 4 * msglen, msg);
> +		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
>   		return -EPROTO;
>   	}
>   
> @@ -649,7 +649,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   
>   	/* Format of the status follows RESPONSE message */
>   	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
> -		DRM_ERROR("CT: corrupted response %*ph\n", 4 * msglen, msg);
> +		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
>   		return -EPROTO;
>   	}
>   
> @@ -664,7 +664,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   		}
>   		if (unlikely(datalen > req->response_len)) {
>   			DRM_ERROR("CT: response %u too long %*ph\n",
> -				  req->fence, 4 * msglen, msg);
> +				  req->fence, msgsize, msg);
>   			datalen = 0;
>   		}
>   		if (datalen)
> @@ -677,7 +677,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>   	spin_unlock(&ct->requests.lock);
>   
>   	if (!found)
> -		DRM_ERROR("CT: unsolicited response %*ph\n", 4 * msglen, msg);
> +		DRM_ERROR("CT: unsolicited response %*ph\n", msgsize, msg);
>   	return 0;
>   }
>   
> @@ -767,18 +767,18 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
>   {
>   	u32 header = msg[0];
>   	u32 len = ct_header_get_len(header);
> -	u32 msglen = len + 1; /* total message length including header */
> +	u32 msgsize = (len + 1) * sizeof(u32); /* msg size in bytes w/header */
>   	struct ct_incoming_request *request;
>   	unsigned long flags;
>   
>   	GEM_BUG_ON(ct_header_is_response(header));
>   
> -	request = kmalloc(sizeof(*request) + 4 * msglen, GFP_ATOMIC);
> +	request = kmalloc(sizeof(*request) + msgsize, GFP_ATOMIC);
>   	if (unlikely(!request)) {
> -		DRM_ERROR("CT: dropping request %*ph\n", 4 * msglen, msg);
> +		DRM_ERROR("CT: dropping request %*ph\n", msgsize, msg);
>   		return 0; /* XXX: -ENOMEM ? */
>   	}
> -	memcpy(request->msg, msg, 4 * msglen);
> +	memcpy(request->msg, msg, msgsize);
>   
>   	spin_lock_irqsave(&ct->requests.lock, flags);
>   	list_add_tail(&request->link, &ct->requests.incoming);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
