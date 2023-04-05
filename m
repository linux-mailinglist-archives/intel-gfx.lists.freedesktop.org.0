Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC56D79A0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 12:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1518B10E8B3;
	Wed,  5 Apr 2023 10:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51FF10E8B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680690238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=q8h/t7AguYHqg/RJI4qXzEVYb6mDUWxgBaaG/M3dDHI=;
 b=DfmiNB4Slbr8Gx0c1IdLFIGApyyHLAC632y/cJBniSh+rANlPA8CVkGS1+GSVdcQMRhK5/
 PzVHAlexvj29Ye7bZ8OYKVkYG1Sb+kupZl2btdgReeY+3FadyQmj2VmW+OrxVzPUZNrcgx
 SvQIB/afgmiKFD7iCLLxH0uS6q/1+fU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-184-wfJcsAPmO425tun0CB1kBQ-1; Wed, 05 Apr 2023 06:23:57 -0400
X-MC-Unique: wfJcsAPmO425tun0CB1kBQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 k16-20020adfd230000000b002cfe7555486so4372617wrh.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 03:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680690236;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=q8h/t7AguYHqg/RJI4qXzEVYb6mDUWxgBaaG/M3dDHI=;
 b=m5tzGphCTMLGxEim8KAZmfrQUiEFDYgjy7qVgUe8yvzSgRb8B5K7FZppCYuOwIZKQo
 k2S4Z2tTZ4o/ZBX6RcjzlC+ofawgB9+nURP+L6ignvqWYXha8DhbDgRKWuHcO/QIgW+1
 dC2+SFPQJhBAa6UXwuonhLIrG1rqifUE6vwy7AfTcLJ6OVyXFIRkTmYx7XiauwjhSYhW
 QI0R74aowl8unM0fv81gmjE/yoLjvnE0xOIfNjLTaW4sFf8YzXRNg01m7sfLaZsCWSjf
 FzF/U0jd+nfSlQGNs198q2278TNo63Va1G5fkalJ3Gvpq60j2JlPUxmVLzpAoKOctctJ
 WGEw==
X-Gm-Message-State: AAQBX9e9LU0guSL5mql+0/If6Rrr+l7aI5EBMCTb5IaJ0Y1Ta5nIfeu+
 K9fxFE1pzTHQnxYerpWHZPll9evFRVvk/4J+7yShmBniaID4I4lKwB+S5M2Rl215aZhrKvPjM4V
 eqF311uCRSCyCqnvcYZSvB4IiioLZ
X-Received: by 2002:a1c:7c17:0:b0:3eb:39e0:3530 with SMTP id
 x23-20020a1c7c17000000b003eb39e03530mr3981387wmc.41.1680690236650; 
 Wed, 05 Apr 2023 03:23:56 -0700 (PDT)
X-Google-Smtp-Source: AKy350YfIn/xDQ35RT+tRkheLM+RgiKzqRwa7sQjs8XSH58OmifZzQYlImhseRWzGijyujICWBHtjw==
X-Received: by 2002:a1c:7c17:0:b0:3eb:39e0:3530 with SMTP id
 x23-20020a1c7c17000000b003eb39e03530mr3981378wmc.41.1680690236386; 
 Wed, 05 Apr 2023 03:23:56 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 d21-20020a1c7315000000b003ed1f6878a5sm1782292wmb.5.2023.04.05.03.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 03:23:56 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404194038.472803-2-daniel.vetter@ffwll.ch>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
 <20230404194038.472803-2-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 12:23:55 +0200
Message-ID: <87edoyd3us.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/fb-helper: drop redundant pixclock
 check from drm_fb_helper_set_par()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> The fb_check_var hook is supposed to validate all this stuff. Any
> errors from fb_set_par are considered driver/hw issues and resulting
> in dmesg warnings.
>
> Luckily we do fix up the pixclock already, so this is all fine.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Makes sense to drop this.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

