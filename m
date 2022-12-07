Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F4F64603E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE6C10E40B;
	Wed,  7 Dec 2022 17:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9F110E40B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670434173; x=1701970173;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eWOz05WXAB8If/OsWqQ2fYT9Hdzphe9ksghYd09lUBQ=;
 b=mBqYj6IOLpQkekpnyqXxF0anJ1Nnw3jJhVfmuXzQHGpgQL/QFA3maYds
 KZBrsmSuy8kbKHVmKGvFyjC3wyXgP+Fo45WNKJR8qtSmsceuZXlM971hg
 mw6ZPyEvGPS9hzjLB1/Hr69B7R/GovmyduO6Hb38DtlTDrjgWHShNim+f
 CZROKzct3fj+xKuNJaxGMy0Wmu3HT9nk22DAUADphxLrFI/2wnDOuKCJ+
 t9eBIPjUHxOR73O1/vGqgMTVPlXHGVXGBepj1HztDChdiOqG3XVYw+5Og
 QxlWYrBHPhzluzFqYqzg3pOjRJJKfrcOje/MJ4i3vz7sWauegODQVaqi5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="403220698"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="403220698"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:29:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="735471156"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="735471156"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:29:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y5C25k16xcEg+JRw@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670405587.git.jani.nikula@intel.com>
 <75ae3f2945912f908df2444d4f0ab97a23b89897.1670405587.git.jani.nikula@intel.com>
 <Y5C25k16xcEg+JRw@intel.com>
Date: Wed, 07 Dec 2022 19:29:29 +0200
Message-ID: <87fsdr15s6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/backlight: drop
 DISPLAY_MMIO_BASE() use from backlight registers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 07 Dec 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Dec 07, 2022 at 11:34:43AM +0200, Jani Nikula wrote:
>> None of the remaining backlight registers that use DISPLAY_MMIO_BASE()
>> are used on VLV/CHV, which are the only platforms that have non-zero
>> base. Just drop the DISPLAY_MMIO_BASE() use, reducing the implicit
>> dev_priv references.
>
> Will we be able to entirely kill the display_mmio_base and the implict
> references? I have the feeling we are one step closer... anything
> blocking in your view?

There's are quite a bit of registers macros that are shared and used in
shared code. Probably easier to pass in i915 to the macros than
splitting them to different versions. The backlight code just happened
to be disjoint already.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.


>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_backlight_regs.h | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
>> index 02bd1f8201bf..d0cdfd631d75 100644
>> --- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
>> @@ -21,7 +21,7 @@
>>  #define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
>>  
>>  /* Backlight control */
>> -#define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
>> +#define BLC_PWM_CTL2	_MMIO(0x61250) /* 965+ only */
>>  #define   BLM_PWM_ENABLE		(1 << 31)
>>  #define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
>>  #define   BLM_PIPE_SELECT		(1 << 29)
>> @@ -44,7 +44,7 @@
>>  #define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
>>  #define   BLM_PHASE_IN_INCR_SHIFT	(0)
>>  #define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
>> -#define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
>> +#define BLC_PWM_CTL	_MMIO(0x61254)
>>  /*
>>   * This is the most significant 15 bits of the number of backlight cycles in a
>>   * complete cycle of the modulated backlight control.
>> @@ -66,7 +66,7 @@
>>  #define   BACKLIGHT_DUTY_CYCLE_MASK_PNV		(0xfffe)
>>  #define   BLM_POLARITY_PNV			(1 << 0) /* pnv only */
>>  
>> -#define BLC_HIST_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
>> +#define BLC_HIST_CTL	_MMIO(0x61260)
>>  #define  BLM_HISTOGRAM_ENABLE			(1 << 31)
>>  
>>  /* New registers for PCH-split platforms. Safe where new bits show up, the
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
