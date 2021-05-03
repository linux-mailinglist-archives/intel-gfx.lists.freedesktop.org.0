Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC37B371695
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 16:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FEE6E209;
	Mon,  3 May 2021 14:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8501C6E209
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 14:26:42 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id i3so6531553edt.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 07:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zcCx/5/6vazffrIbIw/WSYw/f7a7zzgeW6G8Sj4pGM0=;
 b=raQ8I9NeNgMDgAJEJ6ngIiHXb7K8vw3zZCLM/qsMvvdlQiU88RRAk6d3AExAgzLLk5
 38Rw8Ja2h2F5hd2edqnY/0FS8pOFqyI/ZjTtDq1CPwJOymTXk8BVAIA8MVHkcineJsiK
 ipTuk9izmjZwcJ+R6/IKKFNvRWEyM1O/c5w3QY5J24CP1p7V59YeS2EpeUwmcVx61SAW
 PmIWLKI6ghlTtoAubXhty+FgCYbzkyFmJ2682gXnf65UT0Uqbn7OXR8p52RRHrlTvA3z
 EmabRHB4SBLH+5cpPXxfgvQ027kLJIY4ReqtlOp4smgifWHi4GeZTYExlrmeOyIowtgm
 duvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zcCx/5/6vazffrIbIw/WSYw/f7a7zzgeW6G8Sj4pGM0=;
 b=oeReRNzPTOmJ6K/wfM40k/emiNtCR1tqUOQESHLSJ3myLajGgUo2Obod/cs350GNdP
 Bk+Z9ahfhs+vR19Krh7rFvjzMMG9GV71IT0ZHqeMeSnjeP0d9JKI0tcePK018PlCu5OP
 KNARLG10Zxy60jhTl2Yl4PzZhuUOQ+XpKT7P9RChRJZaXVlBX35KDrvOkAC0rNFf9fS5
 xdSelj2HUFLNxCAjhiVV2ERAd66/c2MfyhPWAxwx/uF90GmfKvdG0gn0oW+dQlys8lLM
 b8Bu/9LxhMx5yJNp86nIHMyKiqX0KylL6YNpPdAwDnklTJT6EhisI8Inw7aENmX8rosn
 QlEQ==
X-Gm-Message-State: AOAM531TKl3HKQfYUmbrmJZQjexxsFbfLEzHq9Z/9nZ9JbhpuXCFuJqp
 7NywBg0RXsryCmZvCtiZIwhW6hEme58HHue4
X-Google-Smtp-Source: ABdhPJzIED6KgQ67LwiZd8rdW6y/pLe4sIaBgrN4HeLtDK1L6rOP/3XccOBdQgAS4072/PV2p/fPQA==
X-Received: by 2002:a05:6402:309c:: with SMTP id
 de28mr20004057edb.191.1620052000998; 
 Mon, 03 May 2021 07:26:40 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.77])
 by smtp.googlemail.com with ESMTPSA id
 dk13sm12909363edb.34.2021.05.03.07.26.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 May 2021 07:26:40 -0700 (PDT)
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210501002853.4132009-1-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <714a6c54-cf33-a7fb-1483-70ca1ae0720d@gmail.com>
Date: Mon, 3 May 2021 17:26:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210501002853.4132009-1-imre.deak@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl+: Add the missing MC
 CCS/XYUV8888 format support
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 1.5.2021 3.28, Imre Deak wrote:
> Make sure that the XYUV8888 format is handled correctly when it's used
> with a MC_CCS modifier framebuffer. Besides this format not working, the
> driver will also return an incorrect error value when trying to use it,
> indicating that the second color plane in the framebuffer is set
> unexpectedly.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6280ba7f4c172..13ed9055918fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1263,6 +1263,9 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>   	{ .format = DRM_FORMAT_VYUY, .num_planes = 2,
>   	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>   	  .hsub = 2, .vsub = 1, .is_yuv = true },
> +	{ .format = DRM_FORMAT_XYUV8888, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .is_yuv = true },
>   	{ .format = DRM_FORMAT_NV12, .num_planes = 4,
>   	  .char_per_block = { 1, 2, 1, 1 }, .block_w = { 1, 1, 4, 4 }, .block_h = { 1, 1, 1, 1 },
>   	  .hsub = 2, .vsub = 2, .is_yuv = true },
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
