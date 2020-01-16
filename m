Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E05EC13F8CE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C9E6EEA3;
	Thu, 16 Jan 2020 19:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E7D6EEA3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:21:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 11:21:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214201015"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 11:21:19 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
 <20200115140822.55756-4-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <31b4fa6c-e0f2-2c01-b2a2-708a595c2c5b@intel.com>
Date: Thu, 16 Jan 2020 11:20:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115140822.55756-4-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] i915/drm/guc: Don't pass CTB while
 reading
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
> Since we only have one RECV buffer we don't need to explicitly pass
> it to the read function.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index dedbf3b8ab01..8c466308ad08 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -576,8 +576,9 @@ static inline bool ct_header_is_response(u32 header)
>   	return !!(header & GUC_CT_MSG_IS_RESPONSE);
>   }
>   
> -static int ctb_read(struct intel_guc_ct_buffer *ctb, u32 *data)
> +static int ct_read(struct intel_guc_ct *ct, u32 *data)
>   {
> +	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_RECV];
>   	struct guc_ct_buffer_desc *desc = ctb->desc;
>   	u32 head = desc->head;
>   	u32 tail = desc->tail;
> @@ -834,7 +835,6 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
>    */
>   void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>   {
> -	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_RECV];
>   	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
>   	int err = 0;
>   
> @@ -844,7 +844,7 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>   	}
>   
>   	do {
> -		err = ctb_read(ctb, msg);
> +		err = ct_read(ct, msg);
>   		if (err)
>   			break;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
