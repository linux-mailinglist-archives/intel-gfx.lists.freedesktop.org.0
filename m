Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 529BF39EF9F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE036EAD7;
	Tue,  8 Jun 2021 07:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1146EAE1;
 Tue,  8 Jun 2021 07:34:19 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id c9so11687910wrt.5;
 Tue, 08 Jun 2021 00:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PN6cp9gtM5hScGf605eAy7qEXHtW393NKyvqmjT7bic=;
 b=b8glRLEgrXtX2A0twTwmrGyw/8MznxogH01XoNu1/Wh36c03eQQIXPHaZNAn3RVz0o
 mZd5q632vKoEQCc4V4NoO6ddrCI8vYAmXR/mr9MV+s844mQNA37gfbrwC7jmlQnTtSJi
 ncL8CfvsfTkDE/nNd1n3T30sIDNvICTVKjH6jNe3ujrup5DSRabfqVMNA+OsSuFCUWJ+
 LveWb1j1j9J/VfV5TQr2VItuetTVtVZSTiyibCAv17vbxZVhMoF/dhiQdCp9bbYC2T9D
 iJKbY8OMEwg5Q4yYhMXE9HWw07zh+DwJmBwATSBiqwCDO4PhfbZdHRMzMnGaI+r+zILw
 msTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=PN6cp9gtM5hScGf605eAy7qEXHtW393NKyvqmjT7bic=;
 b=PmqKjJzvcwKH46PcXFQ3GTkDp+JPd6ODIHhOf+E6kL3UKn5RXxtLPqgS2lCWS3N6UO
 YReDn0WI3S7p9tEiEWO6SROEKM6rQxiLnSeKjKpyO/NpEk4PNXmXoSjFvsBBv1ZIxgq9
 RDik/PxlWmZQSe89nJo1BPOsLJ3dPsZHwFmHbu1Lji+XP96rKGIM47pVXWHt0rRaazUo
 5jzPjntynxqeQQFuxJ5C6UgUf3iLwbCpJlOgkZhPpKlyU+C9CvkuRz6ENf2/nBA3sKQP
 oSWJGcz+NSKVY6XayPdyf6OMXwb4oDb+kx0B/mqnjZ7cuT6YprYGDxwif2ue832EqHzj
 9uFw==
X-Gm-Message-State: AOAM533X3qiPeSFntncmFpd/aGHwekXRupGAyop7qOKgtsYHwkeTMhAw
 W5S2zLvnn5LtleW616PfPPTV524ZLPX4n4uL
X-Google-Smtp-Source: ABdhPJzBl1i89C6J6YbQBRs7NUopgG4MhpCZ6KqLbKQS7+Hmu/Mc9/BajVOy3HsYEiJ4cM1GH8J+Ag==
X-Received: by 2002:a5d:618a:: with SMTP id j10mr21347214wru.229.1623137658435; 
 Tue, 08 Jun 2021 00:34:18 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.googlemail.com with ESMTPSA id y8sm1120771wmi.45.2021.06.08.00.34.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jun 2021 00:34:18 -0700 (PDT)
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
Date: Tue, 8 Jun 2021 10:34:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
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

On 8.6.2021 10.01, Modem, Bhanuprakash wrote:
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vidya
>> Srinivas
>> Sent: Friday, May 28, 2021 9:57 AM
>> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
>> Cc: markyacoub@chromium.org; Lin, Charlton <charlton.lin@intel.com>
>> Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank
>> before collecting CRC
>>
>> Without wait for vblank, CRC mismatch is seen
>> between big and small CRC on few Gen11 systems.
>>
>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>> ---
>>   tests/kms_big_fb.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
>> index b35727a09bd0..f90363c3beb2 100644
>> --- a/tests/kms_big_fb.c
>> +++ b/tests/kms_big_fb.c
>> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>>   static bool test_plane(data_t *data)
>>   {
>>   	igt_plane_t *plane = data->plane;
>> +	igt_display_t *display = &data->display;
> 
> For code readability purpose, I think we need to update to use this variable
> wherever we are using "&data->display" in this function.
> s/"&data->display"/"display"/
> 
> With above change, this patch LGTM
> Reviewed-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> 

I still don't see benefit in this patch. For now all this look like is 
doing is slow down the test and if this actually helps there's a real 
bug somewhere which is not here. My earlier review comments were not 
addressed hence repeat here, see below.


>>   	struct igt_fb *small_fb = &data->small_fb;
>>   	struct igt_fb *big_fb = &data->big_fb;
>>   	int w = data->big_fb_width - small_fb->width;
>> @@ -337,16 +338,17 @@ static bool test_plane(data_t *data)
>>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>>
>> -
>> +		igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);

Above this line there's flip to different fb. Below this line crc 
calculation is restarted, get one crc and stop crc. There's several 
vblanks already spent here, if now adding one more somehow helps it 
sound like there's problems in crc calculation on some platform or 
kernel is saying too early framebuffer is ready to be shown. Am I 
missing something here?

/Juha-Pekka

>>   		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>>
>>   		igt_plane_set_fb(plane, big_fb);
>>   		igt_fb_set_position(big_fb, plane, x, y);
>>   		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
>> +

spurious empty line need to be removed.

>>   		igt_plane_set_size(plane, data->width, data->height);
>>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>> -
>> +		igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
>>   		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>>
>>   		igt_plane_set_fb(plane, NULL);
>> --
>> 2.7.4
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
