Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F718F563
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:13:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E5C6E03A;
	Mon, 23 Mar 2020 13:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com
 [IPv6:2607:f8b0:4864:20::a2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11676E03A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:13:08 +0000 (UTC)
Received: by mail-vk1-xa2f.google.com with SMTP id s139so3738113vka.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 06:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z6iESMNR1vH5KtX2SKzM0d1NO+DUsqFKjz5no16nCp0=;
 b=lXM3VX0Bxll7sexzY9P5seQ4XFvpQbwRssB+XcQegu2jC6x92Paz6qfnlGV7KLqJyl
 GG8Jn2AxaCZM+UhpRLd11sd/9YpANTWPfxHkIquPmwzyTn57jNVVTpyJLnkN4b8Uxyz1
 Knb2s1F6C1ty82uudkjf236IWfoJXEh02JEyjYkUaUAbRCpLPbbyo3PjtNtaje2/26RS
 ZW6xOYYLFdatMV+Yn/FB4Nkjj80wLAA3uHsJeNzPVAiwt4YE/orOKMbEEbRJvyfS8oWS
 Kuthx4/cfgEUo+slON/cwyVQJDdATEoKreKjHr0U0WRW1UgOot0aYGzItG0MHt/TVGir
 vTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z6iESMNR1vH5KtX2SKzM0d1NO+DUsqFKjz5no16nCp0=;
 b=uIthiQQcxGL+cDnW8xjdHuSP736pCM1H57QKW7cJrxjwN/+yZT8enEcpbO9ibIgZwl
 Gg5xtL6h0mm5s1lpD+xAHsZqja7lcOohtc52YnMX/E8omBAiGXYX9UXp6fDes+dsNRxu
 nrochff2qdLaEcYJwlCbJH+Ma1yniBZ1P/58Zv+8X8efbKsclibNS5Jg2ZxhWQLMY9vb
 r4LWkF3m3ZrhsNzr/toNrQg9fYuegBakDtDYkzFFlsKkstgN170svplDvQjA6aow1JvW
 AmHWwRCRRTuFKaIweQQ3NdsmImcJBapLkB0TXoXoBxSp/deA2mY+5eHR6n2ZYK8HbOze
 q1EQ==
X-Gm-Message-State: ANhLgQ3hcu+7iGFAPt8jhYVcQigHWHQQiChkJl7VLExj8v5qykAhHvKK
 iZZJTlNouUxxvwHCub5MGSFt3ULNaVGoPbqc0qo=
X-Google-Smtp-Source: ADFU+vs1qwFFMf+UalEY+ziGsRfRFLAHW9HbALJsoO44xihy5VxTfrnb1c8E9kWYw+6gAcMulTvoDHk+Y/GK9w0c73o=
X-Received: by 2002:a1f:2414:: with SMTP id k20mr4695731vkk.57.1584969187809; 
 Mon, 23 Mar 2020 06:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200323113809.41452-1-matthew.auld@intel.com>
 <158496377296.17851.3732762136790110544@build.alporthouse.com>
In-Reply-To: <158496377296.17851.3732762136790110544@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 23 Mar 2020 13:12:41 +0000
Message-ID: <CAM0jSHNH0KyTPb=12HSg_ZC_N_UzckNkrbQhdgC5uieLivLtdA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add some vma_sync
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 Mar 2020 at 11:43, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2020-03-23 11:38:09)
> > The subtest shrink_boom was added as a regression test for some missing
> > refcounting on the paging structures, however since the binding is
> > potentially async, setting the vm->fault_attr might apply to the purge
> > vma, and not the intended explode vma.
>
> Hmm. Sounds a fair point, though let's see if that is not an unintended
> bonus.
>
> > Also it looks like it might also
> > be possible to hit some weird shrinker deadlock where the unbinding of
> > one vma allocates memory by flushing and waiting for its
> > still-pending-bind operation while holding vm->mutex, which will always
> > lands back in the shrinker since we set vm->fault_attr for the selftest.
>
> However that is a bug we have to handle. And it should be prevented
> currently by avoiding shrinking active (still being bound) vma, e.g.
> 6f24e41022f2 ("drm/i915: Avoid recursing onto active vma from the
> shrinker"). So is that a current observation?

Missed that. Egg-on-face.

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
