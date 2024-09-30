Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B054F98A4CC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 15:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC9A10E4AB;
	Mon, 30 Sep 2024 13:26:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="B98+M3g7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA9D10E4AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 13:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1727702772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iU6oHSTtkrHoG6AEjnDSNeGcEonnUQr+lho5LZwZCqk=;
 b=B98+M3g7o8T//uDEve4Hp+ajt/UglCA9EV7p6RH9n92tvak8D7pnzJoukjH8af4BlEC/GR
 cuT5hUZe5Ouhj3jUnjqxPpFnu1zJysXVTwCaTaVcCdH1+WzdTuUXqyqBln3GZ02HKb2yxz
 dKtzziNtxo8MtZsQxtuYYo7lMtxWVZM=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-FrXyBPV-PuuDqlNFELqbDw-1; Mon, 30 Sep 2024 09:26:10 -0400
X-MC-Unique: FrXyBPV-PuuDqlNFELqbDw-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-37cd4ec04a1so1361764f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 06:26:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727702767; x=1728307567;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iU6oHSTtkrHoG6AEjnDSNeGcEonnUQr+lho5LZwZCqk=;
 b=cLINExYixcVitBQ3FgcPf51v/dc3Z5GAF7n9r1cob+fSU8bKRJfbilCZ9oKLbo8BKm
 0DKboNWfUM9XNQG+qWiU0e3VJukIv3HPNB3xZMCMXbWI8xJZstyj3//HvxQbqsHhv4KP
 xg8EF5yfez5imVwm8UInMlWuAcEAPHnCx7Ul8d4ruK7ZbQwWtvZDsFUnERXqGw3MXJ+5
 aRfMbjoLrVXeQFanuCkAf1eNAeX88n53gPMt0ayGmgqICp8QXOKYmvY04uJPm218vBKg
 4nbzits5NRtvLtNywFZB8BLEPhe6Wvl4f43HgXDUaL/2Ytei9chamM+SjeBLM/JBB6+D
 GBtw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW003WOU189LvpdiTx3ISw0nvDZv+SlLjSqcX+v2ciL5AQzknEsZtK6TXu6MwEtJpjKTGXXvCnepB4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx94T1bMxIdBffXqfhQvWIaOiTfWeQ+S60ha82BKcFCuX+2YbhX
 LR1ijpv2SCgLbkZeoYtvl1kc38AGIH1Kbu6wh4UiJ4m9oFinztWXAcsuH6IJbLd1N5p56LEnCXT
 pPV/lJn6xwSEqyVx1KERwKHj/U4Fmbls2KAaa+9IGzp8tSnD133vVpvYUyPXX2tnNNg==
X-Received: by 2002:a5d:5548:0:b0:37c:cfbb:d356 with SMTP id
 ffacd0b85a97d-37cd5aebe7bmr5906736f8f.28.1727702767551; 
 Mon, 30 Sep 2024 06:26:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC2V0F7vlRZz80HkueMTZBFg2rvllHK+Q0YOx0BGeDwQemdMjl0P56KLvckcpsgdHBb03bCA==
X-Received: by 2002:a5d:5548:0:b0:37c:cfbb:d356 with SMTP id
 ffacd0b85a97d-37cd5aebe7bmr5906722f8f.28.1727702767137; 
 Mon, 30 Sep 2024 06:26:07 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f57dec19bsm104420285e9.26.2024.09.30.06.26.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 06:26:06 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Thomas
 Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 00/28] drm: Remove DRM aperture helpers
In-Reply-To: <20240930130921.689876-1-tzimmermann@suse.de>
References: <20240930130921.689876-1-tzimmermann@suse.de>
Date: Mon, 30 Sep 2024 15:26:05 +0200
Message-ID: <87ed518e8i.fsf@minerva.mail-host-address-is-not-set>
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

Hello Thomas,

> DRM's aperture helpers are merely wrappers around the respective
> helpers in drivers/video/. The DRM interface existed first, but was
> later generalized for use with fbdev and a few other graphics-related
> places in the kernel. It is time to remove the DRM wrappers and call
> the video helpers directly.
>
> No functional changes intended. This series should replace one interface
> with another. Individual patches could go into the various trees and the
> DRM wrappers can be removed when all driver changes have been merged.
>

Thanks for doing this cleanup. Makes a lot of sense for me to drop it.

For the whole series:

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

