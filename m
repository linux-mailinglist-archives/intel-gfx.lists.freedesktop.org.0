Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F3F65241C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 17:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA95310E073;
	Tue, 20 Dec 2022 16:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1189310E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 16:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671552197; x=1703088197;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=PyFU7HjG2peLI6GlnHlaE8fonpOvBDyuuxaVWzK6epM=;
 b=GuzSrxxhYWtdNlmGWM0uJi/dstLcZo3GM6Hzt6CNCGMOiF5i0VcLEagp
 FzhOQA7fmBvvzI9aNsf6T02VIsIu+F4LaYzH2pbNucV3ZyxpqYKfQ4KB/
 9fFB/p49kVmPppx1xTT/mpYZK7NymA5sIGzfMPTo1EDxowy7/x6aHR6/t
 Yi/0N8TOJqFLOtDuWq1refaUmx48xMz1EVjdxW4sqTRjgZcdkMXReclbq
 SSgVwYIJErCGQEM5rUhv9AbxCfp4kkvDUg7I9rJM+3ybvYBfynUkuT0Wo
 Tgk6APRv4ISQDVe6ZORgGQ1RwAob3+4J1t+XJCmE+ugHE2aJqcj5lGxW8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="320823963"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="320823963"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 08:03:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="979844991"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="979844991"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.249])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 08:03:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
In-Reply-To: <DM6PR11MB3177E122AC904FB5F30EF6EDBAE59@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221215111338.1080698-1-arun.r.murthy@intel.com>
 <DM6PR11MB3177E122AC904FB5F30EF6EDBAE59@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 20 Dec 2022 18:02:58 +0200
Message-ID: <87len22hcd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv6] drm/i915/dp: change aux_ctl reg read to
 polling read
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

On Mon, 19 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> Any comments?

From #intel-gfx:

<vsyrjala> bashing the hw for 500 usec seems a bit harsh

Which is true. The default for intel_de_wait_for_register() is 2
us. Should probably stick to that.

BR,
Jani.


>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>
>> -----Original Message-----
>> From: Murthy, Arun R <arun.r.murthy@intel.com>
>> Sent: Thursday, December 15, 2022 4:44 PM
>> To: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Nikula, Jani
>> <jani.nikula@intel.com>; Deak, Imre <imre.deak@intel.com>
>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>> Subject: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling read
>>
>> The busy timeout logic checks for the AUX BUSY, then waits for the timeout
>> period and then after timeout reads the register for BUSY or Success.
>> Instead replace interrupt with polling so as to read the AUX CTL register often
>> before the timeout period. Looks like there might be some issue with
>> interrupt-on-read. Hence changing the logic to polling read.
>>
>> v2: replace interrupt with polling read
>> v3: use usleep_rang instead of msleep, updated commit msg
>> v4: use intel_wait_for_regiter internal function
>> v5: use __intel_de_wait_for_register with 500us slow and 10ms fast timeout
>> v6: check return value of __intel_de_wait_for_register
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 +++++---------
>>  1 file changed, 5 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index 91c93c93e5fc..973dadecf712 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -41,20 +41,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>>       i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>>       const unsigned int timeout_ms = 10;
>>       u32 status;
>> -     bool done;
>> -
>> -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) &
>> DP_AUX_CH_CTL_SEND_BUSY) == 0)
>> -     done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
>> -                               msecs_to_jiffies_timeout(timeout_ms));
>> +     int ret;
>>
>> -     /* just trace the final value */
>> -     trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>> +     ret = __intel_de_wait_for_register(i915, ch_ctl,
>> +                                        DP_AUX_CH_CTL_SEND_BUSY, 0,
>> +                                        500, timeout_ms, &status);
>>
>> -     if (!done)
>> +     if (ret == -ETIMEDOUT)
>>               drm_err(&i915->drm,
>>                       "%s: did not complete or timeout within %ums
>> (status 0x%08x)\n",
>>                       intel_dp->aux.name, timeout_ms, status); -#undef C
>>
>>       return status;
>>  }
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
