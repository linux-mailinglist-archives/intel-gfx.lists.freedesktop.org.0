Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7E73D0391
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 23:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F2389E06;
	Tue, 20 Jul 2021 21:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F7089E06
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 21:05:11 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id t186so417209ybf.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 14:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wV8In01ybX1xO7JBH+xJLOb0fe9HGstofiacQ3nSRaY=;
 b=n2gIvXycubDdTw6e93IRsYJA47IrR7mj+TVY8IZvcKPQm42JFuhZ99IP7YRFZ2c6dN
 ppOkDw5B1sTnzovf38yd7ORGdE/8JW2g0Zjjttbp7EcNbcJcAJSg+DpDJNx43lymR6dy
 5EJuC2JX6Z9gTRj8F7MOOiRS7F6I4USC/O9lgD2pm/25oEFhY2fUADuHX1hPc7S1I3Nz
 yygxBxE4LY5YsrTVIBJSw6eZS4l4q2Hybvdj2GQ4BnDEDds+jQzLgnWrAHJHQnz78qrV
 ojooyMggDK7kmMgxSSwJa1jIUkvUrj/XLhQeJayEh/olZx5k4fOrED7fkuZ6L2oEiksk
 ow/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wV8In01ybX1xO7JBH+xJLOb0fe9HGstofiacQ3nSRaY=;
 b=KvVEnL81M+gvQVU7P+FHm0xPDvyoApTDU68vWpydZAsiU2m+jy/3/Y0WXX709FvnaX
 cAlBEzbw6ZKglW01XEuev3TuGEBU+i8cnkVla0Q9iTBvQstjjqLtHehlDIGfjkxRgE0N
 9ibuipaI7fagKR5H0iXCaBn7iySD5Bb6g5DugEM+3kVh1W3hitYXvg8/dCuCbuZEvlBh
 hn0cDuMGm4wJVdsgiRDeib6/XXu3x9Q2IuXuHrj7X02qFtAOJ3kVkzeXoDumyF7L67Nr
 jCaGKximtAvtTfmzFr/3sklNuSDt9XbIy2cGiiG7JrR9/av3ZLsmpjF+zLCH1rIb7CCN
 I8bg==
X-Gm-Message-State: AOAM532tnNRljtunCsHXmQy1fttrtI6dvQ3aAMXe+j+flmXGxfXXwThE
 xHxqaE7X+wzhjE29OTTSqB1bW2mO4gxYXvX5lKFssw==
X-Google-Smtp-Source: ABdhPJxS/IrSVG6biV5glVUbrVVjwYSFqhmihD/G6TCuB2rKdw2tSf2bp5ETOeA6guRlBH+cq/cfZJCAfapum//uEB0=
X-Received: by 2002:a25:2345:: with SMTP id j66mr37741493ybj.287.1626815110533; 
 Tue, 20 Jul 2021 14:05:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210720182108.2761496-1-jason@jlekstrand.net>
 <YPcxMC1oULxcCSSO@intel.com> <YPcxkGJi9b8jpXII@intel.com>
In-Reply-To: <YPcxkGJi9b8jpXII@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 20 Jul 2021 16:04:59 -0500
Message-ID: <CAOFGe95_ELCr2d==7ohQ+5aFBufcSHo-PZi59bfDNREarN7YPg@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct the docs for
 intel_engine_cmd_parser
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 3:26 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> On Tue, Jul 20, 2021 at 04:25:21PM -0400, Rodrigo Vivi wrote:
> > On Tue, Jul 20, 2021 at 01:21:08PM -0500, Jason Ekstrand wrote:
> > > In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous
> > > cmdparser""), the parameters to intel_engine_cmd_parser() were altered
> > > without updating the docs, causing Fi.CI.DOCS to start failing.
> > >
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > ---
> > >  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > index 322f4d5955a4f..e0403ce9ce692 100644
> > > --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > @@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
> > >   * @batch_offset: byte offset in the batch at which execution starts
> > >   * @batch_length: length of the commands in batch_obj
> > >   * @shadow: validated copy of the batch buffer in question
> > > - * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> > > - * @shadow_map: mapping to @shadow vma
> > > - * @batch_map: mapping to @batch vma
> > > + * @trampoline: true if we need to trampoline into privileged execution
> >
> > I was wondering if we should also return the original text, but this one
> > here looks better.
> >
> >
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> btw, while on it, I wouldn't mind if you squash some english fixes to
> the trampoline documentation block inside this function ;)

I don't mind at all but I'm not sure what changes you're suggesting.

> >
> >
> > >   *
> > >   * Parses the specified batch buffer looking for privilege violations as
> > >   * described in the overview.
> > > --
> > > 2.31.1
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
