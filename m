Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030165AE633
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 13:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E74010E617;
	Tue,  6 Sep 2022 11:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32AB510E617
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 11:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662462560; x=1693998560;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HoLSY7mkSXWz7CvT8wMFYqGARBjHkr1GwMv+Kj4GkuE=;
 b=X/hwFhasOTLBA4FftHk71Fz1GsPUBw8mXdLE0nN1xwOHZ5ljZV7DKS2s
 24nBUzO1lzhihQvRjJZEBz2ThWhxN70nGoy2Melw0L03RT597HVk/eg0R
 VqlTnQ46hzjmVXu7aZNJsZ6lBsm8PBCkkoIJnxag0pN0evFWimwLT4xEx
 tDGx+svfTBwq+9OtIi6ngXlGBNxg8If11CkT5a2HXvK+cqJ/tupZ2db3q
 AzeBxkmnk0302Rvf0YDG4cBbhUlYs7T8Nvn5B0jrCyxg5jxTUQJa5dzV0
 ry4G/cyBOyxieXAvTtnWGtCiuobkGmhTrSAcbIPG9dT7zDB//wVyMSDG4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="279579962"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="279579962"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 04:09:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="591226593"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.226])
 ([10.213.5.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 04:09:18 -0700
Message-ID: <2501aa82-dac0-6cdf-db97-c43893106027@intel.com>
Date: Tue, 6 Sep 2022 13:09:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
 <YxXh+gGqGGahJc08@intel.com> <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
 <YxY1mznljBVkDHCw@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YxY1mznljBVkDHCw@intel.com>
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



On 05.09.2022 19:44, Ville Syrjälä wrote:
> On Mon, Sep 05, 2022 at 07:02:40PM +0200, Andrzej Hajda wrote:
>>
>> On 05.09.2022 13:48, Ville Syrjälä wrote:
>>> On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
>>>> In case of ICL and older generations disabling plane and/or disabling
>>>> async update is always performed on vblank,
>>> It should only be broken on bdw-glk (see. need_async_flip_disable_wa).
>> On CFL it is reported every drmtip run:
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?testfilter=tiled-max-hw
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html#dmesg-warnings402
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html#dmesg-warnings402
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1208/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>> ...
>> On APL it is less frequent, probably due to other bugs preventing run of
>> this test, last seen at:
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1190/fi-apl-guc/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>> Similar for SKL:
>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1181/fi-skl-guc/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>>
>> I am not sure if I correctly read the docs but [1] says that 9th bit of
>> PLANE_CFG (Async Address Update Enable) is "not double buffered and the
>> changes will apply immediately" only for ICL, JSL, LKF1.
> It got broken in bdw and fixed again in icl.
>
>> So the change is not necessary in case of icl_plane_disable_arm.
>>
>> [1]: https://gfxspecs.intel.com/Predator/Home/Index/7656
>>>> but if async update is enabled
>>>> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
>>>> when plane is still enabled can cause DMAR/PIPE errors.
>>>> On the other side PLANE_SURF is used to arm plane registers - we need to
>>>> write to it to trigger update on VBLANK, writting current value should
>>>> be safe - the buffer address is valid till vblank.
>>> I think you're effectively saying that somehow the async
>>> flip disable w/a is not kicking in sometimes.
>> I was not aware of existence of this w/a and I am little lost in
>> figuring out how this w/a can prevent zeroing PLANE_SURF too early.
> When it works as designed it should:
> 1. turn off the async flip bit
> 2. wait for vblank so that gets latched
> 3. do the sync plane update/disable normally

After debugging this terra incognita, I've figured out that plane states 
are not populated in intel_crtc_async_flip_disable_wa
so for_each_old_intel_plane_in_state does not iterate over affected 
planes and w/a does not work at all.
I have no idea where affected plane states should be added.
Adding them to the beginning of intel_atomic_check helped, but this is 
just blind shot:

@@ -6778,10 +6778,14 @@ static int intel_atomic_check(struct drm_device 
*dev,
              new_crtc_state->uapi.mode_changed = true;

          if (new_crtc_state->uapi.scaling_filter !=
              old_crtc_state->uapi.scaling_filter)
              new_crtc_state->uapi.mode_changed = true;
+
+        ret = intel_atomic_add_affected_planes(state, crtc);
+        if (ret)
+            goto fail;
      }

      intel_vrr_check_modeset(state);

      ret = drm_atomic_helper_check_modeset(dev, &state->base);


Let me know if there is better place/way to handle it.

Regards
Andrzej
