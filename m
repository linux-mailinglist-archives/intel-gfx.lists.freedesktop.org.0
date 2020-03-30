Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 728D3197EAB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89E06E3F7;
	Mon, 30 Mar 2020 14:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66746E3F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:41:50 +0000 (UTC)
IronPort-SDR: VT2GIaETk596MlTvjXTmX28/o7VL3f7BvrpxiWmqlKiCA0DaaF/2DLPlaiZQx6hUh9hBlm2vkR
 33uxFtXGXQAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 07:41:50 -0700
IronPort-SDR: xTdTekcdutChDLGjFhBtGRY89JxbxxQIPOMSDdvcnF5yf8bXTmsDlGlnQB/uIa7Z3raDtW3gfi
 MMmxT25MHWcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="395142575"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 30 Mar 2020 07:41:49 -0700
Received: from [10.249.134.165] (mwajdecz-mobl.ger.corp.intel.com
 [10.249.134.165])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 02UEfmtV027859; Mon, 30 Mar 2020 15:41:48 +0100
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200330113302.1670-1-michal.wajdeczko@intel.com>
 <158557133270.3228.3738598788092230448@build.alporthouse.com>
 <aed4cc3e-7589-15f1-f1b8-0196f608b449@intel.com>
 <158557752051.3228.17902248603368004966@build.alporthouse.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <f45e0bc4-e3f0-cc2d-611d-8a14c3828360@intel.com>
Date: Mon, 30 Mar 2020 16:41:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158557752051.3228.17902248603368004966@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Add more errors for
 I915_PARAM_HUC_STATUS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 30.03.2020 16:12, Chris Wilson wrote:
> Quoting Michal Wajdeczko (2020-03-30 15:02:53)
>>
>>
>> On 30.03.2020 14:28, Chris Wilson wrote:
>>> There's nothing else between us loading the fw and the huc rejecting
>>> it?
>>>
>>> FIRMWARE_FAIL? That's set as the opposite of FIRMWARE_TRANSFERRED in
>>> that we failed to upload the image to the HW. The firmware itself hasn't
>>> had a chance to run.
>>>
>>> case INTEL_UC_FIRMWARE_FAIL:
>>>       return -ENXIO;
>>>
>>> Or is that being overridden to FIRMWARE_ERROR?
>>
>> No, it's not overridden by FIRMWARE_ERROR (since we use FIRMWARE_ERROR
>> as final state, while with FIRMWARE_FAIL there is a chance for recovery
>> during reset)
>>
>> Also note that FIRMWARE_FAIL case is covered by the register check that
>> we have below, which provides HuC runtime status.
> 
> Yes, if it only reports on the auth failure.
> 
>> And if we decide to use FIRMWARE_FAIL to report -ENXIO, then it is
>> unlikely that we will ever report 0 again for any other fw error that
>> could prevent fw from successful load (now recall your and Joonas
>> position that this param shall stay as reflection of register read).
>>
>> Michal
>>
>> ps. on other hand, if we trust our uc_fw_status() then we can drop that
>> register read, finally decouple GET_PARAM from MMIO_READ and fully rely
>> on cached status:
> 
> imo, that register read is the icing on the cake. We can tell whether
> the FW got to the HW, but we can't tell if the HW was truly happy with
> the FW without asking it.
> 
> I look at it as exposing an interface for the final capability bits to
> userspace that the kernel does not have to understand, that go above and
> beyond the kernel loading the firmware and confirming execution.

note that kernel already asked HW in intel_huc_auth() for FW status and
based on that info changed our cached fw status to RUNNING if and only
if HW was happy with that FW (and that shall not change until reset)

Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
