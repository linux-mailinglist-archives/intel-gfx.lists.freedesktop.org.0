Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C66A00D9F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 19:31:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A6710E91E;
	Fri,  3 Jan 2025 18:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="PmZMzjNi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C688510E91E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 18:31:01 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-aaedd529ba1so1271277766b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2025 10:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1735929000; x=1736533800; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=155ezFoO+4fVmuNy4GZMEsWBNEAzYP4vCAeZ5fjCchw=;
 b=PmZMzjNivhkwMIEZfrOuwVbp/3u3yECX3/ijHBGX+y8tRoLff8NeM/VavHosW2lWvq
 BR6MesrAGV+kBblCap3cXX+nbdA6BKqKQKyjP8X5BjGnlGCvTMUiImZ8P0I/uli2JqaD
 8thFbhiCfJNE7JbsCDbyCr76lJ3cgamGZDO/b9Cx6HEqz/g7D4WyB00cMC3i7Deh9HnQ
 WhaE+z3uSh0OezCsiFwe0KKiabtED9nn9ntiFBW/WAUstFn5gMnp7z/5T8RjYE1ITifD
 PP3YqxoRCJoBpL90jmlqm5k+VkGcrYX0xD+Lt7vCCnpm8obeqf+WRyd55XM5xE3DhHsU
 ZBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735929000; x=1736533800;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=155ezFoO+4fVmuNy4GZMEsWBNEAzYP4vCAeZ5fjCchw=;
 b=mmdLA5eREEs7nO/+xlwCjZFRYgHS+v5W3wdGyMgyFoRcynXpYsAjtJhM1a7Jv9YTlx
 iwpAk8jn+Xsd08plFIwLeurD3uTvjxRNC4+5Lilop0eLzUlX58Ltj8iN8OxI5+onL9Zt
 yyfUwXxP1mbbjHIkKOQ4hGq6oirIv6KoDBJr731FIfFfnD7fqAy5XATtZKues8pUsPDI
 EElb4VcCrY3hkdxs7d4a2BkisMycCgSKCbCmVOZGVBpQIzh/Z5tNC1SBIr8zbAJ8ursd
 /BpfNoinPhbfOqUkcOuJPc3KxV2ve7z5B5tyPuTYGxV/Xb26KHWSDu/TmLzKZzIEL1U9
 EIBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUk8KczGZbv2/WGjEZhN3hp9P+NAGX+3U2mv6BPfbGTKKerKxyH6TcQ8mxGarG5/PULvIzLzxG/moQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxS16c83OSp7CBAYZGRAmWymcq/wHScI6k/cl9+BJvrVp3wgktL
 zomdo2Jjr8T2G7ey8ajZGwWRl7dGWQPm93Avc+6P1gwPONClVmn9s60V5DxSJh1XYOxSNCmY1aH
 y9I0=
X-Gm-Gg: ASbGncuQyuk58haj1hCnsLCX4vNSnP9sW9Ph7c9Mclqbk9vow+lfVrcnVAYiE4Suf+o
 bs+wqpwxtUk+gihhv2p1+ZtPrq59xfEzR3eD0/41V1le9paLu45hJwjViYTNjfzXllfFpOPnwAn
 t4WRyOyLHj9Q9pTF0i5LKPIP59AER8+VJOPhJgBAEQuSwIqshr+IbUxxDbHhTheZBmLc8GI38ag
 oL/+nIP1Dd6Ep25AL0tUh18egoYzrldHWm4mYcQo6nzaGzxc0SPuiLVomGFnTNV5vnuXChFlYNf
 zxo2bYblooziElHYhykVvwgd2vOxKljdUn1M
X-Google-Smtp-Source: AGHT+IGRom+Gus/1G1SgQhKlOCafo/OEVm4N6cFluXFzAfrnKOJhSwVzA8r9uuoBvSe2BPxSSW2YMg==
X-Received: by 2002:a05:6512:438b:b0:542:2999:2e43 with SMTP id
 2adb3069b0e04-54229992e47mr16954688e87.24.1735927591118; 
 Fri, 03 Jan 2025 10:06:31 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-54223832a5bsm4176014e87.270.2025.01.03.10.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2025 10:06:29 -0800 (PST)
Date: Fri, 3 Jan 2025 20:06:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan@kernel.org>,
 dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 1/4] drm/dp: Add helper to set LTTPRs in transparent
 mode
Message-ID: <yx2io7cuu5hescyocvkvzsaoiqhgbifknbxytqtusbno6y4xe2@e4bar6lemtdl>
References: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-0-5c367f4b0763@linaro.org>
 <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-1-5c367f4b0763@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250103-drm-dp-msm-add-lttpr-transparent-mode-set-v3-1-5c367f4b0763@linaro.org>
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

On Fri, Jan 03, 2025 at 02:58:15PM +0200, Abel Vesa wrote:
> According to the DisplayPort standard, LTTPRs have two operating
> modes:
>  - non-transparent - it replies to DPCD LTTPR field specific AUX
>    requests, while passes through all other AUX requests
>  - transparent - it passes through all AUX requests.
> 
> Switching between this two modes is done by the DPTX by issuing
> an AUX write to the DPCD PHY_REPEATER_MODE register.
> 
> Add a generic helper that allows switching between these modes.
> 
> Also add a generic wrapper for the helper that handles the explicit
> disabling of non-transparent mode and its disable->enable sequence
> mentioned in the DP Standard v2.0 section 3.6.6.1. Do this in order
> to move this handling out of the vendor specific driver implementation
> into the generic framework.
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 61 +++++++++++++++++++++++++++++++++
>  include/drm/display/drm_dp_helper.h     |  2 ++
>  2 files changed, 63 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
