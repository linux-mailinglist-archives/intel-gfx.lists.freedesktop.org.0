Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B580989A377
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65CA10E71D;
	Fri,  5 Apr 2024 17:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Iwrjp2Zj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE9610E71D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712337895;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=h0qJ7aF88ISJcNFb5mP/uSs5hxxhKbRjl5kvBpyvotA=;
 b=Iwrjp2ZjIITRiCQwcK/nGnAaVXtVt2sLCPP9kdWiFHBHxh8cvcx2KD3v3y6SghL6ak5HEq
 9MNoILgz/XegMq43TWb2NILNhLvuSO+t//mZ+QZZBbz5KceqKOCyzIdkFMAi+a9zckeOVe
 tcGNn99Jq6l0ClRgjQg/SJJhXdm430g=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-360-mLuv8ws_OMC6V8Fsy4RA_w-1; Fri, 05 Apr 2024 13:24:54 -0400
X-MC-Unique: mLuv8ws_OMC6V8Fsy4RA_w-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4154a1787dcso10710155e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 10:24:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712337892; x=1712942692;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=h0qJ7aF88ISJcNFb5mP/uSs5hxxhKbRjl5kvBpyvotA=;
 b=Au08Ywjv0oU9jOOEYo7879Kvvd/ifdwKSfGVsgRqQ5DQkEJID61ghjitlF4vi0YNZL
 YU8a6aqpmXpKYp0v4iDG11dMNvjiowRlK6NcA88zgR6flldJ9ZNXhkOurLghe2jALoJL
 C0cIFJosY5k3twC5FmREOqw7m2hQNKnonthxIx9DN2EoSP3ElL+G5V1oKECWQE7KlbFf
 qGBpUwlvi3PvV9llYLLlxXWPBvFZ9/modh8jaw4hD6f/bdSl30zv7H1lxQf547+n5L3I
 BPL8dRySGHgAXCK/fWDyNOVuJDk6olPcM5CO8jjGUVKI8fStzSA0oPbkL/6aeCVN3w7b
 eTNQ==
X-Gm-Message-State: AOJu0YzXHgIwGTVdAKj4lVtITFrd9/CUcq5SFDpTklHEgYM05GRjlpOi
 fgce8ykaMY7UESShmxKZODnBWBjHCvwG8HQF7dJSJB2hDkdr+9wxVDyqsrrG4QWZuJm6X/C7ccn
 4MxdeoFdnvwpcqkqdYgl0/aD33kbc4Z9nmML7lmofCnB8LBmMW+yY69PTfD4JfFlaQ1dbznsiZA
 ==
X-Received: by 2002:a05:600c:1c29:b0:414:8a28:6c89 with SMTP id
 j41-20020a05600c1c2900b004148a286c89mr1789455wms.31.1712337892153; 
 Fri, 05 Apr 2024 10:24:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu9x79JU66k/Mx5p53rIAhFLFEhaIhZCdB9v/5Tg9KIzUZj3uTrnRkYi54fGhMe3cQu9sTFA==
X-Received: by 2002:a05:600c:1c29:b0:414:8a28:6c89 with SMTP id
 j41-20020a05600c1c2900b004148a286c89mr1789440wms.31.1712337891851; 
 Fri, 05 Apr 2024 10:24:51 -0700 (PDT)
Received: from toolbox ([2001:9e8:899a:a100:d85f:7bed:a911:4675])
 by smtp.gmail.com with ESMTPSA id
 j10-20020a05600c488a00b004161ea7ed6dsm6918644wmp.38.2024.04.05.10.24.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Apr 2024 10:24:51 -0700 (PDT)
Date: Fri, 5 Apr 2024 19:24:49 +0200
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, ville.syrjala@intel.com, naveen1.kumar@intel.com
Subject: Re: [4/7] drm/i915/dp: Fix comments on EDP HDR DPCD registers
Message-ID: <20240405172449.GA931901@toolbox>
References: <20240404032931.380887-6-suraj.kandpal@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240404032931.380887-6-suraj.kandpal@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

On Thu, Apr 04, 2024 at 08:59:28AM +0530, Suraj Kandpal wrote:
> Change comments from Pre-TGL+ to Pre-ICL as mentioned in specs
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 3d9723714c96..2d50a4734823 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -69,14 +69,14 @@
>  #define INTEL_EDP_HDR_GETSET_CTRL_PARAMS                               0x344
>  # define INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE                        BIT(0)
>  # define INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE                         BIT(1)
> -# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BIT(2) /* Pre-TGL+ */
> +# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE                       BIT(2) /* Pre-ICL */

Technically that's also true for 2084_DECODE_ENABLE and
2020_GAMUT_ENABLE. Maybe just drop the comment? What is enabled when
should become clear from the code.

>  # define INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE                BIT(3)
>  # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BIT(4)
>  # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE                BIT(5)
>  /* Bit 6 is reserved */
>  # define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX			      BIT(7)
>  
> -#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-TGL+ */
> +#define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-ICL */
>  #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0x34A
>  #define INTEL_EDP_SDR_LUMINANCE_LEVEL                                  0x352
>  #define INTEL_EDP_BRIGHTNESS_NITS_LSB                                  0x354

