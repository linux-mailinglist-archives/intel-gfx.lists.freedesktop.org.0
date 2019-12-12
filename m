Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36C11C65B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 08:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35176EC68;
	Thu, 12 Dec 2019 07:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163D36EC6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:27:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:27:09 -0800
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="207978588"
Received: from lenovo-x280.ger.corp.intel.com (HELO localhost) ([10.252.35.33])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:27:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20191211214302.GD12192@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1576081155.git.jani.nikula@intel.com>
 <f00e9d55ce20b256177222588780c660aa587cc3.1576081155.git.jani.nikula@intel.com>
 <20191211214302.GD12192@intel.com>
Date: Thu, 12 Dec 2019 09:27:06 +0200
Message-ID: <87eexa2ed1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: clarify DSC support for
 pipe A on ICL
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

On Wed, 11 Dec 2019, Manasi Navare <manasi.d.navare@intel.com> wrote:
> On Wed, Dec 11, 2019 at 06:23:47PM +0200, Jani Nikula wrote:
>> The check for cpu_transcoder != TRANSCODER_A is more magic than
>> necessary, and potentially misleading. Before TGL, DSC is supported on
>> pipe A if, and only if, it's used with eDP or DSI transcoders. No
>> functional changes.
>>
>
> Hmm, so we could still use PIPE_A but if its eDP or DSI it would use
> TRANSCODER_EDP or TRANSCODER_DSI and that should still work?

Correct, because on gen 11 eDP/DSI have a DSC engine in front of the
transcoder.

> So its simpler to say that if it is PIPE_A && transcoder_A then it doesnt
> support DSC?
> Wouldnt it be simpler to change the condition to :
> if (INTEL_GEN(i915) >= 10 && !(pipe_A && transcode_A)
>      return true;

The simplest is really the code as it is... but it's not clear, and
would deserve a comment. But I very much prefer self-documenting code
over comments explaining surprising code. So I'd like to spell out the
eDP/DSI transcoders here.

BR,
Jani.

>
> Regards
> Manasi
>  
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index e6f60be9ee84..41718f721484 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -337,7 +337,10 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
>>  bool intel_dsc_source_support(struct intel_encoder *encoder,
>>  			      const struct intel_crtc_state *crtc_state)
>>  {
>> +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	enum pipe pipe = crtc->pipe;
>>  
>>  	if (!INTEL_INFO(i915)->display.has_dsc)
>>  		return false;
>> @@ -347,7 +350,10 @@ bool intel_dsc_source_support(struct intel_encoder *encoder,
>>  		return true;
>>  
>>  	if (INTEL_GEN(i915) >= 10 &&
>> -	    crtc_state->cpu_transcoder != TRANSCODER_A)
>> +	    (pipe != PIPE_A ||
>> +	     (cpu_transcoder == TRANSCODER_EDP ||
>> +	      cpu_transcoder == TRANSCODER_DSI_0 ||
>> +	      cpu_transcoder == TRANSCODER_DSI_1)))
>>  		return true;
>>  
>>  	return false;
>> -- 
>> 2.20.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
