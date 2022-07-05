Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72781566956
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D9D10E53E;
	Tue,  5 Jul 2022 11:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B7010E099;
 Tue,  5 Jul 2022 10:58:35 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id lw20so20976383ejb.4;
 Tue, 05 Jul 2022 03:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:reply-to:from:in-reply-to:content-transfer-encoding;
 bh=YdQJihRrkpucZYuf6KhLTRPlm71obYX/uttytDsoJvQ=;
 b=QdxJwxNVXGC4WBotjY6jtWkKS37Oan70lpD3obZjvTfmpqmIFbWaoqlYrQY52sNetK
 x8vdXn63vA6EC4nV93golLuvfrtO+YrH/7MHFLf61T78QMTZgM3It4BJ5u4xZdgsErVq
 6k5ttYQfXQAQ1dDtd21lDwPzGgFJdQ8904oNBRgdqGjHI5AbydM8jkb0infOP7Fhs7Et
 eJ6e7eXgs1IbNCmSsU1WUWccZqdVt7qK69EOJswmQyvu1xQMV0flsaueyn4ewoyHeVaF
 MYIXdS9EhQH/tuMtYVtaKpaNHlYC3w9Nd2Z4i1/Z3FtsmHcsQXtZkVduHH4LK6bfhnfl
 T9cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:reply-to:from:in-reply-to
 :content-transfer-encoding;
 bh=YdQJihRrkpucZYuf6KhLTRPlm71obYX/uttytDsoJvQ=;
 b=tzZ5htggWXU1fjoUX6eqq/buOXrwAfNzb39RYTqdRDleaoT6p+hZAhLAoMsf3ASASU
 FGPfFBEoDJIsipToIeYrxrKF9ZHUgpswFMCmr3bkoOfc4U0yXqBrA3lL7Zitbb+6d6YR
 9/yiCXga4Fu4/WZ1R3mn5XbZ8W82NucRZWJqdg58W172tAcYYLt5f8CUGTvfkvf7pwKy
 UlrTgTNWS3S+096Df/H5RY4MZH0p9hu3E3ZBTmEhWBznzT7yGbuKAnEurglSL0nIcFC+
 ATRbJBbX54knOaEl0N4OXr5L7eb5LjpWGmWmDxJ3OBVWQabUQhltL8+YnsWiEG7Em2q4
 gllA==
X-Gm-Message-State: AJIora9KuMOVDQDqojWBPw21PaJM9v3HVy1as+ZZBDqOINrXeyxrr0KD
 QPUbV2QhJI3g4faNa+SF9qqLzEIP9sftFlTq
X-Google-Smtp-Source: AGRyM1u20FxDP5JgGLt/klWhTmoXuexkN07+U8aQZb69rRHKSQdGON15qWIYuz/FK4yZ5WZEjw9H1A==
X-Received: by 2002:a17:906:6c82:b0:709:f868:97f6 with SMTP id
 s2-20020a1709066c8200b00709f86897f6mr33574385ejr.555.1657018713695; 
 Tue, 05 Jul 2022 03:58:33 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.89])
 by smtp.googlemail.com with ESMTPSA id
 el3-20020a056402360300b0043585bb803fsm22599194edb.25.2022.07.05.03.58.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Jul 2022 03:58:33 -0700 (PDT)
