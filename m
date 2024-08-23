Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9DA95D1C2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 17:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE5410EC51;
	Fri, 23 Aug 2024 15:40:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="jK/CLqdl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DDE10EC4E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 15:40:47 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-52f04b4abdcso2592188e87.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 08:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1724427645; x=1725032445; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QwzRr4x14GDGGx/Wa/l1KFYgNdRnrpk92o9I32BcD1M=;
 b=jK/CLqdliq6JD0HiXix1v7SJxNhay59PgU+ENGGzIUpqIVmUChi3LB6xKKlEecVGXt
 G9EU4CFGpxn9Zgy14sGIPIYrf1096DhEgUW4P/Hh4ztGmUrMIOMzB27olEc+dAbZwPGI
 n8ex1k7zyc4Tp18uiwTXm5IrWnt5huTKY0rg4El6AT+CmflavoUj25vG9V81oTU2Dy+q
 9MhPAKiyaIq4syLeDlIajRhfbEWKBaiKxZ1+7F76rqXnP10bGisa66nJm5smgIZrYnKs
 Ql/EE3yw58ksAwb7Mbatkns8WgidziLdzwQIb22VF5WAi/k6pblLVI9gVcpGL3oBj5fn
 hB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724427645; x=1725032445;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QwzRr4x14GDGGx/Wa/l1KFYgNdRnrpk92o9I32BcD1M=;
 b=LtIW7eQ3wvOZO/CJ/57T9WX4YefA328aE+vQjOjV2+A/RMwhecM/OALANa92Wbtzr1
 uDB6W8WTLNueITY4HzpYy2+o+dAiTzLVNZzlPI85rFE7SS+QZRhdT/xz+mB2pEYY1vCu
 emAbwzMc+788yM+3bZQVBIgyq8M0SKd6aAlPG5G45EcqzYG9hIErY+X3P32QssadbVEu
 qsRBCq3QjrHOsPI5cifEXdYOZxgAl+hMhoJqYMqgp41oervJ8qHgmf4FCUsf12c3exqL
 +HfLfkXUWxUIrBldKiuj9IkU/W6dcrAigNvquD9wZ/MfAjyyjpflVKWdDgHditzvvroP
 aOyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX04eMuO9WBsUrwwp89s2EFkOw5t+VNKX2jsLCgKeAzeUKn/3LVZBOtLPaOnW4U8px/LK/bLcfAUZs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+JIZrhUra06KlgUEOOT6qHfKkvL9lSdMWc2HnB19AYsGuapxA
 x5kU6ZeeCuaHSJgFgKLir84Kz0vZomUjfuxYnxN68l7O3yCYlFCLbsrXwdpxOKWSDsbkrR8BPaX
 5yEK55xbXYHLD51TDo9RWbPKGNlPVpANMWJkzzg==
X-Google-Smtp-Source: AGHT+IEuHaxZyQVY8GiHyyz26//af2rggIRdx0JBwtmCQ2Md+VVAhtl7TbQoqqnfxbLsaA2wMwGIyh7yHw85tqG1pcI=
X-Received: by 2002:a05:6512:3a8d:b0:52e:76e8:e18e with SMTP id
 2adb3069b0e04-5343882e2f7mr1898837e87.7.1724427645064; Fri, 23 Aug 2024
 08:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240731122311.1143153-1-tzimmermann@suse.de>
 <20240731122311.1143153-4-tzimmermann@suse.de>
In-Reply-To: <20240731122311.1143153-4-tzimmermann@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 17:40:34 +0200
Message-ID: <CACRpkdbOPGxBFq4FCOPLMfvaEJZiNHCocWQGZwC6fis+FOxjTg@mail.gmail.com>
Subject: Re: [PATCH 3/9] drm/panel: panel-novatak-nt35510: Use backlight power
 constants
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com, 
 daniel@ffwll.ch, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, Jul 31, 2024 at 2:23=E2=80=AFPM Thomas Zimmermann <tzimmermann@suse=
.de> wrote:

> Replace FB_BLANK_ constants with their counterparts from the
> backlight subsystem. The values are identical, so there's no
> change in functionality or semantics.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Jessica Zhang <quic_jesszhan@quicinc.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
