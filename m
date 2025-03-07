Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A5DA568FB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA2210EB4E;
	Fri,  7 Mar 2025 13:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="AiDg1B8c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D5A10EB43
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 13:30:01 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-38a25d4b9d4so939497f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Mar 2025 05:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1741354200; x=1741959000; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ekE5xsi6ZfzsstIFHcXwKSB/c+BLxZ8NF8WHZmG2dto=;
 b=AiDg1B8ctRnoS6AxfhaZ/WbNdrUZWxa9KR4vwyVhtDu6kphPDa0b2foAEPa8z2vzwW
 9KeEn/c0+/LZdiKRgw7o0IQYh+STofzbq1WDMzc/HC7X6VpllUhAUPnemXwsYYV4QoHU
 Ocl3dQj2inaEu2MvrRzb4iwYfb5pvH/k9SV14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741354200; x=1741959000;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ekE5xsi6ZfzsstIFHcXwKSB/c+BLxZ8NF8WHZmG2dto=;
 b=wYHzvZtDEKUPt+Y2XboHmBr7kJEdxueKOjHy+BBKqaP4YHtPaIswZRcvzQl/uyKjWF
 56AFLq6X8f/UHaxceUAn2mMy1xyAOwodmrCOztu5rHlPWQm2Lax4FcqYjXmvhXqJibr0
 jWmbvTWmBPRQV1TiubRxvcxcIkqbUSveq36ese78vSR3Cn+1OpX3HRkonHIUr+76kY7/
 qFZdTT+Vo0RcLbcKuxVDa4+9NOJbOmnqZ0q+m3uSbO+8vSfBiioCeyPM5KW/oqyhkaDo
 Ew6Qi1rPl0uLtYVLj/1bVfEUEegZt45/vXH40Uhg551GaPVGDn2zyutPU/lRtp6rSuui
 QNig==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnLJ7UbK9GxLA3AeIoO0jF+PTI+zgiaDN6kRY5kWdsUQ/PwInXG++cXGRvTVrjohSsPhE3njzAIwc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyrTUFRtusMp1vU/08oZ5a7nA2Hrgv02ydTsyDXlewkjvQMldIp
 /W08KCOpTfCxpIgXLtMKBdx0MptKtIvC4q2JGv2+nYOzD80KxCuJY7+PnJtMcBU=
X-Gm-Gg: ASbGncsLc3pVOb8FhwN3evd/tiax2wDJEJS/CVxUQ/flZRSTtzAPDesajg7Jo6rzr9T
 VLxfFob9DTS/0RqniPmWvzNfS7NCx5wIQX/VzxMxKCA9vmrAs/bDCz1/rI8fusVI4/kQzWeENk/
 Q81S2CceEAWNKZObviN5JDxEBsb2oaEpWYm3muLf2nMZswEwHO2VW8GyOFqyVR77WQducLZLVdY
 3w8kNUXr0fe74+KtzVwvlQuweydY0mPCL+e1Z4K1bOspcUQxV29mNT6QTMtIS556+3lPFY0ECN8
 ZfLXDIMuh1VnWxRTMMEz7B0IT5boy5qkmVw7P5eewVtrKNGMSE+CwO59
X-Google-Smtp-Source: AGHT+IH/kkCP3WG8+wzNo7ysyBh/OLARokHFUAgPdG9FvCx5V4btdPhz7YMsZxr6IpgW9UUP3aP3IA==
X-Received: by 2002:a05:6000:144d:b0:38f:3a89:fdb5 with SMTP id
 ffacd0b85a97d-39132d244fdmr2005477f8f.11.1741354199959; 
 Fri, 07 Mar 2025 05:29:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43bdd8b0425sm51891245e9.3.2025.03.07.05.29.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Mar 2025 05:29:59 -0800 (PST)
Date: Fri, 7 Mar 2025 14:29:57 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Dmitry Baryshkov <lumag@kernel.org>
Cc: Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Yongqin Liu <yongqin.liu@linaro.org>,
 John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH RFC v3 0/7] drm/display: dp: add new DPCD access functions
