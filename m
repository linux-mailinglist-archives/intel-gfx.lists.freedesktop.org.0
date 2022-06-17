Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 932B954F04E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 06:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C99011AE5E;
	Fri, 17 Jun 2022 04:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C045E11AE5D;
 Fri, 17 Jun 2022 04:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655440980; x=1686976980;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=QYOca79q2BW+m1xwuIlXy1oPiukGp3VYzBu/GhD7ESQ=;
 b=fQi3XLkMLavf9rp8Ja+C+Fw7OEEumAzNOpZD1QbYR5/NsxEwK54K1/SS
 baq16x/biI7TK4MH1wVJPcwq3ajEAFyKWvcqYVi0pEKtW3vH43KHJdyC9
 aE5xy9c2IB5vPdstVCsXs7keVjibBHEZ9Wvmb3Voxzn3R1FSHXg/oG3wh
 +AerrOpK4XGUrw9jiS3+cYHrX1bK8E2+uisgymkP6njh3RTsc+y9ueecw
 qUAemDoJw7gkge6k+pRqXX7c2tz7w+m6Ywc3GXoOAgb3nhPZgFOQHHSjn
 4iIkzACtbUsFsmeNMEXbdGalXXJNTwjlXuhDU7UWkQfmZQIp6zZEIDskQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341073373"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341073373"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 21:43:00 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="583902831"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.141.64])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 21:43:00 -0700
Date: Thu, 16 Jun 2022 21:42:59 -0700
Message-ID: <87mtebx5m4.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Zhanjun Dong <zhanjun.dong@intel.com>
In-Reply-To: <20220616220158.15778-1-zhanjun.dong@intel.com>
References: <20220616220158.15778-1-zhanjun.dong@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Check for ct enabled while
 waiting for response
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Jun 2022 15:01:59 -0700, Zhanjun Dong wrote:
>
> We are seeing error message of "No response for request". Some cases
> happened while waiting for response and reset/suspend action was triggered.
> In this case, no response is not an error, active requests will be
> cancelled.
>
> This patch will handle this condition and change the error message into
> debug message.

The convention we follow in drm is to record the version of the patch and
what changed in that version.

Generally I am ok with this version of the patch but still have a couple of
questions.

> -static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
> +static int wait_for_ct_request_update(struct intel_guc_ct *ct, struct ct_request *req, u32 *status)
>  {
>	int err;
> +	bool ct_enabled;
>
>	/*
>	 * Fast commands should complete in less than 10us, so sample quickly
> @@ -481,12 +483,15 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
>  #define GUC_CTB_RESPONSE_TIMEOUT_SHORT_MS 10
>  #define GUC_CTB_RESPONSE_TIMEOUT_LONG_MS 1000
>  #define done \
> -	(FIELD_GET(GUC_HXG_MSG_0_ORIGIN, READ_ONCE(req->status)) == \
> +	(!(ct_enabled = intel_guc_ct_enabled(ct)) || \
> +	 FIELD_GET(GUC_HXG_MSG_0_ORIGIN, READ_ONCE(req->status)) == \
>	 GUC_HXG_ORIGIN_GUC)
>	err = wait_for_us(done, GUC_CTB_RESPONSE_TIMEOUT_SHORT_MS);
>	if (err)
>		err = wait_for(done, GUC_CTB_RESPONSE_TIMEOUT_LONG_MS);
>  #undef done
> +	if (!ct_enabled)
> +		err = -ECANCELED;

So we have the choice of either setting the request status here as I was
suggesting earlier, e.g. as follows:

	#define   GUC_HXG_TYPE_REQUEST_CANCELED        4u // unused value

	if (!ct_enabled)
		req->status = GUC_HXG_TYPE_REQUEST_CANCELED;

We would return 0 in this case and would check for the req->status value
above where needed.

Or we can return -ECANCELED. I don't know if -ECANCELED is the right value
to return but whatever we return will have to be unique (ununsed elsewhere)
since we are relying on the return value. -ECANCELED is unique so that part
is ok.

Do other reviewers have a preference whether we should set req->status or
return a unique return value?

>	*status = req->status;
>	return err;
> @@ -703,11 +708,15 @@ static int ct_send(struct intel_guc_ct *ct,
>
>	intel_guc_notify(ct_to_guc(ct));
>
> -	err = wait_for_ct_request_update(&request, status);
> +	err = wait_for_ct_request_update(ct, &request, status);
>	g2h_release_space(ct, GUC_CTB_HXG_MSG_MAX_LEN);
>	if (unlikely(err)) {
> -		CT_ERROR(ct, "No response for request %#x (fence %u)\n",
> -			 action[0], request.fence);
> +		if (err == -ECANCELED)
> +			CT_DEBUG(ct, "Request %#x (fence %u) cancelled as CTB is disabled\n",
> +				 action[0], request.fence);
> +		else
> +			CT_ERROR(ct, "No response for request %#x (fence %u)\n",
> +				 action[0], request.fence);
>		goto unlink;
>	}
>
> @@ -771,8 +780,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
>
>	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
>	if (unlikely(ret < 0)) {
> -		CT_ERROR(ct, "Sending action %#x failed (%pe) status=%#X\n",
> -			 action[0], ERR_PTR(ret), status);
> +		if (ret != -ECANCELED)
> +			CT_ERROR(ct, "Sending action %#x failed (%pe) status=%#X\n",
> +				 action[0], ERR_PTR(ret), status);

I am wondering why we even have this print and should we just delete it or
convert it to CT_DEBUG(). The reason is that only error prints closest to
where the actual error occurs are useful since they pin-point the error
clearly. This to be seems to be a "second" print from a higher level
function which does not seem particularly useful.


>	} else if (unlikely(ret)) {
>		CT_DEBUG(ct, "send action %#x returned %d (%#x)\n",
>			 action[0], ret, ret);
> --
> 2.36.0
>
