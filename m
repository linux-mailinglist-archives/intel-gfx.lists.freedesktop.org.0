Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FFF39F599
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 13:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFE66E150;
	Tue,  8 Jun 2021 11:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B33DD6E12C;
 Tue,  8 Jun 2021 11:50:53 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 u5-20020a7bc0450000b02901480e40338bso1427649wmc.1; 
 Tue, 08 Jun 2021 04:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4cmCLxYg+lbD4TyhwEsYiS2iOjPA4+wpojOwNY8xagA=;
 b=H691Rz9QRcW/1Uf9l9hp/kKbe+S09eGrF7OEzMtZG7WaqZb2UPSS/Kw3o2aoc8zgMt
 ZIeuvEUa1KuDShlncczt5aspmXgI8pkrpT3R1C+ZwQ6zIiySjMymt7uOTganE13ffuRW
 L/o8JxG8l/eojtFXZrEn34n/FtzewOjaJOk9bgjr6o0jDi3jBSuTo09Z82pw7lQmJWxV
 7axsUjalnTaZU4GuNAHv+3yTHkUIisA/VAQQ9N6Gn25ehaYa++VZPtStrnmzBHp6FimY
 oWx/1AZoxM0P0l075eKODv9d2/k6l89737aOj7CDIwHvupASaqX3NZVMPPWqkmU8UlEf
 abog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=4cmCLxYg+lbD4TyhwEsYiS2iOjPA4+wpojOwNY8xagA=;
 b=AyHOTANbUTdixdOGdIxFpmYM6I3eR01t0sTtuZG6+cKAczJ8FxR+s03OwOekTxUq/O
 XLnDzJKxfXVMwOfiuVbQ0YtHhd+4jWbivNIvRkTYsIZOqt8ibT7x2QnXdnaKBqvXy4PC
 PdO1oM379wQo2bzGnWILGSXFfduLHTtwr0FAqYzsXsr2DTtG1OeuVkO0a+X8YrRitVCg
 Z/GbSxKrhDkjMHn/YeTkEf5anpVLw7a2DXqNdqDdL0/0RrDFe2z+b9aiOVq9DU0Wa0xD
 +vbv5io3L7pYegN5VTAh4F47TWyNhwtAE1YvjnvgrSc8wfpoqiI8aNLkvofyGwcHUa5E
 j42A==
X-Gm-Message-State: AOAM531Xcmclv7oxs/OmHRfPOkCVVbLL1PgRO+cLyi/07V0oG9KQ1VNw
 XhZFHrfC0ISwH3lGhclDZR8=
X-Google-Smtp-Source: ABdhPJy4wRpw04QTh3RVDXluk4t7rZy1+eWnJzW2H5i/66nmrXabJJZipPJZKKoYaTuTrXhtnhF/Lg==
X-Received: by 2002:a1c:32c6:: with SMTP id y189mr3845822wmy.54.1623153052210; 
 Tue, 08 Jun 2021 04:50:52 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.googlemail.com with ESMTPSA id o3sm13210777wrc.0.2021.06.08.04.50.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jun 2021 04:50:51 -0700 (PDT)
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
 <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
Date: Tue, 8 Jun 2021 14:50:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_big_fb:
 Wait for vblank before collecting CRC
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8.6.2021 12.19, Srinivas, Vidya wrote:
> Hello Juha-Pekka
> 
> Instead of wait for vblank, this also works
> igt_pipe_crc_start-> igt_pipe_crc_get_current for small fb after commit -> then igt_pipe_crc_get_current For big fb -> compare -> igt_pipe_crc_stop
> 
> Would this change be okay? Kindly suggest. igt_pipe_crc_collect_crc is not working. It gives CRC mismatch for few subtests like subtest y-tiled-32bpp-rotate-0

This change is ok. It kind of implies there maybe is some problem on 
your platform with starting of crc calculation but if this is only place 
where it will show I'm ok with that since crc will not affect normal 
users in any way.

I noticed your new patch, lets see how all ci machines behave on that 
before doing anything else.

/Juha-Pekka

