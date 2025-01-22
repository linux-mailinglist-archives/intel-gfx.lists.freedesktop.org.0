Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B69CA198CC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 19:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DE110E328;
	Wed, 22 Jan 2025 18:53:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="f2+99VQ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E45410E73F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 18:52:33 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-303548a933aso118771fa.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 10:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1737571952; x=1738176752; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=47EfM4ewVZOR1hXBHkBwrdrA6zHbkcECh3NcS2frWc4=;
 b=f2+99VQ/GZwDonNNX8azHpxLShMX5qxhTL7Is4fuByoOd9fhpkPgJxoiW8XA1jfgd7
 AaKmqeZxSR566gaDtPwhvLn5dir+0wVzK6xBKWUMiC4EhZRNcYERp+D5Zhf57ESrT2ar
 jzq1WfNH8LYZTPbHiNtcQwP6wwz7XkP+7P9rqYTkFSMDggijKGW4bz6zRbZXZyR3FeJr
 muTdcxxodprFOM/59WRAdH5eEvZstTID2GkPWd8JJHj+H3KbI3wsydm3iemWLOuYYAlV
 /Bkfylb+n91bJaMoqHloVj9zb5ENGWrX3kufJyrL0JneakUqNJz0xPicYlx9rkbXZjMP
 iAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737571952; x=1738176752;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=47EfM4ewVZOR1hXBHkBwrdrA6zHbkcECh3NcS2frWc4=;
 b=MnTvuyUFi+mqZYplQ9E1K5EWTgWYm4O5Jui7rhAvyq3N3WokEtaEJKhFFTmcK24mHY
 lGW0yOAcXN8HnOpByCDBqylg/nvVth56vYp+URiqd4YO110U8lfTX5EJfMgOau6K0IG+
 MZIMXaLiUb2oavJ7/Di9daLorMaImx82qW0L5i3WGttbGK3nvm3T7Tc1vuF9mb6Fc5pX
 MGHkrzX9h9n2Swm2zOk1W01wUuxHLqSc8ovY13o4hXcWHaFmm9gMnIAADyN+5OntJaYh
 mA+P3htNss46n3hp70H2vc/B46XozVJHiW1YUPouHvLzyfqK6cRujWoeMTiK9uHWtqar
 vyoQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWknsxIqiRpu4betwwVVuGetyRq5rsXit8VlwnlqZWJCQUT8+9+m09x7sZoJkh05PS96wuqYKzrMbA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy8MyGYgBTaoVKM/v7wBvqszNMCLZ7Qma9Kv24tylXDV15N0iPb
 zOhz06+udx+OBi/kwIyu5Ue9/vjpU3lum/cf7fxgwwBT5Nlkx64YHTzsf3g5mBY=
X-Gm-Gg: ASbGncuXzhP6D6uclBe4fJFzJYFMFKxbgocFDpgePqXbGoWrHDctuUiEmc+goVghHek
 9iWuC1e8ww8xMs+YZ+t0UaQGwkOSkb0SmuJIqpXQZ4IUIFRgNLiQFyT1rLrzQU+dagQT0AjU0oQ
 4q5hgkeTqG6c1WI0eJ1bq4mTjAgATy66S4eytqDdZSXVFTF9gnNNC7HSXIkr3hasJDfEjdw/EtT
 O4dqIuRUqX1UMt9RdMMpGPiuEYKHPF5Y4tOAvFD7ZcUcHSVqyKvJOOpBbeQeuNdG7t6liftIzVR
 mUUQd0keg5ywv39nzOBUQsVsXd0GZWUFAJAjkkKtfySJtFJ3yg==
X-Google-Smtp-Source: AGHT+IE3EDm7wv4jCkNZdaiwQQ2AGo8JcXsq1mg0NjOa/Kt+krzSnrpzbntaHjQxbskhwASEZ3Ro9A==
X-Received: by 2002:a2e:be21:0:b0:302:1dd5:6b34 with SMTP id
 38308e7fff4ca-3072cb1f983mr80371581fa.29.1737571951564; 
 Wed, 22 Jan 2025 10:52:31 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3072a27218asm27018491fa.0.2025.01.22.10.52.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2025 10:52:30 -0800 (PST)
Date: Wed, 22 Jan 2025 20:52:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, jani.nikula@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH 2/3] drm/display/dp: Define function to setup Extended
 wake time
Message-ID: <dlmz7fn3ln7qcnb5ehae3nuzsauxunp4gqibuqwsqmjwrxfcdr@rrtybfduszrq>
References: <20250122053358.1545039-1-suraj.kandpal@intel.com>
 <20250122053358.1545039-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122053358.1545039-3-suraj.kandpal@intel.com>
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

On Wed, Jan 22, 2025 at 11:03:57AM +0530, Suraj Kandpal wrote:
> Extended wake timeout request helps to give additional
> time by reading the DPCD register through which sink requests the
> minimal amount of time required to wake the sink up.
> Source  device shall keep retying the AUX tansaction till the
> extended timeout that is being granted for LTTPRs from the
> sink device.
> 
> --v2
> -Add documentation [Dmitry]
> 
> Spec: DP v2.1 Section 3.6.12.3
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 58 +++++++++++++++++++++++++
>  include/drm/display/drm_dp_helper.h     |  1 +
>  2 files changed, 59 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thank you!

-- 
With best wishes
Dmitry