Message-ID: <4a178210-d9f9-1fd8-8fbf-171000ac77e9@gmail.com>
Date: Tue, 5 Jul 2022 13:58:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "B S, Karthik" <karthik.b.s@intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
References: <20220628110409.768308-1-arun.r.murthy@intel.com>
 <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
 <DM6PR11MB3177AC16AD97327BCBEA3C39BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
 <9bc05a2b-771c-0d64-00c5-dc6432d2eecc@intel.com>
 <8c1cdbb6-4efd-11b4-48bd-1093fae6736c@intel.com>
 <DM6PR11MB3177B1A2F56960E08C49C64EBA819@DM6PR11MB3177.namprd11.prod.outlook.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <DM6PR11MB3177B1A2F56960E08C49C64EBA819@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async
 flip with a dummy flip
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5.7.2022 13.28, Murthy, Arun R wrote:
>> On 5.7.2022 12.49, Karthik B S wrote:
>>> On 7/5/2022 3:08 PM, Murthy, Arun R wrote:
>>>>> On 6/28/2022 4:34 PM, Arun R Murthy wrote:
>>>>>> In oder to trigger the async flip, a dummy flip is required after
>>>>>> sync flip so as to update the watermarks for async in KMD which
>>>>>> happens as part of this dummy flip. Thereafter async memory update
>>>>>> will act as a trigger register.
>>>>>> Capturing the CRC is done after the async flip as async flip at
>>>>>> some times can consume fairly a vblank period time.
>>>>>>
>>>>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>>>>> ---
>>>>>>     tests/i915/kms_big_fb.c | 29 +++++++++++++++++++----------
>>>>>>     1 file changed, 19 insertions(+), 10 deletions(-)
>>>>>>
>>>>>> diff --git a/tests/i915/kms_big_fb.c b/tests/i915/kms_big_fb.c
>>>>>> index
>>>>>> d50fde45..6caf3c31 100644
>>>>>> --- a/tests/i915/kms_big_fb.c
>>>>>> +++ b/tests/i915/kms_big_fb.c
>>>>>> @@ -465,7 +465,7 @@ static bool test_pipe(data_t *data)
>>>>>>     static bool
>>>>>>     max_hw_stride_async_flip_test(data_t *data)
>>>>>>     {
>>>>>> -    uint32_t ret, startframe;
>>>>>> +    uint32_t ret, frame;
>>>>>>         const uint32_t w =
>>>>>> data->output->config.default_mode.hdisplay,
>>>>>>                    h = data->output->config.default_mode.vdisplay;
>>>>>>         igt_plane_t *primary;
>>>>>> @@ -519,7 +519,19 @@ max_hw_stride_async_flip_test(data_t *data)
>>>>>>
>>>>> DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
>>>>>>             igt_wait_for_vblank(data->drm_fd, data-
>>>>>> display.pipes[primary->pipe->pipe].crtc_offset);
>>>>>> -        startframe = kmstest_get_vblank(data->drm_fd, data->pipe,
>>>>> 0) + 1;
>>>>>> +        /*
>>>>>> +         * In older platforms (<= Gen10), async address update bit
>>>>>> +is
>>>>> double buffered.
>>>>>> +         * So flip timestamp can be verified only from the second
>>>>>> flip.
>>>>>> +         * The first async flip just enables the async address update.
>>>>>> +         * In platforms greater than DISPLAY13 the first async
>>>>>> +flip
>>>>>> will
>>>>> be discarded
>>>>>> +         * in order to change the watermark levels as per the
>>>>> optimization. Hence the
>>>>>> +         * subsequent async flips will actually do the
>>>>>> +asynchronous
>>>>> flips.
>>>>>> +         */
>>>>>> +        ret = drmModePageFlip(data->drm_fd, data->output-
>>>>>> config.crtc->crtc_id,
>>>>>> +                              data->big_fb_flip[i].fb_id,
>>>>>> +
>>>>> DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>>>>>> +        igt_wait_for_vblank(data->drm_fd, data-
>>>>>> display.pipes[primary->pipe->pipe].crtc_offset);
>>>>>> +        frame = kmstest_get_vblank(data->drm_fd, data->pipe, 0) +
>>>>> 1;
>>>>>
>>>>> Hi,
>>>>>
>>>>> Should this be added inside a gen check similar to kms_async_flips?
>>>> Yes sorry missed it!
>>>>
>>>>>>             for (int j = 0; j < 2; j++) {
>>>>>>                 do {
>>>>>> @@ -528,23 +540,20 @@ max_hw_stride_async_flip_test(data_t
>> *data)
>>>>>>
>>>>> DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>>>>>>                 } while (ret == -EBUSY);
>>>>>>                 igt_assert(ret == 0);
>>>>>> +            igt_pipe_crc_get_for_frame(data->drm_fd, data-
>>>>>> pipe_crc,
>>>>>> +                       frame, &compare_crc);
>>>>>>
>>>>>> +            frame = kmstest_get_vblank(data->drm_fd, data-
>>>>>> pipe, 0) + 1;
>>>>>>                 do {
>>>>>>                     ret = drmModePageFlip(data->drm_fd, data-
>>>>>> output->config.crtc->crtc_id,
>>>>>>                                   data->big_fb.fb_id,
>>>>>>
>>>>> DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>>>>>>                 } while (ret == -EBUSY);
>>>>>>                 igt_assert(ret == 0);
>>>>>> +            igt_pipe_crc_get_for_frame(data->drm_fd, data-
>>>>>> pipe_crc,
>>>>>> +                       frame, &async_crc);
>>>>> We should be moving this IMHO. By waiting for vblank after each
>>>>> async flip to capture CRC, what is the intended result? Seems to be
>>>>> completely changing the existing test logic.
>>>> We are getting the vblank count and based on that getting the crc.
>>>> Now we know for async flip at certain times it can consume a time
>>>> equivalent to a vblank period. So in those scenarios getting crc
>>>> based on the vblank goes for a toss. Hence capturing the vblank start
>>>> time stamp at the beginning of each flip.
>>>
>>> Hi,
>>>
>>> But what is the the reference CRC we're expecting? The original logic
>>> is designed to match on one iteration and mismatch on the next using a
>>> combination of fb's by using async flips. But with these changes that
>>> whole logic goes for a toss?
>>>
>>>>
>>>>> Also, seems like we are overwriting the CRC captured for j = 0, as
>>>>> comparison is done outside this loop. Is this done on purpose?
>>>> Now with the changing the vblank start frame capture being added
>>>> before the async flip, CRC can be captured outside the loop as well,
>>>> but makes no sense. To maintain this order moving the CRC Capture
>>>> also after each frame.
>>>
>>> The CRC comparison is still outside the loop, so no point capturing
>>> CRC's if we finally discard it anyway?
>>>
>>
>> I think generally the idea Arun is changing is correct but he's missed how the
>> test work.
>>
>> I see there's Ville's change on kernel side for display_ver >=13 first async_flip
>> is unconditionally (intentionally) missed, this is at
>> intel_plane_do_async_flip(..) so this test will need adjustment
>>
>> What Arun seem to have missed is on test those nested loops how they
>> work, that part probably should've originally been commented in code bit
>> better.
>>
>> On original code there's after loop for j two time
>> igt_pipe_crc_get_for_frame(..), first will capture crc from duration of loop of
>> j, second will *wait* and capture current crc while there's framebuffer
>> "big_fb" on screen (wait is about 1,5 frames). Inside j loop, against i is async
>> flipped with fb from "big_fb_flip[i]" where one one fb look exactly like
>> "big_fb" and check with this crc doesn't change when flip with same content.
>> Then another "big_fb_flip[i]" is green color and check crc will change.
>>
>> Now when inside "j" loop Arun added igt_pipe_crc_get_for_frame(..) this test
>> becomes completely different because async flipping no more is tested do
>> perform back'n'forth flipping.
>>
> 
> Thanks for your comments JP, atleast its clear that this fix is required. But as commented
> I am not aware of the concept behind this test, It would be better if someone can take up this
> fix and correct the CRC capture sequence as well.

I think you are on the right track, just those inner loops are now 
mishandled.

I suspect you'd get effect you are after with something like below 
diff(totally untested). What the essential change is I added into that 
inner loop one extra async flip to "big_fb" in the beginning with hope 
that'll take care of display_ver>=13 .. but this change will invalidate 
"startframe" on display_ver>=13 so instead of get crc for chosen frames, 
drain crcs away before test and then get single crc two times. With this 
change probably that assert for "lost frames" will need to be adjusted 
too or just throw away. ..and you may need to add one extra 
igt_pipe_crc_get_single(..) before those two which will get the actual 
test crcs.

/Juha-Pekka


diff --git a/tests/i915/kms_big_fb.c b/tests/i915/kms_big_fb.c
index d50fde45..edcceaf1 100644
--- a/tests/i915/kms_big_fb.c
+++ b/tests/i915/kms_big_fb.c
@@ -518,10 +518,17 @@ max_hw_stride_async_flip_test(data_t *data)
                 igt_display_commit_atomic(&data->display,
 
DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);

+               igt_pipe_crc_drain(data->pipe_crc);
                 igt_wait_for_vblank(data->drm_fd, 
data->display.pipes[primary->pipe->pipe].crtc_offset);
                 startframe = kmstest_get_vblank(data->drm_fd, 
data->pipe, 0) + 1;

                 for (int j = 0; j < 2; j++) {
+                       do {
+                               ret = drmModePageFlip(data->drm_fd, 
data->output->config.crtc->crtc_id,
+                                                     data->big_fb.fb_id,
+ 
DRM_MODE_PAGE_FLIP_ASYNC, NULL);
+                       } while (ret == -EBUSY);
+
                         do {
                                 ret = drmModePageFlip(data->drm_fd, 
data->output->config.crtc->crtc_id,
 
data->big_fb_flip[i].fb_id,
@@ -537,10 +544,8 @@ max_hw_stride_async_flip_test(data_t *data)
                         igt_assert(ret == 0);
                 }

-               igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
-                                          startframe, &compare_crc);
-               igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
-                                          startframe + 1, &async_crc);
+               igt_pipe_crc_get_single(data->pipe_crc, &compare_crc);
+               igt_pipe_crc_get_single(data->pipe_crc, &async_crc);

                 igt_assert_f(kmstest_get_vblank(data->drm_fd, 
data->pipe, 0) -
                              startframe == 1, "lost frames\n");
