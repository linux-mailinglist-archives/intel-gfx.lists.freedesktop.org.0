Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77F417115A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 08:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE2B6EBF5;
	Thu, 27 Feb 2020 07:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7EC06EBF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 07:19:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:19:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,491,1574150400"; d="scan'208";a="231727308"
Received: from lohmeies-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 23:19:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158263116471.26598.16766291631054442050@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200225111509.21879-1-jani.nikula@intel.com>
 <20200225111509.21879-3-jani.nikula@intel.com>
 <158263116471.26598.16766291631054442050@skylake-alporthouse-com>
Date: Thu, 27 Feb 2020 09:20:02 +0200
Message-ID: <87pne0qyxp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/drv: use intel_uncore_write()
 for register access
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

On Tue, 25 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-02-25 11:15:09)
>> The implicit "dev_priv" local variable use has been a long-standing pain
>> point in the register access macros I915_READ(), I915_WRITE(),
>> POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().
>> 
>> Replace the sole remaining I915_WRITE() in i915_drv.c with
>> intel_uncore_write(), although it might be better to keep the entire
>> file void of direct register access.
>> 
>> No functional changes.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
>> index 7f0e0ba918e9..57e2fc911dac 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.c
>> +++ b/drivers/gpu/drm/i915/i915_drv.c
>> @@ -758,7 +758,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>>          * when running inside a VM.
>>          */
>>         if (intel_vgpu_active(dev_priv))
>> -               I915_WRITE(vgtif_reg(display_ready), VGT_DRV_DISPLAY_READY);
>> +               intel_uncore_write(&dev_priv->uncore, vgtif_reg(display_ready),
>> +                                  VGT_DRV_DISPLAY_READY);
>
> Bonus patch for intel_vgpu_register() ?

Sure!

> Series is
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks, pushed to dinq.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
