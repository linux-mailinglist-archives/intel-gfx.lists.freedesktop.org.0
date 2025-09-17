Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C38DB7E999
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAA510E442;
	Wed, 17 Sep 2025 09:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="KQIUngJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A4410E43B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 09:17:09 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-45cb5e5e71eso40490715e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 02:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1758100628; x=1758705428;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=j6k6+iaKshdFxFD/QLgHulhbPMnnzSRsNw8DKr/cshE=;
 b=KQIUngJMDViRnho1nNducaeivT5sWeQg/BHAvUtPYVlGNoadwK8D8yIKQyPhkwJN2z
 orRRAdkjQqhl2LU6YtmOVZtyPczd/pi4jTKyvXmfws8wmmsu76lqNA5ZXghF1HohuHzy
 pjcA4VV/qw46mbMJ4eZ3TiQ5r5KJzG9QWqC/r1p1v+y/dporLRwN51fbK2rWw6ESZt8x
 rujli9kFB7GpSQ7oV4Fztv0/JqbZ3A3diqCiOsob38vRy7s0LyCR4bG40YmhOqAWEqFT
 WY5bxxkWPKmiObwQ/pEknY4yU5wJGEr35hcLH/KMUeLwaBmslKyC+KkU8a96YAQXUevV
 0UWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758100628; x=1758705428;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j6k6+iaKshdFxFD/QLgHulhbPMnnzSRsNw8DKr/cshE=;
 b=WTPtcAMf+ECE3FhRgnv+vFhCQcxjg5IcQ+FPJPfJbISehcDSZ/FG8Nhgg7xJoSYLJ6
 TVhwlpNxzIvhli1NbKTem9yOxstAQCVXO6Y3ugcvBcOocCWzDKv2VEJp+3GiKIIIDKR1
 62auStHN9SM+vEk7PdyPkdUb5GBohEpvEnEbBtXe3KuaEnCcguXq9HuD/va2Y4NYpBuN
 uC2YlInw2x+2IKXUWm1ndIGCba1a90Lk2FHxwFKeIHqTsBjUB4VLIjnYNwfJQTn/AphB
 SMdH1c3C8Xy7SGTXnW/AHN9SCJIibN+cSf92D2OWQHSZ8SVaSyAX6Ql59DWO6NOuLHWV
 0tPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVM3Or5XtkhdzWqFwm0Kc4mzE+0ovksw4URW8u6laQ0dcSrD5PUpTX4daG7spahcqpqyiwXUSXCIcY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw6j3t48kKJP6pqiAjPWUW2mJUR1fRsPLXN1rYIoZ7jk8w/sHsq
 16LOuUrrVcOyBOWeqyjgIn64ARDdjLApmVFfsH3S8+taaCGOrisG4Wxk+do/mrMVTNk=
X-Gm-Gg: ASbGncuXTE9/le+hCS7Yh9ICnGvjZa2TYI3NZvqogvyQWj8kJmCNA1j0moPQyoYp3Eu
 kW8XiaVIURjJo048iRyCiL+Hgxz2ClEN2GWPEX6h3Yky/U9TSY4ojMYo5rlpLd2IA0FFbjpEloC
 O16MV6HuyjVTEO2eiNUmZBXVHnpBZtIehc+4FT7sH5Wsd4P0ca/ohOzQnfNPD16s9IEyMS00C4j
 3vaq13VHx55zbieokKkKqCBVj4tRhhRGlwA12kDMe38tjXRSp/g04XqQkArKk3CJhzFNkY2OmS6
 VK5L160WXD+L1wzZzR15lAnEDDdXNkd8Yc9VHPnEtVYlSv5cJ2esX17CpsJcUEZ4UgeB0I5TsnR
 V8NOfnaQJIm24IawR1NQdPp8A8qYybB6vRcE=
X-Google-Smtp-Source: AGHT+IH65ZLg5FtP17OJWLSad0rqn19TFXfKKEOPrG/Cgx5KEGjTbmUMKlfkuYN9OzfYjqUtTuONcQ==
X-Received: by 2002:a05:600c:4f86:b0:458:bf0a:6061 with SMTP id
 5b1f17b1804b1-46205eb145amr13677825e9.24.1758100627984; 
 Wed, 17 Sep 2025 02:17:07 -0700 (PDT)
Received: from [192.168.0.101] ([84.66.36.92])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4613902db8bsm28622895e9.17.2025.09.17.02.17.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Sep 2025 02:17:07 -0700 (PDT)
Message-ID: <37619915-ff50-4a62-a43e-a0b2fcdb4596@ursulin.net>
Date: Wed, 17 Sep 2025 10:17:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] drm: Add GPU frequency tracepoint at DRM level
To: S Sebinraj <s.sebinraj@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com
References: <20250917084135.2049550-1-s.sebinraj@intel.com>
 <20250917084135.2049550-2-s.sebinraj@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250917084135.2049550-2-s.sebinraj@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 17/09/2025 09:41, S Sebinraj wrote:
