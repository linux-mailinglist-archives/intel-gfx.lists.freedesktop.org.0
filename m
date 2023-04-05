Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F8C6D7B61
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199F110E8EA;
	Wed,  5 Apr 2023 11:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E5C10E8EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680694308;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DdvlAOB2HBtoxdSNuZT4WKN+Yt+RUmrcPHkXhNSXjuo=;
 b=g8WdMuY81EJmL5GZxq9i3ONAMJU+dwkuBob3u2BD66IPTpyzERouTJzVugQ7D8pRR/hjRz
 1NOJcF9uiQq7v6hRR/sVXorGQxpHKLDJLOPXxPwerHfQPLWDp2Lzyu7zW2ra9MZ5rj08mo
 UZ1dlmcIFgZn4BtXN+xVq+Csaqzm3OM=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-498-NS0dAmdQMEewMyjDKHVgwA-1; Wed, 05 Apr 2023 07:31:46 -0400
X-MC-Unique: NS0dAmdQMEewMyjDKHVgwA-1
Received: by mail-wm1-f72.google.com with SMTP id
 n19-20020a05600c3b9300b003ef63ef4519so15844871wms.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 04:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680694305;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DdvlAOB2HBtoxdSNuZT4WKN+Yt+RUmrcPHkXhNSXjuo=;
 b=yyfarRzCdB+j9zptgUFUCzE+tKbnikrDHsXxMS6WjnBtXZjCK+3zrDzEm8r7UmKrYr
 +xOvnyqG0v5B5YPmpB/ql80vTAPYP84gLaH/ZRYnS//ZqRdF/83ARN2uLEqBXGCtfbny
 agXQRSzoSMOP3pJTunLF03h0mxmH3dJKeCiMBOY+JrQBwZA3gli/jLRX7dlwYHXn2iw4
 Abtcrdu9HacIQ9y2CaUYOf9xPtZvg08lQkOyMQOWRVCWy72MV/H9+HHCB+41Yzys7Kf7
 11Wsy0M3AMsZNaYTJ9G4Taa+LS/rfyxzUL9RRXK9lorOPZDPw+aHNRpeINvISf/VQuSD
 CiFQ==
X-Gm-Message-State: AAQBX9cCirrPzbqw8RnhsrC3P4WMQsyJLHiQvK9R30LqIRSLTnNV5BJt
 8M9pSxkIg5HORWYgpvjs0inboRrgZe5UAYizlApM6TS9HtAJnCA+dgwqGtHhvZVCGrrvwvTdg35
 fKMVg0leR8q6B0OcnFuIhlj9ZutY3
X-Received: by 2002:a05:600c:22d6:b0:3eb:2da5:e19 with SMTP id
 22-20020a05600c22d600b003eb2da50e19mr4612739wmg.27.1680694305744; 
 Wed, 05 Apr 2023 04:31:45 -0700 (PDT)
X-Google-Smtp-Source: AKy350bgJR+9jItxcQrvJsguKxNFfDjUdTz+JTjRLTm6qB71szWLKTQghclWZR4h05St1GZL+1Uwmg==
X-Received: by 2002:a05:600c:22d6:b0:3eb:2da5:e19 with SMTP id
 22-20020a05600c22d600b003eb2da50e19mr4612726wmg.27.1680694305488; 
 Wed, 05 Apr 2023 04:31:45 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 u13-20020a05600c210d00b003f0373d077csm1879783wml.47.2023.04.05.04.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 04:31:45 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404201842.567344-4-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <20230404201842.567344-4-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 13:31:44 +0200
Message-ID: <87y1n6bm5b.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/8] video/aperture: Only kick vgacon when
 the pdev is decoding vga
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> Otherwise it's bit silly, and we might throw out the driver for the
> screen the user is actually looking at. I haven't found a bug report
> for this case yet, but we did get bug reports for the analog case
> where we're throwing out the efifb driver.
>
> v2: Flip the check around to make it clear it's a special case for
> kicking out the vgacon driver only (Thomas)
>
> References: https://bugzilla.kernel.org/show_bug.cgi?id=216303
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Helge Deller <deller@gmx.de>
> Cc: linux-fbdev@vger.kernel.org
> ---
>  drivers/video/aperture.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

