Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 029D6256BE3
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 08:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514896E02A;
	Sun, 30 Aug 2020 06:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B4916E02A
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Aug 2020 06:05:13 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id e23so2734159otk.7
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Aug 2020 23:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YJWHzNWM+WsKkdDuBjUbCjMWvYqp7LFWHT23hnbLJhM=;
 b=PQPdirbOmd3fH98e0MnlO0EfEgNFiHGcDGBD33QA543RjuC6iaBkO5StItBf1E3Y8/
 QX06XSHi+D8Ww/3PeQ8NNFbTzLSaPtgfxeISkX0C3MASj2p0PLd2Ht7arvPYbjJ9OUAH
 JjUZ2DwDWYYbt9XDDCIfnVI5wIm7G6V9z5LWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YJWHzNWM+WsKkdDuBjUbCjMWvYqp7LFWHT23hnbLJhM=;
 b=ZzozrmDVwcU5b7E/mlcoDui/AGlVZQ6knmWd27fXk6C4tZXrH6w9SSD5NSl6jv97hy
 zTtfkqgZRZvx0B+XjEH0rJ0iMFDqI3ZgKv0bth0hDW+p9/eScFUyNea6qoVogU8trgUQ
 ZS9Ofh1/we0wjB/6SSYk/RNGuEN71ip7Xw8LhZt45MFfTd2iOZaYsaurXFjZvyZb7Fpx
 wI6VR8+1BZe7TY4fQ4FkhpLf6Xv1WfFN0n7zrIL2bQoX7hvX/eWVGRDBaFN9cPsVN0V/
 yjXCNrwV8bohTqgKCVU0cEcUWovMVnFTyIxF96pUQXj3c/mZJkB+lsFWYKimNrpihZcf
 cFgg==
X-Gm-Message-State: AOAM532MfusaRotcKevXPVQNTOghSvDbdxRIBCXVdrSmsekQy2/2s6B3
 5KHsadSBSmQZczdOkXHPYB3LsajRMWRsCiYF2q7CyA==
X-Google-Smtp-Source: ABdhPJwk57JKDbWRmzKsHVtbf6o7muH5y4/t/hpqgV5umHu4D6ud85OdUCaYAHVYTfTnQ4fd+d2551hjHKt1PcUiu94=
X-Received: by 2002:a9d:7283:: with SMTP id t3mr3795420otj.303.1598767512948; 
 Sat, 29 Aug 2020 23:05:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200820125644.hee2jjtnef5bf74o@gilmour.lan>
 <87lfi167y8.fsf@intel.com>
In-Reply-To: <87lfi167y8.fsf@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 30 Aug 2020 08:05:01 +0200
Message-ID: <CAKMK7uFJnm6jL+PdNROrzS2BprN4j2cvE-eZy90NQaB3Rg2-BQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 26, 2020 at 12:02 PM Jani Nikula
<jani.nikula@linux.intel.com> wrote:
>
> On Thu, 20 Aug 2020, Maxime Ripard <maxime@cerno.tech> wrote:
> > This PR diffstat is pretty massive since we merged 5.9-rc1 and it's not (yet?) in drm-next.
> >
> > I'm not entirely sure how to tackle this (if it causes an issue?).
> >
> > Let me know, thanks!
>
> Whatever Dave & Daniel say, but previously the rule of thumb has been to
> only ever do backmerges from drm-next. If you need a backmerge from
> Linus' tree, you ask for a backmerge to drm-next, and then backmerge
> that.

Yup. drm-misc docs even say that if you roll forward (or backmerge)
before it's in drm.git it's going to be a bit of a mess.
-Daniel

>
> BR,
> Jani.
>
> --
> Jani Nikula, Intel Open Source Graphics Center



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
