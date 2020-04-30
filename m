Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400841BFF6B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 16:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964776E1B9;
	Thu, 30 Apr 2020 14:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85396E1B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 14:59:43 +0000 (UTC)
IronPort-SDR: fNpX1Z2/92zptRyTMKgTlZMPPRfFnymCiU/mBKR5oVkc3jPKg1qfvCu96evV4hhPcT3Dx0X22f
 HobTUSMazIDw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 07:59:43 -0700
IronPort-SDR: PRitaZAntJEFz3mn5jNxeSUpBDbrGz0FDTa9OQm5tK7hqiu/Tvs/PPtl6iZxM4cpVWLxD/V5St
 96/L79lRGaJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="249769082"
Received: from spiccard-mobl1.ger.corp.intel.com (HELO [10.252.54.154])
 ([10.252.54.154])
 by fmsmga008.fm.intel.com with ESMTP; 30 Apr 2020 07:59:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
 <20200430135536.1141443-4-lionel.g.landwerlin@intel.com>
 <158825850531.7361.958274130340194506@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d5bc77d0-86e8-f3e3-7683-00acfe70874f@intel.com>
Date: Thu, 30 Apr 2020 17:59:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158825850531.7361.958274130340194506@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v10 3/4] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

On 30/04/2020 17:55, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-04-30 14:55:35)
>> @@ -1382,6 +1446,12 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>   
>>          BUG_ON(stream != perf->exclusive_stream);
>>   
>> +       err = intel_context_pin(stream->config_context);
>> +       if (err) {
>> +               drm_err(&perf->i915->drm,
>> +                       "Error pinning i915-perf context\n");
>> +       }
> Reading through, this is the last thing that leapt out at me.
>
> Taking an error here would be nasty, and we do allow the pin to be
> interrupted (which would be a surprise for most people who call
> close()).
>
> The only suggestion I can make, is that the stream always keeps it
> pinned.
>
> >From the robustness point of view, it's better if we break
> stream->config_context than if we break stream->engine->kernel_context,
> but equally pinning another context image [about 80k in total] just for
> safety? Probably worth it. [If we break the kernel_context, we cannot do
> hang detection or pm/idle, the driver comes grinding to a halt.]
> -Chris

Yeah, I didn't like writing this error path there either.

-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
