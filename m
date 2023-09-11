Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E331F79A9F1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 17:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C99410E326;
	Mon, 11 Sep 2023 15:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF0B10E32A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694447185; x=1725983185;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UoYETVQ3sWEnTFMSs6nj0izQFl4I6VfHXA9z3B676S4=;
 b=H9NkdqW7mWmqrfphyc8J0EyZncXTBe/mLUU34ch3xWpbVFtyEJXzsctM
 zXup9DjfBnI1Hojty6GYQ+gY+llFasAVptaTn7EZnvkjabMHARbOTr0AA
 X8Bxv/HdMHRlRtD+H7JzVpHK+3uWU+wZu+IPxHMndI/ByW7TPQpJIP/sy
 k2UWHWBZkSSnxmFSGSyMGkxC9LmeXZwt9t2iYOe0w6kq7NPLHP6n52mI3
 eLK0jxihOwfcJrOI+5pWAm1N8OOdZE6GVv0E+bq55Wk8uqjwrePv3O2+7
 JLiwQ/aSHbgZeLLHOJPvfkTdVnqA3Oc+jh4YRKT7UtRiQnD7QIt4/fY+M A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409085632"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="409085632"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833552071"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="833552071"
Received: from kschuele-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:45:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB6750AC31322962CAF2C836ACE3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1693933849.git.jani.nikula@intel.com>
 <e2551b52ac0dd2b4ffe18d5e7733fafdc191d68a.1693933849.git.jani.nikula@intel.com>
 <SN7PR11MB6750AC31322962CAF2C836ACE3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 11 Sep 2023 18:45:00 +0300
Message-ID: <87jzswemtf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/dsc: improve clarify of the
 pps reg read/write helpers
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

On Thu, 07 Sep 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH 1/8] drm/i915/dsc: improve clarify of the pps reg read/write
>> helpers
>
> Should be clarity here in the commit header

Thanks, fixed.

>
> With that fixed
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the reviews, pushed the lot to drm-intel-next.

BR,
Jani.


>>
>> Make it clear what's the number of vdsc per pipe, and what's the number of
>> registers to grab. Have intel_dsc_get_pps_reg() return the registers it knows
>> even if the requested amount is bigger.
>>
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c | 40 ++++++++++++-----------
>>  1 file changed, 21 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index b24601d0b2c5..14317bb6d3df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -372,7 +372,7 @@ int intel_dsc_get_num_vdsc_instances(const struct
>> intel_crtc_state *crtc_state)  }
>>
>>  static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
>> pps,
>> -                               i915_reg_t *dsc_reg, int vdsc_per_pipe)
>> +                               i915_reg_t *dsc_reg, int dsc_reg_num)
>>  {
>>       struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>       enum transcoder cpu_transcoder = crtc_state->cpu_transcoder; @@ -
>> 381,16 +381,12 @@ static void intel_dsc_get_pps_reg(const struct
>> intel_crtc_state *crtc_state, int
>>
>>       pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>>
>> -     switch (vdsc_per_pipe) {
>> -     case 2:
>> +     if (dsc_reg_num >= 3)
>> +             MISSING_CASE(dsc_reg_num);
>> +     if (dsc_reg_num >= 2)
>>               dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS(pipe, pps) :
>> DSCC_PPS(pps);
>> -             fallthrough;
>> -     case 1:
>> +     if (dsc_reg_num >= 1)
>>               dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS(pipe, pps) :
>> DSCA_PPS(pps);
>> -             break;
>> -     default:
>> -             MISSING_CASE(vdsc_per_pipe);
>> -     }
>>  }
>>
>>  static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
>> @@ -399,13 +395,16 @@ static void intel_dsc_write_pps_reg(const struct
>> intel_crtc_state *crtc_state,
>>       struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>       struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>       i915_reg_t dsc_reg[2];
>> -     int i, vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>> +     int i, vdsc_per_pipe, dsc_reg_num;
>> +
>> +     vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>> +     dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
>>
>> -     drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) <
>> vdsc_per_pipe);
>> +     drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
>>
>> -     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);
>> +     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
>>
>> -     for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++)
>> +     for (i = 0; i < dsc_reg_num; i++)
>>               intel_de_write(i915, dsc_reg[i], pps_val);  }
>>
>> @@ -815,16 +814,19 @@ static bool intel_dsc_read_pps_reg(struct
>> intel_crtc_state *crtc_state,  {
>>       struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>       struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> -     const int vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>>       i915_reg_t dsc_reg[2];
>> -     int i;
>> +     int i, vdsc_per_pipe, dsc_reg_num;
>>
>> -     *pps_val = 0;
>> -     drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) <
>> vdsc_per_pipe);
>> +     vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>> +     dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
>>
>> -     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);
>> +     drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
>> +
>> +     intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
>> +
>> +     *pps_val = 0;
>>
>> -     for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++) {
>> +     for (i = 0; i < dsc_reg_num; i++) {
>>               u32 pps_temp;
>>
>>               pps_temp = intel_de_read(i915, dsc_reg[i]);
>> --
>> 2.39.2
>

-- 
Jani Nikula, Intel Open Source Graphics Center
