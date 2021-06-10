Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34CE3A2319
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 06:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0E16E453;
	Thu, 10 Jun 2021 04:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA1B16E44D;
 Thu, 10 Jun 2021 04:07:58 +0000 (UTC)
IronPort-SDR: bJsuPdpRJsqc+U5/03lbCLiRhtfw7KY9ajqbhX4iwGqFlHf4eWrcEtca9+m1IcsWCY0Pcc9vwU
 TKgixA7vKLog==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="192536886"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="192536886"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:07:56 -0700
IronPort-SDR: gaAW1yw3VAuJIKYCYbWziC03V91BoWVB+Ofb6/WsuMsftdLjZdTDZBPh7YeblRP4jAuTSCaFIi
 7oH4hiDg5ufA==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="448546957"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:07:56 -0700
Date: Wed, 9 Jun 2021 21:01:02 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210610040101.GA7483@sdutt-i7>
References: <20210607180356.165785-1-matthew.brost@intel.com>
 <20210607180356.165785-9-matthew.brost@intel.com>
 <a1a2c609-f68c-9aa5-ec73-f6ac8358d659@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1a2c609-f68c-9aa5-ec73-f6ac8358d659@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/guc: New CTB based
 communication
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 07, 2021 at 07:20:01PM -0700, Daniele Ceraolo Spurio wrote:
> =

> =

> On 6/7/2021 11:03 AM, Matthew Brost wrote:
> > From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > =

> > Format of the CTB messages has changed:
> >   - support for multiple formats
> >   - message fence is now part of the header
> >   - reuse of unified HXG message formats
> > =

> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > Cc: Piotr Pi=F3rkowski <piotr.piorkowski@intel.com>
> > ---
> >   .../gt/uc/abi/guc_communication_ctb_abi.h     |  56 +++++
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 194 +++++++-----------
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   2 +-
> >   3 files changed, 135 insertions(+), 117 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h=
 b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> > index 127b256a662c..92660726c094 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> > @@ -60,6 +60,62 @@ struct guc_ct_buffer_desc {
> >   } __packed;
> >   static_assert(sizeof(struct guc_ct_buffer_desc) =3D=3D 64);
> > +/**
> > + * DOC: CTB Message
> > + *
> > + *  +---+-------+-----------------------------------------------------=
---------+
> > + *  |   | Bits  | Description                                         =
         |
> > + *  +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+
> > + *  | 0 | 31:16 | **FENCE** - message identifier                      =
         |
> > + *  |   +-------+-----------------------------------------------------=
---------+
> > + *  |   | 15:12 | **FORMAT** - format of the CTB message              =
         |
> > + *  |   |       |  - _`GUC_CTB_FORMAT_HXG` =3D 0 - see `CTB HXG Messag=
e`_        |
> > + *  |   +-------+-----------------------------------------------------=
---------+
> > + *  |   |  11:8 | **RESERVED**                                        =
         |
> > + *  |   +-------+-----------------------------------------------------=
---------+
> > + *  |   |   7:0 | **NUM_DWORDS** - length of the CTB message (w/o head=
er)      |
> > + *  +---+-------+-----------------------------------------------------=
---------+
> > + *  | 1 |  31:0 | optional (depends on FORMAT)                        =
         |
> > + *  +---+-------+                                                     =
         |
> > + *  |...|       |                                                     =
         |
> > + *  +---+-------+                                                     =
         |
> > + *  | n |  31:0 |                                                     =
         |
> > + *  +---+-------+-----------------------------------------------------=
---------+
> > + */
> > +
> > +#define GUC_CTB_MSG_MIN_LEN			1u
> > +#define GUC_CTB_MSG_MAX_LEN			256u
> > +#define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
> > +#define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
> > +#define   GUC_CTB_FORMAT_HXG			0u
> > +#define GUC_CTB_MSG_0_RESERVED			(0xf << 8)
> > +#define GUC_CTB_MSG_0_NUM_DWORDS		(0xff << 0)
> > +
> > +/**
> > + * DOC: CTB HXG Message
> > + *
> > + *  +---+-------+-----------------------------------------------------=
---------+
> > + *  |   | Bits  | Description                                         =
         |
> > + *  +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+
> > + *  | 0 | 31:16 | FENCE                                               =
         |
> > + *  |   +-------+-----------------------------------------------------=
---------+
> > + *  |   | 15:12 | FORMAT =3D GUC_CTB_FORMAT_HXG_                      =
           |
> > + *  |   +-------+-----------------------------------------------------=
---------+
> > + *  |   |  11:8 | RESERVED =3D MBZ                                    =
           |
> > + *  |   +-------+-----------------------------------------------------=
---------+
> > + *  |   |   7:0 | NUM_DWORDS =3D length (in dwords) of the embedded HX=
G message  |
> > + *  +---+-------+-----------------------------------------------------=
---------+
> > + *  | 1 |  31:0 |  +--------------------------------------------------=
------+  |
> > + *  +---+-------+  |                                                  =
      |  |
> > + *  |...|       |  |  Embedded `HXG Message`_                         =
      |  |
> > + *  +---+-------+  |                                                  =
      |  |
> > + *  | n |  31:0 |  +--------------------------------------------------=
------+  |
> > + *  +---+-------+-----------------------------------------------------=
---------+
> > + */
> > +
> > +#define GUC_CTB_HXG_MSG_MIN_LEN		(GUC_CTB_MSG_MIN_LEN + GUC_HXG_MSG_MI=
N_LEN)
> > +#define GUC_CTB_HXG_MSG_MAX_LEN		GUC_CTB_MSG_MAX_LEN
> > +
> >   /**
> >    * DOC: CTB based communication
> >    *
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_ct.c
> > index 6a29be779cc9..729f29bc2a57 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > @@ -365,24 +365,6 @@ static void write_barrier(struct intel_guc_ct *ct)
> >   	}
> >   }
> > -/**
> > - * DOC: CTB Host to GuC request
> > - *
> > - * Format of the CTB Host to GuC request message is as follows::
> > - *
> > - *      +------------+---------+---------+---------+---------+
> > - *      |   msg[0]   |   [1]   |   [2]   |   ...   |  [n-1]  |
> > - *      +------------+---------+---------+---------+---------+
> > - *      |   MESSAGE  |       MESSAGE PAYLOAD                 |
> > - *      +   HEADER   +---------+---------+---------+---------+
> > - *      |            |    0    |    1    |   ...   |    n    |
> > - *      +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=
=3D=3D=3D=3D+
> > - *      |  len >=3D 1  |  FENCE  |     request specific data   |
> > - *      +------+-----+---------+---------+---------+---------+
> > - *
> > - *                   ^-----------------len-------------------^
> > - */
> > -
> >   static int ct_write(struct intel_guc_ct *ct,
> >   		    const u32 *action,
> >   		    u32 len /* in dwords */,
> > @@ -395,6 +377,7 @@ static int ct_write(struct intel_guc_ct *ct,
> >   	u32 size =3D ctb->size;
> >   	u32 used;
> >   	u32 header;
> > +	u32 hxg;
> >   	u32 *cmds =3D ctb->cmds;
> >   	unsigned int i;
> > @@ -425,22 +408,24 @@ static int ct_write(struct intel_guc_ct *ct,
> >   		return -ENOSPC;
> =

> Doesn't the free space math up here need updating, since now we have an
> extra header dword?
> =


No, action[0] is included in the HXG header so the match is the same.
I will update the comment below to better relect this.

> >   	/*
> > -	 * Write the message. The format is the following:
> > -	 * DW0: header (including action code)
> > -	 * DW1: fence
> > -	 * DW2+: action data
> > +	 * dw0: CT header (including fence)
> > +	 * dw1: HXG header
> =

> maybe better as:
> =

> * dw1+: HXG message

Going to be:

/*
 * dw0: CT header (including fence)
 * dw1: HXG header (including action code)
 * dw2+: action data
 */

> =

> >   	 */
> > -	header =3D (len << GUC_CT_MSG_LEN_SHIFT) |
> > -		 GUC_CT_MSG_SEND_STATUS |
> > -		 (action[0] << GUC_CT_MSG_ACTION_SHIFT);
> > +	header =3D FIELD_PREP(GUC_CTB_MSG_0_FORMAT, GUC_CTB_FORMAT_HXG) |
> > +		 FIELD_PREP(GUC_CTB_MSG_0_NUM_DWORDS, len) |
> > +		 FIELD_PREP(GUC_CTB_MSG_0_FENCE, fence);
> > +
> > +	hxg =3D FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_REQUEST) |
> =

> Do we have a case where we might want to use a different type? e.g. a
> response to a request from GuC?
> =

> > +	      FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION |
> > +			 GUC_HXG_REQUEST_MSG_0_DATA0, action[0]);
> =

> See macro suggestion for the hxg header in previous patch review.
> =


Michal says we can do in follow, I agree with him on that.

> > -	CT_DEBUG(ct, "writing %*ph %*ph %*ph\n",
> > -		 4, &header, 4, &fence, 4 * (len - 1), &action[1]);
> > +	CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
> > +		 tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
> >   	cmds[tail] =3D header;
> >   	tail =3D (tail + 1) % size;
> > -	cmds[tail] =3D fence;
> > +	cmds[tail] =3D hxg;
> >   	tail =3D (tail + 1) % size;
> >   	for (i =3D 1; i < len; i++) {
> > @@ -598,21 +583,6 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, con=
st u32 *action, u32 len,
> >   	return ret;
> >   }
> > -static inline unsigned int ct_header_get_len(u32 header)
> > -{
> > -	return (header >> GUC_CT_MSG_LEN_SHIFT) & GUC_CT_MSG_LEN_MASK;
> > -}
> > -
> > -static inline unsigned int ct_header_get_action(u32 header)
> > -{
> > -	return (header >> GUC_CT_MSG_ACTION_SHIFT) & GUC_CT_MSG_ACTION_MASK;
> > -}
> > -
> > -static inline bool ct_header_is_response(u32 header)
> > -{
> > -	return !!(header & GUC_CT_MSG_IS_RESPONSE);
> > -}
> > -
> >   static struct ct_incoming_msg *ct_alloc_msg(u32 num_dwords)
> >   {
> >   	struct ct_incoming_msg *msg;
> > @@ -675,7 +645,7 @@ static int ct_read(struct intel_guc_ct *ct, struct =
ct_incoming_msg **msg)
> >   	head =3D (head + 1) % size;
> >   	/* message len with header */
> > -	len =3D ct_header_get_len(header) + 1;
> > +	len =3D FIELD_GET(GUC_CTB_MSG_0_NUM_DWORDS, header) + GUC_CTB_MSG_MIN=
_LEN;
> >   	if (unlikely(len > (u32)available)) {
> >   		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
> >   			 4, &header,
> > @@ -718,55 +688,24 @@ static int ct_read(struct intel_guc_ct *ct, struc=
t ct_incoming_msg **msg)
> >   	return -EPIPE;
> >   }
> > -/**
> > - * DOC: CTB GuC to Host response
> > - *
> > - * Format of the CTB GuC to Host response message is as follows::
> > - *
> > - *      +------------+---------+---------+---------+---------+--------=
-+
> > - *      |   msg[0]   |   [1]   |   [2]   |   [3]   |   ...   |  [n-1] =
 |
> > - *      +------------+---------+---------+---------+---------+--------=
-+
> > - *      |   MESSAGE  |       MESSAGE PAYLOAD                          =
 |
> > - *      +   HEADER   +---------+---------+---------+---------+--------=
-+
> > - *      |            |    0    |    1    |    2    |   ...   |    n   =
 |
> > - *      +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=
=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+
> > - *      |  len >=3D 2  |  FENCE  |  STATUS |   response specific data =
   |
> > - *      +------+-----+---------+---------+---------+---------+--------=
-+
> > - *
> > - *                   ^-----------------------len----------------------=
-^
> > - */
> > -
> >   static int ct_handle_response(struct intel_guc_ct *ct, struct ct_inco=
ming_msg *response)
> >   {
> > -	u32 header =3D response->msg[0];
> > -	u32 len =3D ct_header_get_len(header);
> > -	u32 fence;
> > -	u32 status;
> > -	u32 datalen;
> > +	u32 len =3D FIELD_GET(GUC_CTB_MSG_0_NUM_DWORDS, response->msg[0]);
> > +	u32 fence =3D FIELD_GET(GUC_CTB_MSG_0_FENCE, response->msg[0]);
> > +	const u32 *hxg =3D &response->msg[GUC_CTB_MSG_MIN_LEN];
> =

> IMO it'd be better to just save the hxg in the msg field. We can save the
> fence as an extra field in the ct_incoming_msg. That way we won't have to
> convert from CTB to HXG in multiple places in the code (I count 4 total in
> this patch).
>

Not really sure I follow this but assume this isn't a blocker as this not
a functional change. We can always revisit in a follow up.

Matt =

 =

> Daniele
> =

> > +	const u32 *data =3D &hxg[GUC_HXG_MSG_MIN_LEN];
> > +	u32 datalen =3D len - GUC_HXG_MSG_MIN_LEN;
> >   	struct ct_request *req;
> >   	unsigned long flags;
> >   	bool found =3D false;
> >   	int err =3D 0;
> > -	GEM_BUG_ON(!ct_header_is_response(header));
> > +	GEM_BUG_ON(len < GUC_HXG_MSG_MIN_LEN);
> > +	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, hxg[0]) !=3D GUC_HXG_ORIGI=
N_GUC);
> > +	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) !=3D GUC_HXG_TYPE_RE=
SPONSE_SUCCESS &&
> > +		   FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) !=3D GUC_HXG_TYPE_RESPONSE_=
FAILURE);
> > -	/* Response payload shall at least include fence and status */
> > -	if (unlikely(len < 2)) {
> > -		CT_ERROR(ct, "Corrupted response (len %u)\n", len);
> > -		return -EPROTO;
> > -	}
> > -
> > -	fence =3D response->msg[1];
> > -	status =3D response->msg[2];
> > -	datalen =3D len - 2;
> > -
> > -	/* Format of the status dword follows HXG header */
> > -	if (unlikely(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, status) !=3D GUC_HXG_ORI=
GIN_GUC)) {
> > -		CT_ERROR(ct, "Corrupted response (status %#x)\n", status);
> > -		return -EPROTO;
> > -	}
> > -
> > -	CT_DEBUG(ct, "response fence %u status %#x\n", fence, status);
> > +	CT_DEBUG(ct, "response fence %u status %#x\n", fence, hxg[0]);
> >   	spin_lock_irqsave(&ct->requests.lock, flags);
> >   	list_for_each_entry(req, &ct->requests.pending, link) {
> > @@ -782,9 +721,9 @@ static int ct_handle_response(struct intel_guc_ct *=
ct, struct ct_incoming_msg *r
> >   			err =3D -EMSGSIZE;
> >   		}
> >   		if (datalen)
> > -			memcpy(req->response_buf, response->msg + 3, 4 * datalen);
> > +			memcpy(req->response_buf, data, 4 * datalen);
> >   		req->response_len =3D datalen;
> > -		WRITE_ONCE(req->status, status);
> > +		WRITE_ONCE(req->status, hxg[0]);
> >   		found =3D true;
> >   		break;
> >   	}
> > @@ -805,14 +744,16 @@ static int ct_handle_response(struct intel_guc_ct=
 *ct, struct ct_incoming_msg *r
> >   static int ct_process_request(struct intel_guc_ct *ct, struct ct_inco=
ming_msg *request)
> >   {
> >   	struct intel_guc *guc =3D ct_to_guc(ct);
> > -	u32 header, action, len;
> > +	const u32 *hxg;
> >   	const u32 *payload;
> > +	u32 hxg_len, action, len;
> >   	int ret;
> > -	header =3D request->msg[0];
> > -	payload =3D &request->msg[1];
> > -	action =3D ct_header_get_action(header);
> > -	len =3D ct_header_get_len(header);
> > +	hxg =3D &request->msg[GUC_CTB_MSG_MIN_LEN];
> > +	hxg_len =3D request->size - GUC_CTB_MSG_MIN_LEN;
> > +	payload =3D &hxg[GUC_HXG_MSG_MIN_LEN];
> > +	action =3D FIELD_GET(GUC_HXG_EVENT_MSG_0_ACTION, hxg[0]);
> > +	len =3D hxg_len - GUC_HXG_MSG_MIN_LEN;
> >   	CT_DEBUG(ct, "request %x %*ph\n", action, 4 * len, payload);
> > @@ -874,29 +815,12 @@ static void ct_incoming_request_worker_func(struc=
t work_struct *w)
> >   		queue_work(system_unbound_wq, &ct->requests.worker);
> >   }
> > -/**
> > - * DOC: CTB GuC to Host request
> > - *
> > - * Format of the CTB GuC to Host request message is as follows::
> > - *
> > - *      +------------+---------+---------+---------+---------+--------=
-+
> > - *      |   msg[0]   |   [1]   |   [2]   |   [3]   |   ...   |  [n-1] =
 |
> > - *      +------------+---------+---------+---------+---------+--------=
-+
> > - *      |   MESSAGE  |       MESSAGE PAYLOAD                          =
 |
> > - *      +   HEADER   +---------+---------+---------+---------+--------=
-+
> > - *      |            |    0    |    1    |    2    |   ...   |    n   =
 |
> > - *      +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=
=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D+
> > - *      |     len    |            request specific data               =
 |
> > - *      +------+-----+---------+---------+---------+---------+--------=
-+
> > - *
> > - *                   ^-----------------------len----------------------=
-^
> > - */
> > -
> > -static int ct_handle_request(struct intel_guc_ct *ct, struct ct_incomi=
ng_msg *request)
> > +static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming=
_msg *request)
> >   {
> > +	const u32 *hxg =3D &request->msg[GUC_CTB_MSG_MIN_LEN];
> >   	unsigned long flags;
> > -	GEM_BUG_ON(ct_header_is_response(request->msg[0]));
> > +	GEM_BUG_ON(FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]) !=3D GUC_HXG_TYPE_EV=
ENT);
> >   	spin_lock_irqsave(&ct->requests.lock, flags);
> >   	list_add_tail(&request->link, &ct->requests.incoming);
> > @@ -906,15 +830,53 @@ static int ct_handle_request(struct intel_guc_ct =
*ct, struct ct_incoming_msg *re
> >   	return 0;
> >   }
> > -static void ct_handle_msg(struct intel_guc_ct *ct, struct ct_incoming_=
msg *msg)
> > +static int ct_handle_hxg(struct intel_guc_ct *ct, struct ct_incoming_m=
sg *msg)
> >   {
> > -	u32 header =3D msg->msg[0];
> > +	u32 origin, type;
> > +	u32 *hxg;
> >   	int err;
> > -	if (ct_header_is_response(header))
> > +	if (unlikely(msg->size < GUC_CTB_HXG_MSG_MIN_LEN))
> > +		return -EBADMSG;
> > +
> > +	hxg =3D &msg->msg[GUC_CTB_MSG_MIN_LEN];
> > +
> > +	origin =3D FIELD_GET(GUC_HXG_MSG_0_ORIGIN, hxg[0]);
> > +	if (unlikely(origin !=3D GUC_HXG_ORIGIN_GUC)) {
> > +		err =3D -EPROTO;
> > +		goto failed;
> > +	}
> > +
> > +	type =3D FIELD_GET(GUC_HXG_MSG_0_TYPE, hxg[0]);
> > +	switch (type) {
> > +	case GUC_HXG_TYPE_EVENT:
> > +		err =3D ct_handle_event(ct, msg);
> > +		break;
> > +	case GUC_HXG_TYPE_RESPONSE_SUCCESS:
> > +	case GUC_HXG_TYPE_RESPONSE_FAILURE:
> >   		err =3D ct_handle_response(ct, msg);
> > +		break;
> > +	default:
> > +		err =3D -EOPNOTSUPP;
> > +	}
> > +
> > +	if (unlikely(err)) {
> > +failed:
> > +		CT_ERROR(ct, "Failed to handle HXG message (%pe) %*ph\n",
> > +			 ERR_PTR(err), 4 * GUC_HXG_MSG_MIN_LEN, hxg);
> > +	}
> > +	return err;
> > +}
> > +
> > +static void ct_handle_msg(struct intel_guc_ct *ct, struct ct_incoming_=
msg *msg)
> > +{
> > +	u32 format =3D FIELD_GET(GUC_CTB_MSG_0_FORMAT, msg->msg[0]);
> > +	int err;
> > +
> > +	if (format =3D=3D GUC_CTB_FORMAT_HXG)
> > +		err =3D ct_handle_hxg(ct, msg);
> >   	else
> > -		err =3D ct_handle_request(ct, msg);
> > +		err =3D -EOPNOTSUPP;
> >   	if (unlikely(err)) {
> >   		CT_ERROR(ct, "Failed to process CT message (%pe) %*ph\n",
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_ct.h
> > index 905202caaad3..1ae2dde6db93 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> > @@ -61,7 +61,7 @@ struct intel_guc_ct {
> >   	struct tasklet_struct receive_tasklet;
> >   	struct {
> > -		u32 last_fence; /* last fence used to send request */
> > +		u16 last_fence; /* last fence used to send request */
> >   		spinlock_t lock; /* protects pending requests list */
> >   		struct list_head pending; /* requests waiting for response */
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
