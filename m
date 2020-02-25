Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AC516ED64
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 19:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316056E216;
	Tue, 25 Feb 2020 18:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D016E216
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 18:00:50 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id 7so19055vsr.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 10:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NmH1PDxlTNwZxKnarwO0akr1+Jp+3Ie//XVEH9roo8A=;
 b=pP82PdoOmLy8vUwQMApgcB0AOtEGRa1Km+glFpTr6a/BQXyLVd99fQNjpmK0ZQLVVU
 TH1geYHFFyNB35e2lZebkUECas4wHL7dkqfudYzinrc/kcVsjKakPQUdORix9zoR2bai
 m/K6Dw8BmSioAVHnS5hRhhq0xA+en1y7RjgltzzAtoKkn5nLE/acaLtE09D/i5Lntf6g
 r5FlPIE5MD4OT+yPMLr6mNuP02m+dfzP8PpdaWRt3V8M0lmZ3jYqzSoFS9sD8TiY47/H
 ITd48Ja0tSAaP3jumjUo+qLa+U51E3O6Wk+U+Ophvz1R/9glexp3eDSxmzPrvP4WF60q
 6GeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NmH1PDxlTNwZxKnarwO0akr1+Jp+3Ie//XVEH9roo8A=;
 b=CXwvL3rCC0uAz8xnWLixbwDU+0iuW4BV/PDEeOkcqbr8wA9bIXBCOr6RuahnO/fZ6I
 Z9F1ClZXQ7WjMNLSZxPrjvZy2HqA/I5fikISWX4Zj1nHzvFHtVLf3RQfaXrfOW/nnKEj
 ARwOVFdZEhq61YLS8tci71SliQ3N5dJ9J1m3T6NPk91ewa4/6zpwG0Dlsr6ahL+Ra9fc
 ZLRP4yPSode+G0rLkQDup51sz1JOT8eQogUIJAWUDgvWMqaEyLK6aGRY+oBJKLZJIXWE
 M8zj0DSLwtgELSNr9IklEC7Ebl7ujV61B0W/aBfT+5o1W5iRdijxx6jaCh/Unowu6Lka
 2Qiw==
X-Gm-Message-State: APjAAAXUW3A61p4KWKwPgceTg2LnFFRC60/KDVfuXtMjYnyhGHAEZ0Fj
 XenRvLHDY93SUIzVQdUgdvL3wMzXKbzYopvsjyoSiA==
X-Google-Smtp-Source: APXvYqz7ae/dHlurNQeQXqOYqtJ7iOJyeDDFSCiNwok3yGACrhNrRVbC3GPMqJ700W9f01QzKQclbrygHJtcXb0TPBE=
X-Received: by 2002:a67:f591:: with SMTP id i17mr299994vso.34.1582653649536;
 Tue, 25 Feb 2020 10:00:49 -0800 (PST)
MIME-Version: 1.0
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
 <20200225082233.274530-7-chris@chris-wilson.co.uk>
In-Reply-To: <20200225082233.274530-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Feb 2020 18:00:23 +0000
Message-ID: <CAM0jSHOsakZdypStwtYU4WTaFsQFeNBpiCZA91wQSghpKe=pnQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/selftests: Check recovery
 from corrupted LRC
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Feb 2020 at 08:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Check that we can recover if the LRC is totally corrupted.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
