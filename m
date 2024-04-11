Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE89E8A1890
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 17:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B22B10F18F;
	Thu, 11 Apr 2024 15:25:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="xo9altXM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903DD10F18D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 15:25:39 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-56e2ac1c16aso8414200a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 08:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712849138; x=1713453938; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CABfqMACNUngHNLxS+WM0hHJ1yaxWLelGbJxYjHioD0=;
 b=xo9altXMP0tNJ9ScwNa+s0TWBO/V6elCReALXrxHUMmha7/tsBzNVdq2WVLT8MN+8z
 6g63mH27M9VeNyAdzXsUsdTFBd90fSeDcDC/aWwke4B2+INWkxQa3FYcrEacPHWh0cPo
 RGhyrqz2dUPDJjp+2VHtH1gBcCxMEBFx6lea6skYTuxEIqNkOM8PmZ48igCnV9ZVLX7R
 KDDx2ioiezyjbtBBYd3eoaE8O4aMsiXhgA8thaTC0QR9NWnBaPn5WVVzQhG8jbbMapNb
 SCQv2g6ijN4ETQQjpwfq6+IVAMtm2GssoY6TCS6OEqprlLfylpe5rKVj04ikuPi9vLxo
 7eVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712849138; x=1713453938;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CABfqMACNUngHNLxS+WM0hHJ1yaxWLelGbJxYjHioD0=;
 b=HT4Kb7F3oAaksyvj060m3BGf4Xyk3BbZSo0c0nVOn6EHhkWieRi9u0tlBBOCsj5wUD
 Z4Dad9pjsAztf/6eF3jxVur9eYjNkpqwPqUOuiLZOzUfyacRhjjOx5XLPuvxSw44qFJ3
 nDl+9+H/rj3I8ffAlzAe3N+rU3MD7SUO7vMoBFi63PZB/BU/q+NFUtdvwSj56q2oQsa8
 /Qmk/fdUVlA6H/vg5R1gIOhwC8KQTQtR/s5BlXcE2V1cFWtd/8c/a6tnp0HTmzu8g+Ai
 182emUC5BxsT7WoANW/YRVencbtxQn0C19Oe8D8W3F+P6LxqkfeZJZaEVc30I4jufiMM
 Nx9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYlZBZYUGGKNNjd6Mp1Y6qdHZEx5uOB3a7zjlDWGBICdYdLJ+OGyOMrO6pLKSwP/pD2UR7bnw+v8t52gqY8QtvJkw0tFOiDDCWExZnl5Tf
X-Gm-Message-State: AOJu0YwCE1PmE3DkYmIgW4yyTqpQ1/PKOrNaCNd42LnEB3R+CqKmTRjp
 2ffpVq4n2taKUUZ1Sk5vJY7ve+srmRrtMUvdoBDj0d1RJf7EUazSLxQxj7smwtw=
X-Google-Smtp-Source: AGHT+IEEewk7llSPmgrxe/7mA2rySV/OUDonUpYE2d0l2M0z39pI2HKiyjdOd8AbAw/PCbmxmW//Bg==
X-Received: by 2002:a17:906:4f06:b0:a52:3d1:6769 with SMTP id
 t6-20020a1709064f0600b00a5203d16769mr44591eju.14.1712849137563; 
 Thu, 11 Apr 2024 08:25:37 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 r3-20020a170906350300b00a522c69f28asm225076eja.216.2024.04.11.08.25.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Apr 2024 08:25:36 -0700 (PDT)
Date: Thu, 11 Apr 2024 18:25:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Thorsten Blum <thorsten.blum@toblux.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 speakup@linux-speakup.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-afs@lists.infradead.org, ecryptfs@vger.kernel.org,
 netfs@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 linux-unionfs@vger.kernel.org, linux-arch@vger.kernel.org,
 io-uring@vger.kernel.org, cocci@inria.fr, linux-perf-users@vger.kernel.org
Subject: Re: [PATCH] treewide: Fix common grammar mistake "the the"
Message-ID: <0bd7ccc2-4d8c-455b-a6c2-972ebe1fcb08@moroto.mountain>
References: <20240411150437.496153-4-thorsten.blum@toblux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240411150437.496153-4-thorsten.blum@toblux.com>
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

On Thu, Apr 11, 2024 at 05:04:40PM +0200, Thorsten Blum wrote:
> Use `find . -type f -exec sed -i 's/\<the the\>/the/g' {} +` to find all
> occurrences of "the the" and replace them with a single "the".
> 
> Changes only comments and documentation - no code changes.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@toblux.com>
> ---

It's tricky to know which tree a patch like this would go through.  We
used to have a trivial tree for this stuff but I guess that didn't work.
It's possible that it could go through linux-doc, but probably it has to
go as a set of patches through each of the trees in the CC list.

regards,
dan carpenter

