Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B533C1AAB37
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 17:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000AD6EA04;
	Wed, 15 Apr 2020 15:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9E06EA04
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 15:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586962947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q0EuYdE39kebv6qi4JKnmKjtG4iLkRnAmbQWQIpPHo0=;
 b=cL5+uMR2SISB2wGQ4IcoLsA6M4DXaXNVZam8KZ4umBIEYCHQSM5rDfVGv3VwUJrvxMfQYM
 4VyRbA0MSxkSdOV9dvY1hzoxxLVzAl31zbksDuDktueRApkmjz6aUj56BhqfCkS2Z1rSlS
 nTZmRtstKdmH63OchrZvUw4+5IUo8G0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-tUM9GBInPr6B4GCHiNeYlA-1; Wed, 15 Apr 2020 11:02:23 -0400
X-MC-Unique: tUM9GBInPr6B4GCHiNeYlA-1
Received: by mail-wr1-f69.google.com with SMTP id p16so36350wro.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:02:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q0EuYdE39kebv6qi4JKnmKjtG4iLkRnAmbQWQIpPHo0=;
 b=XIiIWqtl6KS9KJ0uQ38TgzNH+ZNUewBL/ff0UmIaH9GWq4HDDS0bKQYMBcPin4/AU0
 dGgpXIWUuUE8n/TcPVd5lGDXVaW8TGaCmbM0WyJEa+ySfrtfgfUjrz5obueVnXT7Tj14
 XeGqz9VDTqNsM8dzy0/QDyFWE4OspRkCu22meBLHtqDMX1vB9jplko/oBRBjlgJuurOn
 eBjwGvi1bZLPEd32+AqCjI9FMU9y9FAY/BL2XOPgQ9paEuRY4UNmUyPCKBnPIdEl6VJi
 5EJalk9NwnNvH1tSJOJ7KhWbgzvuc/T6Ps2KoXRc0fFTDX4WO01x1LIchobx0jiFIZcO
 FWpg==
X-Gm-Message-State: AGi0PuYvPdN7+Y3TqXL3uzT5hpwd57v81PVRJnaq2lvIvg07iSgXlbvR
 F7VHnAr+FaRWMmkJ14d8HZV+GmV5wNyHhXDjv35K+5yY016Gyfri6rgQYCZcL3IAErjetYsJwQX
 P2V7/Ly+v/mGqz+g4qmA/U7QyJkhl
X-Received: by 2002:a05:6000:1008:: with SMTP id
 a8mr23829888wrx.189.1586962942626; 
 Wed, 15 Apr 2020 08:02:22 -0700 (PDT)
X-Google-Smtp-Source: APiQypJqT9IEirqvuR3V7bc7XcNVVEzGf4dD9KyUc8TaM1mHE2qBWJyA/q/wIAX4EQvfsRJtoCjRiQ==
X-Received: by 2002:a05:6000:1008:: with SMTP id
 a8mr23829816wrx.189.1586962941781; 
 Wed, 15 Apr 2020 08:02:21 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id p6sm16253295wrt.3.2020.04.15.08.02.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 08:02:21 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-5-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <21dd3550-058c-e172-b0cd-00a12ffd9fd1@redhat.com>
Date: Wed, 15 Apr 2020 17:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415074034.175360-5-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 04/59] drm/vboxvideo: Stop using
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/15/20 9:39 AM, Daniel Vetter wrote:
> We use the baseclass pattern here, so lets to the proper (and more
> typesafe) upcasting.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

LGTM:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>   drivers/gpu/drm/vboxvideo/vbox_drv.c  |  1 -
>   drivers/gpu/drm/vboxvideo/vbox_drv.h  |  1 +
>   drivers/gpu/drm/vboxvideo/vbox_irq.c  |  2 +-
>   drivers/gpu/drm/vboxvideo/vbox_mode.c | 10 +++++-----
>   4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.c b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> index 7dd25c7a3768..cfa4639c5142 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_drv.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_drv.c
> @@ -52,7 +52,6 @@ static int vbox_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		return PTR_ERR(vbox);
>   
>   	vbox->ddev.pdev = pdev;
> -	vbox->ddev.dev_private = vbox;
>   	pci_set_drvdata(pdev, vbox);
>   	mutex_init(&vbox->hw_mutex);
>   
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_drv.h b/drivers/gpu/drm/vboxvideo/vbox_drv.h
> index 87421903816c..ac7c2effc46f 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_drv.h
> +++ b/drivers/gpu/drm/vboxvideo/vbox_drv.h
> @@ -127,6 +127,7 @@ struct vbox_encoder {
>   #define to_vbox_crtc(x) container_of(x, struct vbox_crtc, base)
>   #define to_vbox_connector(x) container_of(x, struct vbox_connector, base)
>   #define to_vbox_encoder(x) container_of(x, struct vbox_encoder, base)
> +#define to_vbox_dev(x) container_of(x, struct vbox_private, ddev)
>   
>   bool vbox_check_supported(u16 id);
>   int vbox_hw_init(struct vbox_private *vbox);
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_irq.c b/drivers/gpu/drm/vboxvideo/vbox_irq.c
> index 16a1e29f5292..631657fa554f 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_irq.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_irq.c
> @@ -34,7 +34,7 @@ void vbox_report_hotplug(struct vbox_private *vbox)
>   irqreturn_t vbox_irq_handler(int irq, void *arg)
>   {
>   	struct drm_device *dev = (struct drm_device *)arg;
> -	struct vbox_private *vbox = (struct vbox_private *)dev->dev_private;
> +	struct vbox_private *vbox = to_vbox_dev(dev);
>   	u32 host_flags = vbox_get_flags(vbox);
>   
>   	if (!(host_flags & HGSMIHOSTFLAGS_IRQ))
> diff --git a/drivers/gpu/drm/vboxvideo/vbox_mode.c b/drivers/gpu/drm/vboxvideo/vbox_mode.c
> index 0883a435e62b..d9a5af62af89 100644
> --- a/drivers/gpu/drm/vboxvideo/vbox_mode.c
> +++ b/drivers/gpu/drm/vboxvideo/vbox_mode.c
> @@ -36,7 +36,7 @@ static void vbox_do_modeset(struct drm_crtc *crtc)
>   	u16 flags;
>   	s32 x_offset, y_offset;
>   
> -	vbox = crtc->dev->dev_private;
> +	vbox = to_vbox_dev(crtc->dev);
>   	width = vbox_crtc->width ? vbox_crtc->width : 640;
>   	height = vbox_crtc->height ? vbox_crtc->height : 480;
>   	bpp = fb ? fb->format->cpp[0] * 8 : 32;
> @@ -77,7 +77,7 @@ static void vbox_do_modeset(struct drm_crtc *crtc)
>   static int vbox_set_view(struct drm_crtc *crtc)
>   {
>   	struct vbox_crtc *vbox_crtc = to_vbox_crtc(crtc);
> -	struct vbox_private *vbox = crtc->dev->dev_private;
> +	struct vbox_private *vbox = to_vbox_dev(crtc->dev);
>   	struct vbva_infoview *p;
>   
>   	/*
> @@ -174,7 +174,7 @@ static void vbox_crtc_set_base_and_mode(struct drm_crtc *crtc,
>   					int x, int y)
>   {
>   	struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(fb->obj[0]);
> -	struct vbox_private *vbox = crtc->dev->dev_private;
> +	struct vbox_private *vbox = to_vbox_dev(crtc->dev);
>   	struct vbox_crtc *vbox_crtc = to_vbox_crtc(crtc);
>   	bool needs_modeset = drm_atomic_crtc_needs_modeset(crtc->state);
>   
> @@ -272,7 +272,7 @@ static void vbox_primary_atomic_update(struct drm_plane *plane,
>   {
>   	struct drm_crtc *crtc = plane->state->crtc;
>   	struct drm_framebuffer *fb = plane->state->fb;
> -	struct vbox_private *vbox = fb->dev->dev_private;
> +	struct vbox_private *vbox = to_vbox_dev(fb->dev);
>   	struct drm_mode_rect *clips;
>   	uint32_t num_clips, i;
>   
> @@ -704,7 +704,7 @@ static int vbox_get_modes(struct drm_connector *connector)
>   	int preferred_width, preferred_height;
>   
>   	vbox_connector = to_vbox_connector(connector);
> -	vbox = connector->dev->dev_private;
> +	vbox = to_vbox_dev(connector->dev);
>   
>   	hgsmi_report_flags_location(vbox->guest_pool, GUEST_HEAP_OFFSET(vbox) +
>   				    HOST_FLAGS_OFFSET);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
