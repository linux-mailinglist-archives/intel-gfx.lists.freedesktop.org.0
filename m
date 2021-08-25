Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA3C3F7AEC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 18:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220E96E3D8;
	Wed, 25 Aug 2021 16:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF77A6E3D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 16:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629910209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ALygpNecOl7nIpj9UyJl6gt6tnOYIpTvNHgwlX7awQY=;
 b=iw0GnCxRkw2zzg2V7YDjvKgh/ctQxvZagAJxi1VoG0BUO3S5qCct6oPqF0Vn6yt8Ooemmg
 6UG8iNTssowSMaJIvlBlfmCFZ1VBMvoh3JUTKyLgwKDsMUCSl6GNaSKorTHFDZW3S8qJzl
 nZIAky7oGNPB3xE2+VoHDzZNUpy1s+0=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-AnWmvXYjN-6aOaPEMcR6lA-1; Wed, 25 Aug 2021 12:50:07 -0400
X-MC-Unique: AnWmvXYjN-6aOaPEMcR6lA-1
Received: by mail-qk1-f199.google.com with SMTP id
 b4-20020a3799040000b02903b899a4309cso17136470qke.14
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 09:50:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=ALygpNecOl7nIpj9UyJl6gt6tnOYIpTvNHgwlX7awQY=;
 b=M2FGU2bJFDUREe3ABXCcfacjbV5TUDRQevEHXIlXcwt9ncjHfUZZCGV9L/wItPP8yV
 tqoHHj9xac6ElIazpK8hR42IpMeumaCGIUqCLkTxbgLie5wPC7HjkxSkRttqmpSMqsTi
 Mvc8JtHxi6OL/MhUvGSBUL5ZAMTdvupPvxMoIPx06I4PZgjrUDZPWZqC9OvRBiZ/FOZ7
 XwzoRxmBtVkIHc65yL7E5Wi+q3205XiuRFadupYUMFotOwOV4lFBFyE4h9P/v2xUD0Pm
 Gzw68yQ7tIZYyMnJLPTLNrSD0YTr76dqi+46wSRJB3UGS2nXNZ1D/qxEt/7RLdJZSfKO
 Qvbg==
X-Gm-Message-State: AOAM530LiEYZujTPjhcImO5KX8iJ3xKGXC2rHL2Xt/jdH0FRWNg8p8Se
 XpCh22xrYYzH1HZD0kYjdupk1ilMys8+/GaQR2JgHMyPUPz6mGlRmo4oUfgFbNPEPOgD6rjp+xL
 NUUUnIVYX/VgVlJIS2DbuS4Pb4k3b
X-Received: by 2002:a05:6214:1cb:: with SMTP id
 c11mr45722948qvt.47.1629910207050; 
 Wed, 25 Aug 2021 09:50:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDQTRCPfkLcWOJwPFhXtIvNk/TIWah6nax5soNELlvprqTO8cosPLLSU5X2Ulu70oHq/2/gw==
X-Received: by 2002:a05:6214:1cb:: with SMTP id
 c11mr45722929qvt.47.1629910206879; 
 Wed, 25 Aug 2021 09:50:06 -0700 (PDT)
Received: from [192.168.8.104] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id 37sm163621qtf.33.2021.08.25.09.50.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 09:50:06 -0700 (PDT)
Message-ID: <f6a0203f9871cb91fb8da5a83bc8a608e2bb1607.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 25 Aug 2021 12:50:05 -0400
In-Reply-To: <cover.1629888677.git.jani.nikula@intel.com>
References: <cover.1629888677.git.jani.nikula@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: better backlight & panel
 abstractions
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

Reviewed-by: Lyude Paul <lyude@redhat.com> (assuming this still applies)

As I mentioned on IRC pretty much all of the DPCD backlight helpers already
made it upstream. There are some changes I'm working on right now for VESA
backlights that use PWM for controlling the brightness level (so we can
hopefully fix https://gitlab.freedesktop.org/drm/intel/-/issues/3680 ,
otherwise I've gotta do some more poking with the backlight folks from Intel I
got in touch with), but I have no problem with rebasing this when the time
comes.

On Wed, 2021-08-25 at 14:06 +0300, Jani Nikula wrote:
> Extract the backlight code out of intel_panel.c, and rename the panel
> and backlight functions according to usual conventions.
> 
> Lyude, I haven't seen follow-ups on the DPCD backlight stuff you've
> worked on. Is it okay to merge this (and inevitably cause you conflicts)
> or shall I wait more?
> 
> BR,
> Jani.
> 
> 
> Cc: Lyude Paul <lyude@redhat.com>
> 
> Jani Nikula (3):
>   drm/i915/backlight: extract backlight code to a separate file
>   drm/i915/backlight: mass rename functions to have intel_backlight_
>     prefix
>   drm/i915/panel: mass rename functions to have intel_panel_ prefix
> 
>  drivers/gpu/drm/i915/Makefile                 |    1 +
>  drivers/gpu/drm/i915/display/g4x_dp.c         |    4 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   13 +-
>  .../gpu/drm/i915/display/intel_backlight.c    | 1776 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_backlight.h    |   52 +
>  .../gpu/drm/i915/display/intel_connector.c    |    4 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |    4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   16 +-
>  .../drm/i915/display/intel_dp_aux_backlight.c |   12 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |    2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |    2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   18 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |    5 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    | 1786 +----------------
>  drivers/gpu/drm/i915/display/intel_panel.h    |   42 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   16 +-
>  16 files changed, 1895 insertions(+), 1858 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_backlight.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_backlight.h
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

