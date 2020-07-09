Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F8021A939
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 22:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD846EB30;
	Thu,  9 Jul 2020 20:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511A76EB30
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 20:42:44 +0000 (UTC)
IronPort-SDR: HUi/lC+s4MyMDouSHdv6m/XwbsSR1y59g2sQcBZGrfzZmzTxpD6EcD/qsNXCylmeb+vrEL4uRe
 XU2uoCD5RlUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="127697721"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="127697721"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 13:42:43 -0700
IronPort-SDR: fLYQaNbusa+Hm+bRhEc1RJRKLKEWieeXdQOhrny1a9bA1qmyJPmdlUsgta/FbQ9WS57fBqrQ3H
 rvtMtvSvsBCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="298201238"
Received: from samraoui-mobl.ger.corp.intel.com (HELO [10.249.47.244])
 ([10.249.47.244])
 by orsmga002.jf.intel.com with ESMTP; 09 Jul 2020 13:42:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
 <159432703606.23667.16598713539279373813@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <fd6dab94-a529-9883-402a-574c8ba75d7d@intel.com>
Date: Thu, 9 Jul 2020 23:42:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159432703606.23667.16598713539279373813@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Use GTT when
 saving/restoring engine GPR
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

On 09/07/2020 23:37, Chris Wilson wrote:
> Quoting Umesh Nerlige Ramappa (2020-07-09 20:58:37)
>> MI_STORE_REGISTER_MEM and MI_LOAD_REGISTER_MEM need to know which
>> translation to use when saving restoring the engine general purpose
>> registers to and from the GT scratch. Since GT scratch is mapped to
>> ggtt, we need to set an additional bit in the command to use GTT.
>>
>> Fixes: daed3e44396d17 ("drm/i915/perf: implement active wait for noa configurations")
>> Suggested-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_perf.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index de69d430b1ed..c6f6370283cf 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1592,6 +1592,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
>>          u32 d;
>>   
>>          cmd = save ? MI_STORE_REGISTER_MEM : MI_LOAD_REGISTER_MEM;
>> +       cmd |= MI_SRM_LRM_GLOBAL_GTT;
> Indeed.
>
> For bonus points, please write a selftest to verify that the user's GPR
> are restored. Something as simple as live_noa_delay, but instead of
> measuring the time; submit a request to write telltales into the GPR,
> submit a request to run noa_wait; then readback the telltales from a
> final request.
>
> Now since the noa_wait is being run from the GGTT, the address space
> selector should be reading from the GGTT. So I am actually curious as to
> whether we have a bug or not.
> -Chris

I'm not super competent on the PPGTT setup, but I assumed this worked 
because we wrote into the ppgtt scratch page.

Potentially trashing an app VM space if it executes a reconfiguration.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
