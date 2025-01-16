Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBECA130D8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 02:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CEC10E864;
	Thu, 16 Jan 2025 01:38:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="SJvt+P+S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ED8710E553
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 01:38:17 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id
 38308e7fff4ca-30613037309so4187261fa.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 17:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736991435; x=1737596235; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=X6JVNMptwqfmUo8tWpx6+M2S/BUGYVkQzk4LkYjLkxM=;
 b=SJvt+P+SRXK+IC19Mc6E13TJm/1c8gLeLI+jMd9vt8NGHIiqBaTBEANSQnVrE6Ddnw
 u6E2rlGa5uqznhPxUiSQDbY0e0FK7f0FRs322lGno8daWa7vo/NCpFyVjCc10OocOASi
 p6nmk6GyPdMc7i7fH//bkVNGfM3XS/mv3rA56cp2egYeQ8y6W5x8tV4FLy5aQYJNTRRY
 7Lkgowe2c9L3UMp6/WJm3MfTK867RuOZ7ngy6fnXaMmJQaU0ZdPyhO2djled8fGmb6MK
 /bltIaJ/TNUJ+7DYrIAKx6c9fGZu+kPQ+eXLf/yuBURwpmlRhsntD0xy1KzU/2OcbY3E
 NslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736991435; x=1737596235;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X6JVNMptwqfmUo8tWpx6+M2S/BUGYVkQzk4LkYjLkxM=;
 b=aBZRT6eZ6QlWdhrGLyI/E2mCgXcSuWhjvm9B86RmK8hq7BCiXFNBwnWl826ig/sT3n
 JQFoz7IrAFBip1OZfD3BcRh6662WhYWmP/Nx+z2UQ0AXDjh16W0LH4gG4/2fp6zm73H7
 MGURRSt1oJfBnLnsbXtW+R636kzD47FiU7dRXS9K+p8vuphepxboFfVMrpewUbStNQV8
 BCVyc1/m4iM9s+wynmyuYdScND4Jk+jbp4klFqpCq5LoqPph7RhmcG2LtGnTJaxWLuaa
 JgK61zsKY7xUq1QKc9Knaz90fGlf/ViPW4Wi/rOo7LtOssRykonopfkuTJ98CqwB5Kix
 MhyA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNvFy+/iDu61mmHfPrcJgJIX3ifntZlFMyZkir/XQuP7V19ikTjWjvaOxT1Oa8GmotELi2obo8NIQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz7hLyVVV2b2T9Hd+9n+MjWK1JuK+rMHxCzPVKonPsiGisbUXLN
 D+ae9Q0+M9YiJF5ELMbOkL4jQUR707dIEd3htcNVhfmA8kiFMYrfM3k5LFd2mwQ=
X-Gm-Gg: ASbGnct2O9oYNNm1pcbhY7QRvayoyoSfPx01RUho/UH78BVYqe+WGWT1Vcp9wW4WGH1
 2Kagm2PjU7SGLmkMIT3Q4dZThfLGp9jZX6+whFe4hrbQz0nbw7MR2DezpAyGMmC3R3BP6vuII5S
 0FHzroG9Yun2mzGGSdO8u4v+jPVElLupGTar9qm+ZKEYVqa0yAD9Jhc3FfqHItIZKh1jRnGeFlO
 IfgtSHNARi/cZ0LVhYtwKX7nfLVSoUNxm3/s930oafpLUsMHJw52uFrumSLJgarE9YSE0nkgxeC
 /NVgE+fF0pPPN6AbElfuoiVpz1GcToWcEq1y
X-Google-Smtp-Source: AGHT+IGjfYuq+KNLYqRLVLFN8rZrdy6vBacFgOKSllEvZrfO/DkBY4VTnS4zf9+dbRULyoWcj+VAog==
X-Received: by 2002:a05:651c:556:b0:304:4e03:f9c7 with SMTP id
 38308e7fff4ca-305f463bbcdmr91695291fa.31.1736991435543; 
 Wed, 15 Jan 2025 17:37:15 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-305ff0e712dsm23490811fa.51.2025.01.15.17.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2025 17:37:14 -0800 (PST)
Date: Thu, 16 Jan 2025 03:37:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com, uma.shankar@intel.com,
 Importedfromf20241218-dpst-v7-0-81bfe7d08c2d@intel.com,
 20240705091333.328322-1-mohammed.thasleem@intel.com
Subject: Re: [PATCH v7 07/14] drm/xe: Add histogram support to Xe builds
Message-ID: <45k46w3ir4ytz3eqm5sapbqdzgfbkd7zyy5gl26a4ietlc32u2@c7brxhuuitru>
References: <20250110-dpst-v7-0-605cb0271162@intel.com>
 <20250110-dpst-v7-7-605cb0271162@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110-dpst-v7-7-605cb0271162@intel.com>
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

On Fri, Jan 10, 2025 at 01:15:35AM +0530, Arun R Murthy wrote:
> Histogram added as part of i915/display driver. Adding the same for xe
> as well.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Is building of the Xe driver broken between the previous commit and this
one? In such a case, it needs to be squashed into the previous commit.

> ---
>  drivers/gpu/drm/xe/Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 5c97ad6ed7385616ecce3340ec74580f53a213e3..984def6077efb9b3fcedb2065414173691427e4a 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -247,6 +247,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_hdcp.o \
>  	i915-display/intel_hdcp_gsc_message.o \
>  	i915-display/intel_hdmi.o \
> +	i915-display/intel_histogram.o \
>  	i915-display/intel_hotplug.o \
>  	i915-display/intel_hotplug_irq.o \
>  	i915-display/intel_hti.o \
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry
