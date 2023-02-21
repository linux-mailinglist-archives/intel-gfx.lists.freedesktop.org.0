Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ED169DDD5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 11:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4310210E15A;
	Tue, 21 Feb 2023 10:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621FC10E155
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 10:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676975226;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hiLmjzvpE18Y20gNAl/hePHswT74MZjZpMb0h3yOJZI=;
 b=ZJoHzlbJYumR/jKqvhxtozhquT6zZ8oRtCL3LP9YqVA9gvlHqZehxe4TnJ/D8Bgmf8oJX+
 gejYOzWf66regOPg3vSkCvhlXHBqUhsNHLEvUcfZ0prHuKtmiwING/YJevJqoB3Jyivz0I
 y0X4zsHE96oAblYFPYqF9z4t9hzvQbU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-461-Pcww1PlRN0KYQmN31Yem2g-1; Tue, 21 Feb 2023 05:27:03 -0500
X-MC-Unique: Pcww1PlRN0KYQmN31Yem2g-1
Received: by mail-wm1-f72.google.com with SMTP id
 l16-20020a05600c1d1000b003e77552705cso729180wms.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 02:27:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hiLmjzvpE18Y20gNAl/hePHswT74MZjZpMb0h3yOJZI=;
 b=drzAWHc1+cQ5/eg9L9TbDOiSWVV+jaK6SrcNA/WVBaIp5i7sLIUaSwThi3tfxWvvy7
 a3RzqIPid8Tf4yszSLGgM0MU1P4F7P7Ne9jVjyS6csbbjMkcu1bGfjnvgvTQMAoby+DO
 RpEDVnKR344PDapCm6icfMOB/pGqYpZIcpNTRX9X1NdOwNZd2mLqWjtqIQlLEpIyGaK6
 e4z62gzWKiE+v+C3qZsjs/FlAv0Fr53uPCKRECJ5dT4VndIis0hnxFthnj/QlDGWMqBp
 rdT0BZNNyofk1gkefovbNrqAZnJ0P1zxBATgY4OnUi/2iqgU1DLXfQZrfKjXgAlW1rMy
 41Lg==
X-Gm-Message-State: AO0yUKViCozKJ2aJ35IWlKIut09c6F8g70PiZM9lB2cexxYzDuqxcx4T
 kRoTIoDMickpffJikMhBDU6oenF2ZbjbNpl0hTSmkzJNsEvo+8Rc73IR6mJDhP67Fqk6prYgJeH
 V+RFnNrwUasZWztwYuiuTsvOVQMyB
X-Received: by 2002:a05:600c:1887:b0:3e2:918:ecd4 with SMTP id
 x7-20020a05600c188700b003e20918ecd4mr2997469wmp.37.1676975222125; 
 Tue, 21 Feb 2023 02:27:02 -0800 (PST)
X-Google-Smtp-Source: AK7set/cKnMX/kNp3d4wm95Jc/vSbL62QyA9ckz6jygZFZOsNWWFJ1UBaXn9HDaaIXMU9JLf5j495Q==
X-Received: by 2002:a05:600c:1887:b0:3e2:918:ecd4 with SMTP id
 x7-20020a05600c188700b003e20918ecd4mr2997460wmp.37.1676975221852; 
 Tue, 21 Feb 2023 02:27:01 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 1-20020a05600c274100b003dfe549da4fsm4700968wmw.18.2023.02.21.02.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Feb 2023 02:27:01 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org
In-Reply-To: <20230216140620.17699-1-tzimmermann@suse.de>
References: <20230216140620.17699-1-tzimmermann@suse.de>
Date: Tue, 21 Feb 2023 11:27:00 +0100
Message-ID: <87y1orxqiz.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/fb-helper: Remove
 drm_fb_helper_unprepare() from drm_fb_helper_fini()
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-tegra@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Move drm_fb_helper_unprepare() from drm_fb_helper_fini() into the
> calling fbdev implementation. Avoids a possible stale mutex with
> generic fbdev code.
>
> As indicated by its name, drm_fb_helper_prepare() prepares struct
> drm_fb_helper before setting up the fbdev support with a call to
> drm_fb_helper_init(). In legacy fbdev emulation, this happens next
> to each other. If successful, drm_fb_helper_fini() later tear down
> the fbdev device and also unprepare via drm_fb_helper_unprepare().
>
> Generic fbdev emulation prepares struct drm_fb_helper immediately
> after allocating the instance. It only calls drm_fb_helper_init()
> as part of processing a hotplug event. If the hotplug-handling fails,
> it runs drm_fb_helper_fini(). This unprepares the fb-helper instance
> and the next hotplug event runs on stale data.
>
> Solve this by moving drm_fb_helper_unprepare() from drm_fb_helper_fini()
> into the fbdev implementations. Call it right before freeing the
> fb-helper instance.
>
> Fixes: 4825797c36da ("drm/fb-helper: Introduce drm_fb_helper_unprepare()")

I think this should be Fixes: 032116bbe152 ("drm/fbdev-generic: Minimize
client unregistering") instead? Because commit 4825797c36da just added a
wrapper function for mutex_destroy(&fb_helper->lock), but it was commit
032116bbe152 that made drm_fbdev_cleanup() to call that helper function.

> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: dri-devel@lists.freedesktop.org
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

The change itself looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

