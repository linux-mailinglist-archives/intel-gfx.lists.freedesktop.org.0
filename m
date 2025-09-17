Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8601B7EC25
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBBD10E43A;
	Wed, 17 Sep 2025 09:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="iy42DDjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1590C10E43B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 09:19:56 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-45f2a69d876so21839575e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 02:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1758100794; x=1758705594;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TQYz5cTj4KxxKyrAqnId9PFX7xG2UVYh9ZMlnhOA7NA=;
 b=iy42DDjoN7kuE1uSfJFHKwo8npTgGm9GCRP7+lu7tRdoWKm5SL2iZIyfLmK2tOuLuo
 +krPdiTp7+r+pf3Ez8YS9YzzOdmafbZK9kkovppxI/gYV7+guUqdgmjx9POCO8uBJY3x
 iRz8WsUn5QdpCVippeTWWQPh2XlQbSXT1V/ub/UN5kZq1j5G/ShGz5KXpxTDi0aXPa0A
 Kkt14ojwmxGi7b8OdS36kXVO9W0t3nix0hxeeUkz47qMU1KG4pN1VTwPixUzsJ52W+C/
 n2RYRbyeL2LC6oBHK0PqDoGmMzM+4adHHDaaxYOH7zAegZbfczXyMVMlZYdhdOrjagMz
 zxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758100794; x=1758705594;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TQYz5cTj4KxxKyrAqnId9PFX7xG2UVYh9ZMlnhOA7NA=;
 b=gOMkiJjYRpl9KjUXr+/mvPTgkge2Jv3glaqOXC/Z6hqvpuYFmOsg7Kbc4sBX7o4Fri
 wLiudxXW3cZ69uAPWLdRf7mVBw6tAq6yRX3A8wWfQyWPJbC54nJF6uI59iLCJW8ZWrl3
 xCJX+9vbiizg/q2fSYCzQ7vr1PrNPV079KLIXb2Xs+yE2FWE2OatkLWPVffcGJnnIaId
 /Zx34jMQMZO9rIIz4jctKYqowKq1TVVuMljjKDqtwq9l7j+nXFnEbuSW0s9dHZSOSYUK
 F9EQxRtwNDuf/JgFt/r4wpH8ZzoTelMaoiaAUrnNMQx488Bgy1M6CTltE2BOBNWzi+Fj
 szHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVX7m+BFBWJppTZOGa5Mfw/APAHPr6+mgbaNL174vw72x8PdHlgTjmnTm8ID7jxTW1jEf7WEpGPQGA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwDWP6qzBrVtRTjbF8xT2xCao5ar6L71jP6Z+eCYOMyA1cr1gJL
 FIZxljdNrTub++cwtCotb7gRXY/ICd7PvW5z6yfpdeYtrf5izNCq7dj5gNODdWS7ceY=
X-Gm-Gg: ASbGncuQx2qEX/XJcxG9Is1egNaIHyMfc8TXhvDysc6EnFXuC9nAbDuNK6pewcNkxGA
 cYgdstc5ZqjPMO9hVwXCR89XExUkZy7omVNp+5ardVC7HB/VtFp9jF+22WZ6qM+Sa6ahwgn+zB0
 yia3T8vEy227c7I2lnK0FMN0VGwqBtL9keqPlT/yCD+O1JKA6cKFAW0LZuqTWIujguR3UDMzgLr
 bqRzZbes7pUms4qPMuH/f0wl67JoETqYRKkFVefeduiqTDhdhcaGO+yuYRUStEwN28qZHFLKS6X
 RAcyQN09xeCRlqq76pLbNWcpsCEEfGhFgutRo7lo7NYAIF0A1T315tevI2Yo4qXT5xiWofE6oFV
 PIwB0XhxCYgNy0ZpPKvfOUMP9ZQZo4fZ6mjE=
X-Google-Smtp-Source: AGHT+IGwgzXVmJZALL9EBQdYTpKRevTIfQjPXvprjlffiWmwlkmlF4x8Oy8svppVDJ3QmHXyV7XX4Q==
X-Received: by 2002:a05:600c:4354:b0:45c:4470:271c with SMTP id
 5b1f17b1804b1-462ef763398mr3174405e9.18.1758100794273; 
 Wed, 17 Sep 2025 02:19:54 -0700 (PDT)
