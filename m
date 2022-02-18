Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E854BF97F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 14:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FCB510E66B;
	Tue, 22 Feb 2022 13:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35AD710EC1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 13:01:17 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2d07ae0b1c5so65419907b3.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 05:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uYyLc4IH0ANNIsB/psBxiotNSUOVb/aQHzaP0Me/9TA=;
 b=Ge1hDFkkzGp9J4GrZHJA8BCxzVqbwg2vJseoylQBv2nQnO841dVcd056S2TfrEO9kW
 3k8MmXEk67ZTxa2SZcqM2aw2H/QQBWu6bpd++xs+ma3wMTzSKjLWYrVWviXsKqScjGIy
 JBEI/zu22lbB/KleMt2ckXoj3NvwxIlz22arsXGj2Jfrq/Qm6/4wwyuCY5gkNC6iH0Ng
 C6zmSbFs0KCazV+dwBLFkK5EdyCgy9bpoQsGsbetRtUbqFsbOkJjjP6VMguZQUMJAcL+
 TUCMMWWme7Lm07sC4OMPGrU9OUzIAQM6aF6rEgkHXtTwIEUwx8M8TqKl7bVNEWL449Hi
 QOaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uYyLc4IH0ANNIsB/psBxiotNSUOVb/aQHzaP0Me/9TA=;
 b=BO/3bbIGQU4SLFwSghn/Go6eeTV3AApGPJ2NEFN8TcW0uhCpSMeF18LLUz5VNG+ew+
 mAB3LnW6o5u3qVFBnZ+hoE922inox7iBvxhUYa+a4giDE6M7vrVdwk2rRNITpIzITsHo
 finVaElwPhZ3VEiuqfhmn+q78gCSSgdmC2DCwtqaq7oHxpfBoULI44j/l+ChtCzaSutN
 n3eybgmj8pt6kY7SEY9ULB6YltyBPbgtNtvHtN6o5pC9ru6/FmHRu7HbOFFHxJUiOhli
 6nMlCmKzJmQXhAs7Cu6Sgr8dXUMnojPCfN2juyq1kVPLFCQGt7d8hMfIMnR0MGB6Mhdl
 FvPw==
X-Gm-Message-State: AOAM532y9NAfIz/3EdJxuFk2BsXk96VHJNHbx3CF9S1xn1pUwtACIDe1
 Y6rb0lp3vRQCndhSmuSZbWRXcSM+p6LXRq3l6wuqQg==
X-Google-Smtp-Source: ABdhPJx5BaCIdooqbWjruWTtUUDC47+tdWkDlNMYn+20tj10zAQ1ZbZrdq6HmMfOq79Xwu39p4eKXdpoFDV58JG1Sdw=
X-Received: by 2002:a81:1d5:0:b0:2d0:e2aa:1ae0 with SMTP id
 204-20020a8101d5000000b002d0e2aa1ae0mr7282027ywb.278.1645189276021; Fri, 18
 Feb 2022 05:01:16 -0800 (PST)
MIME-Version: 1.0
References: <20220217140441.1218045-1-andrzej.hajda@intel.com>
 <20220217140441.1218045-3-andrzej.hajda@intel.com>
 <CANn89iKgzztLA3y6V+vw3RiyoScC3K=1Z1_gajj8H56wGWDw6A@mail.gmail.com>
 <199aebfb-f364-cd9b-5d2b-dbe42b779a41@intel.com>
In-Reply-To: <199aebfb-f364-cd9b-5d2b-dbe42b779a41@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 18 Feb 2022 05:01:04 -0800
Message-ID: <CANn89iLS5oqOvafFy9SW0CDiyv9GGJYsE8MpE200K5NaA8h0xw@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 22 Feb 2022 13:32:50 +0000
Subject: Re: [Intel-gfx] [PATCH 2/9] lib/ref_tracker: compact stacktraces
 before printing
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, netdev <netdev@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 18, 2022 at 2:55 AM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>

> OK, could be faster and less invasive.
> Other solution would be keeping the array in dir and update in every
> tracker alloc/free, this way we avoid iteration over potentially big
> list, but it would cost memory and since printing is rather rare I am
> not sure if it is worth.

printing is extremely rare [1]

We want to use ref_tracker in production, we need to keep the fast
path as fast as possible ;)

[1] If you think about providing access to the traces from sysfs, we
might need to make sure we do not hold the dir spinlock
during the expensive generation of the output data.
