Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A206C367C57
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 10:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40E289B0D;
	Thu, 22 Apr 2021 08:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D1F89B46
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 08:18:15 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 k4-20020a7bc4040000b02901331d89fb83so2608173wmi.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 01:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=4MknbIT7CWhKfazUcArL9gVzlWhfw/gbr5rLiB4UULY=;
 b=KUQGn467FGS7Cc17n7B5Cei0400l5Y/+7iXKO/S25YkklcZ7Sdy8oeuoVFepS6pzqj
 0UiQY5oaDYRMNvkWRrhTY3VmVE3eJUk018cJpsg4V9l8Rhd6+QRjHXaCETMdvyRE/j0b
 0J54xHgYENwgVUkncDf62z6BM1/Fu6e1j85ss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=4MknbIT7CWhKfazUcArL9gVzlWhfw/gbr5rLiB4UULY=;
 b=b8mhA7i4S7dh9D1w2+fX5spLyCMiCbWBfxFJf2jWVSz3AWLGEfexDAV8nQEAMQ99HG
 RDxYEaG7Z+JoSbUlYgz6jZP6Jzgd9miIGzxc13PuB/i5npbt6MF93xV3OnTMdZwNeZe0
 KFKOF0BfWsVKsQrQXU2sYVcVPcuz+PQ+ouGk5muzFdpNILe8eJBh+Pkqj2huw+vwLe/5
 pfjrj+i5NQAssm8CiqDaC1qvIQCnfE7JaaO1eg0ogsYlYqyL7h1IqMBqx8gLg6XFkWxO
 79OoM3317GqxVFwwy1pBh5S6fH3ociirm4ZJMKjmqQoH7dw74k/mkIuqxCEcnlPvT3Ro
 u9AQ==
X-Gm-Message-State: AOAM530kIxytbNWkcimX/AezP60xS/7SUNZ6ILv/ek4Be8CVSvSgsVKp
 vLyy/iXgkBugnD92I4Um4ynJYfWEwhvnCQ==
X-Google-Smtp-Source: ABdhPJyYeg6+dBCeVaLicwbWWHGjEqMDmuiY+xd9mnZGLeW0ntlVLmyvlg4tFGdYnfahZaSVd24EWg==
X-Received: by 2002:a7b:c769:: with SMTP id x9mr14123572wmk.124.1619079494623; 
 Thu, 22 Apr 2021 01:18:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x2sm2474310wrg.31.2021.04.22.01.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Apr 2021 01:18:14 -0700 (PDT)
Date: Thu, 22 Apr 2021 10:18:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YIExRAHQvZmgL5S+@phenom.ffwll.local>
Mail-Followup-To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 DRI <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20210421120353.544518-1-maarten.lankhorst@linux.intel.com>
 <CAKMK7uFpoY7YMEMbftjq+P5XHR6L+F0KwFtbK7CtuUFy7HsLkQ@mail.gmail.com>
 <9ae96fa1-6c91-4ec1-422d-8e0a95251bb7@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ae96fa1-6c91-4ec1-422d-8e0a95251bb7@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix docbook descriptions for
 i915_cmd_parser
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Dave Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 21, 2021 at 04:39:10PM +0200, Maarten Lankhorst wrote:
> Op 21-04-2021 om 16:32 schreef Daniel Vetter:
> > On Wed, Apr 21, 2021 at 2:03 PM Maarten Lankhorst
> > <maarten.lankhorst@linux.intel.com> wrote:
> >> Fixes the following htmldocs warnings:
> >> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
> >> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'jump_whitelist' not described in 'intel_engine_cmd_parser'
> >> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'shadow_map' not described in 'intel_engine_cmd_parser'
> >> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'batch_map' not described in 'intel_engine_cmd_parser'
> >> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
> >>
> >> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_cmd_parser.c | 16 +++++++++++++++-
> >>  1 file changed, 15 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> >> index e6f1e93abbbb..afb9b7516999 100644
> >> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> >> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> >> @@ -1369,6 +1369,18 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
> >>         return 0;
> >>  }
> >>
> >> +/**
> >> + * intel_engine_cmd_parser_alloc_jump_whitelist() - preallocate jump whitelist for intel_engine_cmd_parser()
> >> + * @batch_length: length of the commands in batch_obj
> >> + * @trampoline: Whether jump trampolines are used.
> >> + *
> >> + * Preallocates a jump whitelist for parsing the cmd buffer in intel_engine_cmd_parser().
> >> + * This has to be preallocated, because the command parser runs in signaling context,
> >> + * and may not allocate any memory.
> >> + *
> >> + * Return: NULL or pointer to a jump whitelist, or ERR_PTR() on failure. Use
> >> + * IS_ERR() to check for errors. Must bre freed() with kfree().
> > IS_ERR_OR_NULL or needs an actual bugfix in the code since we're not
> > consistent. Also s/bre/be/
> We're sort of consistent, NULL is a valid return code. IS_ERR is only on faliure. :)

Maybe explain that and then Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Cheers, Daniel

> > -Daniel
> >
> >> + */
> >>  unsigned long *intel_engine_cmd_parser_alloc_jump_whitelist(u32 batch_length,
> >>                                                             bool trampoline)
> >>  {
> >> @@ -1401,7 +1413,9 @@ unsigned long *intel_engine_cmd_parser_alloc_jump_whitelist(u32 batch_length,
> >>   * @batch_offset: byte offset in the batch at which execution starts
> >>   * @batch_length: length of the commands in batch_obj
> >>   * @shadow: validated copy of the batch buffer in question
> >> - * @trampoline: whether to emit a conditional trampoline at the end of the batch
> >> + * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> >> + * @shadow_map: mapping to @shadow vma
> >> + * @batch_map: mapping to @batch vma
> >>   *
> >>   * Parses the specified batch buffer looking for privilege violations as
> >>   * described in the overview.
> >> --
> >> 2.31.0
> >>
> >
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
