Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DECB343BCD4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA301898ED;
	Tue, 26 Oct 2021 22:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04926898ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635285768;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QeV1Vx1q9d/1s/z4sukQ9ChUWo/XPagaIMhJ+3+2oEA=;
 b=Az3NmAdmH2mUarRv3Q54qY+sfkqBjXRjhCDO5699eDHfshF7ub+zapl0h0qSP5pFWLc5Je
 fjObNE6XeUCBSeIyBBmHgYFIV8h0lCb5yx4hJzpbJG1lHbIsgFNnnuzCSGKSktExk7t2SY
 fmT/9Ke9eThDVg61sBSM0y4WvqfLi+8=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-jOpXV4wKO4CQd02Rhtvp7Q-1; Tue, 26 Oct 2021 18:02:43 -0400
X-MC-Unique: jOpXV4wKO4CQd02Rhtvp7Q-1
Received: by mail-qk1-f199.google.com with SMTP id
 y5-20020ae9f405000000b0045fa3120bebso328087qkl.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 15:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=QeV1Vx1q9d/1s/z4sukQ9ChUWo/XPagaIMhJ+3+2oEA=;
 b=B+b3YyI/FwkkcvuPx2LME3qThc6s6vbWBub7P/6GqWhnA1FyOWolEGgR2pot9LeQKY
 y8KepPyjf5dFn17jPq2xv9QJUyoQaZ13QMPABrku+dBT4IzLyZquS8LprOjyXQTb5ujv
 JzS66l4PWl4yqwdDmCBclsCThIvCG259fcjkoKfuk92q1vjdb1fFKwUl5sGcEXAKtaVI
 kfTaYtiR/qM59ofzPtDpvBNE8RdHdvgQBeVq/EBIg7OGI/JGTHw3drcPX8S6MAAcJB4k
 Z8o1MHBreLDIi7QQb64sH8x3gC3g24HzMUQbtHS7Hvzu3LN4NSUkhVVG9iRrfHEH7TSR
 1mrw==
X-Gm-Message-State: AOAM5331WZE25nbPJ90Q4bfts728jF2HNnH9WDMkW2vNcdPDNzR6ygCC
 Le4E+ITf9QrV9+3Effze3l8hhev7xqd10e7QvcWz7w0BOWRLIyF+oSNZm3WvLJ/9jeRD/J8Q/Ct
 1s2tBLLgEz8YT+SEdxNsXjLMui1OS
X-Received: by 2002:a05:622a:284:: with SMTP id
 z4mr27666241qtw.68.1635285763074; 
 Tue, 26 Oct 2021 15:02:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSF8jt52RcCoNneFvP9W0SnFjplCqRveU4i8A0FqIZ7bNBTgCONFVaf90a2iZimEQOu8dcmA==
X-Received: by 2002:a05:622a:284:: with SMTP id
 z4mr27666206qtw.68.1635285762818; 
 Tue, 26 Oct 2021 15:02:42 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id o16sm11558190qkp.1.2021.10.26.15.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 15:02:42 -0700 (PDT)
Message-ID: <fdc6e124f8b5d36ffc7053b959a44e5d9768775e.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Tue, 26 Oct 2021 18:02:41 -0400
In-Reply-To: <20211020223339.669-1-ville.syrjala@linux.intel.com>
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: (near)atomic gamma LUT
 updates via vblank workers
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

Hey! I'll try to review this tomorrow or the day after if you're still
interested in me doing so :)

On Thu, 2021-10-21 at 01:33 +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Finally got around to refreshing my vblank worker gamma LUT series.
> Since I started this (ahem, some years ago) Lyude took over the
> actual vblank worker implementation, mostly rewrote it I think,
> and landed it for use in nouveau. So now I'm just left with the
> easy task of using it for i915 gamma LUT updates. And so here
> we are.
> 
> CC: Lyude Paul <lyude@redhat.com>
> 
> Ville Syrjälä (4):
>   drm/i915: Move function prototypes to the correct header
>   drm/i915: Do vrr push before sampling the freame counter
>   drm/i915: Use vblank workers for gamma updates
>   drm/i915: Use unlocked register accesses for LUT loads
> 
>  drivers/gpu/drm/i915/display/intel_color.c    | 128 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  82 ++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   7 +
>  drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
>  .../drm/i915/display/intel_display_types.h    |   8 ++
>  drivers/gpu/drm/i915/display/intel_dsb.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.h   |   4 -
>  drivers/gpu/drm/i915/i915_trace.h             |  42 ++++++
>  9 files changed, 203 insertions(+), 83 deletions(-)
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

