Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F36D7B5B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F6910E8EA;
	Wed,  5 Apr 2023 11:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8598F10E8EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680694239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RNLFmKiaJhCbpMv6NNLJ01MSUH3fUGQXMqewzc3mLvQ=;
 b=XCO+Ppei3G0VGbswljyXoEJPt/LtB0Ti52/4nPLjBxkt9E1RUm2rNZYKrD/LKfbVYW/YAO
 cNVthVWq8LCiLc7/3XXlv1QAJTN+iX1adqRPn2DGA7w3IH+fbgDcxzGHhAoz8mBv/sDUC4
 QV8l2qKQpiCuR6hVJwJORm22IA8jc6I=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-116-x5CqeDSAOgig92jzN_KQ7Q-1; Wed, 05 Apr 2023 07:30:38 -0400
X-MC-Unique: x5CqeDSAOgig92jzN_KQ7Q-1
Received: by mail-wm1-f72.google.com with SMTP id
 m7-20020a05600c4f4700b003ee7e120bdfso17014525wmq.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 04:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680694237;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RNLFmKiaJhCbpMv6NNLJ01MSUH3fUGQXMqewzc3mLvQ=;
 b=MoScPujFF2NvMypvF77L/LD8VA3zfGFyGszptAS6OmxlFyNsiwduvKRWiiIwpN6APO
 m6GSandFJ0UXmIaFLhpnMuKncp+W446OJGwOIR+3rcg6RWBlgP9dicxWNrli2oNoNxuS
 RsACvW3h82m2hQJluhMSBar3v23qxuaCVakbEhBXd0TYH9VtNQYrh5+2pAUSmoh/lzC8
 HeHXjEliU3oU8vkPNRkzm26cPdtPwQWpbxEfoGYTWaEFqAR7gBvAnrq9FpgWMt8kR/vj
 OS/YiCJ2JcPjzxFxnD4qk0+g1u22fF9JosYBGU+8qzhvN64aHcQK17cmFs2Awe7tD7Q/
 UGfQ==
X-Gm-Message-State: AAQBX9dtuYEUYcFP1FQoqgKm5lcmVOqQQD6/x2gxRd7iEC9j1bUsZZ4z
 4/5zQML2RL+l1FXREmySZwITUJzQhioCqnEU4QkcXWt9lE6uwxIL5D7uC3dWfHK5fz7hOIuuOoY
 8ERF41KEDOiAeuhtM5BGsumh1IcSv
X-Received: by 2002:adf:e409:0:b0:2ce:a0c1:bcaa with SMTP id
 g9-20020adfe409000000b002cea0c1bcaamr1759110wrm.9.1680694237462; 
 Wed, 05 Apr 2023 04:30:37 -0700 (PDT)
X-Google-Smtp-Source: AKy350Z+rEnxummXTXBERQ/WiQlDGMhXDsQ6asLHd92imjUbjJ+WG229BKVrkkBNa50e3N/32xHrgg==
X-Received: by 2002:adf:e409:0:b0:2ce:a0c1:bcaa with SMTP id
 g9-20020adfe409000000b002cea0c1bcaamr1759090wrm.9.1680694237126; 
 Wed, 05 Apr 2023 04:30:37 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 w3-20020adfcd03000000b002d45575643esm14727267wrm.43.2023.04.05.04.30.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 04:30:36 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404201842.567344-3-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <20230404201842.567344-3-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 13:30:36 +0200
Message-ID: <871qkyd0rn.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/aperture: Remove primary argument
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
Cc: linux-hyperv@vger.kernel.org, Emma Anholt <emma@anholt.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-fbdev@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Helge Deller <deller@gmx.de>, Jonathan Hunter <jonathanh@nvidia.com>,
 Deepak Rawat <drawat.floss@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Daniel Vetter <daniel@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> Only really pci devices have a business setting this - it's for
> figuring out whether the legacy vga stuff should be nuked too. And
> with the preceeding two patches those are all using the pci version of
> this.
>
> Which means for all other callers primary == false and we can remove
> it now.
>
> v2:
> - Reorder to avoid compile fail (Thomas)
> - Include gma500, which retained it's called to the non-pci version.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

