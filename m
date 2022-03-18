Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE0B4DDA74
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 14:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F00F10E208;
	Fri, 18 Mar 2022 13:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02CA210E208
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 13:26:09 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id k125so6757927qkf.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 06:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JP2Yhp7iCoIGicPEczGXCUAb95CxqLfHA3HDSoRp2dw=;
 b=En/1iY10kbDD6J+KWgTj9yBWmPw6o0Cu0LVv3QcSPtKmUokj6RPfDB9crdi7jk6z7Q
 TcrhACp1ziYkS5rGiWrF8u2ue4rFuw57Fek4h51qJYPloDDBKExqONKZICVIhEllWjlJ
 HgeqT468b1oJEmvZQ1m0E/4BLaCVs6FvO1hIIaEUQTLLMbXQwUJSGxdL0fMcgDj5yxKN
 JjItocnlSSwShgtZXmAV4DEP0gOItVYrEU7ulku9+0IB02hHeqLTrYq//a3u6e4dQ3yn
 Ek0nrCLdUpH5WkiDLfe5F4V5gtZ5u/Jb0Ouna1HGDs5sqv5vSracxVu12+FkR0R8lfMS
 wyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JP2Yhp7iCoIGicPEczGXCUAb95CxqLfHA3HDSoRp2dw=;
 b=tw/fThrygZQzG8qUEPMDdG00SPvb4+kPQUgTBtVTelNk//8OgRieaWHXGbhRWBVpKB
 Wt5evYbdnwHLh2nKz5G7t3DrD2Wc9gqyc3CHgnti3UTftsO9p5cQrIQPQQz/7NQsnkfa
 E/OLvN0FjwhkQsO+WkQrm8h1yoUetn2VU7c15EVv2iMYe/xNL1WBD4qCYd6i1iGb89H1
 NSYalBBho4tXJHXtekBpR9P3hTH/GRrQJkCOi6B7TYoyq55t2WYgN+/lo6new+CXWCGK
 LrLtkIHq+jwIi3yHT6mpJboBRQMUqniFv8Wtt0Dqub7yy8darpap/vVX58ROPoHEDI8j
 gZWQ==
X-Gm-Message-State: AOAM5324CnLpK6ybNOTmoGmhwAwfOYmLWcZjtKkF8EE0D3jSQxtewLVL
 6W6FX1g4rb662/ZM/2IjuYmG+glAy0crB0Jo7dw=
X-Google-Smtp-Source: ABdhPJyd7OWmJYcIAgGW9VkEaOYGUrGC5OHwUiIA8/cD14kbIjpQlPPGzj0Kju1DBblyh+obAD11wNxa/zCNmEe3gb0=
X-Received: by 2002:a37:4cf:0:b0:67b:1821:f89a with SMTP id
 198-20020a3704cf000000b0067b1821f89amr5719607qke.7.1647609969118; Fri, 18 Mar
 2022 06:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220318021046.40348-1-andi.shyti@linux.intel.com>
 <164758234860.31587.1988393489717053112@emeril.freedesktop.org>
 <YjRANNv09keROx9t@intel.intel>
In-Reply-To: <YjRANNv09keROx9t@intel.intel>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 18 Mar 2022 13:25:42 +0000
Message-ID: <CAM0jSHOkszx0n9HecVCZKTRj9whjAk4ozTK3B6JwdkVc=f0vFg@mail.gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
	=?utf-8?q?roduce_multitile_support?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 18 Mar 2022 at 08:18, Andi Shyti <andi.shyti@linux.intel.com> wrote=
:
>
> >   =E2=80=A2 igt@i915_selftest@mock@requests:
> >
> >       =E2=96=A1 shard-kbl: PASS -> DMESG-FAIL
> >
> >       =E2=96=A1 shard-tglb: PASS -> DMESG-FAIL
> >
> >       =E2=96=A1 shard-apl: PASS -> DMESG-FAIL
> >
> >       =E2=96=A1 shard-glk: PASS -> DMESG-FAIL
> >
> >       =E2=96=A1 shard-skl: PASS -> DMESG-FAIL
> >
> >       =E2=96=A1 shard-snb: PASS -> DMESG-FAIL
> >
> >       =E2=96=A1 shard-iclb: PASS -> DMESG-FAIL
>
> I don't see how these failures can be related to the series I
> sent.
>
> Maybe a false positive?

AFAICT these look new. Did we forget to do something for the
mock_device? Maybe something in patch 3? Nothing is jumping out at
me...

>
> Andi
