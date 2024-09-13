Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8DD978A69
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 23:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C5510EBD5;
	Fri, 13 Sep 2024 21:05:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="LcXvpDa5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1F310EDAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 21:05:12 +0000 (UTC)
Received: by mail-qt1-f174.google.com with SMTP id
 d75a77b69052e-4582fa01090so77761cf.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 14:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1726261511; x=1726866311;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=1BcM4lFpbGajeTbbT/mhOoL1c44seTsAjZcdL46W1OY=;
 b=LcXvpDa5M1MhA5uzajnpf5Uu9urBo5YSQ/ZS84X1hyA1mpssukTBo1rksHBFVoFY/L
 PO0RNjQFPuTRLddiytPMTONtoMrHPgTNYK7wobtbHNB8qSXfLRvhBm9AfGUfeyzamKUc
 au/2C+Ap8j1I6sV5sw8gCGXSGDZ8/yeGDD75o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726261511; x=1726866311;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1BcM4lFpbGajeTbbT/mhOoL1c44seTsAjZcdL46W1OY=;
 b=cbOWIVy/jLzKZ9N79dOCW5lUTiCAwryCjppjCUjq/w1+S8QXvYdhJRYVKcvQdxPxEp
 dAanGT/RXoNTYkogCA3vIRHVaq8/2hVDoMYC3UqdmPnHSEcHdtGW1JBZJqbVWO8dSfg8
 2XsG5SPEN58iT0Bd9x5ztNWiBYiS9+ggzBoMfh/lSUujJThiFhBbkhzHsqQhfJ3qYmLn
 Sfhsv/GuzKjdkpKJ2xLIibq51ZvSxf8AtnepEzpBtoHlHJEUMz/VcOTZDIU8rw6AHTjg
 ulDDvEp0Ms8C1qp+IGlfahxjE5sMy7PmuhZGbDEn9Q8SF+9YyLMHoHDIMxGKwdt4ySK/
 CHMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWkeVU4nrThm//LF086xw1RwNkVapl6yyYbyuVk5GvyMklWLtKtY0y3XUtSghVVTMmRww20hHQLsHw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxH4uGesVHIRpOFMJYMdjxcLPr5KiwTcumDMrSDmttPG7ETb14p
 xe6hHKwrSF1X1KyrfRG6fq0I2oIj/YX44bXa0sglrZ1RK5aDuX/mecmvgpr4zAAKRokbgDdxRMw
 udV+drxiYkxufyjnZtEdho08Qdh5jtnrVJic0
X-Google-Smtp-Source: AGHT+IFNRp9kjdF5lPJBN4P/u35hlTu6w+0QAcj6x9ZSyI0WuN2oPGU/zG4A4BHZew+CcsGHtVNi4SatFGwQfWsqIMc=
X-Received: by 2002:ac8:7e8f:0:b0:453:56d3:d155 with SMTP id
 d75a77b69052e-4586079ad25mr7773551cf.8.1726261511093; Fri, 13 Sep 2024
 14:05:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240913191428.1539653-1-javierm@redhat.com>
In-Reply-To: <20240913191428.1539653-1-javierm@redhat.com>
From: Julius Werner <jwerner@chromium.org>
Date: Fri, 13 Sep 2024 14:04:55 -0700
Message-ID: <CAODwPW8nEkc=x+BeSajfMVjXzET_0G3h-xFMnbUaE8Lgi-173Q@mail.gmail.com>
Subject: Re: [PATCH v2] firmware: coreboot: Don't register a pdev if
 screen_info data is present
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 Hugues Bruant <hugues.bruant@gmail.com>, Julius Werner <jwerner@chromium.org>, 
 Brian Norris <briannorris@chromium.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Borislav Petkov <bp@alien8.de>, Tzung-Bi Shih <tzungbi@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

> +       /*
> +        * On Coreboot systems, the advertised LB_TAG_FRAMEBUFFER entry
> +        * in the Coreboot table should only be used if the payload did
> +        * not pass a framebuffer information to the Linux kernel.

nit: The official brand spelling is "coreboot", always lowercase (even
at the start of a sentence). Not a big deal though.

Reviewed-by: Julius Werner <jwerner@chromium.org>
