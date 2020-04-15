Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C954E1AAB4A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6CC6EA13;
	Wed, 15 Apr 2020 15:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CCF6EA0B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586963130;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DGPe2yu1Cz0ss6JPc0CNTd19aDg92qxzZOlOLfEgz9I=;
 b=HU7TGdUeOY8E0kENCuqTO1EsMeIT3EiUb7w3keSbAukfVa2IYFo6khyLxA+12gdyxuEyaS
 UXZsZdQ0acG+yQbISAAmZiOQxJdUFgio5HyRwByAUsP+wknYobF/jZVTThqfoFLpTpMwj+
 HibQNKqU48Z7iJnMnHRrcwyKXxOlvo8=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-xf-DUxcYNtC2UTcep5gAuQ-1; Wed, 15 Apr 2020 11:05:20 -0400
X-MC-Unique: xf-DUxcYNtC2UTcep5gAuQ-1
Received: by mail-wm1-f69.google.com with SMTP id u11so2805511wmc.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DGPe2yu1Cz0ss6JPc0CNTd19aDg92qxzZOlOLfEgz9I=;
 b=juY6C4ffxnUu3E+dvqbxH41Mq3d+kwGo4oGFUWiAjMtqAioNuzM6Tb3H0UCHK1f1Bx
 XgEXM5GryDDXmgJGRfpiTakAHuiqB+emDaMp460LBbQtljv2E3V9dfjsvk6i15yLx2rB
 TBUMlN5oibEu6irSmPw0ePB8ptkOPT4RpBDaiyVawxiRs/vkqcP6Zt6QqLS0S+kNBM1i
 a3LFbH66++0kWTANBliioa1XsWor7YOWsvjWIt9MjxBqbBXhg6UDEztjBWqBKERlt4Qj
 fUyx+w0nT5DdOqimPu6Q3hvMwHKwJEXugETqrAgoklVZI4qn20D0VEX+low86cOIGYeG
 g4bw==
X-Gm-Message-State: AGi0PuZyDoLP9OB10BixlyoV5WFrEPEHK1csIqj4w7a4E1XDifRD9B6b
 6f3la294cN5EJ5/oH50t3vzN/GJpnGN59jSVVnRtQhEtz4wp3r8B3sN5UYrGQ2iZyVXQ4zYPePG
 DImvbeXQmWY7Ho4aBAn5BRNvoEhI6
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr17562609wrn.390.1586963116160; 
 Wed, 15 Apr 2020 08:05:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypInNtGpLq6xNGNWAqqoyPpwPCPUKuuDSeTuUstzKFJ2go27oAlqPNYKwf0Qb8H1hsP8o5LR4A==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr17562585wrn.390.1586963115951; 
 Wed, 15 Apr 2020 08:05:15 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id y18sm24759409wmc.45.2020.04.15.08.05.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:05:15 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-23-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <76e2f239-a2ac-d50a-f1c4-22bffdf34d72@redhat.com>
Date: Wed, 15 Apr 2020 17:05:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-23-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 22/59] drm/gm12u320: Don't use
 drm_device->dev_private
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/15/20 9:39 AM, Daniel Vetter wrote:
> Upcasting using a container_of macro is more typesafe, faster and
> easier for the compiler to optimize.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

LGTM:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>   drivers/gpu/drm/tiny/gm12u320.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
> index 907739a67bf6..cc397671f689 100644
> --- a/drivers/gpu/drm/tiny/gm12u320.c
> +++ b/drivers/gpu/drm/tiny/gm12u320.c
> @@ -98,6 +98,8 @@ struct gm12u320_device {
>   	} fb_update;
>   };
>   
> +#define to_gm12u320(__dev) container_of(__dev, struct gm12u320_device, dev)
> +
>   static const char cmd_data[CMD_SIZE] = {
>   	0x55, 0x53, 0x42, 0x43, 0x00, 0x00, 0x00, 0x00,
>   	0x68, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x10, 0xff,
> @@ -408,7 +410,7 @@ static void gm12u320_fb_update_work(struct work_struct *work)
>   static void gm12u320_fb_mark_dirty(struct drm_framebuffer *fb,
>   				   struct drm_rect *dirty)
>   {
> -	struct gm12u320_device *gm12u320 = fb->dev->dev_private;
> +	struct gm12u320_device *gm12u320 = to_gm12u320(fb->dev);
>   	struct drm_framebuffer *old_fb = NULL;
>   	bool wakeup = false;
>   
> @@ -558,7 +560,7 @@ static void gm12u320_pipe_enable(struct drm_simple_display_pipe *pipe,
>   				 struct drm_plane_state *plane_state)
>   {
>   	struct drm_rect rect = { 0, 0, GM12U320_USER_WIDTH, GM12U320_HEIGHT };
> -	struct gm12u320_device *gm12u320 = pipe->crtc.dev->dev_private;
> +	struct gm12u320_device *gm12u320 = to_gm12u320(pipe->crtc.dev);
>   
>   	gm12u320->fb_update.draw_status_timeout = FIRST_FRAME_TIMEOUT;
>   	gm12u320_fb_mark_dirty(plane_state->fb, &rect);
> @@ -566,7 +568,7 @@ static void gm12u320_pipe_enable(struct drm_simple_display_pipe *pipe,
>   
>   static void gm12u320_pipe_disable(struct drm_simple_display_pipe *pipe)
>   {
> -	struct gm12u320_device *gm12u320 = pipe->crtc.dev->dev_private;
> +	struct gm12u320_device *gm12u320 = to_gm12u320(pipe->crtc.dev);
>   
>   	gm12u320_stop_fb_update(gm12u320);
>   }
> @@ -641,7 +643,6 @@ static int gm12u320_usb_probe(struct usb_interface *interface,
>   	mutex_init(&gm12u320->fb_update.lock);
>   
>   	dev = &gm12u320->dev;
> -	dev->dev_private = gm12u320;
>   
>   	ret = drmm_mode_config_init(dev);
>   	if (ret)
> @@ -706,7 +707,7 @@ static __maybe_unused int gm12u320_suspend(struct usb_interface *interface,
>   static __maybe_unused int gm12u320_resume(struct usb_interface *interface)
>   {
>   	struct drm_device *dev = usb_get_intfdata(interface);
> -	struct gm12u320_device *gm12u320 = dev->dev_private;
> +	struct gm12u320_device *gm12u320 = to_gm12u320(dev);
>   
>   	gm12u320_set_ecomode(gm12u320);
>   
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
