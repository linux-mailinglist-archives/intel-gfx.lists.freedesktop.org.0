Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696BE969CF8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C81610E541;
	Tue,  3 Sep 2024 12:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OxiC6rB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A88810E53E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725365269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oAf/TzZtq+rwzNtcBqcoWPNDNpw8IbIKF1x2SXWWyZs=;
 b=OxiC6rB90IQ0wANPQArU/MfU+HEKmHz+K4WTOtZ0KVqaZsDpitB+iWM0IjfFMJ2r1jzlIm
 eBwK2igf6RWbL/wLd5YLr8KydFI88AyrkaitAc+SDTcLGq9Xeve7KvwYf/5H5mIYmqBdO+
 Vfvx+UFtVZ32SR62Azz6U8cUeOPuYHo=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-110-4G2uT0UkMqm9dICfO-TeNg-1; Tue, 03 Sep 2024 08:07:46 -0400
X-MC-Unique: 4G2uT0UkMqm9dICfO-TeNg-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-374c90d24e3so1961129f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 05:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725365265; x=1725970065;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oAf/TzZtq+rwzNtcBqcoWPNDNpw8IbIKF1x2SXWWyZs=;
 b=CyoxQyS/PJOKOmfmWbubG9QPLIU3VrrvJFXX4QfZgka7Mq1Y+lp8gIseQ8h3wn0kwe
 JpkMurQsgGPuyvElhPke8JGgjr5O8djupdXt/ckTnoSCL3/Y+ffimhsnq89DANpNOReu
 aM89hhXil8k6+wsuq2CCalUWG+dGEgfMPXEElbhIp/9HNR+mtFbSzCDzFxXJjn2AF77J
 m2KhWRf17FXHJMs+IBcY6/tzCaNY7pg0RIlQQdMCUYXQbz6LIDJvbE55O4z6/zZXrhj9
 UkMMHLd1o2OhJHWXYCNMKzCvmUvdEbmUBzhxuhDIgWMi9r8aWeobeXNzsaNfWqTyJD8i
 IXdg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8MvjCbBAM/q92HiEfeh+0UYE+j4MwPB6YqAtN44HDZeAvqEN9CcaZRoVhH7IyYZIltFkgvSCnK7w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy93iDqT7h9uidLN3TX5Fr9++lGWJG4C2Ow5kDnq83kfzd3PZMj
 Ayonuwhi8JZqtSLGr/qm/FHNOf0+GJNXiyd5n1AQaOMtjwVRfmrwtuQ3+DRvutbcxsOf94ktYxM
 Swxr2P409H6lJBjP45rMRf61ain30+m4YZio9/Rjq8oSRGzuKDXHzKKSMnMlsv6oUPQ==
X-Received: by 2002:adf:f4d1:0:b0:374:c160:269e with SMTP id
 ffacd0b85a97d-374c1602776mr7846589f8f.22.1725365265438; 
 Tue, 03 Sep 2024 05:07:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCZGf4oyMzQD1xP820+OtoZdwpD9efRDqC8p6dHAxE3oooeovG0mBCFinpOGmjQ84JGX0fEg==
X-Received: by 2002:adf:f4d1:0:b0:374:c160:269e with SMTP id
 ffacd0b85a97d-374c1602776mr7846571f8f.22.1725365264915; 
 Tue, 03 Sep 2024 05:07:44 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374b23f20d1sm11428477f8f.35.2024.09.03.05.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 05:07:44 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Zack Rusin <zack.rusin@broadcom.com>, Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>
Subject: Re: [PATCH v3 72/81] drm/vmwgfx: Run DRM default client setup
In-Reply-To: <20240830084456.77630-73-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-73-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 14:07:43 +0200
Message-ID: <87mskpc54g.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Zack Rusin <zack.rusin@broadcom.com>
> Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
> ---
>  drivers/gpu/drm/vmwgfx/vmwgfx_drv.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

