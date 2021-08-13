Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA093EBC84
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 21:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354686E8C8;
	Fri, 13 Aug 2021 19:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589296E8C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 19:30:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="301201906"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="301201906"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 12:30:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="528672143"
Received: from cgearing-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.226])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 12:30:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <87o8a1l6uz.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210813115610.20010-1-jani.nikula@intel.com>
 <YRZ/4mXaNPcCSoEN@intel.com> <87o8a1l6uz.fsf@intel.com>
Date: Fri, 13 Aug 2021 22:30:08 +0300
Message-ID: <87fsvdkurj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: use intel_de_rmw() to
 simplify VC payload alloc set/clear
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

On Fri, 13 Aug 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 13 Aug 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Fri, Aug 13, 2021 at 02:56:10PM +0300, Jani Nikula wrote:
>>> Less is more, fewer lines to wonder about.
>>> 
>>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> Thanks!

And pushed.

BR,
Jani.

>
>> although sometimes I get myself wondering we might get in some
>> case where our check inside the rmw function, to avoid writing the
>> same value, could cause some situation where we should perform
>> the write operation regardless.
>
> Me too. I could be persuaded to change the rmw function to not optimize
> the write away.
>
> BR,
> Jani.
>
>>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 ++-------
>>>  1 file changed, 2 insertions(+), 7 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 8d13d7b26a25..9859c0334ebc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -396,7 +396,6 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>>  		to_intel_connector(old_conn_state->connector);
>>>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>>>  	bool last_mst_stream;
>>> -	u32 val;
>>>  
>>>  	intel_dp->active_mst_links--;
>>>  	last_mst_stream = intel_dp->active_mst_links == 0;
>>> @@ -412,12 +411,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>>  
>>>  	clear_act_sent(encoder, old_crtc_state);
>>>  
>>> -	val = intel_de_read(dev_priv,
>>> -			    TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder));
>>> -	val &= ~TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
>>> -	intel_de_write(dev_priv,
>>> -		       TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
>>> -		       val);
>>> +	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
>>> +		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
>>>  
>>>  	wait_for_act_sent(encoder, old_crtc_state);
>>>  
>>> -- 
>>> 2.20.1
>>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
