Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BCF9F74F9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 07:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEA010E0E5;
	Thu, 19 Dec 2024 06:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="Jxd2dosf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DAF10E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 06:54:28 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-725ef0397aeso364268b3a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 22:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1734591268; x=1735196068;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zEKcVdd4KbmwWmDsGjLP+aEpC5mLZQCnJF6Q1yfJv9A=;
 b=Jxd2dosfkTD/bbNiwL68BGRU+NcT3b8ByZRAJdnBMCjTcRAOh3PdcYj924uqsnXS86
 wy64iWaqwG2iiQEsZTgw176Zcep1wSTwQzprN+0Vq79nD15z7oZpIskbl3NZnUvFTHl4
 TwTJ7GLqRascL0KHHl55XmXtyUu5O5dDps8Z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734591268; x=1735196068;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zEKcVdd4KbmwWmDsGjLP+aEpC5mLZQCnJF6Q1yfJv9A=;
 b=H+pwMwkN2SLl65dxHGOLqOaiCaHWeki2DBMF04rk9s8l1DCRSJyu5mogTj1fDvY5w0
 ADZEfTsgDa/MW45S6v7inG7UtZeN7oEY8jTo1w/iaWeFibV7wfJJjlExiQcv8PFC15Cg
 dlAxpqAS0ZqM6ooKiSL7RXIc8a+YKseAIpFsGCXcsDTNkT9Ik+LZwkseHEsvJ4sPHWeh
 KlBPBAzL+O69VqiSvPDVykHHW54AOuXXdHR91lqSOnPtHTrsaHAzs2wVzJGgpMm051E/
 OoJY0VKFXNjd6p5kCJVjMTb46yyasn1yEGgtlCC00RW8cXlJ96n9NBtGgl516irRwhdm
 yYOA==
X-Gm-Message-State: AOJu0YzfBYAm5FAD5YRmbUV+ZU8nXjxoEU6lHgUdoVS7+jgfcfKSGggP
 7dV7FubXxC98ECB2jmmeQ6TzILviVk0iberRMNiAtaXb0xofs3EDHCqltRzhhw==
X-Gm-Gg: ASbGncsUYe+Wh0u373wuXi67dn0+f2KlKEqLlIZYs4MFcUnwkqBGdjV+rVsDeKtpjvZ
 Y+KHujvLi4mOEsqqgphm0hjLR7VLccdfFMtNC/4szOp89u/p7vwSQoxX6/0+vfWzhvFnZRRlie6
 uJD8HCG3MJptDP3MtRzUB5QaD13+pIqG5RxVTy25Tt8WcakzoDAoOQl81b3kBkI2DOXCeWwTHLt
 37ldvXC+1xxIBssQa7W9lyDSPp7e6osZV0szqbuY0Mun3MEXMb2vuijRSaG
X-Google-Smtp-Source: AGHT+IGp1bgWDdBZyjPx9UP5f7CVAYTbFI9goJXjvIs5VAvx++xgTl9pFoxE4ySO3MZXIDIHNRrvhg==
X-Received: by 2002:a05:6a21:998c:b0:1e1:dd97:7881 with SMTP id
 adf61e73a8af0-1e5b482de76mr9093470637.23.1734591267781; 
 Wed, 18 Dec 2024 22:54:27 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:5479:11c3:e91d:de6b])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-842dc604e58sm499505a12.60.2024.12.18.22.54.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2024 22:54:27 -0800 (PST)
Date: Thu, 19 Dec 2024 15:54:23 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 0/6] drm/i915/display: handle hdmi connector init
 failures, and no HDMI/DP cases
Message-ID: <etoz2yofobgqkl4ke2mj4mclnhg3fhascav4zsyentjbvnehxp@ziuc65apm6ih>
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
> Another round of [1], adding patch 1 and slightly modifying patch 4.
> 
> There are cases where we want to gracefully handle but *not* propagate
> errors from HDMI connector init, because we don't want to fail the
> entire DDI init, as the DP could still be functional.

Tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
