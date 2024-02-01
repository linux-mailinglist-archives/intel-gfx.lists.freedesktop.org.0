Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5B7845ABA
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 15:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FBC10EEE3;
	Thu,  1 Feb 2024 14:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="IxIMFwPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0E6210EEE5
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 14:58:59 +0000 (UTC)
Received: by mail-ua1-f49.google.com with SMTP id
 a1e0cc1a2514c-7d2dee968a5so333285241.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Feb 2024 06:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706799538; x=1707404338;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=dcfSreLjudsgAcLBxrHGQStk7J9Wu7zu9S6tcciGw3s=;
 b=IxIMFwPR9t5wfL1nkhIJdo4Ml3FlaZa9+XjbiALBKaGzBWZE4HpbsJUuEIK79PxO4U
 2R/Yqy7G6FjNIrosKo7yAi2BC+X5/Y5ZKjTNmZbsdLksFsRp3jIgCuZY243yf1g800pS
 jqccsyGTfUy6goZpByy6R+cc1Ukhh/TxcPbhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706799538; x=1707404338;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dcfSreLjudsgAcLBxrHGQStk7J9Wu7zu9S6tcciGw3s=;
 b=p5ONWyvxWgk3nnmxhjJHP6wsfWQGcCFuS8/+4+CwK/Q7cCSrWoTTPRDADAnzHrNqpV
 hQ88EZDFMxHF2VEkJck4tnnYfJ2vGUiF+0p2/Qga6HRGWoNJHLmSBHE9okZMxx21UWjX
 fbMxkRgwbAO8WTnnbLG7Q/lZSAelHZk6sBwAG3KYZQkbQZtUsQuEmXuI+1qyCcJDUHvo
 ub35vYtxeVplCSZhuIkNU88tiHeHpfxUxlVUceg0exWU0s6HjB+5FXtpp+AXMVZu+1wi
 SqG2yiv2kyr5rnwFXaDUTSqEaGx9dd0Jsyxk8FN5z+pzlHwK5OUPvTarEXtYR8cLC48s
 Xm0w==
X-Gm-Message-State: AOJu0YwLin5IzlQCjbfILaVLDuVGbKTKMabLydSu7Sqr1wtfsM8hBtxq
 pIOTTO6JQKRo99sBYC8l6adRj8j7ojBH+TDaT0BiiiJv5rBLQG8zjxuGprJQ0w==
X-Google-Smtp-Source: AGHT+IGfRebD1jMZUzsq/IURTxlogmA9+3l4gxAb/wYU5kP1jo50VPR8BUXJHNfQJmkijeiOyQRyXg==
X-Received: by 2002:a05:6102:38ca:b0:46c:fb56:da14 with SMTP id
 k10-20020a05610238ca00b0046cfb56da14mr317906vst.27.1706799538453; 
 Thu, 01 Feb 2024 06:58:58 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCUDNzybqhiDIFAWMTkOAJvtYTw95gE7f5EUK05c5fuaU1RHEYRz0Oo+LLeYfbUdv1T2N9Vla3ZfQWIoAtySjjrTHFhs7XlpXejn9TDQ+/ncVCGhPSteXf4G1MuAuAhyFTpey5p4PwL9puHamPSizEF80eNhITAEtnq3GZ6o+7xE6CTkvLcrOPQAFZDzA4A/fw70N4rOGFu2zyjkprAa2EpMWN81+lq9muFAuPJrMWpEPygDFi5muz642IdrxQ+4SNj9LxvdfDMbpmL9k4o9kPUIUJFcErK+gWHAUdp8xF6688tQ1Q/keqGMPjG5gF0P1OXLIhgElJ1pwFMyTiYeI9x1ApXMScFV9/RWDz0zF9xmv3mvz29jgZs+gCPDPrYT6aQVPTP+ISt8dhInVVafxHYlhDrBc6TZWqgLByjzN9YAcA==
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 dh14-20020ad458ce000000b0068c81299a2bsm242562qvb.15.2024.02.01.06.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Feb 2024 06:58:58 -0800 (PST)
Date: Thu, 1 Feb 2024 14:58:56 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni =?utf-8?B?SMO2Z2FuZGVy?= <jouni.hogander@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Subrata Banik <subratabanik@google.com>,
 Manasi Navare <navaremanasi@chromium.org>,
 Drew Davenport <ddavenport@chromium.org>,
 Sean Paul <seanpaul@chromium.org>,
 Marcin Wojtas <mwojtas@chromium.org>, khaled.almahallawy@intel.com,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Include debugfs.h in
 intel_display_debugfs_params.c
Message-ID: <ZbuxsF7ubmL6lzdR@google.com>
References: <20240131204658.795278-1-pazz@chromium.org>
 <87o7d0h73r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7d0h73r.fsf@intel.com>
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

On Thu, Feb 01, 2024 at 11:22:16AM +0200, Jani Nikula wrote:
> On Wed, 31 Jan 2024, Paz Zcharya <pazz@chromium.org> wrote:
> > Commit 8015bee0bfec ("drm/i915/display: Add framework to add parameters
> > specific to display") added the file intel_display_debugfs_params.c,
> > which calls the functions "debugfs_create_{bool, ulong, str}" -- all of
> > which are defined in <linux/debugfs.h>. The missing inclusion of this
> > header file is breaking the ChromeOS build -- add an explicit include
> > to fix that.
> >
> 
> Thanks for the patch, apparently in our configs some paths lead to
> debugfs.h. Just goes on to show how interdependent the kernel headers
> are.
> 
> Out of curiousity, what value do you have for CONFIG_DEBUG_FS kconfig?
> 
> Fixes: 8015bee0bfec ("drm/i915/display: Add framework to add parameters specific to display")
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> BR,
> Jani.
> 
Thank you so much for the super prompt reply!

In ChromeOS the value is CONFIG_DEBUG_FS=y.

Best,
Paz
> 
> > Signed-off-by: Paz Zcharya <pazz@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_debugfs_params.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> > index b7e68eb62452..f35718748555 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> > @@ -3,6 +3,7 @@
> >   * Copyright © 2023 Intel Corporation
> >   */
> >  
> > +#include <linux/debugfs.h>
> >  #include <linux/kernel.h>
> >  
> >  #include <drm/drm_drv.h>
> 
> -- 
> Jani Nikula, Intel
