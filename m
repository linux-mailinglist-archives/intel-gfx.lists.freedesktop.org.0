Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC52390901
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 20:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F3E6EAA0;
	Tue, 25 May 2021 18:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B8FD6EAA0;
 Tue, 25 May 2021 18:32:16 +0000 (UTC)
IronPort-SDR: 6WrGsm33ee/LjDvMB1OeqZRFHy9iyk/R0OGh3OvGCXOf7lmocA7MqJyz2bUjPN3Ur3lIKIHj8p
 ff2/EEIPn9Ig==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="199214093"
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="199214093"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 11:32:13 -0700
IronPort-SDR: 4kuWneIXsdHtkzAektilCTB+Vv0p6l0MTHsHq+j09yLafOsb3WE3AEfmrGe/2mSJdGHQAo+NXj
 KtFz/l2E2f2Q==
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="546878989"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 11:32:13 -0700
Date: Tue, 25 May 2021 11:25:06 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210525182505.GA25419@sdutt-i7>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-20-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506191451.77768-20-matthew.brost@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC PATCH 19/97] drm/i915/guc: Always copy CT
 message to new allocation
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 06, 2021 at 12:13:33PM -0700, Matthew Brost wrote:
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> =

> Since most of future CT traffic will be based on G2H requests,
> instead of copying incoming CT message to static buffer and then
> create new allocation for such request, always copy incoming CT
> message to new allocation. Also by doing it while reading CT
> header, we can safely fallback if that atomic allocation fails.
> =

> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: Piotr Pi=F3rkowski <piotr.piorkowski@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 180 ++++++++++++++--------
>  1 file changed, 120 insertions(+), 60 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/=
i915/gt/uc/intel_guc_ct.c
> index d630ec32decf..a174978c6a27 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -72,8 +72,9 @@ struct ct_request {
>  	u32 *response_buf;
>  };
>  =

> -struct ct_incoming_request {
> +struct ct_incoming_msg {
>  	struct list_head link;
> +	u32 size;
>  	u32 msg[];
>  };
>  =

> @@ -575,7 +576,26 @@ static inline bool ct_header_is_response(u32 header)
>  	return !!(header & GUC_CT_MSG_IS_RESPONSE);
>  }
>  =

