Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCA32A64CD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 14:04:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677F76ECFB;
	Wed,  4 Nov 2020 13:04:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4646ECFB
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 13:04:09 +0000 (UTC)
IronPort-SDR: /HYOSoSm10s1qYOUYPx999LpTjN+GBfJHcT6PKYSXkgx6zbAaKv/k38tx3QuWSaMHdJYvm/6wT
 LD2RXfOEqLpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156200700"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="156200700"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 05:04:00 -0800
IronPort-SDR: bIO1d1F82uIJU7zLmxrwj2mUnW4giPWALtEKCFxhNOh2VW66CToYH1lshrZyeKhMYvmRd9I5iD
 zJDfFJirSWyQ==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="538914212"
Received: from marak-mobl1.ger.corp.intel.com (HELO [10.249.42.32])
 ([10.249.42.32])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 05:03:59 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201104122043.876567-1-tvrtko.ursulin@linux.intel.com>
 <160449305596.15691.8814203162337051600@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <14022703-674c-be70-cf9f-c6448e1a2cd4@linux.intel.com>
Date: Wed, 4 Nov 2020 13:03:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160449305596.15691.8814203162337051600@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Improve record of hung engines
 in error state
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


On 04/11/2020 12:30, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-04 12:20:42)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Between events which trigger engine and GPU resets and capturing the error
>> state we lose information on which engine triggered the reset. Improve
>> this by passing in the hung engine mask down to error capture.
>>
>> Result is that the list of engines in user visible "GPU HANG: ecode
>> <gen>:<engines>:<ecode>, <process>" is now a list of hanging and not just
>> active engines. Most importantly the displayed process is now the one
>> which was actually hung.
> 
> You could also suggest to only include the hanging engine in the report,
> as is intended to be the normal means of generating the report

I thought it is potentially useful to have a full picture, but can do 
that as well.

>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
>> index 0220b0992808..3a7ca90a3436 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>> @@ -59,6 +59,7 @@ struct i915_request_coredump {
>>   struct intel_engine_coredump {
>>          const struct intel_engine_cs *engine;
>>   
>> +       bool hung;
>>          bool simulated;
>>          u32 reset_count;
>>   
>> @@ -218,8 +219,10 @@ struct drm_i915_error_state_buf {
>>   __printf(2, 3)
>>   void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
>>   
>> -struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915);
>> -void i915_capture_error_state(struct drm_i915_private *i915);
>> +struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
>> +                                           intel_engine_mask_t engine_mask);
>> +void i915_capture_error_state(struct intel_gt *gt,
>> +                             intel_engine_mask_t engine_mask);
> 
> Don't forget the stubs.

Right, thanks.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
