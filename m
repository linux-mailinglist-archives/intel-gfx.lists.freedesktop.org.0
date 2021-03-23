Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B24345BD5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 11:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D0F6E898;
	Tue, 23 Mar 2021 10:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23046E898
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 10:23:36 +0000 (UTC)
IronPort-SDR: rIFL2GYd4NTb+paj0QrSgSNZnE9h4FPEWSVwG7NTkBv5TudyXHfwdnuvsHTr2yFXFUm/jIBu8s
 vLkUCvk6LetA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="210524260"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; d="scan'208";a="210524260"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 03:23:35 -0700
IronPort-SDR: CmbioHbfib0DlP5+409jLd29/fHPy93jkAu8dS8M69iE3kwuNU0co6R0Jcwppo/ERvcNZN53uk
 17J90FksJglw==
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; d="scan'208";a="414922255"
Received: from wjlloyd-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.53.124])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 03:23:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>
In-Reply-To: <20210319204421.GA6043@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210319115333.8330-1-jani.nikula@intel.com>
 <20210319204421.GA6043@labuser-Z97X-UD5H>
Date: Tue, 23 Mar 2021 12:23:31 +0200
Message-ID: <87y2ee4198.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: fix DSS CTL register usage
 for ICL DSI transcoders
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 19 Mar 2021, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Fri, Mar 19, 2021 at 01:53:33PM +0200, Jani Nikula wrote:
>> Use the correct DSS CTL registers for ICL DSI transcoders.
>> 
>> As a side effect, this also brings back the sanity check for trying to
>> use pipe DSC registers on pipe A on ICL.
>> 
>> Fixes: 8a029c113b17 ("drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave")
>> References: http://lore.kernel.org/r/87eegxq2lq.fsf@intel.com
>
> Thanks Jani for the detailed review comments here and explanation on what
> broke the DSI DSC on < Gen 12 platforms.
>
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Animesh Manna <animesh.manna@intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: <stable@vger.kernel.org> # v5.11+
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> ---
>> 
>> Untested, I don't have the platform.
>> ---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c | 10 ++--------
>>  1 file changed, 2 insertions(+), 8 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index f58cc5700784..a86c57d117f2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -1014,20 +1014,14 @@ static i915_reg_t dss_ctl1_reg(const struct intel_crtc_state *crtc_state)
>>  {
>>  	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>>  
>> -	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
>> -		return DSS_CTL1;
>> -
>> -	return ICL_PIPE_DSS_CTL1(pipe);
>> +	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL1(pipe) : DSS_CTL1;
>
> Yes using is_pipe_dsc() makes sense here in order to select proper DSS_CTL regs
> for DSI.
>
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
> Manasi
>
>>  }
>>  
>>  static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
>>  {
>>  	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>>  
>> -	if (crtc_state->cpu_transcoder == TRANSCODER_EDP)
>> -		return DSS_CTL2;
>> -
>> -	return ICL_PIPE_DSS_CTL2(pipe);
>> +	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;
>>  }
>>  
>>  void intel_dsc_enable(struct intel_encoder *encoder,
>> -- 
>> 2.20.1
>> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
