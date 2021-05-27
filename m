Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA513931E3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4903F6F405;
	Thu, 27 May 2021 15:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E49446F404;
 Thu, 27 May 2021 15:10:02 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id x8so212940wrq.9;
 Thu, 27 May 2021 08:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rqZxGKKVCz3uQqmwjK5GTpFMpol1Epc61Ub7cNHLCUU=;
 b=PFsB9fjbU921D82ImY9Gh3+qSmRkfCFYG4BmU2Pc8PbHwjq1roHu4ix7ZuHWcp3F2d
 r7ZukF9fHMsrqn9iIpLGLMn0W9Oorb4JN5pmeF6qwpLfVdivYYcFNUu7SFNxN+XPLi6w
 WqAKHlHyg2GJ4K3ST+NJKetsmCm0JxCd5Wtt45mGXpX8zBVT35pWMUXVEEsg7l/lG70K
 EIzs3zpUe4ltQvdwmZSX20oBJw5i8fH6QgCZ5ip/9SIrMeBmOHmStCVBIHbjXWJgxgpI
 FlcOdp9Wa9n4XZ/g3GQhkPEvo8NK1oXup1s8+Zs8p+h1W8lo9/DNQD4GMbM7+uaSmjIW
 gY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rqZxGKKVCz3uQqmwjK5GTpFMpol1Epc61Ub7cNHLCUU=;
 b=n9vys8Jfv3JWtGr42bwnx0YNN6TnW95ElYwcWp10ViODGnXcdYUOfwITGBf2UkSIpd
 7uzaomlVnbJq+kimzqb+yhuHMOJgleGE3tDvn+AO/vmlN6NyrBd8CWRGC3QlvbHBnN/J
 crXCFkZyoBRGwlMOyuiEszb2+PnPHmT/urGdG5VKSsKVYqPw003w20TNu3CvWZrvFckZ
 MQ/KpHLOeq2ObYMCFLzZAkpXFyZsK3h4hU6Tj8+l7K1ZOcFpI36XIGq6uloObQXT/CVH
 zHq5qAefJvwVfy8soA4qn3j1gxRR+1/QukyGpG/bYZ0sPdTUuhif4760pnRGmgo2c66+
 IZgg==
X-Gm-Message-State: AOAM532w+ln4pjhpP00duJlK1JZyAcxEWFFdYKgyCojNdVP7dDSm8tjd
 qOb2Bro810n3y/sq56nV1QGKo4peSGCch4o0
X-Google-Smtp-Source: ABdhPJw9JV9jYVWSBFF3XkjdHdBeprOzMU0lqeRUo0Iqkcw4JHegGmO9gnUoEp5TGZLbhx/MT7pZZg==
X-Received: by 2002:adf:e3c6:: with SMTP id k6mr3927868wrm.236.1622128201312; 
 Thu, 27 May 2021 08:10:01 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.googlemail.com with ESMTPSA id z19sm3201893wmk.8.2021.05.27.08.09.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 May 2021 08:10:00 -0700 (PDT)
To: Vidya Srinivas <vidya.srinivas@intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <1621570131-23943-1-git-send-email-vidya.srinivas@intel.com>
 <20210527143128.25366-1-vidya.srinivas@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <2960bd68-52c5-9129-5acb-4473007b84a6@gmail.com>
Date: Thu, 27 May 2021 18:09:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210527143128.25366-1-vidya.srinivas@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH 4/4] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
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
Cc: charlton.lin@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27.5.2021 17.31, Vidya Srinivas wrote:
> Without wait for vblank, CRC mismatch is seen
> between big and small CRC on some intel Gen11 platforms.
> 
> Change-Id: I3bec931aa901130997e693ac1cacf389e2a8100f
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   tests/kms_big_fb.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
> index b2027b6b9d1b..da682593429b 100644
> --- a/tests/kms_big_fb.c
> +++ b/tests/kms_big_fb.c
> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>   static bool test_plane(data_t *data)
>   {
>   	igt_plane_t *plane = data->plane;
> +	igt_display_t *display = &data->display;
>   	struct igt_fb *small_fb = &data->small_fb;
>   	struct igt_fb *big_fb = &data->big_fb;
>   	int w = data->big_fb_width - small_fb->width;
> @@ -269,6 +270,7 @@ static bool test_plane(data_t *data)
>   		{ w / 3, h * 3 / 4, },
>   		{ w, h, },
>   	};
> +	bool check_platform_intel = is_i915_device(data->drm_fd);

You will not need to do this. This test start with

drm_open_driver_master(DRIVER_INTEL)

hence will always be only on intel device.

>   
>   	if (!igt_plane_has_format_mod(plane, data->format, data->modifier))
>   		return false;
> @@ -336,17 +338,19 @@ static bool test_plane(data_t *data)
>   
>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> -
> +		if (check_platform_intel)
> +			igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);

Above this line there's flip to different framebuffer and below this 
line there's restart of crc collection before get any crc. If there's 
need to wait a vblank at this place to get matching crcs the actual bug 
is somewhere else.

>   		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>   
>   		igt_plane_set_fb(plane, big_fb);
>   		igt_fb_set_position(big_fb, plane, x, y);
>   		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
> +
>   		igt_plane_set_size(plane, data->width, data->height);
>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> +		if (check_platform_intel)
> +			igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);

Here it's the same story as above.

>   		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>   
>   		igt_plane_set_fb(plane, NULL);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
