Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D34364B0CA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 09:09:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AFB10E2D9;
	Tue, 13 Dec 2022 08:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7130F10E2D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670918948; x=1702454948;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=KM/w1dCYt8hJkJb0gElquy8YHCYhMihti1DgPA0f2BY=;
 b=WR1ZjMF7NqtbnzIzO8fSMvfIlNXDoicnNcMI3jQZ5wIfB3yK2sFtyNwG
 itltm1niCGfKvS8fB5AOCjJYFdNajpQeyCLJ5Nz83T1q77XK+vMmhJZyK
 9xPp1W+CPNqlj0Js9QY52PMjb7h1LnZG4VuolAmoVgP2I15YGiI8p2MoU
 4bCX7nxS22qh6H9YCfwlPH5FQMKMnCJNVulrxrTqqncEGdb/NjuR1LbAV
 CUQIYRRpgCDtKFUMOB6EC8EcBwFCAHGfAS6hXUY/vVvlnoKb6XPkUmEni
 z9sc7DvkCSJwzQkhP2kXmPSTzKnFAlrAcvr7awNKNRwHDJ5iGEt7W2p2E w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="319217912"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="319217912"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 00:09:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="822788950"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="822788950"
Received: from amicu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.19.220])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 00:08:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
In-Reply-To: <DM6PR11MB3177460353B550B64AA3CB4CBAE39@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221209083510.475948-1-arun.r.murthy@intel.com>
 <87cz8szwha.fsf@intel.com>
 <DM6PR11MB3177460353B550B64AA3CB4CBAE39@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 13 Dec 2022 10:08:55 +0200
Message-ID: <87pmcnybc8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg
 read to polling read
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

On Tue, 13 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, December 9, 2022 4:16 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Deak, Imre
>> <imre.deak@intel.com>
>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>> Subject: Re: [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg read to
>> polling read
>>
>> On Fri, 09 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> > The busy timeout logic checks for the AUX BUSY, then waits for the
>> > timeout period and then after timeout reads the register for BUSY or
>> > Success.
>> > Instead replace interrupt with polling so as to read the AUX CTL
>> > register often before the timeout period. Looks like there might be
>> > some issue with interrupt-on-read. Hence changing the logic to polling
>> read.
>> >
>> > v2: replace interrupt with polling read
>> > v3: use usleep_rang instead of msleep, updated commit msg
>> >
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 24
>> > ++++++++++++---------
>> >  1 file changed, 14 insertions(+), 10 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > index 91c93c93e5fc..230f27d75846 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > @@ -41,21 +41,25 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>> >     i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>> >     const unsigned int timeout_ms = 10;
>> >     u32 status;
>> > -   bool done;
>> > +   int try;
>> >
>> > -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) &
>> DP_AUX_CH_CTL_SEND_BUSY) == 0)
>> > -   done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
>> > -                             msecs_to_jiffies_timeout(timeout_ms));
>> > +   for (try = 0; try < 10; try++) {
>> > +           status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
>> > +           if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
>> > +                   break;
>> > +           usleep_range(400, 500);
>> > +   }
>> > +   if (try == 3) {
>> > +           status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
>> > +           if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
>> > +                   drm_err(&i915->drm,
>> > +                           "%s: did not complete or timeout within
>> %ums (status 0x%08x)\n",
>> > +                           intel_dp->aux.name, timeout_ms, status);
>> > +   }
>> >
>> >     /* just trace the final value */
>> >     trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>>
>> Okay, so there are still a bunch of issues above. For example, try < 10 vs. try
>> == 3, reverting back to intel_uncore_* functions after conflict resolution,
>> having duplicated reads and conditions.
> The logic tries to read in a loop for 10 times with a sleep of 500usec between each reads.
> Finally after the 10th iteration for the last time the register is read again and the status is returned.

Yeah, but the condition is (try == 3).

>
>>
>> Now, I should've taken a step back earlier and realized you should use the
>> helper we already have for this: intel_de_wait_for_register().
>
> I checked this earlier. The reason for not opting this is this function is its
> interrupt-on-read, but we need a polling read with timeout.

It *is* a polling read with a timeout, with a bunch of smarts.

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>>
>> All of the above shrinks to just a few lines:
>>
>>       ret = intel_de_wait_for_register(i915, ch_ctl,
>> DP_AUX_CH_CTL_SEND_BUSY, 0, timeout_ms);
>>       if (ret)
>>               drm_err(...);
>>
>> Sorry for missing this earlier.
>>
>> BR,
>> Jani.
>>
>> >
>> > -   if (!done)
>> > -           drm_err(&i915->drm,
>> > -                   "%s: did not complete or timeout within %ums
>> (status 0x%08x)\n",
>> > -                   intel_dp->aux.name, timeout_ms, status);
>> > -#undef C
>> > -
>> >     return status;
>> >  }
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
