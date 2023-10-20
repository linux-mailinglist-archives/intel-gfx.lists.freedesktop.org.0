Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1424E7D107F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 15:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FDE010E572;
	Fri, 20 Oct 2023 13:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74ACC10E572
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 13:26:45 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id
 38308e7fff4ca-2c515527310so11821931fa.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 06:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697808403; x=1698413203; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=5u+U8tGdcXoDwcvMHbbDlRofKFhQTvO7ZLhj5+3r8lg=;
 b=LXHX5ZTTgNqTzzxc+cu41fhVT82GFw/C6uSpgcdy7igIut5e2867BItfvg/kadWz+x
 g8sAYk7Tjt5WY8det4fPqlZ8+mjZCyoo6wmyONhLdd0raMXg2fu8CGNJA2+3M5utnqU5
 qfii3ld/xFnXgN9wtlNo3suye5wxtYBvTbx6gZ5O/U1Xez2/4oJ1LAPxtT00alNhx8Fo
 6RJQxgEpj/nk/1uO7EwAfNv5KV+tk8tEWanU9jjFIoCy+SxYmQTu6cWN7pr/AK1Go3rS
 gUdhkNuv8o23mmsJR84KKST728kDYxrEnjsMJ348GQ3gxWmPw+OMfQNBRsILkm1wS/41
 lQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697808403; x=1698413203;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5u+U8tGdcXoDwcvMHbbDlRofKFhQTvO7ZLhj5+3r8lg=;
 b=FQEDk7vsxRDIzt2F7t70NzGWBrkOLa8RA5TxSU87K7b8fKjqEWp7bWauofQCKmDX3Q
 hB4LBIInXSLhFqI+8AwuFrHMJfYY8IH69nY/hQSloIB8s3ypaZypyvf7DkzPJdGybh9h
 RH7pYuHGUuFuXz03HNX1hKZcLIkiCL2/t3WZOYEF4Al74TexWkkp05d/YnWtzcRdgEpO
 nPEWbAnA8T79PdpzssqYBKv27Ot9NVisd512ElgI+hBGsas54Hf3Ynbouz9jhFjqhuu3
 WMxlxFRwt6JA9E1Q0NBLC2Xg+WVaS2oj2E/rw4TlbNuzHumB/93r2enW5rgXepICHh/8
 VFEA==
X-Gm-Message-State: AOJu0YyFijmiqpsD2WZXv+MtuhZLbEJDy5dAvHaUS48XC0KaFBPPcya4
 Of2xh/klymOtU6lEM92T+C0=
X-Google-Smtp-Source: AGHT+IEaZYyvRSvUUYCqb8szGXG2XXgaNEQSj9mIJzYXXJOnMhb9C+Nj7AoZiXXla1Lixi0Y1WH5Bg==
X-Received: by 2002:a2e:9f50:0:b0:2bc:f39b:d1a8 with SMTP id
 v16-20020a2e9f50000000b002bcf39bd1a8mr1248832ljk.46.1697808403263; 
 Fri, 20 Oct 2023 06:26:43 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.81])
 by smtp.googlemail.com with ESMTPSA id
 m15-20020a7bcb8f000000b0040523bef620sm2934605wmi.0.2023.10.20.06.26.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Oct 2023 06:26:42 -0700 (PDT)
Message-ID: <71f8d747-a93c-4e2e-9163-9d3d1414b925@gmail.com>
Date: Fri, 20 Oct 2023 16:26:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231012072158.4115795-1-jouni.hogander@intel.com>
 <20231012072158.4115795-3-jouni.hogander@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20231012072158.4115795-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Use
 intel_bo_to_drm_bo instead of obj->base
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 12.10.2023 10.21, Jouni Högander wrote:
> Xe and i915 objects have differing implementation. Use intel_bo_to_drm_bo
> instead of obj->base as xe_bo doesn't have base pointer.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index e7678571b0d7..e1d298efc510 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1930,10 +1930,10 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
>   	if (!atomic_read(&front->bits))
>   		return 0;
>   
> -	if (dma_resv_test_signaled(obj->base.resv, dma_resv_usage_rw(false)))
> +	if (dma_resv_test_signaled(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false)))
>   		goto flush;
>   
> -	ret = dma_resv_get_singleton(obj->base.resv, dma_resv_usage_rw(false),
> +	ret = dma_resv_get_singleton(intel_bo_to_drm_bo(obj)->resv, dma_resv_usage_rw(false),
>   				     &fence);
>   	if (ret || !fence)
>   		goto flush;

