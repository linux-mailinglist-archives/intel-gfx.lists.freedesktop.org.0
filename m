Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD443BDCCB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 20:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C4E6E0D1;
	Tue,  6 Jul 2021 18:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8256C6E0D1;
 Tue,  6 Jul 2021 18:12:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="188850660"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; 
 d="scan'208,217";a="188850660"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 11:12:33 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; 
 d="scan'208,217";a="457162784"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.212.151.177])
 ([10.212.151.177])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 11:12:32 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210701171550.49353-1-matthew.brost@intel.com>
 <20210701171550.49353-5-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <a620a386-f00d-3891-606e-3779e07ea057@intel.com>
Date: Tue, 6 Jul 2021 11:12:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701171550.49353-5-matthew.brost@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/guc: Add non blocking CTB send
 function
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
Content-Type: multipart/mixed; boundary="===============1922777583=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1922777583==
Content-Type: multipart/alternative;
 boundary="------------6B06524475C5946871C16EF5"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------6B06524475C5946871C16EF5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/1/2021 10:15, Matthew Brost wrote:
> Add non blocking CTB send function, intel_guc_send_nb. GuC submission
> will send CTBs in the critical path and does not need to wait for these
> CTBs to complete before moving on, hence the need for this new function.
>
> The non-blocking CTB now must have a flow control mechanism to ensure
> the buffer isn't overrun. A lazy spin wait is used as we believe the
> flow control condition should be rare with a properly sized buffer.
>
> The function, intel_guc_send_nb, is exported in this patch but unused.
> Several patches later in the series make use of this function.
>
> v2:
>   (Michal)
>    - Use define for H2G room calculations
>    - Move INTEL_GUC_SEND_NB define
>   (Daniel Vetter)
>    - Use msleep_interruptible rather than cond_resched
> v3:
>   (Michal)
>    - Move includes to following patch
>    - s/INTEL_GUC_SEND_NB/INTEL_GUC_CT_SEND_NB/g
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   .../gt/uc/abi/guc_communication_ctb_abi.h     |  3 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 11 ++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 87 +++++++++++++++++--
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  4 +-
>   4 files changed, 91 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> index e933ca02d0eb..99e1fad5ca20 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> @@ -79,7 +79,8 @@ static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
>    *  +---+-------+--------------------------------------------------------------+
>    */
>   
> -#define GUC_CTB_MSG_MIN_LEN			1u
> +#define GUC_CTB_HDR_LEN				1u
> +#define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
>   #define GUC_CTB_MSG_MAX_LEN			256u
>   #define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
>   #define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 4abc59f6f3cd..72e4653222e2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -74,7 +74,14 @@ static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>   static
>   inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u32 len)
>   {
> -	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0);
> +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0, 0);
> +}
> +
> +static
> +inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *action, u32 len)
> +{
> +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0,
> +				 INTEL_GUC_CT_SEND_NB);
>   }
>   
>   static inline int
> @@ -82,7 +89,7 @@ intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
>   			   u32 *response_buf, u32 response_buf_size)
>   {
>   	return intel_guc_ct_send(&guc->ct, action, len,
> -				 response_buf, response_buf_size);
> +				 response_buf, response_buf_size, 0);
>   }
>   
>   static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 43e03aa2dde8..fb825cc1d090 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -3,6 +3,8 @@
>    * Copyright © 2016-2019 Intel Corporation
>    */
>   
> +#include <linux/circ_buf.h>
> +
>   #include "i915_drv.h"
>   #include "intel_guc_ct.h"
>   #include "gt/intel_gt.h"
> @@ -373,7 +375,7 @@ static void write_barrier(struct intel_guc_ct *ct)
>   static int ct_write(struct intel_guc_ct *ct,
>   		    const u32 *action,
>   		    u32 len /* in dwords */,
> -		    u32 fence)
> +		    u32 fence, u32 flags)
>   {
>   	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>   	struct guc_ct_buffer_desc *desc = ctb->desc;
> @@ -409,7 +411,7 @@ static int ct_write(struct intel_guc_ct *ct,
>   		used = tail - head;
>   
>   	/* make sure there is a space including extra dw for the fence */
> -	if (unlikely(used + len + 1 >= size))
> +	if (unlikely(used + len + GUC_CTB_HDR_LEN >= size))
I thought the plan was to update the comment? Given that the '+1' is now 
'HDR_LEN' it would be good to update the comment to say 'header' instead 
of 'fence'.

>   		return -ENOSPC;
>   
>   	/*
> @@ -421,9 +423,13 @@ static int ct_write(struct intel_guc_ct *ct,
>   		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
>   		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
>   
> -	hxg = FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> -	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> -			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
> +	hxg = (flags & INTEL_GUC_CT_SEND_NB) ?
> +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_EVENT) |
> +		 FIELD_PREP(GUC_HXG_EVENT_MSG_0_ACTION |
> +			    GUC_HXG_EVENT_MSG_0_DATA0, action[0])) :
> +		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> +		 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> +			    GUC_HXG_REQUEST_MSG_0_DATA0, action[0]));
If would be much easier to read if this used a proper 'if' rather than 
an inline '?'. Or maybe have something like:

    type = SEND_NB ? TYPE_EVENT : TYPE REQUEST;
    hxg = PREP(type) | ACTION ...;


Neither issue above is a blocker but I think the comment at least should 
be fixed up when merging. With that:

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>


>   
>   	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
>   		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
> @@ -500,6 +506,48 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
>   	return err;
>   }
>   
> +static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
> +{
> +	struct guc_ct_buffer_desc *desc = ctb->desc;
> +	u32 head = READ_ONCE(desc->head);
> +	u32 space;
> +
> +	space = CIRC_SPACE(desc->tail, head, ctb->size);
> +
> +	return space >= len_dw;
> +}
> +
> +static int ct_send_nb(struct intel_guc_ct *ct,
> +		      const u32 *action,
> +		      u32 len,
> +		      u32 flags)
> +{
> +	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> +	unsigned long spin_flags;
> +	u32 fence;
> +	int ret;
> +
> +	spin_lock_irqsave(&ctb->lock, spin_flags);
> +
> +	ret = h2g_has_room(ctb, len + GUC_CTB_HDR_LEN);
> +	if (unlikely(!ret)) {
> +		ret = -EBUSY;
> +		goto out;
> +	}
> +
> +	fence = ct_get_next_fence(ct);
> +	ret = ct_write(ct, action, len, fence, flags);
> +	if (unlikely(ret))
> +		goto out;
> +
> +	intel_guc_notify(ct_to_guc(ct));
> +
> +out:
> +	spin_unlock_irqrestore(&ctb->lock, spin_flags);
> +
> +	return ret;
> +}
> +
>   static int ct_send(struct intel_guc_ct *ct,
>   		   const u32 *action,
>   		   u32 len,
> @@ -507,8 +555,10 @@ static int ct_send(struct intel_guc_ct *ct,
>   		   u32 response_buf_size,
>   		   u32 *status)
>   {
> +	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>   	struct ct_request request;
>   	unsigned long flags;
> +	unsigned int sleep_period_ms = 1;
>   	u32 fence;
>   	int err;
>   
> @@ -516,8 +566,24 @@ static int ct_send(struct intel_guc_ct *ct,
>   	GEM_BUG_ON(!len);
>   	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
>   	GEM_BUG_ON(!response_buf && response_buf_size);
> +	might_sleep();
> +
> +	/*
> +	 * We use a lazy spin wait loop here as we believe that if the CT
> +	 * buffers are sized correctly the flow control condition should be
> +	 * rare.
> +	 */
> +retry:
> +	spin_lock_irqsave(&ctb->lock, flags);
> +	if (unlikely(!h2g_has_room(ctb, len + GUC_CTB_HDR_LEN))) {
> +		spin_unlock_irqrestore(&ctb->lock, flags);
>   
> -	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> +		if (msleep_interruptible(sleep_period_ms))
> +			return -EINTR;
> +		sleep_period_ms = sleep_period_ms << 1;
> +
> +		goto retry;
> +	}
>   
>   	fence = ct_get_next_fence(ct);
>   	request.fence = fence;
> @@ -529,9 +595,9 @@ static int ct_send(struct intel_guc_ct *ct,
>   	list_add_tail(&request.link, &ct->requests.pending);
>   	spin_unlock(&ct->requests.lock);
>   
> -	err = ct_write(ct, action, len, fence);
> +	err = ct_write(ct, action, len, fence, 0);
>   
> -	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> +	spin_unlock_irqrestore(&ctb->lock, flags);
>   
>   	if (unlikely(err))
>   		goto unlink;
> @@ -571,7 +637,7 @@ static int ct_send(struct intel_guc_ct *ct,
>    * Command Transport (CT) buffer based GuC send function.
>    */
>   int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
> -		      u32 *response_buf, u32 response_buf_size)
> +		      u32 *response_buf, u32 response_buf_size, u32 flags)
>   {
>   	u32 status = ~0; /* undefined */
>   	int ret;
> @@ -581,6 +647,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
>   		return -ENODEV;
>   	}
>   
> +	if (flags & INTEL_GUC_CT_SEND_NB)
> +		return ct_send_nb(ct, action, len, flags);
> +
>   	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
>   	if (unlikely(ret < 0)) {
>   		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index 1ae2dde6db93..5bb8bef024c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -42,7 +42,6 @@ struct intel_guc_ct_buffer {
>   	bool broken;
>   };
>   
> -
>   /** Top-level structure for Command Transport related data
>    *
>    * Includes a pair of CT buffers for bi-directional communication and tracking
> @@ -87,8 +86,9 @@ static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
>   	return ct->enabled;
>   }
>   
> +#define INTEL_GUC_CT_SEND_NB		BIT(31)
>   int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
> -		      u32 *response_buf, u32 response_buf_size);
> +		      u32 *response_buf, u32 response_buf_size, u32 flags);
>   void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
>   
>   #endif /* _INTEL_GUC_CT_H_ */


--------------6B06524475C5946871C16EF5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    On 7/1/2021 10:15, Matthew Brost wrote:<br>
    <blockquote type="cite"
      cite="mid:20210701171550.49353-5-matthew.brost@intel.com">
      <pre class="moz-quote-pre" wrap="">Add non blocking CTB send function, intel_guc_send_nb. GuC submission
will send CTBs in the critical path and does not need to wait for these
CTBs to complete before moving on, hence the need for this new function.

The non-blocking CTB now must have a flow control mechanism to ensure
the buffer isn't overrun. A lazy spin wait is used as we believe the
flow control condition should be rare with a properly sized buffer.

The function, intel_guc_send_nb, is exported in this patch but unused.
Several patches later in the series make use of this function.

v2:
 (Michal)
  - Use define for H2G room calculations
  - Move INTEL_GUC_SEND_NB define
 (Daniel Vetter)
  - Use msleep_interruptible rather than cond_resched
v3:
 (Michal)
  - Move includes to following patch
  - s/INTEL_GUC_SEND_NB/INTEL_GUC_CT_SEND_NB/g

Signed-off-by: John Harrison <a class="moz-txt-link-rfc2396E" href="mailto:John.C.Harrison@Intel.com">&lt;John.C.Harrison@Intel.com&gt;</a>
Signed-off-by: Matthew Brost <a class="moz-txt-link-rfc2396E" href="mailto:matthew.brost@intel.com">&lt;matthew.brost@intel.com&gt;</a>
---
 .../gt/uc/abi/guc_communication_ctb_abi.h     |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 11 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 87 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  4 +-
 4 files changed, 91 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
index e933ca02d0eb..99e1fad5ca20 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
@@ -79,7 +79,8 @@ static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
  *  +---+-------+--------------------------------------------------------------+
  */
 
-#define GUC_CTB_MSG_MIN_LEN			1u
+#define GUC_CTB_HDR_LEN				1u
+#define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
 #define GUC_CTB_MSG_MAX_LEN			256u
 #define GUC_CTB_MSG_0_FENCE			(0xffff &lt;&lt; 16)
 #define GUC_CTB_MSG_0_FORMAT			(0xf &lt;&lt; 12)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 4abc59f6f3cd..72e4653222e2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -74,7 +74,14 @@ static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
 static
 inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u32 len)
 {
-	return intel_guc_ct_send(&amp;guc-&gt;ct, action, len, NULL, 0);
+	return intel_guc_ct_send(&amp;guc-&gt;ct, action, len, NULL, 0, 0);
+}
+
+static
+inline int intel_guc_send_nb(struct intel_guc *guc, const u32 *action, u32 len)
+{
+	return intel_guc_ct_send(&amp;guc-&gt;ct, action, len, NULL, 0,
+				 INTEL_GUC_CT_SEND_NB);
 }
 
 static inline int
@@ -82,7 +89,7 @@ intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
 			   u32 *response_buf, u32 response_buf_size)
 {
 	return intel_guc_ct_send(&amp;guc-&gt;ct, action, len,
-				 response_buf, response_buf_size);
+				 response_buf, response_buf_size, 0);
 }
 
 static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 43e03aa2dde8..fb825cc1d090 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -3,6 +3,8 @@
  * Copyright © 2016-2019 Intel Corporation
  */
 
