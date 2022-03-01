Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E6A4C996A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 00:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7922B10E85D;
	Tue,  1 Mar 2022 23:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C956310E85D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 23:37:37 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id g20so39776vsb.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Mar 2022 15:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=TBG7UeqAvN9SBWeB7qcM3y+75L+TObUb8HNzAJ4cHTc=;
 b=Z3gbSooNH2Hq//ELCxwkCwhEOozWr3NtgH4M7ttntlx3bnVv87BynAuAugPeBq40YY
 NrdOASScqAN7Ec5vWScPPRubGs1JGAu9MfsplZzwnxCoZ0eJxEwK+etTdGivOidcAZW8
 K8dByB54DUXxVM7ap8iFTKSTdWDp4jXphS1mtBJ0SZUqaqNBf03K+F3djom8XlLALgq/
 tpfTQqCV8xzRQ+UtV/P9WjfgNm/NfrPcgX2fWR2eD/0gGngKNlP1LDDZV3zJWCmkXU7i
 pIBnlsbH1Q0lE3NWwQw9Ch9yx4QRUtnkSJRCglSotYuWKVKth/w7mW5GEvIZxRt71cx5
 FrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=TBG7UeqAvN9SBWeB7qcM3y+75L+TObUb8HNzAJ4cHTc=;
 b=Cz8BRZ8hmPOJBFrB5n+HTxSAp9k76Ia0JSYH/KVbrlNnFZd7zxMDPtzjbZPkAWIMCZ
 ZU6nOWLCJU59GioMmCU0kockVeqAZhA6dzFqcEFKkAJZsSMAykNd8UQIu01iOck2bPyI
 cfUmH5NMud9iZVdqn2aJ6kkwxWOi0ccJ9lJONSnlxE0XmSGJSq/V+sEiNd01yAfbzsmD
 72ltX+Jeo7yq9geCQYyaAK4y8MC2wTK4fMJ9jmMuQZ44ibNRnH8ZSB+X62lXKv7Ii5JW
 0BWf9vVKks4TfaBS+KTF4nfsFyrnt1myzayoZCpU6FhmtfR80SCQ0GAK2f1t3tLK1e+3
 8WCw==
X-Gm-Message-State: AOAM530V2nQ20F+U+Ay8H/EDB5Qs5LKvHFXHVsaqFWFfkUrj7XCFsTG5
 zt5pwZsTlAMLAblOHlKc16ph3PWJ1YqjBS9cXCQtGEmJ
X-Google-Smtp-Source: ABdhPJwIdC5paE82dky8GqFFsPNX9lSScVX7WziDTRdb/kz7hj6Zvxde3q3iX6oq+pTYhkV4TmyMvgVGwDHnyEpCCec=
X-Received: by 2002:a05:6102:22c4:b0:31c:582f:84f6 with SMTP id
 a4-20020a05610222c400b0031c582f84f6mr10464035vsh.36.1646177856725; Tue, 01
 Mar 2022 15:37:36 -0800 (PST)
MIME-Version: 1.0
References: <20220301164629.3814634-1-jim.cromie@gmail.com>
 <164616840892.8599.12974539915721847@emeril.freedesktop.org>
In-Reply-To: <164616840892.8599.12974539915721847@emeril.freedesktop.org>
From: jim.cromie@gmail.com
Date: Tue, 1 Mar 2022 16:37:11 -0700
Message-ID: <CAJfuBxyCD1dbo6epg+AH7FDuhErPgvo6azteu_PqVUTwxMrxwA@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
	=?utf-8?q?use_dynamic-debug_under_drm=2Edebug_api_=28rev2=29?=
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

On Tue, Mar 1, 2022 at 2:00 PM Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> == Series Details ==
>
> Series: use dynamic-debug under drm.debug api (rev2)
> URL   : https://patchwork.freedesktop.org/series/100289/
> State : warning
>
> == Summary ==
>
> $ dim sparse --fast origin/drm-tip
> Sparse version: v0.6.2
> Fast mode used, each commit won't be checked separately.
>
>

why a warning ?
is there a report missing ?  suppressed by fastmode ?
