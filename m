Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484966D799A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 12:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6FDA10E8B7;
	Wed,  5 Apr 2023 10:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECDA710E8B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 10:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680690074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LwnbCCnkeV6p0EMxwdcDykkMOdpfLU8p8aqNhgjGBpc=;
 b=LvTO7wAgKWgO0JLodG7lf7I9q0KR/Bcaj8NoDnUzyBavNOkSar73pVZDMezJqxh48T3Psx
 Ak0h1brRaWTttX6mJpJuGl7iRV5Ph8f73Lm7b4S8nKd1aegvMPqeNvUx3ZoDwFExB0aHoI
 6QPLKS/QhOEn07S/WJJNJSWAMjJERo8=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-RYo82RQ3POC18bMtoZxJng-1; Wed, 05 Apr 2023 06:21:13 -0400
X-MC-Unique: RYo82RQ3POC18bMtoZxJng-1
Received: by mail-wm1-f69.google.com with SMTP id
 bh19-20020a05600c3d1300b003ee93fac4a9so18590708wmb.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 03:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680690072;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LwnbCCnkeV6p0EMxwdcDykkMOdpfLU8p8aqNhgjGBpc=;
 b=2piHXjXa3NF0upbTNDdtlvcbWiznQgQulF5u5a9kjWYg8WZJjjehwgCVvRDvAMmWC0
 Ap0JH/LG7DCS9KiKDsFbFhhT201PD2wt2kmAeLAWklWTNOyYc8ye/54oDsaze0IDgRPr
 gGo5pKlJsh0L4JDJvC0wPo/IOUlVjIhHtKCuxfrpXsFfCOczGgwgDRs2TchJ/6L0+gEb
 71NcwGhATA5q+i5rRQG3GKx59LcskF6H3xNoX3kEFHtfU9Aw6PwSFjV2kNGHxr2zGOPQ
 V8nKmj8RuRfYhO7noT2ikfwSK/MHVjeDPynBGJ3WRy9GJKq9O7WRqQyMwgGTuPntK5J+
 DbMQ==
X-Gm-Message-State: AAQBX9c0C2jl6u1y2hkHbW7+HFc5EtqaAs9I5T/FC0WPNCIeGxa0pHxM
 8B/7nfkObsVv2NALZkf2RgqTZ3jOI8V1tNzv9i/Am2mmAoCzoEbpRsr4KVSteTxNwMtDYMqZHWT
 HT4eksfmpDnXScRbPdAti7VgPScZC
X-Received: by 2002:a5d:4dc3:0:b0:2cf:e3d0:2a43 with SMTP id
 f3-20020a5d4dc3000000b002cfe3d02a43mr3590093wru.4.1680690072796; 
 Wed, 05 Apr 2023 03:21:12 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZIH4THo9EGjZAKkNBuLIQorIFwZkRC/w8hM10CIdydl5OhWOL9N0N6G0GANIOc9qFkYKffXA==
X-Received: by 2002:a5d:4dc3:0:b0:2cf:e3d0:2a43 with SMTP id
 f3-20020a5d4dc3000000b002cfe3d02a43mr3590080wru.4.1680690072550; 
 Wed, 05 Apr 2023 03:21:12 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 y13-20020adff14d000000b002c55306f6edsm14670568wro.54.2023.04.05.03.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 03:21:12 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 12:21:11 +0200
Message-ID: <87h6tud3zc.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/fb-helper: set x/yres_virtual in
 drm_fb_helper_check_var
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 syzbot+20dcf81733d43ddff661@syzkaller.appspotmail.com, stable@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> Drivers are supposed to fix this up if needed if they don't outright
> reject it. Uncovered by 6c11df58fd1a ("fbmem: Check virtual screen
> sizes in fb_set_var()").
>

Should have a Fixes: tag ? I understand what was uncovered by that commit
but it help distros to figure out if something has to be cherry-picked by
them. So I believe that would be useful to have it.

The patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