> Add a GPU frequency tracepoint at the DRM subsystem level
> 
> The implementation includes:
> - DRM-level tracepoint exposed at /sys/kernel/debug/tracing/events/power/gpu_frequency/
> - CONFIG_DRM_GPU_FREQUENCY_TRACE Kconfig option (default=n)
> 
> The tracepoint follows kernel tracing and provides kHz frequency
> values with GPU identification for power analysis and
> performance monitoring tools.
> 
> The tracepoint is only active when CONFIG_DRM_GPU_FREQUENCY_TRACE=y
> and can be integrated by GPU drivers for frequency reporting.
> 
> Signed-off-by: S Sebinraj <s.sebinraj@intel.com>
> ---
>   drivers/gpu/drm/Kconfig                   | 11 ++++++
>   drivers/gpu/drm/Makefile                  |  1 +
>   drivers/gpu/drm/drm_gpu_frequency_trace.c | 16 ++++++++
>   drivers/gpu/drm/drm_gpu_frequency_trace.h | 47 +++++++++++++++++++++++
>   4 files changed, 75 insertions(+)
>   create mode 100644 drivers/gpu/drm/drm_gpu_frequency_trace.c
>   create mode 100644 drivers/gpu/drm/drm_gpu_frequency_trace.h
> 
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index f7ea8e895c0c..975cc7b2581d 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -53,6 +53,17 @@ config DRM_DRAW
>   	bool
>   	depends on DRM
>   
> +config DRM_GPU_FREQUENCY_TRACE
> +	bool "Enable GPU frequency tracepoints"
> +	depends on DRM && TRACEPOINTS
> +	default n
> +	help
> +	  Enable GPU frequency tracepoints in the power trace subsystem.
> +	  This provides kernel tracing support for GPU frequency changes
> +	  that will be exposed at /sys/kernel/debug/tracing/events/power/gpu_frequency/.
> +
> +	  If unsure, say N.
> +
>   config DRM_PANIC
>   	bool "Display a user-friendly message when a kernel panic occurs"
>   	depends on DRM
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 4dafbdc8f86a..12c81b6a750d 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -77,6 +77,7 @@ drm-$(CONFIG_DRM_CLIENT) += \
>   	drm_client.o \
>   	drm_client_event.o \
>   	drm_client_modeset.o
> +drm-$(CONFIG_DRM_GPU_FREQUENCY_TRACE) += drm_gpu_frequency_trace.o
>   drm-$(CONFIG_DRM_LIB_RANDOM) += lib/drm_random.o
>   drm-$(CONFIG_COMPAT) += drm_ioc32.o
>   drm-$(CONFIG_DRM_PANEL) += drm_panel.o
> diff --git a/drivers/gpu/drm/drm_gpu_frequency_trace.c b/drivers/gpu/drm/drm_gpu_frequency_trace.c
> new file mode 100644
> index 000000000000..b5fa5134226d
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_gpu_frequency_trace.c
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * GPU frequency trace points for DRM subsystem
> + *
> + * This provides GPU frequency tracing support that will be exposed at:
> + * /sys/kernel/debug/tracing/events/power/gpu_frequency/
> + */
> +
> +#ifdef CONFIG_DRM_GPU_FREQUENCY_TRACE
> +
> +#define CREATE_TRACE_POINTS
> +#include "drm_gpu_frequency_trace.h"
> +
> +EXPORT_TRACEPOINT_SYMBOL_GPL(gpu_frequency);
> +
> +#endif /* CONFIG_DRM_GPU_FREQUENCY_TRACE */
> diff --git a/drivers/gpu/drm/drm_gpu_frequency_trace.h b/drivers/gpu/drm/drm_gpu_frequency_trace.h
> new file mode 100644
> index 000000000000..cf6337847b3a
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_gpu_frequency_trace.h
> @@ -0,0 +1,47 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#if !defined(_GPU_FREQUENCY_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
> +#define _GPU_FREQUENCY_TRACE_H
> +
> +#include <linux/tracepoint.h>
> +
> +#ifdef CONFIG_DRM_GPU_FREQUENCY_TRACE
> +
> +#undef TRACE_SYSTEM
> +#define TRACE_SYSTEM power

Not sure masquerading as a different subsystem will fly.

> +#define TRACE_INCLUDE_FILE drm_gpu_frequency_trace
> +
> +/*
> + * Tracepoint for GPU frequency changes
> + * This tracepoint is exposed at /sys/kernel/debug/tracing/events/power/gpu_frequency
> + *
> + * location: /sys/kernel/debug/tracing/events/power/gpu_frequency
> + * format: {unsigned int state, unsigned int gpu_id}
> + * where state holds the frequency(in KHz) and the gpu_id holds the GPU clock domain.
> + */
> +TRACE_EVENT(gpu_frequency,
> +	    TP_PROTO(unsigned int state, unsigned int gpu_id),
> +	    TP_ARGS(state, gpu_id),
> +	    TP_STRUCT__entry(
> +		    __field(unsigned int, state)

Why is the frequency field not called frequency?

> +		    __field(unsigned int, gpu_id)

It is required to be able to identify which GPU in muti-GPU systems. See 
how gpu_id is defined in gpu_mem.h.

Regards,

Tvrtko

> +		    ),
> +	    TP_fast_assign(
> +		    __entry->state = state;
> +		    __entry->gpu_id = gpu_id;
> +		    ),
> +	    TP_printk("state=%u gpu_id=%u", __entry->state, __entry->gpu_id)
> +);
> +
> +#else /* !CONFIG_DRM_GPU_FREQUENCY_TRACE */
> +
> +static inline void trace_gpu_frequency(unsigned int state, unsigned int gpu_id) { }
> +
> +#endif /* CONFIG_DRM_GPU_FREQUENCY_TRACE */
> +
> +#endif /* _GPU_FREQUENCY_TRACE_H */
> +
> +#ifdef CONFIG_DRM_GPU_FREQUENCY_TRACE
> +#undef TRACE_INCLUDE_PATH
> +#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm
> +#include <trace/define_trace.h>
> +#endif

