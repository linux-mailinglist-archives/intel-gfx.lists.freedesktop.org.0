Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CA3C23DB6
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 09:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871CF10EACF;
	Fri, 31 Oct 2025 08:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="MmoXvrtL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC4810EAC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 08:40:56 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-3ee64bc6b90so1585881f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 01:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761900055; x=1762504855;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=B7qrREvN/1CyMmA2JAWzUDBHaDLWMyeBS5/jFSEhCRk=;
 b=MmoXvrtLMWl9nCxXczpCYUZFd2ee6yquMWNrf6wNil1ILjHgag0COCvNejxjV7qSDi
 ys2r1sMtXLDoIaDSWe3zvuzzt3KXrx6dNt6SEC1iDm7d/NsE/AhaqC1RY/ufxBNsh3T+
 wPndwC+PHsPpDhyYfPLDh95E62RGEhVWa3SvEYTdSDQeZpvEvToLpDiafC43PbK4AX/S
 dPu0KOqE3WGzqQde2Fh20tFdc3YfSkFnc1CXsHLP1bz41O6Uyo6ig76GPyEFt8xIrH4j
 B7m0RdMIAcwG6HC+1QuKYCcbd/K9tHhG488SzSJ7aM4WAeI89fjgpQBJtOeESfBmqTPB
 S1Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761900055; x=1762504855;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=B7qrREvN/1CyMmA2JAWzUDBHaDLWMyeBS5/jFSEhCRk=;
 b=h5eVywh8RbmZ8u9O5YTuQfpEkVqMY1zWcpnv1pVkcUzaKHdXpL6p+Q+fVCpvP2xI3Y
 PgjHpPvB817WbKwA3IjgEZwxMV/mOG4SApj9dTO1ZPHNEHeaHgmW8NYMvr0+NNBKnUzG
 yMicEELlX0+0BKijvWZ4i9kRQjjU296UPTkXVHfTpASm2fzAX2sEUqhQoocejaV/Crv1
 FL0xk4qBe7gVCxAXC0XpEdVJYoCilrTbw+yubADUtGy84jF9BLC2em6W9AXB7glvTN3N
 +N5qiEupSWVKFASdnfprw0AWdbE4W4Hyktc5sR4oIg1UgwZQo+HagkXt1Vd7F+O+/mvy
 un1w==
X-Gm-Message-State: AOJu0YxsfhPisfAbQzc9Y4gkMSRW9GcN3387IVnfmtTgXTpkT2YXpZVL
 WdNjJoppk4jR81dwFdmrzuQ68VBJKyg0lS4PpSnBBmGdzX1JUnyKerot7DQHRwZNX0U=
X-Gm-Gg: ASbGncsFVE8ShNArC9xuJlXb7GbdlfwXHjQvt+Ga6mp2JaziAgjym4Rmi1Co2P+UBPL
 uOonNkDbvAK8laAuUP4aoC+weRVJGoI97Dd1MHahs+ZVqlPnmCYDRpNO1a6S1i4l7xrgsxoNNZC
 S7GELSZgroO3oJ01ouFEAuoqXBEn4VZyF7EIoSXIsbKQqJ9yi7gNLaof4gCVBufL4+S1B8WaRbp
 ywrORRvUOWqoKM5FcjcqY1vJvphj6jPSvcevlSo/6xa1JNJFaqvM25b5eky+wPheh5iLdhmVBhi
 9e80lt/PbkMEQSpI+BeDNrvW2lSiw9Jc47WFxFWjX3bsxTqcWvSdm2mbhJOvi7zyNmhKdpioF87
 DspqTyKwaKmBQ8sOLG/qBVWm19oFgYU0Aex9HNZ/EZcrBQAFQJhi4aSksK34UuZ408jHev0i0mb
 2XO1pB5JxI3v87qdar
X-Google-Smtp-Source: AGHT+IHf6dDXoUSZfHDpUuM5CoOZJUQGUSCIMFaf3vpG9Y2vhIDMZtArPV77imZ/RdW2hIvqWrVU9w==
X-Received: by 2002:a5d:5d0a:0:b0:3eb:df84:62e with SMTP id
 ffacd0b85a97d-429bd6725efmr2299933f8f.3.1761900054267; 
 Fri, 31 Oct 2025 01:40:54 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c13e16f4sm2367161f8f.27.2025.10.31.01.40.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Oct 2025 01:40:53 -0700 (PDT)
Message-ID: <e60834fa-2d03-4531-a56e-fa8d1799ed11@ursulin.net>
Date: Fri, 31 Oct 2025 08:40:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Ashutosh Dixit
 <ashutosh.dixit@intel.com>, andi.shyti@kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
 <bb365451-b451-41ef-82cd-eef8e21ead19@ursulin.net>
 <aQKOvaRYY4TNjn/l@soc-5CG1426VCC.clients.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <aQKOvaRYY4TNjn/l@soc-5CG1426VCC.clients.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 29/10/2025 22:01, Umesh Nerlige Ramappa wrote:
> On Wed, Oct 29, 2025 at 11:33:20AM +0000, Tvrtko Ursulin wrote:
>>
>> On 16/10/2025 01:03, Umesh Nerlige Ramappa wrote:
>>> When tick values are large, the multiplication by NSEC_PER_SEC is larger
>>> than 64 bits and results in bad conversions.
>>>
>>> The issue is seen in PMU busyness counters that look like they have
>>> wrapped around due to bad conversion. i915 PMU implementation returns
>>> monotonically increasing counters. If a count is lesser than previous
>>> one, it will only return the larger value until the smaller value
>>> catches up. The user will see this as zero delta between two
>>> measurements even though the engines are busy.
>>>
>>> Fix it by using mul_u64_u32_div()
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>> There was no need for Fixes: or cc: stable?
> 
> Oh, sorry, I missed that. Should have been both. Is it too late to do 
> that now?
> 
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from 
> GuC to pmu")

Possibly not. Lets ask Rodrigo if he could manually cherry pick it for 6.18.

Regards,

Tvrtko

>>> ---
>>> v2:
>>> - Fix divide by zero for Gen11 (Andi)
>>> - Update commit message
>>>
>>> v3:
>>> - Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
>>> ---
>>>  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/ 
>>> drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>>> index 88b147fa5cb1..c90b35881a26 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>>> @@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
>>>  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
>>>  {
>>> -    return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
>>> +    return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
>>>  }
>>>  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>>> @@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct 
>>> intel_gt *gt, u64 count)
>>>  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
>>>  {
>>> -    return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
>>> +    return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
>>>  }
>>>  u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
>>

