Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD5089A366
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9F610EC79;
	Fri,  5 Apr 2024 17:17:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="co8er74m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133E110ECAA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712337426;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DhmcEbpqYTWTDMJjcdJyzuwvOVGJLTBBazw156RlXQg=;
 b=co8er74mvmwMadNZ9gb/GFqT7uNB2AwM5q1LsHJyyPxmUXUhdfkAiV+xEmvEFJCK9RVxuD
 Wq7V2xviOi0a+kfdu7onIPssfQopA76ekO4FnPRzdJQ7OkvLuu0xkNlBu1H8RGe/sKilkd
 uFhKarDR6NH5/hza134uhAaU1I6JTEw=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-210-DBMQcvzsN12isk4kewhCNg-1; Fri, 05 Apr 2024 13:17:05 -0400
X-MC-Unique: DBMQcvzsN12isk4kewhCNg-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-41545bc8962so12278695e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 10:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712337424; x=1712942224;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DhmcEbpqYTWTDMJjcdJyzuwvOVGJLTBBazw156RlXQg=;
 b=d+A+oSheWdNuTyXK6QlXvTZhZrJ2CVc9oVBa+UfO7Or8wG5goFr+OXTmHKIufOz8qJ
 xSaMIS1p+1+ArKg14w12eJz/Cwg8cnrTAPqNwiTjpVXkOLlidOC8pbfwWzPd6x3x9aY/
 BYmH5O70gB7TwjKuGwY+Yxk9UHtdZjrY0nEizozQC8zlcGWpgBOsFRHQNS2AN1q1IRWa
 QmCTblzaXjtLiVQ+RCZaMYbqof81JxwJExOi+wPUPe5PGlVPQvj0zDOEXpTzZrFKekIO
 mJojQ3RPCah9R9ydSuBee3wt267tUGYk47V/DtaU8FtCMF3TTKcM+mZ4CxX/dR9SJ5pg
 RycA==
X-Gm-Message-State: AOJu0YzVO8e7UBpSJt4OzwzYnjlZj3Yt+dDIX3pAylj2m0JQ3dxrClMp
 tpM3xJgTzhKe+9vslr4SKguqivH1IDunE9OH6icyrSoDCiDxqXuOS6Fk7i7UvKGpWP8paGm94Ce
 0XZSjXBOh0MiICOYkh763kPdnYS17dVTnT7yT9tVo+aX/yXolCOaGHxS/z49JRO99wQ==
X-Received: by 2002:a05:600c:c0c:b0:414:8ff6:ef33 with SMTP id
 fm12-20020a05600c0c0c00b004148ff6ef33mr1547923wmb.40.1712337424028; 
 Fri, 05 Apr 2024 10:17:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMGpZoF94mXDZmL40MAm0YOZL3pqO+kfj0dy29MRtYobksUN93JtHsBA+C+b0l719C8L1WVA==
X-Received: by 2002:a05:600c:c0c:b0:414:8ff6:ef33 with SMTP id
 fm12-20020a05600c0c0c00b004148ff6ef33mr1547906wmb.40.1712337423657; 
 Fri, 05 Apr 2024 10:17:03 -0700 (PDT)
Received: from toolbox ([2001:9e8:899a:a100:d85f:7bed:a911:4675])
 by smtp.gmail.com with ESMTPSA id
 v19-20020a05600c471300b004157ff88ad7sm3624729wmo.7.2024.04.05.10.16.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Apr 2024 10:16:35 -0700 (PDT)
Date: Fri, 5 Apr 2024 19:16:10 +0200
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, ville.syrjala@intel.com, naveen1.kumar@intel.com
Subject: Re: [3/7] drm/i915/dp: Fix Register bit naming
Message-ID: <20240405171610.GA931166@toolbox>
References: <20240404032931.380887-5-suraj.kandpal@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240404032931.380887-5-suraj.kandpal@intel.com>
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

On Thu, Apr 04, 2024 at 08:59:27AM +0530, Suraj Kandpal wrote:
> Change INTEL_EDP_HDR_TCON_SDP_COLORIMETRY enable to
> INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX as this bit is tells TCON to
> ignore DPCD colorimetry values and take the one's sent through
> SDP.

I actually like the original name because it tells the TCON to enable
processing of SDP Colorimetry. The new name is okay as well.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 94edf982eff8..3d9723714c96 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -74,7 +74,7 @@
>  # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BIT(4)
>  # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE                BIT(5)
>  /* Bit 6 is reserved */
> -# define INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE                    BIT(7)
> +# define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX			      BIT(7)
>  
>  #define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0x346 /* Pre-TGL+ */
>  #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0x34A