Message-ID: <Z8r01VDfSykLv5JX@phenom.ffwll.local>
Mail-Followup-To: Dmitry Baryshkov <lumag@kernel.org>,
 Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Tian Tao <tiantao6@hisilicon.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Yongqin Liu <yongqin.liu@linaro.org>,
 John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
References: <20250307-drm-rework-dpcd-access-v3-0-9044a3a868ee@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307-drm-rework-dpcd-access-v3-0-9044a3a868ee@linaro.org>
X-Operating-System: Linux phenom 6.12.11-amd64 
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

On Fri, Mar 07, 2025 at 06:34:42AM +0200, Dmitry Baryshkov wrote:
> Existing DPCD access functions return an error code or the number of
> bytes being read / write in case of partial access. However a lot of
> drivers either (incorrectly) ignore partial access or mishandle error
> codes. In other cases this results in a boilerplate code which compares
> returned value with the size.
> 
> As suggested by Jani implement new set of DPCD access helpers, which
> ignore partial access, always return 0 or an error code. Implement
> new helpers using existing functions to ensure backwards compatibility
> and to assess necessity to handle incomplete reads on a global scale.
> Currently only one possible place has been identified, dp-aux-dev, which
> needs to handle possible holes in DPCD.
> 
> This series targets only the DRM helpers code. If the approach is found
> to be acceptable, each of the drivers should be converted on its own.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Just wanted to drop my "I like this" on your series here. Short
read/writes come from unix pipes, and they're everywhere, and yes ime
everyone gets them wrong. So ack or whatever that means :-)
-Sima

> ---
> Changes in v3:
> - Fixed cover letter (Jani)
> - Added intel-gfx and intel-xe to get the series CI-tested (Jani)
> - Link to v2: https://lore.kernel.org/r/20250301-drm-rework-dpcd-access-v2-0-4d92602fc7cd@linaro.org
> 
> Changes in v2:
> - Reimplemented new helpers using old ones (Lyude)
> - Reworked the drm_dp_dpcd_read_link_status() patch (Lyude)
> - Dropped the dp-aux-dev patch (Jani)
> - Link to v1: https://lore.kernel.org/r/20250117-drm-rework-dpcd-access-v1-0-7fc020e04dbc@linaro.org
> 
> ---
> Dmitry Baryshkov (7):
>       drm/display: dp: implement new access helpers
>       drm/display: dp: change drm_dp_dpcd_read_link_status() return value
>       drm/display: dp: use new DCPD access helpers
>       drm/display: dp-aux-dev: use new DCPD access helpers
>       drm/display: dp-cec: use new DCPD access helpers
>       drm/display: dp-mst-topology: use new DCPD access helpers
>       drm/display: dp-tunnel: use new DCPD access helpers
> 
>  drivers/gpu/drm/amd/amdgpu/atombios_dp.c           |   8 +-
>  .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    |   2 +-
>  drivers/gpu/drm/display/drm_dp_aux_dev.c           |  12 +-
>  drivers/gpu/drm/display/drm_dp_cec.c               |  37 ++-
>  drivers/gpu/drm/display/drm_dp_helper.c            | 307 +++++++++------------
>  drivers/gpu/drm/display/drm_dp_mst_topology.c      | 105 ++++---
>  drivers/gpu/drm/display/drm_dp_tunnel.c            |  20 +-
>  drivers/gpu/drm/hisilicon/hibmc/dp/dp_link.c       |   4 +-
>  drivers/gpu/drm/msm/dp/dp_ctrl.c                   |  24 +-
>  drivers/gpu/drm/msm/dp/dp_link.c                   |  18 +-
>  drivers/gpu/drm/radeon/atombios_dp.c               |   8 +-
>  include/drm/display/drm_dp_helper.h                |  92 +++++-
>  12 files changed, 322 insertions(+), 315 deletions(-)
> ---
> base-commit: 565351ae7e0cee80e9b5ed84452a5b13644ffc4d
> change-id: 20241231-drm-rework-dpcd-access-b0fc2e47d613
> 
> Best regards,
> -- 
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
