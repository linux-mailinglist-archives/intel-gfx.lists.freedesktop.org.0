Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 326B766237D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 11:51:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D9610E069;
	Mon,  9 Jan 2023 10:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB9810E069
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 10:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673261474; x=1704797474;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MnZXbY0ZOOPa8mm+ZF4cWuZdXf1ao+YXUrB/emEoK8o=;
 b=Wt5h5PWjdMTuCr2gc80D+cE4avHTZaD2CcqeSk3yQCoGBpv4lv7oSMXZ
 V4RTn7BlSHq++Tc+sQn3ashvhVNv7phZ6zsNs9IFTQ0nJ3ZdCn8NN3RFC
 FK/kJZbv7qni7VYQks2m1MRsGt50xTsMqGE+a+ispdfwTM/P3f90T9Ihu
 EV9xvn0hdSIe8wZtsktKMv5dL9ABg3FDlWp+gBITMhKNoY7BrLVGRq62x
 VMIIeUlUuOgRar+C70DI5bDr4M2uTDbBZHkt2Rmuf6MAlUbxwhPJknx/D
 1YTomlEgqileUci+kTKeBijqfU4cZx2t2Jc6hzzC4swekBWBmI2j33rJr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="322920613"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="322920613"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 02:51:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="649977549"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="649977549"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.21.126])
 ([10.213.21.126])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 02:51:12 -0800
Message-ID: <6d7202a5-c102-9598-a03c-2a404c67d46d@intel.com>
Date: Mon, 9 Jan 2023 11:51:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-6-andrzej.hajda@intel.com>
 <Y7g/w/DVMOqKRg7H@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y7g/w/DVMOqKRg7H@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915/display/hdmi: use
 intel_de_rmw if possible
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

On 06.01.2023 16:35, Rodrigo Vivi wrote:
> On Thu, Jan 05, 2023 at 02:10:43PM +0100, Andrzej Hajda wrote:
>> The helper makes the code more compact and readable.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/g4x_hdmi.c   |  8 ++---
>>   drivers/gpu/drm/i915/display/intel_hdcp.c | 15 ++++-----
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 40 +++++++----------------
>>   3 files changed, 22 insertions(+), 41 deletions(-)
>>

(...)

>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index efa2da080f62d4..4b09f17aa4b23b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -237,15 +237,11 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
>>   			       void *frame, ssize_t len)
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> -	u32 val, *data = frame;
>> +	u32 *data = frame;
>>   	int i;
>>   
>> -	val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
>> -
>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
> 
> A probably good follow-up clean up would be to define the missing masks
> and remove the hardcoded things like this 0xf.
> 
> And also something that I had noticed on the previous patches but I forgot
> to mention: it would be good as a followup to replace the local value << shift
> per FIELD_PREP() helpers and remove the shift definitions...
> 
> But really nothing related directly with this patch. For this:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Oh, and I also noticed that CI didn't return yet for these patches...
> https://patchwork.freedesktop.org/series/112438/
> 
> a strange delay... I will probably hit the retest if we don't get
> anything by the end of the day today.

Thx for reviews.
Apparently CI missed this series, I have just hit retest.

Regards
Andrzej


> 
>> -	val |= g4x_infoframe_index(type);
>> -
>> -	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
>> +	intel_de_rmw(dev_priv, VIDEO_DIP_CTL,
>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>   
>>   	for (i = 0; i < len; i += 4)
>>   		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
>> @@ -313,15 +309,11 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	u32 val, *data = frame;
>> +	u32 *data = frame;
>>   	int i;
>>   
>> -	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
>> -
>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>> -	val |= g4x_infoframe_index(type);
>> -
>> -	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
>> +	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>   
>>   	for (i = 0; i < len; i += 4)
>>   		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
>> @@ -395,15 +387,11 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	u32 val, *data = frame;
>> +	u32 *data = frame;
>>   	int i;
>>   
>> -	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
>> -
>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>> -	val |= g4x_infoframe_index(type);
>> -
>> -	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
>> +	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>   
>>   	for (i = 0; i < len; i += 4)
>>   		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
>> @@ -471,15 +459,11 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	u32 val, *data = frame;
>> +	u32 *data = frame;
>>   	int i;
>>   
>> -	val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe));
>> -
>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>> -	val |= g4x_infoframe_index(type);
>> -
>> -	intel_de_write(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
>> +	intel_de_rmw(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe),
>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>   
>>   	for (i = 0; i < len; i += 4)
>>   		*data++ = intel_de_read(dev_priv,
>> -- 
>> 2.34.1
>>

