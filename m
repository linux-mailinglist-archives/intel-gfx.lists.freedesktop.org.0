Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACB0662481
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 12:45:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E418110E3E8;
	Mon,  9 Jan 2023 11:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A699B10E3E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 11:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673264713; x=1704800713;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BUUZFONEnjZRBmlgHyStQKAF6NLAfsl7i8ssJvS4O3w=;
 b=lFoUoXV3VAEPiFY5bNSIHCrhYj1GU8mm2Y0JsmkpR7IxYnXY2Yowqn0g
 ZHiyarYBpjAf/UQVdSq8BVc6PrPXQ/RtWy3+6GJHIUCbjtLBkpI0M/mbu
 GnJcE/vGk0JPWGDWB8ebIi8pcJZ8cKFOWXdmGGSHGBGM5aJR2uo0vkF5V
 WCIDRxhQqVqR2k0tTpcJYlkoC6D8NaqVCGZ/Jz6Cbi/mdj2h1I4HQPS7h
 p8uKxst1YoRHOda/JM0FsDrTBuNBkZYLb4kbEeYon7EhGjoe37ynE1h1D
 aDRiLxT0bRwxqcAbpLEO/XUJT24AwP7Wiz8Bwb5bo2WmDoVqlZde5/w7b A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="303215056"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="303215056"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 03:45:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="689008035"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="689008035"
Received: from gtmcgeac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.217])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 03:45:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
In-Reply-To: <6d7202a5-c102-9598-a03c-2a404c67d46d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-6-andrzej.hajda@intel.com>
 <Y7g/w/DVMOqKRg7H@intel.com>
 <6d7202a5-c102-9598-a03c-2a404c67d46d@intel.com>
Date: Mon, 09 Jan 2023 13:45:01 +0200
Message-ID: <87mt6s0w5e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: mateusz.grabski@intel.com, intel-gfx@lists.freedesktop.org,
 michal.czaplinski@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 09 Jan 2023, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 06.01.2023 16:35, Rodrigo Vivi wrote:
>> On Thu, Jan 05, 2023 at 02:10:43PM +0100, Andrzej Hajda wrote:
>>> The helper makes the code more compact and readable.
>>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/g4x_hdmi.c   |  8 ++---
>>>   drivers/gpu/drm/i915/display/intel_hdcp.c | 15 ++++-----
>>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 40 +++++++----------------
>>>   3 files changed, 22 insertions(+), 41 deletions(-)
>>>
>
> (...)
>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> index efa2da080f62d4..4b09f17aa4b23b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> @@ -237,15 +237,11 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
>>>   			       void *frame, ssize_t len)
>>>   {
>>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>> -	u32 val, *data = frame;
>>> +	u32 *data = frame;
>>>   	int i;
>>>   
>>> -	val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
>>> -
>>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>> 
>> A probably good follow-up clean up would be to define the missing masks
>> and remove the hardcoded things like this 0xf.
>> 
>> And also something that I had noticed on the previous patches but I forgot
>> to mention: it would be good as a followup to replace the local value << shift
>> per FIELD_PREP() helpers and remove the shift definitions...
>> 
>> But really nothing related directly with this patch. For this:
>> 
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> 
>> Oh, and I also noticed that CI didn't return yet for these patches...
>> https://patchwork.freedesktop.org/series/112438/
>> 
>> a strange delay... I will probably hit the retest if we don't get
>> anything by the end of the day today.
>
> Thx for reviews.
> Apparently CI missed this series, I have just hit retest.

Cc: Michal and Mateusz

This has been happening a lot lately.

BR,
Jani.


>
> Regards
> Andrzej
>
>
>> 
>>> -	val |= g4x_infoframe_index(type);
>>> -
>>> -	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
>>> +	intel_de_rmw(dev_priv, VIDEO_DIP_CTL,
>>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>>   
>>>   	for (i = 0; i < len; i += 4)
>>>   		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
>>> @@ -313,15 +309,11 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
>>>   {
>>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> -	u32 val, *data = frame;
>>> +	u32 *data = frame;
>>>   	int i;
>>>   
>>> -	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
>>> -
>>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>>> -	val |= g4x_infoframe_index(type);
>>> -
>>> -	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
>>> +	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
>>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>>   
>>>   	for (i = 0; i < len; i += 4)
>>>   		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
>>> @@ -395,15 +387,11 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
>>>   {
>>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> -	u32 val, *data = frame;
>>> +	u32 *data = frame;
>>>   	int i;
>>>   
>>> -	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
>>> -
>>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>>> -	val |= g4x_infoframe_index(type);
>>> -
>>> -	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
>>> +	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
>>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>>   
>>>   	for (i = 0; i < len; i += 4)
>>>   		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
>>> @@ -471,15 +459,11 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
>>>   {
>>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> -	u32 val, *data = frame;
>>> +	u32 *data = frame;
>>>   	int i;
>>>   
>>> -	val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe));
>>> -
>>> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
>>> -	val |= g4x_infoframe_index(type);
>>> -
>>> -	intel_de_write(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
>>> +	intel_de_rmw(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe),
>>> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>>>   
>>>   	for (i = 0; i < len; i += 4)
>>>   		*data++ = intel_de_read(dev_priv,
>>> -- 
>>> 2.34.1
>>>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
