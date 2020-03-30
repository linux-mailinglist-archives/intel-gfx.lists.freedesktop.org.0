Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88041197DCA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EB16E37C;
	Mon, 30 Mar 2020 14:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808A96E37C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:02:57 +0000 (UTC)
IronPort-SDR: WBe827UyCqCTE/zMx0CXgjVVwSvuRvz1J0xF8VF2gI1ZiHECtstt8AXDKWSCMJrAnp2JBD0eRq
 wzVYhiNqhJsQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 07:02:56 -0700
IronPort-SDR: pYUwNp4XdAqdmkyAGzAP/d8MvKR+Ln8xizxWeMDLCHks7QnpwcBoFJjRGDNplwrCBy7+BGLasz
 eCdUdOOE2q6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="448279342"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 30 Mar 2020 07:02:55 -0700
Received: from [10.249.134.165] (mwajdecz-mobl.ger.corp.intel.com
 [10.249.134.165])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 02UE2tv1003794; Mon, 30 Mar 2020 15:02:55 +0100
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200330113302.1670-1-michal.wajdeczko@intel.com>
 <158557133270.3228.3738598788092230448@build.alporthouse.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <aed4cc3e-7589-15f1-f1b8-0196f608b449@intel.com>
Date: Mon, 30 Mar 2020 16:02:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158557133270.3228.3738598788092230448@build.alporthouse.com>
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



On 30.03.2020 14:28, Chris Wilson wrote:
> Quoting Michal Wajdeczko (2020-03-30 12:33:02)
>> There might be many reasons why we failed to successfully
>> load and authenticate HuC firmware, but today we only use
>> single error in case of no HuC hardware. Add some more
>> error codes for most common cases (disabled, not installed,
>> corrupted or mismatched firmware).
>>
>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Tony Ye <tony.ye@intel.com>
>> Cc: Robert M. Fosha <robert.m.fosha@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 22 ++++++++++++++++++----
>>  1 file changed, 18 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> index d6097b46600c..1e8073ec343f 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> @@ -200,9 +200,13 @@ int intel_huc_auth(struct intel_huc *huc)
>>   * This function reads status register to verify if HuC
>>   * firmware was successfully loaded.
>>   *
>> - * Returns: 1 if HuC firmware is loaded and verified,
>> - * 0 if HuC firmware is not loaded and -ENODEV if HuC
>> - * is not present on this platform.
>> + * Returns:
>> + *  * -ENODEV if HuC is not present on this platform,
>> + *  * -EOPNOTSUPP if HuC firmware is disabled,
>> + *  * -ENOPKG if HuC firmware was not installed,
>> + *  * -ENOEXEC if HuC firmware is invalid or mismatched,
>> + *  * 0 if HuC firmware is not running,
>> + *  * 1 if HuC firmware is authenticated and running.
>>   */
>>  int intel_huc_check_status(struct intel_huc *huc)
>>  {
>> @@ -210,8 +214,18 @@ int intel_huc_check_status(struct intel_huc *huc)
>>         intel_wakeref_t wakeref;
>>         u32 status = 0;
>>  
>> -       if (!intel_huc_is_supported(huc))
>> +       switch (__intel_uc_fw_status(&huc->fw)) {
>> +       case INTEL_UC_FIRMWARE_NOT_SUPPORTED:
>>                 return -ENODEV;
> 
> No HW support.
> 
>> +       case INTEL_UC_FIRMWARE_DISABLED:
>> +               return -EOPNOTSUPP;
> 
> Override by user [sysadmin]
> 
>> +       case INTEL_UC_FIRMWARE_MISSING:
>> +               return -ENOPKG;
> 
> FILENOTFOUND.
> 
>> +       case INTEL_UC_FIRMWARE_ERROR:
>> +               return -ENOEXEC;
> 
> File corruption.
> 
> There's nothing else between us loading the fw and the huc rejecting
> it?
> 
> FIRMWARE_FAIL? That's set as the opposite of FIRMWARE_TRANSFERRED in
> that we failed to upload the image to the HW. The firmware itself hasn't
> had a chance to run.
> 
> case INTEL_UC_FIRMWARE_FAIL:
> 	return -ENXIO;
> 
> Or is that being overridden to FIRMWARE_ERROR?

No, it's not overridden by FIRMWARE_ERROR (since we use FIRMWARE_ERROR
as final state, while with FIRMWARE_FAIL there is a chance for recovery
during reset)

Also note that FIRMWARE_FAIL case is covered by the register check that
we have below, which provides HuC runtime status.

And if we decide to use FIRMWARE_FAIL to report -ENXIO, then it is
unlikely that we will ever report 0 again for any other fw error that
could prevent fw from successful load (now recall your and Joonas
position that this param shall stay as reflection of register read).

Michal

ps. on other hand, if we trust our uc_fw_status() then we can drop that
register read, finally decouple GET_PARAM from MMIO_READ and fully rely
on cached status:

case INTEL_UC_FIRMWARE_RUNNING:
	return 1;
default:
	return 0;

see [1] for my earlier attempt, before uc_fw.status was added

[1] https://patchwork.freedesktop.org/patch/306179/?series=60928&rev=1

> 
> Other than the question of whether there's one more step before the fw
> is being run [and then able to set HUC_STATUS as it determines for
> itself],
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