> 
> Have submitted the change here https://patchwork.freedesktop.org/patch/437657/?series=90389&rev=6
> 
> Thank you so much.
> 
> Regards
> Vidya
> 
> -----Original Message-----
> From: Srinivas, Vidya
> Sent: Tuesday, June 8, 2021 1:19 PM
> To: juhapekka.heikkila@gmail.com; Modem, Bhanuprakash <Bhanuprakash.Modem@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: Lin, Charlton <Charlton.Lin@intel.com>
> Subject: RE: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC
> 
> Hello Juha-Pekka and Bhanu
> 
> Thank you for the review comments. Apologies Juha-Pekka, I will incorporate your review comments and try out.
> 
> Regards
> Vidya
> 
> 
> -----Original Message-----
> From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Sent: Tuesday, June 8, 2021 1:04 PM
> To: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: Lin, Charlton <charlton.lin@intel.com>
> Subject: Re: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank before collecting CRC
> 
> On 8.6.2021 10.01, Modem, Bhanuprakash wrote:
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>>> Of Vidya Srinivas
>>> Sent: Friday, May 28, 2021 9:57 AM
>>> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
>>> Cc: markyacoub@chromium.org; Lin, Charlton <charlton.lin@intel.com>
>>> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for
>>> vblank before collecting CRC
>>>
>>> Without wait for vblank, CRC mismatch is seen between big and small
>>> CRC on few Gen11 systems.
>>>
>>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>>> ---
>>>    tests/kms_big_fb.c | 6 ++++--
>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c index
>>> b35727a09bd0..f90363c3beb2 100644
>>> --- a/tests/kms_big_fb.c
>>> +++ b/tests/kms_big_fb.c
>>> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>>>    static bool test_plane(data_t *data)
>>>    {
>>>    	igt_plane_t *plane = data->plane;
>>> +	igt_display_t *display = &data->display;
>>
>> For code readability purpose, I think we need to update to use this
>> variable wherever we are using "&data->display" in this function.
>> s/"&data->display"/"display"/
>>
>> With above change, this patch LGTM
>> Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>>
> 
> I still don't see benefit in this patch. For now all this look like is doing is slow down the test and if this actually helps there's a real bug somewhere which is not here. My earlier review comments were not addressed hence repeat here, see below.
> 
> 
>>>    	struct igt_fb *small_fb = &data->small_fb;
>>>    	struct igt_fb *big_fb = &data->big_fb;
>>>    	int w = data->big_fb_width - small_fb->width; @@ -337,16 +338,17
>>> @@ static bool test_plane(data_t *data)
>>>    		igt_display_commit2(&data->display, data->display.is_atomic ?
>>>    				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>>>
>>> -
>>> +		igt_wait_for_vblank(data->drm_fd,
>>> +display->pipes[data->pipe].crtc_offset);
> 
> Above this line there's flip to different fb. Below this line crc calculation is restarted, get one crc and stop crc. There's several vblanks already spent here, if now adding one more somehow helps it sound like there's problems in crc calculation on some platform or kernel is saying too early framebuffer is ready to be shown. Am I missing something here?
> 
> /Juha-Pekka
> 
>>>    		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>>>
>>>    		igt_plane_set_fb(plane, big_fb);
>>>    		igt_fb_set_position(big_fb, plane, x, y);
>>>    		igt_fb_set_size(big_fb, plane, small_fb->width,
>>> small_fb->height);
>>> +
> 
> spurious empty line need to be removed.
> 
>>>    		igt_plane_set_size(plane, data->width, data->height);
>>>    		igt_display_commit2(&data->display, data->display.is_atomic ?
>>>    				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>>> -
>>> +		igt_wait_for_vblank(data->drm_fd,
>>> +display->pipes[data->pipe].crtc_offset);
>>>    		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>>>
>>>    		igt_plane_set_fb(plane, NULL);
>>> --
>>> 2.7.4
>>>
>>> _______________________________________________
>>> Intel-gfx mailing list
>>> Intel-gfx@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>> _______________________________________________
>> igt-dev mailing list
>> igt-dev@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/igt-dev
>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
