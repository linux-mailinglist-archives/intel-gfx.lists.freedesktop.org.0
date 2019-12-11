Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB8011A8DC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 11:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5AB6EAFF;
	Wed, 11 Dec 2019 10:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EE66EAFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 10:27:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 02:27:45 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="207629849"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 02:27:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuamn Gupta <anshuman.gupta@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
In-Reply-To: <20191205124602.GA4234@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191205123513.22603-1-animesh.manna@intel.com>
 <20191205124602.GA4234@intel.com>
Date: Wed, 11 Dec 2019 12:27:40 +0200
Message-ID: <877e3340o3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Fix in mmio offset
 calculation of DSB instance
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

On Thu, 05 Dec 2019, Anshuamn Gupta <anshuman.gupta@intel.com> wrote:
> On 2019-12-05 at 18:05:13 +0530, Animesh Manna wrote:
>> As the current usage is restricted to first DSB instance per pipe, so
>> existing code could not catch the issue to calculate the mmio offset
>> of different DSB instance per pipe. Corrected the offset calculation.
>> 
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

Pushed to dinq, thanks for the patch and review.

BR,
Jani.

>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 1a6376a97d48..0b242513e3eb 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -12076,7 +12076,7 @@ enum skl_power_gate {
>>  /* This register controls the Display State Buffer (DSB) engines. */
>>  #define _DSBSL_INSTANCE_BASE		0x70B00
>>  #define DSBSL_INSTANCE(pipe, id)	(_DSBSL_INSTANCE_BASE + \
>> -					 (pipe) * 0x1000 + (id) * 100)
>> +					 (pipe) * 0x1000 + (id) * 0x100)
>>  #define DSB_HEAD(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x0)
>>  #define DSB_TAIL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x4)
>>  #define DSB_CTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x8)
>> -- 
>> 2.22.0
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
