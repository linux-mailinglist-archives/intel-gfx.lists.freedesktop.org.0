Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581A164997
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 17:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDFE6EC3A;
	Wed, 19 Feb 2020 16:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C8C6E3F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 16:12:52 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id d10so937167ljl.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 08:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hmg0e58Llvdw4Inqfn8X80e2eYeLDQtQXiBtM6n4esA=;
 b=e3Ih6Ny7chpcs5sdZ2gyHR5JBlDADKpsBnoUtVzlLjOR8EE1yAK3JN5lvyRAkW3IsY
 zF51RXn0Na9NQ/iyqpxyrrlV9BG1A3xDcQOimhV4zxRWufgowK+ub22zIS+HqLN8eZ/e
 RKp0KxrRqopgAyEoBiuVL5hUkCNmF6nGweEynoWWLAlIbEQAcIwQKYRnCJoVBs2uzABp
 +TlDDgUmLRUsY/L4u+AZ2PlEMypG54MBbs1peSMRjbqRkALurkVxZWCGkFpnUFgvnwbg
 BcwiKTNS44gGcNJ7LrJJqRR/hsRKS6pa0dFeDkj16mZYvJj52FNj1bMvhW1W49YBaA3J
 lENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hmg0e58Llvdw4Inqfn8X80e2eYeLDQtQXiBtM6n4esA=;
 b=dlleplkapBTs0LIT1UJFyZEZTxKy9XKLWAbGayQ67MsSWpxuTXt0EOV6KYsXQIWU0M
 tCPZt6TTePza+0veE4hJK+0oO6ACyYr/Ne/JH3fD/BUHkrnUK94GrjY9w9nRJ0jLTBTF
 c4byRQULR3QOgBZI9C5rbtdlp7NtEjOvmRwQglnNXpDRiBdzVAOtcsniF33pnNpYH85j
 uVwNDXrbX/0+EG924DYoIpk1h/kVuWFb0DdYIrApO+h5kXcxROaphfIuwgHGGoE1WiT2
 Fl19tiZFRmigIrtBsPmhwElwiJ0vqFx1jVT7aCG/0Y3nrFxtYFaU+kzgX/x/jVQpMDdX
 TFxA==
X-Gm-Message-State: APjAAAUwqlgKYhfdAREuwR4qdJFh+vQXlpaEPgJLu6s11EVRwfvJg4lj
 RTSI3vKXQuSeQCv/EPdfjBA/aB+sd2CAGFJx7dEwVQ==
X-Google-Smtp-Source: APXvYqwqmbvk7o9JHtK1u30MtYBrhvUHNeAQS8pEmYYwQ50AlZQhBSsFNdDZi83HjOLzGAxdZDoy3Pvw8WWyxWisQZc=
X-Received: by 2002:a2e:b6ce:: with SMTP id m14mr15179637ljo.99.1582128770966; 
 Wed, 19 Feb 2020 08:12:50 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-34-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-34-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Feb 2020 17:12:39 +0100
Message-ID: <CACRpkdZk93zL1e3NpCXa+NQ+uLGU5TOTC4PCf81QQNK=1u-q3Q@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 33/52] drm/mcde: Drop explicit
 drm_mode_config_cleanup call
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

On Wed, Feb 19, 2020 at 11:22 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> Allows us to drop the drm_driver.release callback.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