Received: from [192.168.0.101] ([84.66.36.92])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3ecdbc7fe1bsm3941385f8f.52.2025.09.17.02.19.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Sep 2025 02:19:53 -0700 (PDT)
Message-ID: <4d685669-bc37-4beb-9346-9dc9b976f2e4@ursulin.net>
Date: Wed, 17 Sep 2025 10:19:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] drm/xe: Add DRM GPU frequency tracepoint to Xe
To: S Sebinraj <s.sebinraj@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com
References: <20250917084135.2049550-1-s.sebinraj@intel.com>
 <20250917084135.2049550-3-s.sebinraj@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250917084135.2049550-3-s.sebinraj@intel.com>
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
> Integrate xe PMU with the DRM-level GPU frequency tracepoint to provide
> efficient frequency monitoring with change detection.
> 
> Key changes:
> - Add frequency change detection
> - Implement per-GT frequency tracking using last_act_freq array
> - Only trace when GPU frequency actually changes per GT
> 
> The integration traces actual GPU frequency changes from xe_pmu during
> XE_PMU_EVENT_GT_ACTUAL_FREQUENCY reads.
> 
> Signed-off-by: S Sebinraj <s.sebinraj@intel.com>
> ---
>   drivers/gpu/drm/drm_gpu_frequency_trace.c     |  2 +-
>   drivers/gpu/drm/xe/xe_gpu_freq_trace.h        | 14 ++++++++++
>   drivers/gpu/drm/xe/xe_pmu.c                   | 26 +++++++++++++++++--
>   drivers/gpu/drm/xe/xe_pmu_types.h             |  4 +++
>   .../drm/drm_gpu_frequency_trace.h             |  2 +-
>   5 files changed, 44 insertions(+), 4 deletions(-)
>   create mode 100644 drivers/gpu/drm/xe/xe_gpu_freq_trace.h
>   rename {drivers/gpu => include}/drm/drm_gpu_frequency_trace.h (96%)
> 
> diff --git a/drivers/gpu/drm/drm_gpu_frequency_trace.c b/drivers/gpu/drm/drm_gpu_frequency_trace.c
> index b5fa5134226d..e33df068752d 100644
> --- a/drivers/gpu/drm/drm_gpu_frequency_trace.c
> +++ b/drivers/gpu/drm/drm_gpu_frequency_trace.c
> @@ -9,7 +9,7 @@
>   #ifdef CONFIG_DRM_GPU_FREQUENCY_TRACE
>   
>   #define CREATE_TRACE_POINTS
> -#include "drm_gpu_frequency_trace.h"
> +#include <drm/drm_gpu_frequency_trace.h>
>   
>   EXPORT_TRACEPOINT_SYMBOL_GPL(gpu_frequency);
>   
> diff --git a/drivers/gpu/drm/xe/xe_gpu_freq_trace.h b/drivers/gpu/drm/xe/xe_gpu_freq_trace.h
> new file mode 100644
> index 000000000000..c15d41761296
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/xe_gpu_freq_trace.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * GPU frequency trace wrapper for xe_pmu.c
> + * This header provides access to the gpu_frequency tracepoint
> + */
> +#ifndef _XE_GPU_FREQ_TRACE_H_
> +#define _XE_GPU_FREQ_TRACE_H_
> +
> +#include <drm/drm_gpu_frequency_trace.h>
> +
> +/* Convert MHz to KHz for tracepoint */
> +#define MHZ_TO_KHZ(freq_mhz)	((freq_mhz) * 1000)
> +
> +#endif /* _XE_GPU_FREQ_TRACE_H_ */
> diff --git a/drivers/gpu/drm/xe/xe_pmu.c b/drivers/gpu/drm/xe/xe_pmu.c
> index cab51d826345..7d5a6e149247 100644
> --- a/drivers/gpu/drm/xe/xe_pmu.c
> +++ b/drivers/gpu/drm/xe/xe_pmu.c
> @@ -5,9 +5,11 @@
>   
>   #include <drm/drm_drv.h>
>   #include <linux/device.h>
> +#include <linux/types.h>
>   
>   #include "xe_device.h"
>   #include "xe_force_wake.h"
> +#include "xe_gpu_freq_trace.h"
>   #include "xe_gt_idle.h"
>   #include "xe_guc_engine_activity.h"
>   #include "xe_guc_pc.h"
> @@ -291,6 +293,19 @@ static u64 read_engine_events(struct xe_gt *gt, struct perf_event *event)
>   	return val;
>   }
>   
> +static void xe_pmu_trace_frequency_change(struct xe_gt *gt, u32 act_freq)
> +{
> +	struct xe_device *xe = gt_to_xe(gt);
> +	struct xe_pmu *pmu = &xe->pmu;
> +	u32 gt_id = gt->info.id;
> +
> +	/* Only trace if frequency changed for this GT */
> +	if (gt_id < XE_PMU_MAX_GT && pmu->last_act_freq[gt_id] != act_freq) {
> +		trace_gpu_frequency(MHZ_TO_KHZ(act_freq), gt_id);
> +		pmu->last_act_freq[gt_id] = act_freq;
> +	}
> +}
> +
>   static u64 __xe_pmu_event_read(struct perf_event *event)
>   {
>   	struct xe_gt *gt = event_to_gt(event);
> @@ -304,8 +319,12 @@ static u64 __xe_pmu_event_read(struct perf_event *event)
>   	case XE_PMU_EVENT_ENGINE_ACTIVE_TICKS:
>   	case XE_PMU_EVENT_ENGINE_TOTAL_TICKS:
>   		return read_engine_events(gt, event);
> -	case XE_PMU_EVENT_GT_ACTUAL_FREQUENCY:
> -		return xe_guc_pc_get_act_freq(&gt->uc.guc.pc);
> +	case XE_PMU_EVENT_GT_ACTUAL_FREQUENCY: {
> +		u32 act_freq = xe_guc_pc_get_act_freq(&gt->uc.guc.pc);
> +
> +		xe_pmu_trace_frequency_change(gt, act_freq);

Not my driver but IMO it does not sound very useful to emit a tracepoint 
*only if* someone has the PMU open and not on actual frequency changes 
but at a frequency of userspace doing PMU reads. Not least that at this 
point userspace already has the frequency information via PMU so 
tracepoint is just adding kernel code for what purpose?

Regards,

Tvrtko

> +		return act_freq;
> +	}
>   	case XE_PMU_EVENT_GT_REQUESTED_FREQUENCY:
>   		return xe_guc_pc_get_cur_freq_fw(&gt->uc.guc.pc);
>   	}
> @@ -572,6 +591,9 @@ int xe_pmu_register(struct xe_pmu *pmu)
>   	pmu->base.stop		= xe_pmu_event_stop;
>   	pmu->base.read		= xe_pmu_event_read;
>   
> +	/* Initialize frequency tracking array */
> +	memset(pmu->last_act_freq, 0, sizeof(pmu->last_act_freq));
> +
>   	set_supported_events(pmu);
>   
>   	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
> diff --git a/drivers/gpu/drm/xe/xe_pmu_types.h b/drivers/gpu/drm/xe/xe_pmu_types.h
> index f5ba4d56622c..630da8442387 100644
> --- a/drivers/gpu/drm/xe/xe_pmu_types.h
> +++ b/drivers/gpu/drm/xe/xe_pmu_types.h
> @@ -34,6 +34,10 @@ struct xe_pmu {
>   	 * @supported_events: Bitmap of supported events, indexed by event id
>   	 */
>   	u64 supported_events;
> +	/**
> +	 * @last_act_freq: Last actual frequency for each GT (for tracing changes only)
> +	 */
> +	u32 last_act_freq[XE_PMU_MAX_GT];
>   };
>   
>   #endif
> diff --git a/drivers/gpu/drm/drm_gpu_frequency_trace.h b/include/drm/drm_gpu_frequency_trace.h
> similarity index 96%
> rename from drivers/gpu/drm/drm_gpu_frequency_trace.h
> rename to include/drm/drm_gpu_frequency_trace.h
> index cf6337847b3a..47f32fd295a4 100644
> --- a/drivers/gpu/drm/drm_gpu_frequency_trace.h
> +++ b/include/drm/drm_gpu_frequency_trace.h
> @@ -42,6 +42,6 @@ static inline void trace_gpu_frequency(unsigned int state, unsigned int gpu_id)
>   
>   #ifdef CONFIG_DRM_GPU_FREQUENCY_TRACE
>   #undef TRACE_INCLUDE_PATH
> -#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm
> +#define TRACE_INCLUDE_PATH ../../include/drm
>   #include <trace/define_trace.h>
>   #endif

