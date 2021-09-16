Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1E40E7B6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 19:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354EF6E88B;
	Thu, 16 Sep 2021 17:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com
 [IPv6:2607:f8b0:4864:20::92b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7CF6E88B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 17:53:05 +0000 (UTC)
Received: by mail-ua1-x92b.google.com with SMTP id 88so3442000uae.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 10:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=IVUldMJy3A48q6uViDjOWyasYNZ+U01xYzNFE0OqARo=;
 b=kRFkQjXMrL6yJzQ+uPMLVZ2ssRetf3+XKwF91M79QsWHuIzuYkP77nKA+1W5NYR/er
 2s44nFymeDnWYSjzPApbjP7D0R8j+ChlSdmzskYsODC5OX8ZhXBQDKRufZ+onmeoph95
 INZRxYI6f1vDZa43kWrOM3kiGXWmTvYpFQrBgqhdTol5U5c2cWaurDtBlCCJqpffmb14
 rHdI53mgolD2tpqRI6KPox5R07NQAtOKeRGnv+IPv7OWyaKntCWYy8cWLf8/IIFxjcIh
 xPwtz26dCDpVmUtiwFdIkd03nbG4A6hrQrCwd8CBnuJ8xkkkUOkczgKLCiqa0O3p936o
 5o1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=IVUldMJy3A48q6uViDjOWyasYNZ+U01xYzNFE0OqARo=;
 b=Uec7k/NQMisHaahw2vrnSATYa7s7sNjYp5mUB545LMpUGGr6FhI/ZmMbj2tZ1croQl
 PuI64zHVZ4d0CUekVJzHMIn14haRUImeQdmRPq/ZTN5/XDgMA+vYHxJIvO4Wv7JBsAXD
 fIClBg/fxGB50POHgfNL+7GUkKbZ4xjQ+8hnQzuYb7AC+wWyDT8vJ5snncYgFi6fbSxk
 izyAyMgWBN3Qa8SCw+z5lrXg77U0Ks+9R/tCS2FGgKZElFJd2RyKQuwzX1RHPSccNT3F
 PucXqRIT92H9sRKdXJipWS/E9Ov16x2697fiZA4H5D37qiWk65tXrLPIjiGT3l3Q9SPh
 ehbQ==
X-Gm-Message-State: AOAM530otbxIHmMmCzSNRkJD5ItnuNoABR/Sd14k4LdmlSxBthcGuXfX
 lz+sPxIB6LV7kvipcNlaMIif5Ww6+WQguZRTrB0eZiXF
X-Google-Smtp-Source: ABdhPJyy+4b0b5jZW4Q4OUFacj+xEYp2obG+HAdyPIIeV7NbGTdtwhSTo6bYTb4P3e38IbKjDsa99FyCuzfH5Rf8Jpc=
X-Received: by 2002:ab0:3c92:: with SMTP id a18mr1362281uax.23.1631814784147; 
 Thu, 16 Sep 2021 10:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210915163957.2949166-1-jim.cromie@gmail.com>
 <163172465299.30119.2194615473558090944@emeril.freedesktop.org>
In-Reply-To: <163172465299.30119.2194615473558090944@emeril.freedesktop.org>
From: jim.cromie@gmail.com
Date: Thu, 16 Sep 2021 11:52:38 -0600
Message-ID: <CAJfuBxwmPzc_-MYgidUwnpahrZPh2AbQqPhLfVKKBzC0OzBkNg@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB1?=
	=?utf-8?q?se_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev3=29?=
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

On Wed, Sep 15, 2021 at 10:50 AM Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> == Series Details ==
>
> Series: use DYNAMIC_DEBUG to implement DRM.debug (rev3)
> URL   : https://patchwork.freedesktop.org/series/93914/
> State : failure
>
> == Summary ==
>
> Applying: dyndbg: add module to a vpr-info in dd-exec-queries
> Applying: dyndbg: pr-info in boot-param should say so
> Applying: dyndbg: rationalize verbosity
> Applying: dyndbg: use alt-quotes in vpr-infos, not those user might use
> Applying: dyndbg: vpr-info on remove-module complete, not starting
> Applying: dyndbg: no vpr-info on empty queries
> Applying: dyndbg-doc: fix bootparam usage example
> Applying: dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES bitmap and callbacks
> Applying: drm: fix doc grammar error
> Applying: i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes
> Applying: i915/gvt: use DEFINE_DYNAMIC_DEBUG_CATEGORIES for existing prdbgs
> Applying: amdgpu: use DEFINE_DYNAMIC_DEBUG_CATEGORIES on existing prdbgs
> Applying: drm_print: add choice to use dynamic debug in drm-debug
> error: sha1 information is lacking or useless (drivers/gpu/drm/amd/amdgpu/Makefile).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0013 drm_print: add choice to use dynamic debug in drm-debug
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
>

it looks like some conflict, patchset is against 5.14.
I copied branch and it applied clean to master, drm-tip
so I have nothing to look at.
is this a transient error ?
