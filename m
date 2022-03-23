Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCAF4E557E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CE110E712;
	Wed, 23 Mar 2022 15:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F5C10E66B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 10:39:48 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id t25so1959083lfg.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 03:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LJG6LchEWg7eLND4+i+6tV16qS1u0tcHKvRxEtTuG+w=;
 b=yAkPXvHZVB3DXiA6lnV3OJs4l7boHKACGrx2zNN0q0WdW4bDDBFu/J4udxtyTi4LnD
 EW5GVcRjYXzEeDLkpqeGo1qdR36WyqvDgbQswBau6NJctIIV72R0Wo2Kj1TEosLVpGaq
 UvO0sdl+erB80ekBTDMX7IEdiKF3ft8qxVaWiecxxSgBJsWhhrQHl5YOnjDD05TZdcGP
 GDOInQ2USvHXmJkV5XU+7gTi59xIrI9Dv6xe++mHYqDqDI5n+u4nmlN8qRthsqM0DM33
 fzmhSc0ONmXxs82ScbBBb79fjsbtQFhKXPJYW/HWmd9J56xvz4lQapq28hyricqZ/Ueu
 gp4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LJG6LchEWg7eLND4+i+6tV16qS1u0tcHKvRxEtTuG+w=;
 b=P6IIaSuFTS6oMdEuOHbQXA7Hi0FpW7sJscpbNy1aZbC4hPX+Psh8bM7NHX3OBJVTKs
 B9HDwVKQrlOL7bnUEAf6vW1PWaSiAaurtJxf2+YWwD/w+Yr0Q5tMZjF91Z7F6dzCO2c1
 UobPW8PjACd/MvWdaYN41Q706mo2iXYVGbnFi2tvaUY1kRSGZG/sdh8IColL28FDM9Vy
 BbBW6rSSQIBT0EKLuVzubW2i6jOh03vMncQImk/wdrEgCxLK4gci2oAVERAUKhQxi+EA
 rGCBBqW+o9n+sDZzsVk21HZxV4O3ZqmszuMUWYqQin87P42Bo76sVhNfqjK5GuAf37mD
 zRCw==
X-Gm-Message-State: AOAM532mjEYP6AdF/M4XfKDCz1ngi3qMzN+YPF2mrR9tQd7F/jaT0QwA
 8Ur3nCRddn4V/JjHmfzmPicVOw==
X-Google-Smtp-Source: ABdhPJxdoE2MJzCwqFEPkOY+WggWU0jxIXl/lqXQbtd4rieBWf/meitV/U1e3m4J8NKMlt9q9m+iIA==
X-Received: by 2002:a05:6512:34c7:b0:44a:37de:9d74 with SMTP id
 w7-20020a05651234c700b0044a37de9d74mr6436931lfr.314.1648031986613; 
 Wed, 23 Mar 2022 03:39:46 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 x33-20020a0565123fa100b00443d3cffd89sm2479850lfa.210.2022.03.23.03.39.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Mar 2022 03:39:46 -0700 (PDT)
Message-ID: <e9937a37-70c8-cc6f-15f2-1dbbb7f1bfba@linaro.org>
Date: Wed, 23 Mar 2022 13:39:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Alex Deucher <alexdeucher@gmail.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <Yi+9n0eGn3rNKb4X@intel.com>
 <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
 <Yjj+RSVBWk6UO2C7@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yjj+RSVBWk6UO2C7@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 23 Mar 2022 15:40:20 +0000
Subject: Re: [Intel-gfx] [PATCH 00/22] drm: Review of mode copies
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>, Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Leo Li <sunpeng.li@amd.com>, Chen Feng <puck.chen@hisilicon.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Maxime Ripard <mripard@kernel.org>,
 Nikola Cornij <nikola.cornij@amd.com>, John Stultz <john.stultz@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tomi Valkeinen <tomba@kernel.org>, freedreno <freedreno@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, Robert Foss <robert.foss@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22/03/2022 01:37, Ville Syrjälä wrote:
> On Tue, Mar 15, 2022 at 02:52:38PM -0400, Alex Deucher wrote:
>> On Mon, Mar 14, 2022 at 6:12 PM Ville Syrjälä
>> <ville.syrjala@linux.intel.com> wrote:
>>>
>>> On Fri, Feb 18, 2022 at 12:03:41PM +0200, Ville Syrjala wrote:
>>>>    drm: Add drm_mode_init()
>>>>    drm/bridge: Use drm_mode_copy()
>>>>    drm/imx: Use drm_mode_duplicate()
>>>>    drm/panel: Use drm_mode_duplicate()
>>>>    drm/vc4: Use drm_mode_copy()
>>> These have been pushed to drm-misc-next.
>>>
>>>>    drm/amdgpu: Remove pointless on stack mode copies
>>>>    drm/amdgpu: Use drm_mode_init() for on-stack modes
>>>>    drm/amdgpu: Use drm_mode_copy()
>>> amdgpu ones are reviewed, but I'll leave them for the
>>> AMD folks to push to whichever tree they prefer.
>>
>> I pulled patches 2, 4, 5 into my tree.
> 
> Thanks.
> 
>> For 3, I'm happy to have it
>> land via drm-misc with the rest of the mode_init changes if you'd
>> prefer.
> 
> Either way works for me. I don't yet have reviews yet for
> the other drivers, so I'll proably hold off for a bit more
> at least. And the i915 patch I'll be merging via drm-intel.
> 
>>>>    drm/radeon: Use drm_mode_copy()
>>>>    drm/gma500: Use drm_mode_copy()
>>>>    drm/tilcdc: Use drm_mode_copy()
>>>>    drm/i915: Use drm_mode_copy()
> 
> Those are now all in.
> 
> Which leaves us with these stragglers:
>>>>    drm/hisilicon: Use drm_mode_init() for on-stack modes

>>>>    drm/msm: Nuke weird on stack mode copy
>>>>    drm/msm: Use drm_mode_init() for on-stack modes
>>>>    drm/msm: Use drm_mode_copy()

These three patches went beneath my radar for some reason.

I have just sent a replacement for the first patch ([1]). Other two 
patches can be pulled in msm/msm-next (or msm/msm-fixes) during the next 
development cycle if that works for you.

[1] https://patchwork.freedesktop.org/series/101682/

>>>>    drm/mtk: Use drm_mode_init() for on-stack modes
>>>>    drm/rockchip: Use drm_mode_copy()
>>>>    drm/sti: Use drm_mode_copy()
>>>>    drm: Use drm_mode_init() for on-stack modes
>>>>    drm: Use drm_mode_copy()
> 


-- 
With best wishes
Dmitry
