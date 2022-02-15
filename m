Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2D44B6677
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 09:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC9710E3F4;
	Tue, 15 Feb 2022 08:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB88110E40E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 08:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644914886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+0eleqiUVBeAPaQGD2Q6ihFW/Z9JIAN0Kj0GeNRsLaA=;
 b=gqpKXfdlEc4cCkHyZC5Qx6KpkJukaXvvD5DUos0e4q5b80Ks+tCUQ/RnLRUIMWx2NW330p
 dWzNYCUBzzYtAtE6NIvk/LlFD9TqNmzK7DFVdY6VUCLSACTj7hXKp83ZVgdgK5AjBwcg4A
 539pEOmcCG3I3CsD7MEKB2Xn+Zylsko=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-XUs9jRRyP4y8kh8LMiDXPQ-1; Tue, 15 Feb 2022 03:47:55 -0500
X-MC-Unique: XUs9jRRyP4y8kh8LMiDXPQ-1
Received: by mail-pj1-f71.google.com with SMTP id
 gj12-20020a17090b108c00b001b89b5f3dd4so1802391pjb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 00:47:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+0eleqiUVBeAPaQGD2Q6ihFW/Z9JIAN0Kj0GeNRsLaA=;
 b=pp0f2TSBpt3sE/+l4uf8VrXBsTUSFmaz6M7MRVrMYdMh4i7xmuOGM9UO7wonAysNU6
 LlJAFWh/349Ug49tqlhD8Tf+XFZ950aHiUHwqszE827scnfHTeU2tTb3fDGU4sWncE3j
 sgshx4RzAh+dJc3NJP1CEMmh6fNEAsmPx9G89zLso/aLGtu105UarhKSOSydHxrsQf51
 iV/K/iOwaCvPLlMB9gG1y+5EDRsC9rgKAtyA2slrcOMgNqfZZHBLC9FldkoW8sWubFoh
 pssviOfbS3cgdnvqvcT0w3rvb6u595RENfQbjbjO9QOU+jtGKOdVUqN0MLCNPw8mN0tv
 mnuw==
X-Gm-Message-State: AOAM530y5INQE2bBaMikWZNfPtUYQDHM/pDTGBXWcgwNb0/rHGQ/jxyE
 KIV2Cmae32OVsAeEBzcXVFrI8EzB/sfX/79+h1I+j9f9XfQzYE25jHLEREqHk9X6Jl2sega8xCu
 yOvlWqk8MJsjgyBMpnbDq6p8pIvnI7U0D+8YJ0Cu//bdq
X-Received: by 2002:a05:6a00:9a9:: with SMTP id
 u41mr3233700pfg.83.1644914874666; 
 Tue, 15 Feb 2022 00:47:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy1RXfHqGKUOwHiOd9TXDCmkRfLOApnv8+NP4UBdUIs2zHseVmQ3Z770IwhZgE/Zg1NSmgYeteqUdN9fAOzix8=
X-Received: by 2002:a05:6a00:9a9:: with SMTP id
 u41mr3233676pfg.83.1644914874405; 
 Tue, 15 Feb 2022 00:47:54 -0800 (PST)
MIME-Version: 1.0
References: <1644890154-64915-1-git-send-email-wangqing@vivo.com>
 <1644890154-64915-6-git-send-email-wangqing@vivo.com>
In-Reply-To: <1644890154-64915-6-git-send-email-wangqing@vivo.com>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Tue, 15 Feb 2022 09:47:43 +0100
Message-ID: <CAO-hwJJK5yeW+K_vLpWV9t3TsEdk0xCO-ETxeJsXM2c117JzNw@mail.gmail.com>
To: Qing Wang <wangqing@vivo.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=btissoir@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH V3 5/13] hid: use time_is_after_jiffies()
 instead of open coding it
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Mike Snitzer <snitzer@redhat.com>, David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 Hans Verkuil <hverkuil@xs4all.nl>, dm-devel@redhat.com,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-clk@vger.kernel.org, Alasdair Kergon <agk@redhat.com>,
 amd-gfx@lists.freedesktop.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 xen-devel@lists.xenproject.org, linux-media@vger.kernel.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 intel-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>,
 linux-block@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Stephen Boyd <sboyd@kernel.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, lkml <linux-kernel@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 2:56 AM Qing Wang <wangqing@vivo.com> wrote:
>
> From: Wang Qing <wangqing@vivo.com>
>
> Use the helper function time_is_{before,after}_jiffies() to improve
> code readability.
>
> Signed-off-by: Wang Qing <wangqing@vivo.com>
> Acked-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>

FWIW, this one is
Acked-by: Benjamin Tissoires <benjamin.tissoires@redhat.com>

Wang, is there any plan to take this series through the trivial tree
or should each maintainer take the matching patches?

Cheers,
Benjamin

> ---
>  drivers/hid/intel-ish-hid/ipc/ipc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/hid/intel-ish-hid/ipc/ipc.c b/drivers/hid/intel-ish-hid/ipc/ipc.c
> index 8ccb246..15e1423
> --- a/drivers/hid/intel-ish-hid/ipc/ipc.c
> +++ b/drivers/hid/intel-ish-hid/ipc/ipc.c
> @@ -578,7 +578,7 @@ static void _ish_sync_fw_clock(struct ishtp_device *dev)
>         static unsigned long    prev_sync;
>         uint64_t        usec;
>
> -       if (prev_sync && jiffies - prev_sync < 20 * HZ)
> +       if (prev_sync && time_is_after_jiffies(prev_sync + 20 * HZ))
>                 return;
>
>         prev_sync = jiffies;
> --
> 2.7.4
>

