Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B111966659C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 22:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CAC10E0CA;
	Wed, 11 Jan 2023 21:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DF310E0CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 21:25:56 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id qk9so40179120ejc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 13:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=G6AVI8M9F1byAq6Fcdl8TNK/7PXo7iv16aAHab25uak=;
 b=FKKKRFPZA2RcxUAlLP/uTgcWL6x7uRnZ1ORgvHIY+dZllA7yHMX39E1xc+lc2gzNye
 JHHiCS9UnqLjSvFJ88vPTJtraqMW9fn59whNuz7+5jxeGv3bEQECAEYYJrsDvz1Xy2wF
 oV4WcZxjZbaAUeUHhzI4Ms9cP69mRCAlqCBPTcgXWu4yrSj2UhfvRqfnyKQhhZTAzMFE
 aB27cgY4lLu2wTXnNBH2ceN3Zafv+mvUt8cx+PJTUgExPYKjsw7M/6RMlrWdPUeDn9J/
 30BibAUFYdHSjO2hUWnsozrgtJ458f6SU6lZ878C/6D0KjVQ5rUMYFA5YIwpateaewcG
 PjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=G6AVI8M9F1byAq6Fcdl8TNK/7PXo7iv16aAHab25uak=;
 b=bsbBqO8BWRw9hFZ5O8EatnP8aPIswmcNusqyUk2kHOGAeE8NvuUbaD+gh4mWNCgkGs
 nvtpqCYOfq00ySTPTXnrk7aTAlTXeM1FZh11x3jjTxOxfAlNq5v6CR2ZBRq1j6rHiiF4
 PeoaWHcbE58/hzbH+yFSSGI3qvXvSJaquI8dOxmF37ChhvmFQK3/gJW3gkoWZv3Efm9W
 DSTKvLhcwlm3imZB70a/WNWtlHnx8hATo2eQM2o+yHdsJ3T3CT2zaL0tpC1KhT086Jmd
 +6wl10ddirtzMZi1GS+LaBB//ttXn47EAfX2FpmKawyd8N2OyYkrjhq8WxzfVWiPPHOx
 FG9g==
X-Gm-Message-State: AFqh2kqqHepusfsZGy2Z8aczpas0rcVSNY2SO0mSOXClwIp6zPfQ7l8G
 CwzL5N9Nb+1+TiKDd3Yun4QigdXatVFnR2iN
X-Google-Smtp-Source: AMrXdXtzyspXShBQJKWZLWniSlUtd5dP+lxmiT+Lx3/U/YjcoKHK5P3/bqcg7ARSdBlmmbYZQq+UhQ==
X-Received: by 2002:a17:906:7688:b0:85c:f3cd:66f3 with SMTP id
 o8-20020a170906768800b0085cf3cd66f3mr4859713ejm.9.1673472355027; 
 Wed, 11 Jan 2023 13:25:55 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.87])
 by smtp.googlemail.com with ESMTPSA id
 10-20020a170906218a00b0073d796a1043sm6504219eju.123.2023.01.11.13.25.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Jan 2023 13:25:54 -0800 (PST)
Message-ID: <efa9dee0-976c-604b-8586-80d4e01e9783@gmail.com>
Date: Wed, 11 Jan 2023 23:25:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Drew Davenport <ddavenport@chromium.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
 <Y77FVOCTCWcUI1D+@intel.com> <Y77/40mfSjw28HS9@chromium.org>
 <Y78Qbk4V0hfN2h/D@intel.com> <Y78Xl/Bi0Aby0iEm@chromium.org>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <Y78Xl/Bi0Aby0iEm@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: assume some pixelrate for
 src smaller than 1
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11.1.2023 22.09, Drew Davenport wrote:
> On Wed, Jan 11, 2023 at 09:39:26PM +0200, Ville Syrjälä wrote:
>> On Wed, Jan 11, 2023 at 11:28:51AM -0700, Drew Davenport wrote:
>>> On Wed, Jan 11, 2023 at 04:19:00PM +0200, Ville Syrjälä wrote:
>>>> On Wed, Jan 04, 2023 at 02:44:48PM +0200, Juha-Pekka Heikkila wrote:
>>>>> intel_adjusted_rate() didn't take into account src rectangle
>>>>> can be less than 1 in width or height.
>>>>
>>>> This should not get called in those cases. What does the
>>>> backtrace look like?
>>>
>>> In my repro of this issue, the backtrace looks as follows:
>>>
>>> [  180.798331] RIP: 0010:intel_plane_pixel_rate+0x4a/0x53
>>> [  180.798336] Code: <snip long line>
>>> [  180.798338] RSP: 0018:ffffb080ce4179b8 EFLAGS: 00010246
>>> [  180.798341] RAX: ffffffffffffffff RBX: ffff98cd22a24000 RCX: 0000000000000a00
>>> [  180.798343] RDX: 0000000000000000 RSI: ffff98cccbae7000 RDI: 0000000000000000
>>> [  180.798346] RBP: ffffb080ce4179b8 R08: 0000000000087780 R09: 0000000000000002
>>> [  180.798348] R10: 0000000000000a00 R11: 0000000000000000 R12: 0000000000000000
>>> [  180.798350] R13: ffff98cd0e495400 R14: ffff98ccc34e0000 R15: ffff98cccbae7000
>>> [  180.798352] FS:  00007b84119b5000(0000) GS:ffff98d02f900000(0000) knlGS:0000000000000000
>>> [  180.798354] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> [  180.798357] CR2: 00007ffc2d5e4080 CR3: 00000001042ee006 CR4: 0000000000770ee0
>>> [  180.798359] PKRU: 55555554
>>> [  180.798361] Call Trace:
>>> [  180.798364]  <TASK>
>>> [  180.798366]  intel_plane_atomic_check_with_state+0x1fd/0x6ea
>>> [  180.798370]  ? intel_plane_atomic_check+0x11b/0x145
>>> [  180.798373]  intel_atomic_check_planes+0x263/0x7ce
>>> [  180.798376]  ? drm_atomic_helper_check_modeset+0x189/0x923
>>> [  180.798380]  intel_atomic_check+0x14e4/0x184d
>>> [  180.798382]  ? intel_rps_mark_interactive+0x23/0x6a
>>> [  180.798386]  drm_atomic_check_only+0x3ec/0x98f
>>> [  180.798391]  drm_atomic_commit+0xa2/0x105
>>> [  180.798394]  ? drm_atomic_set_fb_for_plane+0x96/0xa5
>>> [  180.798397]  drm_atomic_helper_update_plane+0xdc/0x11f
>>> [  180.798400]  drm_mode_setplane+0x236/0x30c
>>> [  180.798404]  ? drm_any_plane_has_format+0x51/0x51
>>> [  180.798407]  drm_ioctl_kernel+0xda/0x14d
>>> [  180.798411]  drm_ioctl+0x27e/0x3b4
>>> [  180.798414]  ? drm_any_plane_has_format+0x51/0x51
>>> [  180.798418]  __se_sys_ioctl+0x7a/0xbc
>>> [  180.798421]  do_syscall_64+0x55/0x9d
>>> [  180.798424]  ? exit_to_user_mode_prepare+0x3c/0x8b
>>> [  180.798427]  entry_SYSCALL_64_after_hwframe+0x61/0xcb
>>>
>>> If this function shouldn't be called in such a case, then perhaps
>>> I should revist my original attempt at fixing this in
>>> https://patchwork.freedesktop.org/patch/516060 by rejecting such a
>>> configuration?
>>
>> I'm saying that this should be impossible already. At least
>> I can't immediately see anything that could call this with
>> an invisible plane.
> 
> In my repro case, I called drmModeSetPlane with the src_h parameter set
> to 65535 (so the largest 16.16 number that's less than one). This got
> through any existing checks on the height of the src rect, resulting in
> the divide-by-zero error in intel_plane_pixel_rate.
> 
> While investigating this, I tried setting src_h to 0, but this
> configuration got rejected somewhere along the line before it got
> through the intel_plane_pixel_rate.
> 

Here's one of the igt tests I had come up when debugging this:

---
#include "igt.h"
igt_main
{
	igt_subtest_f("testi") {
		int drm_fd = drm_open_driver_master(DRIVER_INTEL);
		igt_display_t display;
		igt_plane_t* plane;
                 igt_output_t *output;
		igt_fb_t fb;

		kmstest_set_vt_graphics_mode();

		igt_display_require(&display, drm_fd);
		igt_display_require_output(&display);

		output = igt_get_single_output_for_pipe(&display, PIPE_A);
		igt_output_set_pipe(output, PIPE_A);
		igt_display_commit_atomic(&display, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);

		igt_create_pattern_fb(drm_fd, 256, 256,
				      DRM_FORMAT_XRGB8888,
				      DRM_FORMAT_MOD_NONE,
				      &fb);

		plane = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);

		igt_plane_set_position(plane, 0, 0);
		igt_plane_set_fb(plane, &fb);
		igt_plane_set_prop_value(plane, IGT_PLANE_SRC_H, IGT_FIXED(0, 30));
		igt_plane_set_size(plane, 256, 8);

		igt_display_commit_atomic(&display, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
	}
}
---
This should give callstack ending same way as what Drew had seen. With 
my patch in place this test will die with einval coming from kernel from 
skl_update_scaler(..) where it doesn't pass range checks (and will note 
on dmesg about it)

/Juha-Pekka

>>
>>>
>>> I'll respond to Alan on that thread.
>>>
>>>>
>>>>>
>>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
>>>>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>>>> index 10e1fc9d0698..a9948e8d3543 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>>>> @@ -144,7 +144,7 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
>>>>>   				 const struct drm_rect *dst,
>>>>>   				 unsigned int rate)
>>>>>   {
>>>>> -	unsigned int src_w, src_h, dst_w, dst_h;
>>>>> +	unsigned int src_w, src_h, dst_w, dst_h, dst_wh;
>>>>>   
>>>>>   	src_w = drm_rect_width(src) >> 16;
>>>>>   	src_h = drm_rect_height(src) >> 16;
>>>>> @@ -155,8 +155,10 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
>>>>>   	dst_w = min(src_w, dst_w);
>>>>>   	dst_h = min(src_h, dst_h);
>>>>>   
>>>>> -	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
>>>>> -				dst_w * dst_h);
>>>>> +	/* in case src contained only fractional part */
>>>>> +	dst_wh = max(dst_w * dst_h, (unsigned) 1);
>>>>> +
>>>>> +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
>>>>>   }
>>>>>   
>>>>>   unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
>>>>> -- 
>>>>> 2.37.3
>>>>
>>>> -- 
>>>> Ville Syrjälä
>>>> Intel
>>
>> -- 
>> Ville Syrjälä
>> Intel

