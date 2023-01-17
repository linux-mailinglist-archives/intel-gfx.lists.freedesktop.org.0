Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DAD66DF64
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 14:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87F110E53C;
	Tue, 17 Jan 2023 13:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A8C10E53C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 13:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673963547;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zCNIOWyp6BvkZ2wh9MfUHSp5MAA9j0ACgJb6RoOlUO0=;
 b=RAzPTz2WXsIRDRK96l3OjVCRglq+2hqU+Isb4trMR6yVuDDhpAD1WOsS3R4si9W19LunoR
 uG/0v9XcBKpJ/r9VYbJpR4pQIiseKJJy6I8zqqrI+x1ruYfrwX0M+KZ6xjBPR6KJACIVeS
 jYmmzHtUKZ++RgE7FeLM3q+kyHHleOM=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-655-GtfEAgJMNwmpbDW8j868Sg-1; Tue, 17 Jan 2023 08:52:25 -0500
X-MC-Unique: GtfEAgJMNwmpbDW8j868Sg-1
Received: by mail-lf1-f72.google.com with SMTP id
 k1-20020a05651210c100b004cae66ea2bfso11512070lfg.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 05:52:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zCNIOWyp6BvkZ2wh9MfUHSp5MAA9j0ACgJb6RoOlUO0=;
 b=fXn7JUb19VSiOB/N4Hh5xc1YQwFfv32BljyzrBlr7a97XkdjpliTZxRPHvH2Txy8Ic
 sabt02ptLVpxjQ4ORNla6dVrIp/kYKh96j8W8EuSbFxCaXBGv3cMYQBixa+HGKoHFEPl
 E8HeMHjNtH1q20+sNr7sULiIULN6zUbR+q6ombZGqpljzZYhE3wWcnWFM3b6zN7cmz1j
 c1wloBxYO4DWcBbXwr2A6paJY4l0jR2pCIKIzuzOpW+zpwep+mrQLgei/Ao9Ps4s4ciS
 lMWXGrEAFYw0HbF4Is3Sig9OlH+gXr5SlR20cB4ukupYnqq9DMb5hFrh/s68pNoYdHmC
 jwbg==
X-Gm-Message-State: AFqh2ko0ROcpkcXlVjF/OecuQ16CKjVQWcsopkTcGphyAQyoO8PRUXC5
 8u/50yZej0jMK1DTr2qk+lvOcbfVCeyoVvi9b6GofKFs3mS1qNb8f9/B0Xm6GC2k1eybWMNBe9W
 ZEFNJWDYjsMKZzIsWVYZna/5U9wfjJu84T24PNNanVd73
X-Received: by 2002:ac2:4ade:0:b0:4d0:7b7:65dc with SMTP id
 m30-20020ac24ade000000b004d007b765dcmr133422lfp.122.1673963544544; 
 Tue, 17 Jan 2023 05:52:24 -0800 (PST)
X-Google-Smtp-Source: AMrXdXs9jCpstio+iSjdAor3NZ75bz+2Dnozw/p6Ykmo64gLJfiYXc3udp+wH4Z3eIPBKX1dEiSO07P7nXfvqprRwdo=
X-Received: by 2002:ac2:4ade:0:b0:4d0:7b7:65dc with SMTP id
 m30-20020ac24ade000000b004d007b765dcmr133416lfp.122.1673963544131; Tue, 17
 Jan 2023 05:52:24 -0800 (PST)
MIME-Version: 1.0
References: <20230117150212.3d8ee843@canb.auug.org.au>
In-Reply-To: <20230117150212.3d8ee843@canb.auug.org.au>
From: Karol Herbst <kherbst@redhat.com>
Date: Tue, 17 Jan 2023 14:52:12 +0100
Message-ID: <CACO55ttvqwnmGS=4gig-AOy+67bDesdj2S9HDJ3hS=uyN0NGOQ@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] linux-next: duplicate patch in the kspp tree
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 17, 2023 at 5:02 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> The following commit is also in the drm-misc tree as a different commit
> (but the same patch):
>
>   06b19f46455c ("drm/nouveau/fb/ga102: Replace zero-length array of trailing structs with flex-array")
>

which branch? Because I just fetched the remote and don't have this
commit in my local repo

> This is commit
>
>   54d47689c6e3 ("drm/nouveau/fb/ga102: Replace zero-length array of trailing structs with flex-array")
>
> in the drm-misc tree.
>
> --
> Cheers,
> Stephen Rothwell

