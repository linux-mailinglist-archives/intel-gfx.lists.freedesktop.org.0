Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C5845A4EB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 15:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B496E200;
	Tue, 23 Nov 2021 14:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F147589CE0;
 Mon, 22 Nov 2021 16:54:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8DD3360241;
 Mon, 22 Nov 2021 16:54:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="dP4QVNMf"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1637600074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gFB4GGO7VWHQ+sHus62itweDuqdAMpzJGDCrOx7Sl+o=;
 b=dP4QVNMfSY4LMQGoIsQd1bXzVBqBnIQdji9g635rBa5MrXNngFIb7ns5m+skmXDLacidx/
 KVvVKkYjfvyWzs7tqKXk2ZmnH5v/ycgZZaHYYWZFdjbrWSY0OdPfcUDQ7kpRtv0tlVR7Dl
 XK0ay9GNE9xlDz1wxXxmjRwVlimdYqo=
Received: by mail.zx2c4.com (OpenSMTPD) with ESMTPSA id 46a738fc
 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO); 
 Mon, 22 Nov 2021 16:54:34 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id e136so51809845ybc.4;
 Mon, 22 Nov 2021 08:54:34 -0800 (PST)
X-Gm-Message-State: AOAM5306SdGMLJI8OalleqQpJbYSFvcHcuSUknpBfq+Dtg5fgKdPw/mU
 4uX5Cjvgg5zvoxUx6ZBBOX89YuMr1rcmuGHWDlg=
X-Google-Smtp-Source: ABdhPJxQCZYDHGUlMO1aafPrAbyf5t9NtzQjwUTLTK2qy3WoWzWX94MpQ5F7E6I3jpnFtG0Lh5Wkf4D8W6lABPYYIq8=
X-Received: by 2002:a25:acd4:: with SMTP id x20mr67974442ybd.416.1637600073306; 
 Mon, 22 Nov 2021 08:54:33 -0800 (PST)
MIME-Version: 1.0
References: <CAHmME9pShXywMogVkcBsXtfKxFHmQLe0F9cMF27aveUz6iyWhA@mail.gmail.com>
 <454da641-c065-132e-174b-4e6c9d7db83e@intel.com>
In-Reply-To: <454da641-c065-132e-174b-4e6c9d7db83e@intel.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 22 Nov 2021 17:54:22 +0100
X-Gmail-Original-Message-ID: <CAHmME9pDO-vXtRaKWRET3V7bPhEoQMV8ofvsVSeFswSiUGjBrA@mail.gmail.com>
Message-ID: <CAHmME9pDO-vXtRaKWRET3V7bPhEoQMV8ofvsVSeFswSiUGjBrA@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 23 Nov 2021 14:12:22 +0000
Subject: Re: [Intel-gfx] RPM raw-wakeref not held in intel_pxp_fini_hw
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

I'll give it a whirl on my laptop. Thanks.

Jason
