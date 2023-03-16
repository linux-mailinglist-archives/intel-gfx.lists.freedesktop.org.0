Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE206BD4A0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 17:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBE010E242;
	Thu, 16 Mar 2023 16:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4B310E242
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 16:03:45 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-544787916d9so40282417b3.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 09:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1678982625;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=y4IWQ3qm69V7nWR3kZTl127u4+HwMbKM+fr7ufWkSq4=;
 b=FHYsepG+obu7nQ3hBQZraJsz/3pb5JM1zNSX5SnPB2+Aka3UWkijGG5NGPTtS5LC4n
 1MGM1jCwejxLh6tTFoWUgnkkBYsouhHgOERdQgvOwRm56ARvSi42PgqnRgPvIRzFJc6x
 z+6KQ1um4U0Zz38wCDJqLjtnpyhxbRT23ihiZ40691I759/y7YOBcGqST5vlb78rvbrf
 ZtV5vkqEMwy7FWxvjsnA+o7Nnx7S9A3MMB6WMr0lr7WefuEyvIT734TQZX6eoi3JcTPU
 qsgN4nFIjn7wxARSIUD9A0mU3QG+pVKEvIuccQjpM3d0nfrySjVa+SsU3ceBHKbNZ87J
 s+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678982625;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=y4IWQ3qm69V7nWR3kZTl127u4+HwMbKM+fr7ufWkSq4=;
 b=Clu+7x4XgcC0B5wU3o55R0e5PPqXzPptal7IUBgNR8fhMEvKyQbAgSa8BrSoWIvxHg
 Q+q4P+WMkNVHMkkZRhkXnNcQYadx5AWir0wnNKaby7yYVrerQy91SGDk7qm+4KNQCZ9L
 neuc2EwzfZN0NBwIsWOFGy/XgfgsCaYuk2Z+QBfGyyTiTXKIbEhYpdC773RCvU3ITr14
 j8Yd/NNnktrGiBjaXOAk5F8uzrK+1XFUK4aUIWIUymsunkC7dG+fNPCd07VztakL124A
 KtclPsLU97pTTR1Bolah/yL2vOOruEbT7wXjTjvwdIZke3gOzazCXTwqxi4YE5vXq59X
 b8Yg==
X-Gm-Message-State: AO0yUKUwDXk9d3cZr4rQSTB0fsH+IcPUhDesIYgF4WHr5o8JZxcT50bZ
 uGzHu4wIlayDr8S19timrkjKXlvVYcuhFXZVVR28WQ==
X-Google-Smtp-Source: AK7set9W4SZAF2xF+bd2nTCNFeQnySUL0JERjAQIpc9fH2qYvBQ6oTmQNhEm0Oac7eVav3YqSLPkJHsGWryzP8RQpDY=
X-Received: by 2002:a81:a708:0:b0:541:7f69:aa8b with SMTP id
 e8-20020a81a708000000b005417f69aa8bmr2423344ywh.5.1678982624792; Thu, 16 Mar
 2023 09:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <1677267647-28672-1-git-send-email-quic_khsieh@quicinc.com>
 <1677267647-28672-2-git-send-email-quic_khsieh@quicinc.com>
 <42b3c193-8897-cfe9-1cae-2f9a66f7983a@linaro.org>
 <741be2a3-0208-2f40-eedf-d439c4e6795b@quicinc.com>
 <F8A4FC18-C64E-4011-BC08-18EB3B95A357@linaro.org>
 <d5ee8233-66c8-9b88-417c-6cf9cc5c84fe@quicinc.com>
 <CAA8EJpro5Q-2ZpnDJt40UhFX7Zp9oBhrto=FDOERzCDR2BDPvQ@mail.gmail.com>
 <f0dfba42-4674-3748-bf5d-39f6e1745f67@quicinc.com>
 <f1a6ee82-9502-7ea5-fe48-f296fc7df497@linaro.org>
 <3e114c0f-a042-6801-69bf-67436cb2a448@quicinc.com>
 <113a10b6-6097-c80e-c29c-6f61b2b2896a@linaro.org>
 <c4c0ebf8-275d-500f-4019-e3d7517a884f@quicinc.com>
 <CAA8EJppxX4haZSwdvVbN7bc6kXAyNO1rg6zWZv9wPFdqGrcXuw@mail.gmail.com>
 <c650e746-64c5-ce6b-933d-057349356b78@quicinc.com>
 <58E03B71-20C4-4F81-96C1-6D8CE517F3FB@linaro.org>
 <fd876ad2-3fd0-eaab-3407-dd32d494f662@quicinc.com>
 <a5d1a74f-1b7a-569d-e487-774720dfae22@quicinc.com>
In-Reply-To: <a5d1a74f-1b7a-569d-e487-774720dfae22@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 16 Mar 2023 18:03:33 +0200
Message-ID: <CAA8EJpq_mwUt0+1yGYo6hRx8Vz12DumVdpEjJbPk8gGHhGZ2bA@mail.gmail.com>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [Freedreno] [RFC PATCH 1/2] drm/msm/dpu: add dsc
 helper functions
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
Cc: quic_sbillaka@quicinc.com, dianders@chromium.org,
 Kuogee Hsieh <quic_khsieh@quicinc.com>, andersson@kernel.org,
 freedreno@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, agross@kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 marijn.suijten@somainline.org, swboyd@chromium.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-msm@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

[removed previous conversation]

>
> Hi Dmitry and Abhinav,
>
> Just wanted to follow up on this thread. I've gone over the MSM-specific
> DSC params for DP and DSI and have found a few shared calculations and
> variables between both DSI and DP paths:
>
> - (as mentioned earlier in the thread) almost all the calculations in
> dpu_dsc_populate_dsc_config() match dsi_populate_dsc_params() [1]. The
> only difference in the math I'm seeing is initial_scale_value.

The value in dsi code is valid for initial_offset = 6144. Please use
the formula from the standard (= sde_dsc_populate_dsc_config) and add
it to drm_dsc_helper.c

If I remember correctly the last remaining item in
dsi_populate_dsc_params() (except mentioned initial_offset) was
line_buf_depth, see [3]. I'm not sure about setting it to bpc+1.
According to the standard it should come from a DSC decoder spec,
which means it should be set by the DSI panel driver or via
drm_dp_dsc_sink_line_buf_depth() in the case of DP output.

> - dsc_extra_pclk_cycle_cnt and dce_bytes_per_line, which were introduced
> in Kuogee's v1 DSC series [2], are used for DSI, DP, and the DPU timing
> engine. dsc_extra_pclk_cycle_cnt is calculated based on pclk_per_line
> (which is calculated differently between DP and DSI), but
> dce_bytes_per_line is calculated the same way between DP and DSI.
>
> To avoid having to duplicate math in 2 different places, I think it
> would help to have these calculations in some msm_dsc_helper.c file. Any
> thoughts on this?

dsc_extra_pclk_cycle_cnt and dce_bytes_per_line are used only in DPU
code, so they can stay in DPU driver.

>
> Thanks,
>
> Jessica Zhang
>
> [1]
> https://elixir.bootlin.com/linux/v6.3-rc2/source/drivers/gpu/drm/msm/dsi/dsi_host.c#L1756
>
> [2] https://patchwork.freedesktop.org/patch/519845/?series=113240&rev=1

[3] https://patchwork.freedesktop.org/patch/525441/?series=114472&rev=2



-- 
With best wishes
Dmitry
