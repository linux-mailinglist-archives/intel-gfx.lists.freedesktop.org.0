Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB714592B0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 17:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36EA89CF9;
	Mon, 22 Nov 2021 16:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EE289D39
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 16:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637597444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XccS3wXZoca28Z5b+dvYiJIt0uPn7Ppw7kWccIKIw3k=;
 b=EHPoSwlR4apR2VTDa3WdXiTm60dPN5bpqr1Klu5wnf5jwUfgj5d89j+/u2E2DHDB/SiE7v
 BP9LKZMbH5f2nj5bdtrK+ZwqIjtMPisbg9atYRUhQq0RwPE0mw/tjXU2tdaYYrIP9eDV49
 y3DJGTV8DYGCPupSUrwoFekFtGlVdOg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-90eiXqPqPEiSivyrZF-ocQ-1; Mon, 22 Nov 2021 11:10:43 -0500
X-MC-Unique: 90eiXqPqPEiSivyrZF-ocQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 c1-20020aa7c741000000b003e7bf1da4bcso15230959eds.21
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 08:10:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=XccS3wXZoca28Z5b+dvYiJIt0uPn7Ppw7kWccIKIw3k=;
 b=GGPgK1NylfarDlXVpG8vGcOyTMb+K3b57xSNp1DP4hToGudshRLwzQj1egMTU5Bl5x
 tv9QNE6DE8QOTXjbRjgjk1vapeY8Ymnfoady/gd+Bmkz74wDqKOq6V4kO2DlUtql2gCC
 ZYke7L0f+zp4YoBgyeebsiL1xQ+jhQhDSuw2zBapfZv6yhDUkKRPFWd07zvnGd2Hlpdd
 A55Xzh8UA4EBnG340tpN59ombauo5DOXQpXNVWmD5KMwQTfKSQSaLVCgRkaC+9qnn5NF
 I/beip6Kwyk8VFxQZpOeZibm557VzwK2P7veDb4rpiZLBK2ST+SDJJobh3kF0zI0w5D+
 HqsQ==
X-Gm-Message-State: AOAM531IRFIDdW7bmJ9zk5yP2u7/z9Lhno53fNXfB5ejPV/3MJWxnNT0
 zsPkGeEGYJk2D04e+DMMjP5c3yf99DyczubQGkWd7TQ9cbQLqRmLHbzmAlPMV+N4AFkSLR7pr28
 YhLjZFv866uNJ2PErjLZDjtTvxno1
X-Received: by 2002:aa7:c50b:: with SMTP id o11mr65806535edq.160.1637597441506; 
 Mon, 22 Nov 2021 08:10:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw0Y2HW7qeipyJ4hrOUKhbEjv+XP4mHyfh6Sx0eLvli4/1Q8wAt/H8jkVK6vsrduzZqIyEi4A==
X-Received: by 2002:aa7:c50b:: with SMTP id o11mr65806510edq.160.1637597441345; 
 Mon, 22 Nov 2021 08:10:41 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id jg36sm4063907ejc.44.2021.11.22.08.10.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 08:10:40 -0800 (PST)
Message-ID: <821c3bee-0b70-45fe-5d66-dcfca9437fa7@redhat.com>
Date: Mon, 22 Nov 2021 17:10:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211122111504.223248-1-jani.nikula@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211122111504.223248-1-jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi: split out intel_dsi_vbt.h
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

Hi,

On 11/22/21 12:15, Jani Nikula wrote:
> Follow the convention of corresponding .h for .c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This series looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

For the series.

Regards,

Hans

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_dsi.h     |  9 --------
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c |  1 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.h | 22 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/vlv_dsi.c       |  1 +
>  5 files changed, 25 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dsi_vbt.h
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index edc38fbd2545..2f15b322d78f 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -36,6 +36,7 @@
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_dsi.h"
> +#include "intel_dsi_vbt.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
>  #include "skl_scaler.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
> index fbc40ffdc02e..e3571ca7db5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -210,13 +210,4 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
>  void assert_dsi_pll_enabled(struct drm_i915_private *i915);
>  void assert_dsi_pll_disabled(struct drm_i915_private *i915);
>  
> -/* intel_dsi_vbt.c */
> -bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
> -void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on);
> -void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi);
> -void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
> -				 enum mipi_seq seq_id);
> -void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec);
> -void intel_dsi_log_params(struct intel_dsi *intel_dsi);
> -
>  #endif /* _INTEL_DSI_H */
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index f241bedb8597..c29a13619224 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -41,6 +41,7 @@
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
> +#include "intel_dsi_vbt.h"
>  #include "vlv_sideband.h"
>  
>  #define MIPI_TRANSFER_MODE_SHIFT	0
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.h b/drivers/gpu/drm/i915/display/intel_dsi_vbt.h
> new file mode 100644
> index 000000000000..dc642c1fe7ef
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DSI_VBT_H__
> +#define __INTEL_DSI_VBT_H__
> +
> +#include <linux/types.h>
> +
> +enum mipi_seq;
> +struct intel_dsi;
> +
> +bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
> +void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on);
> +void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi);
> +void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
> +				 enum mipi_seq seq_id);
> +void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec);
> +void intel_dsi_log_params(struct intel_dsi *intel_dsi);
> +
> +#endif /* __INTEL_DSI_VBT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 59ebfbd46e6f..be070a1afcd0 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -38,6 +38,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
> +#include "intel_dsi_vbt.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_panel.h"
>  #include "skl_scaler.h"
> 

