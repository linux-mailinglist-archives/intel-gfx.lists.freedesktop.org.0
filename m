Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65235B1C3DE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 11:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06B010E73C;
	Wed,  6 Aug 2025 09:57:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Tnq8VmOQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB8F410E73C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 09:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1754474220;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UnRhCBGz/g5M0sDRDevsbQoDZqubHqeSfzdgXcUdUSU=;
 b=Tnq8VmOQse3Q/kJJOWRiG4ErN2naj+oPJqQfjzEDSrVe7pLZv/u7K2RLDHtKPjeo9k/1wt
 jUjKLoDwTvlhkOknD1dQHkD0q+6KTh0RyC+I6CuUcGj/vsGpfI3cXhvwvBbn5r8jl2381s
 l2rvWTsDlY16fW61qg9fuZCqMhKJRt8=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-380-knCr4JY-O12KdXtovHx_0A-1; Wed, 06 Aug 2025 05:56:59 -0400
X-MC-Unique: knCr4JY-O12KdXtovHx_0A-1
X-Mimecast-MFC-AGG-ID: knCr4JY-O12KdXtovHx_0A_1754474218
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3b7961b3c82so2959704f8f.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Aug 2025 02:56:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754474218; x=1755079018;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UnRhCBGz/g5M0sDRDevsbQoDZqubHqeSfzdgXcUdUSU=;
 b=lfw2fqBb+zLkUv0rPO5s8bfjipCHFhy7IluaA9421cONwVQCsKvG4zJXAcMAipVpYB
 dw2hUm8ND+rNHYO0SR3pjqT7Svjn096CkGQGQQYrzRu3EQiZBf6cyy9M5YBWPuKUqwf4
 XUfBgVViLoSUhJwtLAFGQDH8HQ2wSZA9bkY040a2kWpmeWWuL6J7dYP4tOzD8IQUVeqo
 sP7iU18ZcNe5/w5XuRwtlTg2/FQvFFYJBurrsQYvIYcKdbrIxQ7CfxsU3D91dnNbu5Pm
 SxjyeibVEmedDQEKzk2764uaU9OZxWjyANH79bM/PjkC7KvFoaEEOgYmdi9gjBpHPIAe
 tX0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrdqb66nlP0IZptg48T7G/ddc9x/zBSrZjWj3v8lhcN0cYSg9AqnUQS9p7/nsFNdcwhfIgbVYTBcU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwV8+mnn4+0YOz1uE/iopV0qPvwZZG7Mwm3oN9415nFIGAr0Rsi
 kP9PFyA5GYfDU4zid9wyJRirSO3WMykPDGhQZR+9EvpNAp/zHs2KlxrEBEUNeOd4Aoekmjo10qi
 IfT/HBtcaQ9glYtU+QPRuH87VfnaBdY64+qb+R+chITYgXkjpNcTAHYsJWCcBM1rrvCL5pii8li
 iEuAye7Euv2sJh9KeS/3+VesmFPE1PsciL1i7yAiov9e4c
X-Gm-Gg: ASbGncuSKfFzyHObphmangIoY+mPmp3Fe10PazvU/+HchuGSos0+Ip0vJiFygmaJ4CF
 WUYs1njS1Rtmf1S1KBSjYD1KJIzOOqQcjNMkYhvQz4iDG/dX7W2f5hhrTXFg+uykxm3orby71NA
 +gwcE4QlQCIRPkLbJoBz4jdg==
X-Received: by 2002:a5d:5849:0:b0:3b7:92ec:68ec with SMTP id
 ffacd0b85a97d-3b8f41bb8c4mr1730020f8f.14.1754474218386; 
 Wed, 06 Aug 2025 02:56:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmkIlZiBIO0pxwuhv5ZEuhlp3NbgCJIQMCznSJgwMIdEJJHMlTE317CHbrVdWmT1WXyuHGPX1pWe6egu5BZuE=
X-Received: by 2002:a5d:5849:0:b0:3b7:92ec:68ec with SMTP id
 ffacd0b85a97d-3b8f41bb8c4mr1729994f8f.14.1754474217980; Wed, 06 Aug 2025
 02:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <CACTEcX6oXBot1VBApOyKVMVXsAN9BsvQMLa8J0iKpNeB-eLttQ@mail.gmail.com>
 <642d439ea1be8e48ee5c47fd3921a786452fb931@intel.com>
 <CACTEcX5Y3PNXNkhnK1dGFe+k3sigOZNpj66KKGAS9XeHqRu35w@mail.gmail.com>
 <0b15e33603a46f6cc7ad7d09a156044f11367169@intel.com>
 <CACTEcX47bUd2tp=LYkQnhK29Js=vLN0JfXL8Aq6mOFBVYumpzQ@mail.gmail.com>
 <CABgObfZKKeqMrAUyS8CB4ARkW_8Z9QREgpgYcq2jxoQ9ppS6MA@mail.gmail.com>
 <CACTEcX7oa+Shj=uYiRMoWpng+RZXDeQrOa-VTRmzVVtXJMCgLQ@mail.gmail.com>
 <CACTEcX7hsRkzYEBg4pQd5s36p_ZXJM=dtxSGmBjfkt5sWrXP8g@mail.gmail.com>
In-Reply-To: <CACTEcX7hsRkzYEBg4pQd5s36p_ZXJM=dtxSGmBjfkt5sWrXP8g@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Date: Wed, 6 Aug 2025 11:56:45 +0200
X-Gm-Features: Ac12FXxUD7IfHIB3LF4bE0A3e_MF7VVLU9X5HEvxDOG2SUB9XsZW8ohxIfMVMqA
Message-ID: <CABgObfZagg8_w100tEnbU0_adUWPcnQYzxy8aAyUqVASjxWujQ@mail.gmail.com>
Subject: Re: [REGRESSION] tty lockup and WWAN loss after hibernate/suspend in
 6.8+ on ThinkPad X1 Carbon Gen 10
To: Andy Mindful <andy.mindful@gmail.com>
Cc: regressions@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-acpi@vger.kernel.org, 
 rafael@kernel.org, ville.syrjala@linux.intel.com, tglx@linutronix.de, 
 Christian Brauner <brauner@kernel.org>, Jani Nikula <jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ODsmVdW6W8IktuS5wtkfDiubRP1lpCngKo-woF1sIh0_1754474218
X-Mimecast-Originator: redhat.com
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

On Wed, Aug 6, 2025 at 10:40=E2=80=AFAM Andy Mindful <andy.mindful@gmail.co=
m> wrote:
>
> Hello,
>
> Can somebody advise how to properly bisect issues in linux-stable
> repository between v6.7.11 to v6.8-rc1 tags?

If you can test 6.7 and bisect between 6.7 and 6.8-rc1 that would be
the easiest.

Paolo

