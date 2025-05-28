Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1C4AC6E93
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 18:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E149810E66E;
	Wed, 28 May 2025 16:59:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=yngvason.is header.i=@yngvason.is header.b="D5Lfax8B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
 [209.85.128.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F59E10E685
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 May 2025 16:58:54 +0000 (UTC)
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-70e3980757bso676017b3.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 May 2025 09:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1748451533; x=1749056333; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+DlT5K3RW1W1q0E9EAUPVxYzg49krvWWlXM2xIh54XM=;
 b=D5Lfax8BZ7CXfc9JTwRBE5+DfmtMys2wtFCzatvkATzG7+X/5eoM1o3bno74Sig8Gn
 xTCLcH2oBPcEbqOolbFJDRoAUxOY1Ahq82b39rVkX/FEirD1DRnvfjr4t4EBYy5HsTqk
 OyBs3KFnynpSFrkqGHD/Ragk8WUIC9PK7b2mY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748451533; x=1749056333;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+DlT5K3RW1W1q0E9EAUPVxYzg49krvWWlXM2xIh54XM=;
 b=YZQUKFAzzJc/QPiIBLM73Td2h13hc5ycLe5pCZuztdsO7QBQyiR5Pg4PWDBcEEzE5N
 /p+HYax/++dWc7FMwBL7s1Ibr96iAps//oyq958UToHOkTXTuAwwa19M64gWNvROr43X
 3jZ0OtJEF0ibun7wnCU8IhfD8g86iUDQxcMKdPWUKwi0Fvdsg4x0pLYIqJsUYXDgNUyf
 A/7yTjbSBw3H4pGVAGKknsQCI3INQ1HyZUGR2lnoNSsL4Ujh3ohaHn4VwrsPz8VOFZWr
 dnQOvM/lKCQBfQ5ixPxBjMRbcD1LC5Msg4TXZHeLE27LB/2RXjfkQJotVuCbtIjiIvfm
 hMqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCURz3gk52zThH5ciY43auciTv9tvbYORNTmMF71ZLRy9rMYNasu0rVONjsf5MIoWGpg7+ORT+CS61E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyJUsEUhuzCDn44L6JkZTb/t79gKd7G/r6/GBwcEvZW12wMNqeu
 Pme2/DWdZ9xquehDBU/zdi+/ewxAYImX3n1qvEQD0nXp4Q1mIvtON8Yeotu7+18tNxpD1ziUuL0
 Hp/VoHk96YitwNx4nru4jiOjEoPC/FPiEK0oAniM4S3DHXGONEiOOOXs=
X-Gm-Gg: ASbGncvBPuh/UsXRBEc47+HNAb3gXQ2+Ck15Gwwh+u3gTp5Ri3upHv3ss54Ur8KxuQ4
 pr8JHVsBQUp7Ct9RcURJbboaQ+dOl4QicIYrFodXRd4w2AcuI7wbkZruJCRcYBPuZmbLtepT5gA
 7jZ8SNjdficjn48lZ47VARE6OmFdtf0AP6+a13RYcJlNuzadCmFthi/uoK3TFg779O
X-Google-Smtp-Source: AGHT+IH/HqlvM/P/LySa02hOa0htvMZR14ZbVRxYz1QC3ZcT93zAuME43VeVM9bkg0ty+0Y0EMPBhJb2AjlybMMn5Z4=
X-Received: by 2002:a05:690c:670f:b0:70e:2b06:b045 with SMTP id
 00721157ae682-70f87666732mr6193217b3.5.1748451533524; Wed, 28 May 2025
 09:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <SJ2PR16MB5525F636C5B7620CA5D400848167A@SJ2PR16MB5525.namprd16.prod.outlook.com>
In-Reply-To: <SJ2PR16MB5525F636C5B7620CA5D400848167A@SJ2PR16MB5525.namprd16.prod.outlook.com>
From: Andri Yngvason <andri@yngvason.is>
Date: Wed, 28 May 2025 16:58:17 +0000
X-Gm-Features: AX0GCFuwwQboZHtEuFHEmxC6WYwoNHOd99ULwfHjOYeiXsUDDGPoRu6ifnV7qYk
Message-ID: <CAFNQBQztun1QvGsgMX7jXns9_GeLoDjsmWHAyrPT+w60gNif4Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] New DRM properties for output color format
To: Sean Summers <Sean.Summers@qsc.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
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

Hi Sean,

mi=C3=B0., 28. ma=C3=AD 2025 kl. 16:24 skrifa=C3=B0i Sean Summers <Sean.Sum=
mers@qsc.com>:
>
> Hi Andri,
>
> I've made this patch, but I'm unable to configure the video pipeline for =
YCC 420. I'm using libdrm's modetest to set the output format / colorspace =
and pass a test pattern through. Modetest can see the new "force output for=
mat" property, but it's being rejected and falls back to RGB. I verified my=
 EDID has support for YCC 420. Can you tell me how you're testing this chan=
ge?
>
> Here's my modetest command:
> modetest -s 185:3840x2160-60@NV12 -w "185:force color format:8"

I tested this using wlroots with these changes applied:
https://gitlab.freedesktop.org/wlroots/wlroots/-/merge_requests/4509

N.b. there are instructions on how to reply to threads on
lore.kernel.org. For the original thread, instructions are on the
bottom of this page:
https://lore.kernel.org/lkml/20240109181104.1670304-1-andri@yngvason.is/
It's needed for bookkeeping on lore.kernel.org and it's useful for
recipients who will otherwise have to search through their email to
find the context.

Regards,
Andri
