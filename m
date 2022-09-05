Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18C75AD802
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 19:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0243F10E449;
	Mon,  5 Sep 2022 17:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7695C10E449
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 17:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662397365; x=1693933365;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7ltuXYChUnp6nOu1cbhPJiPriRfLghg7W2x750fq2GQ=;
 b=TTIWlD++lkUHHIsZj06QGga0toMJJRFdJ4fYoPAnQDcNgH6Rp+fAWPcz
 2SsVLT1JtfMwiKxdlt1CBVfvyRPlhdxRfolMnLaJfSAfhUSjBeJaGa6cx
 ht5jqYl7JyoPqOuQ4+fH/SRooj+JWtHIkBK/E4xkwo372qqM2ifRtNI8G
 7wm/ZMNvMbnv0FogRSZAeSW2EW+yRo/L35udOBO8TA0Khknrj/QOxRhsM
 H/Ka2S2dhLHOAZZmHTmzljq0KdMtkrYdMGclhtvfpx0EpKW2UZIqT59sM
 iKQOEcE8dZdEyPepup6vTxtJnQOMJMlnpnIxEARyW/cMN2haagpU4Xs3H g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="294011408"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="294011408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 10:02:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="643866090"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.20.86])
 ([10.213.20.86])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 10:02:42 -0700
Message-ID: <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
Date: Mon, 5 Sep 2022 19:02:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
 <YxXh+gGqGGahJc08@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YxXh+gGqGGahJc08@intel.com>
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



On 05.09.2022 13:48, Ville Syrjälä wrote:
> On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
>> In case of ICL and older generations disabling plane and/or disabling
>> async update is always performed on vblank,
> It should only be broken on bdw-glk (see. need_async_flip_disable_wa).

On CFL it is reported every drmtip run:
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?testfilter=tiled-max-hw
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html#dmesg-warnings402
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html#dmesg-warnings402
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1208/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
...
On APL it is less frequent, probably due to other bugs preventing run of 
this test, last seen at:
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1190/fi-apl-guc/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
Similar for SKL:
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1181/fi-skl-guc/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

I am not sure if I correctly read the docs but [1] says that 9th bit of 
PLANE_CFG (Async Address Update Enable) is "not double buffered and the 
changes will apply immediately" only for ICL, JSL, LKF1.
So the change is not necessary in case of icl_plane_disable_arm.

[1]: https://gfxspecs.intel.com/Predator/Home/Index/7656
>
>> but if async update is enabled
>> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
>> when plane is still enabled can cause DMAR/PIPE errors.
>> On the other side PLANE_SURF is used to arm plane registers - we need to
>> write to it to trigger update on VBLANK, writting current value should
>> be safe - the buffer address is valid till vblank.
> I think you're effectively saying that somehow the async
> flip disable w/a is not kicking in sometimes.

I was not aware of existence of this w/a and I am little lost in 
figuring out how this w/a can prevent zeroing PLANE_SURF too early.

Regards
Andrzej

>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index bcfde81e4d0866..bc9ed60a2d349e 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -615,11 +615,13 @@ skl_plane_disable_arm(struct intel_plane *plane,
>>   	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>>   	enum plane_id plane_id = plane->id;
>>   	enum pipe pipe = plane->pipe;
>> +	u32 plane_surf;
>>   
>>   	skl_write_plane_wm(plane, crtc_state);
>>   
>>   	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>> +	plane_surf = intel_de_read_fw(dev_priv, PLANE_SURF(pipe, plane_id));
>> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
>>   }
>>   
>>   static void
>> @@ -629,6 +631,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>>   	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>>   	enum plane_id plane_id = plane->id;
>>   	enum pipe pipe = plane->pipe;
>> +	u32 plane_surf;
>>   
>>   	if (icl_is_hdr_plane(dev_priv, plane_id))
>>   		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
>> @@ -637,7 +640,8 @@ icl_plane_disable_arm(struct intel_plane *plane,
>>   
>>   	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>>   	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>> +	plane_surf = intel_de_read_fw(dev_priv, PLANE_SURF(pipe, plane_id));
>> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
>>   }
>>   
>>   static bool
>> -- 
>> 2.25.1

