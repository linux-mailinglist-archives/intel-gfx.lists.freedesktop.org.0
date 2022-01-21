Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4BD495E5F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:27:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02C810EA5A;
	Fri, 21 Jan 2022 11:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E74C10EA5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764443; x=1674300443;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=agoLAQ0QhQyFkKngwLw4VBGrkC4rX/+DzPw9ia7A0RE=;
 b=jwik/QwW4KrgExkHqjcCAXghzNCdgo5d2c01RcmI3wbOTDtklU1lcSBw
 yXDl9E9ogXL7SB5JowWo6rESGM+HKZHLOS7XY9GpdlUwVQPYWCY4rx//B
 gyP1jja6WMfq5fc2IvoRPZIiv9CQgeZump4a6XEAYno23HpZJ8I5WyrhR
 T3+DC7c/dDSGdNZ0mXw7pB22GFq8j6QKOyTpemxrEjmjChNts1yNyL9Bo
 TTa2IZPRCQagg9fuQ4Ur7wndK40s4n3Ef61kaNkX3qqNVcx1G/dxMncKK
 EAAXW1Xq75W+7cW7sekCzUQEj3Zwl4aTdH5DZeDDlcS3OgzyFqgJfonrp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="331985628"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="331985628"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:27:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533237804"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:27:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <6d3beb1ab0e64e7ca6c7e5b15e87ed6a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-7-jani.nikula@intel.com>
 <2e0b588d721e46a4ad9e94604421135f@intel.com> <87bl06acx2.fsf@intel.com>
 <6d3beb1ab0e64e7ca6c7e5b15e87ed6a@intel.com>
Date: Fri, 21 Jan 2022 13:27:13 +0200
Message-ID: <875yqd49da.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI
 we actually handled
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

On Thu, 20 Jan 2022, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, January 20, 2022 4:32 PM
>> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI we
>> actually handled
>> 
>> On Thu, 20 Jan 2022, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> >> Of Jani Nikula
>> >> Sent: Wednesday, January 12, 2022 4:33 PM
>> >> To: intel-gfx@lists.freedesktop.org
>> >> Cc: Nikula, Jani <jani.nikula@intel.com>
>> >> Subject: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the
>> >> ESI we actually handled
>> >>
>> >> Seems odd that we clear all event status indicators if we've only
>> >> handled some. Only clear the ones we've handled.
>> >
>> > Looks Good to me.
>> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> 
>> Thanks, please also see v2 of this patch I accidentally posted to the old thread first. I
>> guess you were replying to two threads too. :)
>
> Yeah seems reply got mixed up. I have replied on correct versions now.

Many thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.


>
> Regards,
> Uma Shankar
>
>> BR,
>> Jani
>> 
>> >
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++--------
>> >>  1 file changed, 12 insertions(+), 8 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> index 95e9f7220ab8..548419a4ead8 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> @@ -3625,13 +3625,17 @@ static void
>> >> intel_dp_handle_test_request(struct
>> >> intel_dp *intel_dp)  }
>> >>
>> >>  static void
>> >> -intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool
>> >> *handled)
>> >> +intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
>> >>  {
>> >> -	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
>> >> +	bool handled = false;
>> >> +
>> >> +	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
>> >> +	if (handled)
>> >> +		ack[1] |= DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY;
>> >>
>> >>  	if (esi[1] & DP_CP_IRQ) {
>> >>  		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
>> >> -		*handled = true;
>> >> +		ack[1] |= DP_CP_IRQ;
>> >>  	}
>> >>  }
>> >>
>> >> @@ -3683,7 +3687,7 @@ intel_dp_check_mst_status(struct intel_dp
>> >> *intel_dp)
>> >>
>> >>  	for (;;) {
>> >>  		u8 esi[4] = {};
>> >> -		bool handled;
>> >> +		u8 ack[4] = {};
>> >>
>> >>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
>> >>  			drm_dbg_kms(&i915->drm,
>> >> @@ -3699,15 +3703,15 @@ intel_dp_check_mst_status(struct intel_dp
>> *intel_dp)
>> >>  		    esi[3] & LINK_STATUS_CHANGED) {
>> >>  			if (!intel_dp_mst_link_status(intel_dp))
>> >>  				link_ok = false;
>> >> -			handled = true;
>> >> +			ack[3] |= LINK_STATUS_CHANGED;
>> >>  		}
>> >>
>> >> -		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
>> >> +		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
>> >>
>> >> -		if (!handled)
>> >> +		if (!memchr_inv(ack, 0, sizeof(ack)))
>> >>  			break;
>> >>
>> >> -		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
>> >> +		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
>> >>  			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
>> >>  	}
>> >>
>> >> --
>> >> 2.30.2
>> >
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
