Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2AA43745C
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 11:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1126E914;
	Fri, 22 Oct 2021 09:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD086E90B
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 09:09:16 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 u8-20020a05600c440800b0030d90076dabso8536851wmn.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 02:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CSvjVZ0e6L/69HFDijEqx7UYA5Hhk1PF7U/kuB2r/g8=;
 b=frHMQ9F31jCSFY4HZSHvx46pIAXd5fLRQ/JN2GzCJoD4aJ6VmivPS6qlk2tdwWLvDx
 yIdm0lM6WlLEG+MR9Sqry4LW0PcuvotJ15keEYPfrxFRmLGZucD4KE+NkPpQ/4huyT/9
 OSm1Srs8QBQWCLTH7F/IF4jReQ0pgeb1IYRls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CSvjVZ0e6L/69HFDijEqx7UYA5Hhk1PF7U/kuB2r/g8=;
 b=SkkC1sP+ywLDRHwNiljDWBsr+xa6raBrTj0BvF8oZT4EaR7tu951nRRCOgL+gpDimC
 kNL2r29TSNhKm5zgzKyuw639k/TflIiQjv1b9MmkbGrfiBC4oU4UI1orf2yaNu981G+L
 nPckLlCHGqL3f3Pj2KTU17BJR6CBvi6ULk9JYI7X0YDujkybXIlH4JyjWoudZL5iYfmV
 Ojjhz9FZ3Ow0KWoxr0S1gWtelQoxe10h7b9bm7c7xC+rZ32nisPI4wqH65QkVAiaCvi+
 Ey4f09F4imrb+xU2zzxFqtQc8xb3FQyUfBc11zjjphJOVAzIpve0+AD1ZrYHM0XyZ3fb
 L1TQ==
X-Gm-Message-State: AOAM532muJZc579LUIAk0wQLiAhxXoaHb7jJE1vcByYXGv2Vdwtt8j0L
 BpMBTmL8HAiprURyATWI3lF+Zw==
X-Google-Smtp-Source: ABdhPJw7ZVrMVuO+WLUr5qF9wTmu2oNyYNIp2mJzHtmj1cyDK3U1rQAq4UXCHFDBZJL75yxYOg/q8Q==
X-Received: by 2002:a1c:4b05:: with SMTP id y5mr12916551wma.106.1634893755307; 
 Fri, 22 Oct 2021 02:09:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t1sm9004835wre.32.2021.10.22.02.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Oct 2021 02:09:14 -0700 (PDT)
Date: Fri, 22 Oct 2021 11:09:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YXJ/uCmXBcc2u3z/@phenom.ffwll.local>
References: <20211021202048.2638668-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211021202048.2638668-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Properly reset mock
 object propers for each test
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 21, 2021 at 10:20:48PM +0200, Daniel Vetter wrote:
> I forgot to do this properly in
> 
> commit 6f11f37459d8f9f74ff1c299c0bedd50b458057a
> Author: Daniel Vetter <daniel.vetter@ffwll.ch>
> Date:   Fri Jul 23 10:34:55 2021 +0200
> 
>     drm/plane: remove drm_helper_get_plane_damage_clips
> 
> intel-gfx CI didn't spot this because we run each selftest in each own
> invocations, which means reloading i915.ko. But if you just run all
> the selftests in one go at boot-up, then it falls apart and eventually
> we cross over the hardcoded limited of how many properties can be
> attached to a single object.
> 
> Fix this by resetting the property count. Nothing else to clean up
> since it's all static storage anyway.
> 
> Reported-and-tested-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Fixes: 6f11f37459d8 ("drm/plane: remove drm_helper_get_plane_damage_clips")
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Merged to drm-misc-fixes with Thomas' irc ack. Will unfortunately miss
this -rc since the drm pull train left the station already, but it'll be
there in a week.
-Daniel

> ---
>  drivers/gpu/drm/selftests/test-drm_damage_helper.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/selftests/test-drm_damage_helper.c b/drivers/gpu/drm/selftests/test-drm_damage_helper.c
> index 1c19a5d3eefb..8d8d8e214c28 100644
> --- a/drivers/gpu/drm/selftests/test-drm_damage_helper.c
> +++ b/drivers/gpu/drm/selftests/test-drm_damage_helper.c
> @@ -30,6 +30,7 @@ static void mock_setup(struct drm_plane_state *state)
>  	mock_device.driver = &mock_driver;
>  	mock_device.mode_config.prop_fb_damage_clips = &mock_prop;
>  	mock_plane.dev = &mock_device;
> +	mock_obj_props.count = 0;
>  	mock_plane.base.properties = &mock_obj_props;
>  	mock_prop.base.id = 1; /* 0 is an invalid id */
>  	mock_prop.dev = &mock_device;
> -- 
> 2.33.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
