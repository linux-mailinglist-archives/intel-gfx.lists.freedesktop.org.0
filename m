Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B822195B90D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 16:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D54C10EB04;
	Thu, 22 Aug 2024 14:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="VrhrU6W2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148C410EB04
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 14:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724338270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qI7sIttUlfd6rK+jxE04yL0R9ETbDTbrKGTUq6cowac=;
 b=VrhrU6W2tJxVE6+ROaYgVEnI6eD8UhT9d8TCGhFp8yvOYk+uuz10MviMzf5yQzMm+AiGxn
 bk658ALToukv79DDlIMw2WE8d2LgUH0IQkx+JJmBKErcFszA5fHWY+a6OMTpGX61E8X4F7
 4B4ZJLEefA8DGR/SZ/K8z6v33X1Us0U=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-2PpqXb7ENRC1eLNqf6BNRA-1; Thu, 22 Aug 2024 10:51:08 -0400
X-MC-Unique: 2PpqXb7ENRC1eLNqf6BNRA-1
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-2d3baf38457so1850181a91.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 07:51:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724338268; x=1724943068;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qI7sIttUlfd6rK+jxE04yL0R9ETbDTbrKGTUq6cowac=;
 b=a3FGQec+4Hi4Hos52hWWtcf6a9W2Uw7JW/1Fcnc/mioSvHH7CDMRLrKivnO+tUXjcu
 L0UpoZ4W+yTPDFiULbH548l6Axhvz1y8Klh/aow5/VWs/0WEiYbVXwB6l5FYWnbB1w7z
 hHpLe17oS6ZZ/mpM5FkHFJQoy+Omz6FsUoxgGPXvmmZU4YmuYXegqiaiuvD9ieRwHIFj
 iWGDBTyKsAY1jZp/CpeZFf/UAq8gS5O1P9GaMKgaK9ALVpIyF/FqBbImRGZilu4JRsUd
 e+oSm5d9AXc8STZOmwxR7o7Q0EoY0SllTUEHrA5+lgvnOVtMPBKtf1t8Co9gNAzv5BEt
 L++w==
X-Gm-Message-State: AOJu0YwSoA1hFM6R7KatyaFkmzh+t/y7sFw0iAA/FxvGm3pFwm/X0UAr
 Rh6BI28eLJ5EsrgFbyf9NzSvSGvRgY73/KQAsG27mAlrS64GZs1nYaS2oaTc7UbPHq0CTbG9SAM
 B1v8ouPkvSX4+87+p3k6z8O/W7LQ/UFq0DEFp+b0Jv+ORAhKaJ4zaHjXZUMDhIGZcng==
X-Received: by 2002:a17:90a:fe01:b0:2c9:63d3:1f20 with SMTP id
 98e67ed59e1d1-2d60aa21cdbmr5119814a91.18.1724338267819; 
 Thu, 22 Aug 2024 07:51:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkSqoPaYwU/pzTrCfkc680+HlIjlYxmDe4h014NbVi6qWLqici8+WArvm4OgjHVpg5BubFyQ==
X-Received: by 2002:a17:90a:fe01:b0:2c9:63d3:1f20 with SMTP id
 98e67ed59e1d1-2d60aa21cdbmr5119777a91.18.1724338267398; 
 Thu, 22 Aug 2024 07:51:07 -0700 (PDT)
Received: from localhost ([181.120.144.238]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2d613af1496sm1921071a91.40.2024.08.22.07.51.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 07:51:07 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Alex Deucher
 <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Helge Deller <deller@gmx.de>, Sam
 Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org
Subject: Re: [PATCH V3] video/aperture: optionally match the device in
 sysfb_disable()
In-Reply-To: <20240821191135.829765-1-alexander.deucher@amd.com>
References: <20240821191135.829765-1-alexander.deucher@amd.com>
Date: Thu, 22 Aug 2024 16:51:04 +0200
Message-ID: <874j7ca9wn.fsf@minerva.mail-host-address-is-not-set>
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

Alex Deucher <alexander.deucher@amd.com> writes:

Hello Alex,

> In aperture_remove_conflicting_pci_devices(), we currently only
> call sysfb_disable() on vga class devices.  This leads to the
> following problem when the pimary device is not VGA compatible:
>
> 1. A PCI device with a non-VGA class is the boot display
> 2. That device is probed first and it is not a VGA device so
>    sysfb_disable() is not called, but the device resources
>    are freed by aperture_detach_platform_device()
> 3. Non-primary GPU has a VGA class and it ends up calling sysfb_disable()
> 4. NULL pointer dereference via sysfb_disable() since the resources
>    have already been freed by aperture_detach_platform_device() when
>    it was called by the other device.
>
> Fix this by passing a device pointer to sysfb_disable() and checking
> the device to determine if we should execute it or not.
>
> v2: Fix build when CONFIG_SCREEN_INFO is not set
> v3: Move device check into the mutex
>     Drop primary variable in aperture_remove_conflicting_pci_devices()
>     Drop __init on pci sysfb_pci_dev_is_enabled()
>
> Fixes: 5ae3716cfdcd ("video/aperture: Only remove sysfb on the default vga pci device")
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
> Cc: stable@vger.kernel.org
> ---

This version looks good to me. Thanks!

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

