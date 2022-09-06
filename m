Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5865AF013
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 18:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A101710E6F2;
	Tue,  6 Sep 2022 16:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9087510E6F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 16:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662480867; x=1694016867;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5lNm3kDCT6VLBOCaUbrbuOwxA/ReoMhcPnj/JSQn7D0=;
 b=iaG2MkHZTSO/pDWJhRHNgc5WPTtH//hFyo7tFPOBlu9LzLOSIrFiteiF
 MQsU0FvgsEfTGs/U0COXeH4LkwwxgRyhhcPtcgp0Vzs7hrjteZh6dj2t8
 QDemxKa0Ns9vJBo+hCV/f+Hl5Mqe7PBYCNj/k/hiDaJSnssZNq4cxBRGP
 kDdThAh1YDFDlUTKW7JJGtoF9aWp2OaqlVl6fZjubvqfxRgnhLa/jXLAB
 BJRff2l2Eg0dcSaB0cF/7fGR/43OvQk2Fvwnnr51SLIXyWhVMPcDMgkcF
 QKBRkok+jFN2lWm4sg6w8DQ4w6+H9g98doimnuuG2PjAdC2WW2Jm98HkD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="277030485"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="277030485"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 09:14:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="591320762"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.226])
 ([10.213.5.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 09:14:25 -0700
Message-ID: <e4c132b1-0442-530c-d696-e42ca1a68373@intel.com>
Date: Tue, 6 Sep 2022 18:14:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
 <YxXh+gGqGGahJc08@intel.com> <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
 <YxY1mznljBVkDHCw@intel.com> <2501aa82-dac0-6cdf-db97-c43893106027@intel.com>
 <YxctfpfZ48ySBaCc@intel.com> <ef46e439-2de1-db0b-2672-b17af00a15b3@intel.com>
 <YxdV4Pz1x5V1kGBw@intel.com> <Yxda1TSrbHus+7rM@intel.com>
 <YxdckL3UVMt6oSR+@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YxdckL3UVMt6oSR+@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not reset PLANE_SURF on plane
 disable on older gens
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 06.09.2022 16:43, Ville Syrjälä wrote:
> On Tue, Sep 06, 2022 at 05:36:05PM +0300, Ville Syrjälä wrote:
>> On Tue, Sep 06, 2022 at 05:14:56PM +0300, Ville Syrjälä wrote:
>>> On Tue, Sep 06, 2022 at 03:57:37PM +0200, Andrzej Hajda wrote:
>>>>
>>>> On 06.09.2022 13:22, Ville Syrjälä wrote:
>>>>> On Tue, Sep 06, 2022 at 01:09:16PM +0200, Andrzej Hajda wrote:
>>>>>> On 05.09.2022 19:44, Ville Syrjälä wrote:
>>>>>>> On Mon, Sep 05, 2022 at 07:02:40PM +0200, Andrzej Hajda wrote:
>>>>>>>> On 05.09.2022 13:48, Ville Syrjälä wrote:
>>>>>>>>> On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
>>>>>>>>>> In case of ICL and older generations disabling plane and/or disabling
>>>>>>>>>> async update is always performed on vblank,
>>>>>>>>> It should only be broken on bdw-glk (see. need_async_flip_disable_wa).
>>>>>>>> On CFL it is reported every drmtip run:
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?testfilter=tiled-max-hw
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html#dmesg-warnings402
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html#dmesg-warnings402
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1208/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>>>>>>>> ...
>>>>>>>> On APL it is less frequent, probably due to other bugs preventing run of
>>>>>>>> this test, last seen at:
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1190/fi-apl-guc/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>>>>>>>> Similar for SKL:
>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1181/fi-skl-guc/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>>>>>>>>
>>>>>>>> I am not sure if I correctly read the docs but [1] says that 9th bit of
>>>>>>>> PLANE_CFG (Async Address Update Enable) is "not double buffered and the
>>>>>>>> changes will apply immediately" only for ICL, JSL, LKF1.
>>>>>>> It got broken in bdw and fixed again in icl.
>>>>>>>
>>>>>>>> So the change is not necessary in case of icl_plane_disable_arm.
>>>>>>>>
>>>>>>>> [1]: https://gfxspecs.intel.com/Predator/Home/Index/7656
>>>>>>>>>> but if async update is enabled
>>>>>>>>>> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
>>>>>>>>>> when plane is still enabled can cause DMAR/PIPE errors.
>>>>>>>>>> On the other side PLANE_SURF is used to arm plane registers - we need to
>>>>>>>>>> write to it to trigger update on VBLANK, writting current value should
>>>>>>>>>> be safe - the buffer address is valid till vblank.
>>>>>>>>> I think you're effectively saying that somehow the async
>>>>>>>>> flip disable w/a is not kicking in sometimes.
>>>>>>>> I was not aware of existence of this w/a and I am little lost in
>>>>>>>> figuring out how this w/a can prevent zeroing PLANE_SURF too early.
>>>>>>> When it works as designed it should:
>>>>>>> 1. turn off the async flip bit
>>>>>>> 2. wait for vblank so that gets latched
>>>>>>> 3. do the sync plane update/disable normally
>>>>>> After debugging this terra incognita, I've figured out that plane states
>>>>>> are not populated in intel_crtc_async_flip_disable_wa
>>>>>> so for_each_old_intel_plane_in_state does not iterate over affected
>>>>>> planes and w/a does not work at all.
>>>>>> I have no idea where affected plane states should be added.
>>>>>> Adding them to the beginning of intel_atomic_check helped, but this is
>>>>>> just blind shot:
>>>>>>
>>>>>> @@ -6778,10 +6778,14 @@ static int intel_atomic_check(struct drm_device
>>>>>> *dev,
>>>>>>                 new_crtc_state->uapi.mode_changed = true;
>>>>>>
>>>>>>             if (new_crtc_state->uapi.scaling_filter !=
>>>>>>                 old_crtc_state->uapi.scaling_filter)
>>>>>>                 new_crtc_state->uapi.mode_changed = true;
>>>>>> +
>>>>>> +        ret = intel_atomic_add_affected_planes(state, crtc);
>>>>>> +        if (ret)
>>>>>> +            goto fail;
>>>>>>         }
>>>>>>
>>>>>>         intel_vrr_check_modeset(state);
>>>>>>
>>>>>>         ret = drm_atomic_helper_check_modeset(dev, &state->base);
>>>>>                 ^
>>>>> This guy should be adding them for any crtc that has been flagged
>>>>> for modeset ahead of time. For modesets flagged later we have to
>>>>> add them by hand (eg. in intel_modeset_all_pipes()).
>>>> This is no-modeset scenario, drm_atomic_helper_check_modeset does not
>>>> add planes in this case.
>>> Then he mystery is how intel_crtc_async_flip_disable_wa() manages
>>> to not disable async flip for some planes...
>> After a few minutes of pondering I have a theory:
>> 1. async flip on plane 1
>>     crtc_state.*async_flip: false -> true
>> 2. sync flip on plane 2, plane 1 not include in state
>>     crtc_state.*async_flip: true -> false, but plane 1 still remains in
>>     async flip mode
>> 3. sync update/disable plane 1
>>     crtc_state.*async_flip = true -> true, so the async flip disable w/a
>                                ^^^^^^^^^^^^
> Meant to write false->false there.

There is only one plane in game.
Apparently there is an issue with intel_crtc_crc_setup_workarounds.
It calls intel_atomic_get_crtc_state for fresh state, causing state 
duplication, but async_flip flag is set always to false in new state.
In cases full modeset is not performed hw and sw state of async_flip 
will differ after commit of this state.
Ugly/racy workaround for this below:
---
@@ -316,10 +316,13 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc 
*crtc, bool enable)
      if (IS_HASWELL(dev_priv) &&
          pipe_config->hw.active && crtc->pipe == PIPE_A &&
          pipe_config->cpu_transcoder == TRANSCODER_EDP)
          pipe_config->uapi.mode_changed = true;

+    if (!pipe_config->uapi.mode_changed)
+        pipe_config->uapi.async_flip = crtc->base.state->async_flip;
+
      ret = drm_atomic_commit(state);

  put_state:
      if (ret == -EDEADLK) {
          drm_atomic_state_clear(state);
---

Regards
Andrzej
>
>>     is not triggeed
>>
>> Should be easy to type up a dedicated test case for that.
>>
>> I think there are two options of handling this:
>> - Switch all planes out of async flip mode for any sync update.
>>    Not great because then you can't mix async flips with any other
>>    sync updates on the same crtc
>> - Start tracking which planes are in async flip mode vs. not
>>    Should allow more freedom in mixing async flips with other updates
>>    on the crtc
>>
>> -- 
>> Ville Syrjälä
>> Intel

