Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A4B271EDE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 11:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80726E24E;
	Mon, 21 Sep 2020 09:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E886E24E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 09:24:25 +0000 (UTC)
IronPort-SDR: iFUxh9ss1V76bvEm+3TZpqM62MyTmxJj3kJ8F8YRlgsdjYgL1cdewjixtNDhW+ch1/yzZVyQzN
 th5mmovMe0Kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="245175539"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="245175539"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 02:24:24 -0700
IronPort-SDR: MD0/J8RxxzmM/FKXeBQXmGmF2vfKTPa99XBAzHSUhcIEc4pvp0h1vDg6WR2FDkieniaei/9GVp
 MeNNiU7QjuEw==
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="485366274"
Received: from stoif-mobl1.ger.corp.intel.com (HELO [10.249.47.75])
 ([10.249.47.75])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 02:24:22 -0700
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20200918111208.1392128-1-maarten.lankhorst@linux.intel.com>
 <20200918171940.GC716636@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <d8b0cafa-5023-016b-9e28-b31c96c3b210@linux.intel.com>
Date: Mon, 21 Sep 2020 11:24:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200918171940.GC716636@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix uninitialised variable in
 intel_context_create_request.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 18-09-2020 om 19:19 schreef Rodrigo Vivi:
> On Fri, Sep 18, 2020 at 01:12:08PM +0200, Maarten Lankhorst wrote:
>> In case backoff fails with an error, we return an undefined rq,
>> assign err to rq correctly.
>>
>> Fixes: 8a929c9eb1c2 ("drm/i915: Use ww pinning for intel_context_create_request()")
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_context.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> index d301dda1b261..92a3f25c4006 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> @@ -472,6 +472,7 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
>>  		err = i915_gem_ww_ctx_backoff(&ww);
>>  		if (!err)
>>  			goto retry;
>> +		rq = ERR_PTR(err);
> The mix with "err" and rq handling both request and err is a bit confusing
> ihmo and prone to misses like this.
>
> I wonder if we also need this before the goto retry as well...
> but anyway it looks better than before with no rq assigment on this block...
>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>
>
>>  	} else {
>>  		rq = ERR_PTR(err);
>>  	}
>>
>> base-commit: 5887fa2d8b9b7f6a278f9a1bc8642cb9d5d0279a
>> -- 
>> 2.28.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Thanks, pushed. :)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