> -static int ct_read(struct intel_guc_ct *ct, u32 *data)
> +static struct ct_incoming_msg *ct_alloc_msg(u32 num_dwords)
> +{
> +	struct ct_incoming_msg *msg;
> +
> +	msg =3D kmalloc(sizeof(*msg) + sizeof(u32) * num_dwords, GFP_ATOMIC);
> +	if (msg)
> +		msg->size =3D num_dwords;
> +	return msg;
> +}
> +
> +static void ct_free_msg(struct ct_incoming_msg *msg)
> +{
> +	kfree(msg);
> +}
> +
> +/*
> + * Return: number available remaining dwords to read (0 if empty)
> + *         or a negative error code on failure
> + */
> +static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  {
>  	struct intel_guc_ct_buffer *ctb =3D &ct->ctbs.recv;
>  	struct guc_ct_buffer_desc *desc =3D ctb->desc;
> @@ -586,6 +606,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
>  	s32 available;
>  	unsigned int len;
>  	unsigned int i;
> +	u32 header;
>  =

>  	if (unlikely(desc->is_in_error))
>  		return -EPIPE;
> @@ -601,8 +622,10 @@ static int ct_read(struct intel_guc_ct *ct, u32 *dat=
a)
>  =

>  	/* tail =3D=3D head condition indicates empty */
>  	available =3D tail - head;
> -	if (unlikely(available =3D=3D 0))
> -		return -ENODATA;
> +	if (unlikely(available =3D=3D 0)) {
> +		*msg =3D NULL;
> +		return 0;
> +	}
>  =

>  	/* beware of buffer wrap case */
>  	if (unlikely(available < 0))
> @@ -610,14 +633,14 @@ static int ct_read(struct intel_guc_ct *ct, u32 *da=
ta)
>  	CT_DEBUG(ct, "available %d (%u:%u)\n", available, head, tail);
>  	GEM_BUG_ON(available < 0);
>  =

> -	data[0] =3D cmds[head];
> +	header =3D cmds[head];
>  	head =3D (head + 1) % size;
>  =

>  	/* message len with header */
> -	len =3D ct_header_get_len(data[0]) + 1;
> +	len =3D ct_header_get_len(header) + 1;
>  	if (unlikely(len > (u32)available)) {
>  		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
> -			 4, data,
> +			 4, &header,
>  			 4 * (head + available - 1 > size ?
>  			      size - head : available - 1), &cmds[head],
>  			 4 * (head + available - 1 > size ?
> @@ -625,11 +648,24 @@ static int ct_read(struct intel_guc_ct *ct, u32 *da=
ta)
>  		goto corrupted;
>  	}
>  =

> +	*msg =3D ct_alloc_msg(len);
> +	if (!*msg) {
> +		CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
> +			 4, &header,
> +			 4 * (head + available - 1 > size ?
> +			      size - head : available - 1), &cmds[head],
> +			 4 * (head + available - 1 > size ?
> +			      available - 1 - size + head : 0), &cmds[0]);
> +		return available;
> +	}
> +
> +	(*msg)->msg[0] =3D header;
> +
>  	for (i =3D 1; i < len; i++) {
> -		data[i] =3D cmds[head];
> +		(*msg)->msg[i] =3D cmds[head];
>  		head =3D (head + 1) % size;
>  	}
> -	CT_DEBUG(ct, "received %*ph\n", 4 * len, data);
> +	CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
>  =

>  	desc->head =3D head * 4;
>  	return available - len;
> @@ -659,33 +695,33 @@ static int ct_read(struct intel_guc_ct *ct, u32 *da=
ta)
>   *                   ^-----------------------len-----------------------^
>   */
>  =

> -static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
> +static int ct_handle_response(struct intel_guc_ct *ct, struct ct_incomin=
g_msg *response)
>  {
> -	u32 header =3D msg[0];
> +	u32 header =3D response->msg[0];
>  	u32 len =3D ct_header_get_len(header);
> -	u32 msgsize =3D (len + 1) * sizeof(u32); /* msg size in bytes w/header =
*/
>  	u32 fence;
>  	u32 status;
>  	u32 datalen;
>  	struct ct_request *req;
>  	unsigned long flags;
>  	bool found =3D false;
> +	int err =3D 0;
>  =

>  	GEM_BUG_ON(!ct_header_is_response(header));
>  =

>  	/* Response payload shall at least include fence and status */
>  	if (unlikely(len < 2)) {
> -		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
> +		CT_ERROR(ct, "Corrupted response (len %u)\n", len);
>  		return -EPROTO;
>  	}
>  =

> -	fence =3D msg[1];
> -	status =3D msg[2];
> +	fence =3D response->msg[1];
> +	status =3D response->msg[2];
>  	datalen =3D len - 2;
>  =

>  	/* Format of the status follows RESPONSE message */
>  	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
> -		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
> +		CT_ERROR(ct, "Corrupted response (status %#x)\n", status);
>  		return -EPROTO;
>  	}
>  =

> @@ -699,12 +735,13 @@ static int ct_handle_response(struct intel_guc_ct *=
ct, const u32 *msg)
>  			continue;
>  		}
>  		if (unlikely(datalen > req->response_len)) {
> -			CT_ERROR(ct, "Response for %u is too long %*ph\n",
> -				 req->fence, msgsize, msg);
> -			datalen =3D 0;
> +			CT_ERROR(ct, "Response %u too long (datalen %u > %u)\n",
> +				 req->fence, datalen, req->response_len);
> +			datalen =3D min(datalen, req->response_len);
> +			err =3D -EMSGSIZE;
>  		}
>  		if (datalen)
> -			memcpy(req->response_buf, msg + 3, 4 * datalen);
> +			memcpy(req->response_buf, response->msg + 3, 4 * datalen);
>  		req->response_len =3D datalen;
>  		WRITE_ONCE(req->status, status);
>  		found =3D true;
> @@ -712,45 +749,61 @@ static int ct_handle_response(struct intel_guc_ct *=
ct, const u32 *msg)
>  	}
>  	spin_unlock_irqrestore(&ct->requests.lock, flags);
>  =

> -	if (!found)
> -		CT_ERROR(ct, "Unsolicited response %*ph\n", msgsize, msg);
> +	if (!found) {
> +		CT_ERROR(ct, "Unsolicited response (fence %u)\n", fence);
> +		return -ENOKEY;
> +	}
> +
> +	if (unlikely(err))
> +		return err;
> +
> +	ct_free_msg(response);
>  	return 0;
>  }
>  =

> -static void ct_process_request(struct intel_guc_ct *ct,
> -			       u32 action, u32 len, const u32 *payload)
> +static int ct_process_request(struct intel_guc_ct *ct, struct ct_incomin=
g_msg *request)
>  {
>  	struct intel_guc *guc =3D ct_to_guc(ct);
> +	u32 header, action, len;
> +	const u32 *payload;
>  	int ret;
>  =

> +	header =3D request->msg[0];
> +	payload =3D &request->msg[1];
> +	action =3D ct_header_get_action(header);
> +	len =3D ct_header_get_len(header);
> +
>  	CT_DEBUG(ct, "request %x %*ph\n", action, 4 * len, payload);
>  =

>  	switch (action) {
>  	case INTEL_GUC_ACTION_DEFAULT:
>  		ret =3D intel_guc_to_host_process_recv_msg(guc, payload, len);
> -		if (unlikely(ret))
> -			goto fail_unexpected;
>  		break;
> -
>  	default:
> -fail_unexpected:
> -		CT_ERROR(ct, "Unexpected request %x %*ph\n",
> -			 action, 4 * len, payload);
> +		ret =3D -EOPNOTSUPP;
>  		break;
>  	}
> +
> +	if (unlikely(ret)) {
> +		CT_ERROR(ct, "Failed to process request %04x (%pe)\n",
> +			 action, ERR_PTR(ret));
> +		return ret;
> +	}
> +
> +	ct_free_msg(request);
> +	return 0;
>  }
>  =

