Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C631A5BB0
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2020 02:45:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F736E38A;
	Sun, 12 Apr 2020 00:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C443D6E38A
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Apr 2020 00:45:05 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id r7so5406147ljg.13
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2020 17:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K3NRmkmePKUfokcdQsVCEEAiraVFuuFFK6GaQG6Rp08=;
 b=xqpOpwn83cLv/AXQ+gFz93+ruLyU5NE3o4SNw7NjTTQwoI45qcQVtIER2ZQLg0br0F
 JC6KMHwxMLSKwIfF0qL2+sFjkZLVFq2zp+nommo8zAatDaxpVu/XmJQ38N+4HVX0fkDu
 f7ieX+nuQ0JXsXIwf1vsFvSGc9zXwwmoFF8Zn8WWcifx3P3dlL101e10U5xWhizyLeqi
 CuJhJXTDy/nGQxWkjBI1Tp/B27NS2DaAl6N96u9ZER4x5gHrgtzu4pGfMjQX490uRg8F
 DozKtTMvSfkuDDXKtru3PgW5+gRCcI4gknKfbJkQKhIXRJ0CLejcd5uTIf67QKTWjpEI
 6FtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K3NRmkmePKUfokcdQsVCEEAiraVFuuFFK6GaQG6Rp08=;
 b=TIwDE1ecSFZz6FlSFSOQeUF5cHShGSCPllsfTzqWEQVjBwmFuk5t3MLDQVJ3+DCD27
 gE9QnJ+r3kGFAms1i863Rz41Y8CULXt51MxtFi/X+2LLd2NgqjKkBBH/cZMS2WfIlJZi
 iSbB4A7ZHq1FvyizWZ8opj/TVWQHys2WRobfjoJBFTamZC6ZRw8qCSF9QzFHzd6VzHO2
 lY0rMdvgaBt73vhwleEqD+cImdKFbsF89yRC8ceeA47+8+QhCOKf3LBsEBaUqbwDIRBe
 cSmwgFP2xhwudKF1xPWaMEyjwW7/zUFgHpH4EuwN9uPk8E8H3Hsuy4HQTPxBetnqD0xP
 Ev7g==
X-Gm-Message-State: AGi0PubWNnYG01KChD5QUz1nSgbV48RKb9cXe8v/kBh1KJK+YDmBHNYk
 ft7wsPCLTfqKhVYccfpwGCa7UJ4ducpxuTd63+NaDw6L
X-Google-Smtp-Source: APiQypLWAHCYlZi/eSZlEaiI8A/Jr7nlWh21scooUWcERuIb8oEm6xutReWejdcE/HOWPRwE8j+fheDz6XJGEkH01EA=
X-Received: by 2002:a2e:9605:: with SMTP id v5mr6603993ljh.258.1586652304179; 
 Sat, 11 Apr 2020 17:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-34-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-34-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 12 Apr 2020 02:44:53 +0200
Message-ID: <CACRpkdaEiNB4BiWkBf0k1n5Ag7+iVJ+RSam+fN_Ox1yfGZ==kg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 33/44] drm/mcde: Don't use
 drm_device->dev_private
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 3:59 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> Upcasting using a container_of macro is more typesafe, faster and
> easier for the compiler to optimize.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Nice, thanks!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