+#include &lt;linux/circ_buf.h&gt;
+
 #include "i915_drv.h"
 #include "intel_guc_ct.h"
 #include "gt/intel_gt.h"
@@ -373,7 +375,7 @@ static void write_barrier(struct intel_guc_ct *ct)
 static int ct_write(struct intel_guc_ct *ct,
 		    const u32 *action,
 		    u32 len /* in dwords */,
-		    u32 fence)
+		    u32 fence, u32 flags)
 {
 	struct intel_guc_ct_buffer *ctb = &amp;ct-&gt;ctbs.send;
 	struct guc_ct_buffer_desc *desc = ctb-&gt;desc;
@@ -409,7 +411,7 @@ static int ct_write(struct intel_guc_ct *ct,
 		used = tail - head;
 
 	/* make sure there is a space including extra dw for the fence */
-	if (unlikely(used + len + 1 &gt;= size))
+	if (unlikely(used + len + GUC_CTB_HDR_LEN &gt;= size))</pre>
    </blockquote>
    I thought the plan was to update the comment? Given that the '+1' is
    now 'HDR_LEN' it would be good to update the comment to say 'header'
    instead of 'fence'.<br>
    <br>
    <blockquote type="cite"
      cite="mid:20210701171550.49353-5-matthew.brost@intel.com">
      <pre class="moz-quote-pre" wrap="">
 		return -ENOSPC;
 
 	/*
@@ -421,9 +423,13 @@ static int ct_write(struct intel_guc_ct *ct,
 		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
 		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
 
-	hxg = FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
-	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
-			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
+	hxg = (flags &amp; INTEL_GUC_CT_SEND_NB) ?
+		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_EVENT) |
+		 FIELD_PREP(GUC_HXG_EVENT_MSG_0_ACTION |
+			    GUC_HXG_EVENT_MSG_0_DATA0, action[0])) :
+		(FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
+		 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
+			    GUC_HXG_REQUEST_MSG_0_DATA0, action[0]));</pre>
    </blockquote>
    If would be much easier to read if this used a proper 'if' rather
    than an inline '?'. Or maybe have something like:<br>
    <blockquote>type = SEND_NB ? TYPE_EVENT : TYPE REQUEST;<br>
      hxg = PREP(type) | ACTION ...;<br>
    </blockquote>
    <br>
    Neither issue above is a blocker but I think the comment at least
    should be fixed up when merging. With that:<br>
    <br>
    Reviewed-by: John Harrison <a class="moz-txt-link-rfc2396E" href="mailto:John.C.Harrison@Intel.com">&lt;John.C.Harrison@Intel.com&gt;</a><br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:20210701171550.49353-5-matthew.brost@intel.com">
      <pre class="moz-quote-pre" wrap="">
 
 	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
 		 tail, 4, &amp;header, 4, &amp;hxg, 4 * (len - 1), &amp;action[1]);
@@ -500,6 +506,48 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 	return err;
 }
 
+static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
+{
+	struct guc_ct_buffer_desc *desc = ctb-&gt;desc;
+	u32 head = READ_ONCE(desc-&gt;head);
+	u32 space;
+
+	space = CIRC_SPACE(desc-&gt;tail, head, ctb-&gt;size);
+
+	return space &gt;= len_dw;
+}
+
+static int ct_send_nb(struct intel_guc_ct *ct,
+		      const u32 *action,
+		      u32 len,
+		      u32 flags)
+{
+	struct intel_guc_ct_buffer *ctb = &amp;ct-&gt;ctbs.send;
+	unsigned long spin_flags;
+	u32 fence;
+	int ret;
+
+	spin_lock_irqsave(&amp;ctb-&gt;lock, spin_flags);
+
+	ret = h2g_has_room(ctb, len + GUC_CTB_HDR_LEN);
+	if (unlikely(!ret)) {
+		ret = -EBUSY;
+		goto out;
+	}
+
+	fence = ct_get_next_fence(ct);
+	ret = ct_write(ct, action, len, fence, flags);
+	if (unlikely(ret))
+		goto out;
+
+	intel_guc_notify(ct_to_guc(ct));
+
+out:
+	spin_unlock_irqrestore(&amp;ctb-&gt;lock, spin_flags);
+
+	return ret;
+}
+
 static int ct_send(struct intel_guc_ct *ct,
 		   const u32 *action,
 		   u32 len,
@@ -507,8 +555,10 @@ static int ct_send(struct intel_guc_ct *ct,
 		   u32 response_buf_size,
 		   u32 *status)
 {
+	struct intel_guc_ct_buffer *ctb = &amp;ct-&gt;ctbs.send;
 	struct ct_request request;
 	unsigned long flags;
+	unsigned int sleep_period_ms = 1;
 	u32 fence;
 	int err;
 
@@ -516,8 +566,24 @@ static int ct_send(struct intel_guc_ct *ct,
 	GEM_BUG_ON(!len);
 	GEM_BUG_ON(len &amp; ~GUC_CT_MSG_LEN_MASK);
 	GEM_BUG_ON(!response_buf &amp;&amp; response_buf_size);
+	might_sleep();
+
+	/*
+	 * We use a lazy spin wait loop here as we believe that if the CT
+	 * buffers are sized correctly the flow control condition should be
+	 * rare.
+	 */
+retry:
+	spin_lock_irqsave(&amp;ctb-&gt;lock, flags);
+	if (unlikely(!h2g_has_room(ctb, len + GUC_CTB_HDR_LEN))) {
+		spin_unlock_irqrestore(&amp;ctb-&gt;lock, flags);
 
-	spin_lock_irqsave(&amp;ct-&gt;ctbs.send.lock, flags);
+		if (msleep_interruptible(sleep_period_ms))
+			return -EINTR;
+		sleep_period_ms = sleep_period_ms &lt;&lt; 1;
+
+		goto retry;
+	}
 
 	fence = ct_get_next_fence(ct);
 	request.fence = fence;
@@ -529,9 +595,9 @@ static int ct_send(struct intel_guc_ct *ct,
 	list_add_tail(&amp;request.link, &amp;ct-&gt;requests.pending);
 	spin_unlock(&amp;ct-&gt;requests.lock);
 
-	err = ct_write(ct, action, len, fence);
+	err = ct_write(ct, action, len, fence, 0);
 
-	spin_unlock_irqrestore(&amp;ct-&gt;ctbs.send.lock, flags);
+	spin_unlock_irqrestore(&amp;ctb-&gt;lock, flags);
 
 	if (unlikely(err))
 		goto unlink;
@@ -571,7 +637,7 @@ static int ct_send(struct intel_guc_ct *ct,
  * Command Transport (CT) buffer based GuC send function.
  */
 int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
-		      u32 *response_buf, u32 response_buf_size)
+		      u32 *response_buf, u32 response_buf_size, u32 flags)
 {
 	u32 status = ~0; /* undefined */
 	int ret;
@@ -581,6 +647,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 		return -ENODEV;
 	}
 
+	if (flags &amp; INTEL_GUC_CT_SEND_NB)
+		return ct_send_nb(ct, action, len, flags);
+
 	ret = ct_send(ct, action, len, response_buf, response_buf_size, &amp;status);
 	if (unlikely(ret &lt; 0)) {
 		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 1ae2dde6db93..5bb8bef024c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -42,7 +42,6 @@ struct intel_guc_ct_buffer {
 	bool broken;
 };
 
-
 /** Top-level structure for Command Transport related data
  *
  * Includes a pair of CT buffers for bi-directional communication and tracking
@@ -87,8 +86,9 @@ static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
 	return ct-&gt;enabled;
 }
 
+#define INTEL_GUC_CT_SEND_NB		BIT(31)
 int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
-		      u32 *response_buf, u32 response_buf_size);
+		      u32 *response_buf, u32 response_buf_size, u32 flags);
 void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
 
 #endif /* _INTEL_GUC_CT_H_ */
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------6B06524475C5946871C16EF5--

--===============1922777583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1922777583==--