>  static bool ct_process_incoming_requests(struct intel_guc_ct *ct)
>  {
>  	unsigned long flags;
> -	struct ct_incoming_request *request;
> -	u32 header;
> -	u32 *payload;
> +	struct ct_incoming_msg *request;
>  	bool done;
> +	int err;
>  =

>  	spin_lock_irqsave(&ct->requests.lock, flags);
>  	request =3D list_first_entry_or_null(&ct->requests.incoming,
> -					   struct ct_incoming_request, link);
> +					   struct ct_incoming_msg, link);
>  	if (request)
>  		list_del(&request->link);
>  	done =3D !!list_empty(&ct->requests.incoming);
> @@ -759,14 +812,13 @@ static bool ct_process_incoming_requests(struct int=
el_guc_ct *ct)
>  	if (!request)
>  		return true;
>  =

> -	header =3D request->msg[0];
> -	payload =3D &request->msg[1];
> -	ct_process_request(ct,
> -			   ct_header_get_action(header),
> -			   ct_header_get_len(header),
> -			   payload);
> +	err =3D ct_process_request(ct, request);
> +	if (unlikely(err)) {
> +		CT_ERROR(ct, "Failed to process CT message (%pe) %*ph\n",
> +			 ERR_PTR(err), 4 * request->size, request->msg);
> +		ct_free_msg(request);
> +	}
>  =

> -	kfree(request);
>  	return done;
>  }
>  =

> @@ -799,22 +851,11 @@ static void ct_incoming_request_worker_func(struct =
work_struct *w)
>   *                   ^-----------------------len-----------------------^
>   */
>  =

> -static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
> +static int ct_handle_request(struct intel_guc_ct *ct, struct ct_incoming=
_msg *request)
>  {
> -	u32 header =3D msg[0];
> -	u32 len =3D ct_header_get_len(header);
> -	u32 msgsize =3D (len + 1) * sizeof(u32); /* msg size in bytes w/header =
*/
> -	struct ct_incoming_request *request;
>  	unsigned long flags;
>  =

> -	GEM_BUG_ON(ct_header_is_response(header));
> -
> -	request =3D kmalloc(sizeof(*request) + msgsize, GFP_ATOMIC);
> -	if (unlikely(!request)) {
> -		CT_ERROR(ct, "Dropping request %*ph\n", msgsize, msg);
> -		return 0; /* XXX: -ENOMEM ? */
> -	}
> -	memcpy(request->msg, msg, msgsize);
> +	GEM_BUG_ON(ct_header_is_response(request->msg[0]));
>  =

>  	spin_lock_irqsave(&ct->requests.lock, flags);
>  	list_add_tail(&request->link, &ct->requests.incoming);
> @@ -824,22 +865,41 @@ static int ct_handle_request(struct intel_guc_ct *c=
t, const u32 *msg)
>  	return 0;
>  }
>  =

> +static void ct_handle_msg(struct intel_guc_ct *ct, struct ct_incoming_ms=
g *msg)
> +{
> +	u32 header =3D msg->msg[0];
> +	int err;
> +
> +	if (ct_header_is_response(header))
> +		err =3D ct_handle_response(ct, msg);
> +	else
> +		err =3D ct_handle_request(ct, msg);
> +
> +	if (unlikely(err)) {
> +		CT_ERROR(ct, "Failed to process CT message (%pe) %*ph\n",
> +			 ERR_PTR(err), 4 * msg->size, msg->msg);
> +		ct_free_msg(msg);
> +	}
> +}
> +
> +/*
> + * Return: number available remaining dwords to read (0 if empty)
> + *         or a negative error code on failure
> + */
>  static int ct_receive(struct intel_guc_ct *ct)
>  {
> -	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
> +	struct ct_incoming_msg *msg =3D NULL;
>  	unsigned long flags;
>  	int ret;
>  =

>  	spin_lock_irqsave(&ct->ctbs.recv.lock, flags);
> -	ret =3D ct_read(ct, msg);
> +	ret =3D ct_read(ct, &msg);
>  	spin_unlock_irqrestore(&ct->ctbs.recv.lock, flags);
>  	if (ret < 0)
>  		return ret;
>  =

> -	if (ct_header_is_response(msg[0]))
> -		ct_handle_response(ct, msg);
> -	else
> -		ct_handle_request(ct, msg);
> +	if (msg)
> +		ct_handle_msg(ct, msg);
>  =

>  	return ret;
>  }
> -- =

> 2.28.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
