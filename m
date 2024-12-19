Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39239F7535
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 08:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5A910E2D1;
	Thu, 19 Dec 2024 07:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="f+6vdB7i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9A110E2D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 07:14:35 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 98e67ed59e1d1-2f441791e40so360135a91.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 23:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1734592474; x=1735197274;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=v4lPK9bkv3J04cn4MggXL3Z3QK+CpXI39O0WQTMymiE=;
 b=f+6vdB7i/CioYl7OoMFTMzJHQl5/8VZM3gFeIMRO6FoKeuED4W5wSoTrCZORnbuKlJ
 meYhm97MuNHbe6e7rsTG4+G7YcpLg9RMXjy8XAEAxH9l1EQ+nLg0d41ceYDr0b+PXbc9
 XdD39i1tXk5cVBLCuRdPFbpYj9vId/1GPD/QU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734592474; x=1735197274;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v4lPK9bkv3J04cn4MggXL3Z3QK+CpXI39O0WQTMymiE=;
 b=mBNcyclvJ0j1BEXzAlW7wGfg4Rz1Zq4YItJ7BUlB64cTcI9vB3hF39W7zhiITtML1q
 t4V3bkWE/y9Q7CN0dYgU1WvGbcPAqDZTd5KxGp51VeEaHNmtBkjvo65t88LBJ9wsvETS
 GLQ4u3Say0Or04SVQM+cS8ut+zSlV/82FEsD029pHvbjvn1MLWmTilolA4qQNskzu8Y7
 s7lu07WhSie9Z9GHLNvl/lxiB117SwaQl3Is2NY6qQ+MCWl0cn+9GEaKB6KJJiCyJg3d
 vHshZkAYzbq0g+zVoqDDb7MV246/b+yh+288xKIDhLl4HfsJ1f+BtvcaemtOSwZEOgDq
 sWCw==
X-Gm-Message-State: AOJu0Yz+79S9WXa/HXKdJj9m2pzt8Wxqbfu0nYRCCmG8toBeQS/ZibUp
 LWVO+dQlGpe+Jst3HmC69GKL7NGjjouuGaJvZ/6H+kl8jSSVy9RiitunC1qY3A==
X-Gm-Gg: ASbGnctxa/+PbgXWnFQLqIIFrHEhDCm/6G5M9OolhEdXTHUE72X0/R0qvt9dnZfE9VG
 JAm9ty+bh0LpLptVCwkNkVGWAST8PDaQlJ7hM5enGj0tOf3g4fCqSI2nkyQhHthzuQpE/GNz+zp
 j1TWUTWWfduMe54V6K42lNQcMKJumyC6cfL03yeiab6tAhpe2q3XTGVtpp4k3JR/7kZE2SY7Pox
 eqhGlrszPUhdwyEyKuf70fRX2CnSNHcqieGtyJH5VPwJqwh4QUMDgoJ8wzr
X-Google-Smtp-Source: AGHT+IHDIMb+Np34DSWneQrxUgEvqb+pJ10f4Lc4n+fS0VeX9d+U7qhRBlVsF5/9BAB0KhF6U7pxVA==
X-Received: by 2002:a17:90b:540f:b0:2ee:c9b6:4c42 with SMTP id
 98e67ed59e1d1-2f2e91d9395mr9815404a91.16.1734592474560; 
 Wed, 18 Dec 2024 23:14:34 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:5479:11c3:e91d:de6b])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f2ee06dd77sm2824442a91.33.2024.12.18.23.14.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2024 23:14:34 -0800 (PST)
Date: Thu, 19 Dec 2024 16:14:29 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 0/6] drm/i915/display: handle hdmi connector init
 failures, and no HDMI/DP cases
Message-ID: <gmdwfv3u7aq4ndsggj6pakptcjfhzu6hddt6yyf3tpyy6c44ok@rvhexe2wfqhf>
References: <cover.1734099220.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1734099220.git.jani.nikula@intel.com>
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

On (24/12/13 16:15), Jani Nikula wrote:
> Jani Nikula (6):
>   drm/i915/ddi: change intel_ddi_init_{dp,hdmi}_connector() return type
>   drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
>   drm/i915/hdmi: add error handling in g4x_hdmi_init()
>   drm/i915/ddi: gracefully handle errors from
>     intel_ddi_init_hdmi_connector()
>   drm/i915/display: add intel_encoder_is_hdmi()
>   drm/i915/ddi: only call shutdown hooks for valid encoders

Would it make sense to Cc stable on these?
