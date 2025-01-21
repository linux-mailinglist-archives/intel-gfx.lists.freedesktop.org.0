Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BBBA17B4C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 11:21:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C68A10E53C;
	Tue, 21 Jan 2025 10:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="OwGrH7JW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AC3610E54C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 10:21:55 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-304d9a1f198so46000401fa.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 02:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1737454854; x=1738059654; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=I2nFbxWQBsokcGgY7hPWhlAFzM7Qmu0ovahyH14nkRc=;
 b=OwGrH7JWiyo0Abv9O457FxbDRgYk8TlO/UDjF7CjNDRJCcS7XG4ZO4klWGG4Dl7anE
 Ma4eQzMLzOc9qNEYl6wa/hBlSudX4sOMl0Yl6OJRhE6cmw4KtfFNAkfgw9EfFUDg3U4W
 N6aSHZrXGk6Vpsv+xJBeRAAedZNxBmG2kMpXGLETWxLpsdU6csPY41PRW5IX7MXANMe+
 PpvjD6XsS9KvkeBZHz8vHPF5LqrahCGZ0YUHF9hiGHmXiK4RuSRkdX1I5fgEkVQ0dwBq
 4PbHSDHcNspLXuNfQSoIlBelXHpH1M6WVCJPD4yNr8Q39lV3VTMbstqmUKuxnxD2S3+W
 wphw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737454854; x=1738059654;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I2nFbxWQBsokcGgY7hPWhlAFzM7Qmu0ovahyH14nkRc=;
 b=UVAVwNiwm9B69GIJFw5ov8a/C3gQ1tbOjXi61Kaugg5UdpgKDj/AbX/IKAjcl3HhHI
 XhKNJ4j42eYVV/J/T5kr1yCcZWy8F8G26QO8LPfMAStSeYjEBsS1uNbBXp/CrexB1A8R
 k8B4m/dmC/5P4IzTI0zLyc9PK6IX8iogFaWyd6/2YDjA4HOWyb8xA+20AEgHu0/4Pimo
 9nIvEDiiMOnj3riM+RVQqAyIy8FJ3isiy++NQrqN1ARANtjMS14Av0/26peVdxXmlXzv
 rYDdEL+giLpM5T9+Dxlcr3t0YuH36QrpvufxeyN9yPC7/iqT4IsTQ9aL8vekE74rGlee
 Cx2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/9pXN2YfIa5/iE37hSHnSZ7byc/TquaoqTHwwBrIJFPNBGunQYCFzXrhIOouMRRwUDoKOpcnpJk4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx1tBhg04ixsIIbiKovDwL37MQ2RUbqsr5tFELNlXBT29DFNFKs
 LJSDI4uyzQPypOfiU5LLtTxZZ7niLz3r10zlDQbjS7fEfl77Fvhigixw4quabXs=
X-Gm-Gg: ASbGnctq5U2kVxtcpnW2n0jJjZd0corzUaXbPzUwpSGkh3Ngjs/0IUNXPddiK8zTG9g
 pzlEiq40FOomF76gqpSX59w9WdzRtqofdWm7bIPwz89GR6M7KlsBwVogrXlujLoUKHPmTEJVIA9
 ZUYgVjuRCcMTqR/LXQMXbZrXi40nxrDx6wLS+Zv4HhBsLL7MpSr1YN3ntf/CwV0L39sEEg+r4xM
 AaQW7uezGnwtCfhH4qlzIBW0gVZ7TsiAXRTZSAOj/mZVw4X87C5oInw9givCeb8H676P3HTmXL+
 nHjETpDn9cE7ESUQU+j8dgdYt5CDln2mKaQvkcqOeYNPRm4kTA==
X-Google-Smtp-Source: AGHT+IHjV5PDMcp54JhabBC1f0IqVkNBpOfsnJgpDLlax67qDrtQimC17ffsjCIjglRpaN2NGP62Uw==
X-Received: by 2002:a05:651c:896:b0:302:1b18:2bfe with SMTP id
 38308e7fff4ca-3072cb04523mr66011901fa.25.1737454854232; 
 Tue, 21 Jan 2025 02:20:54 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3072a35b893sm20821891fa.63.2025.01.21.02.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2025 02:20:52 -0800 (PST)
Date: Tue, 21 Jan 2025 12:20:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, jani.nikula@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH 2/3] drm/display/dp: Define function to setup Extended
 wake time
Message-ID: <czglpcoij5po45xhidmpmeplcqbu6rrmjsipbng5p2a6tygi7a@cfw2qbxe3zqa>
References: <20250121060522.1296166-1-suraj.kandpal@intel.com>
 <20250121060522.1296166-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250121060522.1296166-3-suraj.kandpal@intel.com>
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

On Tue, Jan 21, 2025 at 11:35:21AM +0530, Suraj Kandpal wrote:
> Extended wake timeout request helps to give additional
> time by reading the DPCD register through which sink requests the
> minimal amount of time required to wake the sink up.
> Source  device shall keep retying the AUX tansaction till the
> extended timeout that is being granted for LTTPRs from the
> sink device.
> 
> Spec: DP v2.1 Section 3.6.12.3
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 47 +++++++++++++++++++++++++
>  include/drm/display/drm_dp_helper.h     |  1 +
>  2 files changed, 48 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index da3c8521a7fa..9eae5ee85b13 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -459,6 +459,53 @@ void drm_dp_lttpr_link_train_channel_eq_delay(const struct drm_dp_aux *aux,
>  }
>  EXPORT_SYMBOL(drm_dp_lttpr_link_train_channel_eq_delay);
>  

Please provide kernel doc for this function.

> +void drm_dp_lttpr_wake_timeout_setup(struct drm_dp_aux *aux, bool transparent_mode)
> +{
> +	u8 val = 1;
> +	int ret;
> +

-- 
With best wishes
Dmitry
