Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CFB344ABC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E87E89DA8;
	Mon, 22 Mar 2021 16:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B14B16E517
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:11:54 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id bx7so20020503edb.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 09:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tdGQc74DK7qtJQZuFxWQWOBt8cnYoWhSajIBKd6lSb8=;
 b=XK0Hbs8YJ72bK6h38it8XggYv27k1GFuC0hA1VCIWQ7yYQa3r+dKTWfSG/j0tx3Uyn
 VosK3FLTjhuJaPMNhCz7BxikmPRlrXSq6+/vSrYuUATvIYzT09dPiN5Xh7VZdR8TcOKU
 uZNdgc/r0QmDYxV7FaqTSUagvLsc5jFzrj2d3qlPYn1Ws3hhWLQEkMoVUqedLsjAt+pJ
 COg3xgFj/9Mmh8HHtak8btkIlo4Wro5bFDbYD0enEDeHEOroi1L1nr6Y8SC9yhimvShC
 sahOEU71rFfSwvgWEj9w7NEzAG5TuflFWNTZUscgFE5yZzuZlDSGZwUGvqCNwHAyGqtd
 UVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tdGQc74DK7qtJQZuFxWQWOBt8cnYoWhSajIBKd6lSb8=;
 b=qJE0bHVUq7V2FDZ5RRbsHySeT8ozcoo2vPjYJmpwPhc1AZG2MpXlwookVp50JLQSHZ
 FaTqQPt7MwM53+M59m4Ud084Tdag9ygDnYeeE7qoJhtra1dENTM6VbPk6jqc+uzDNlHw
 BlYflrK4Ke/wWq6venxoNeE8eqeUZslv1zhVv77QSVY+7eHccj5B9pX8OrdnrVBfcaE7
 PwV/DQUoQAYy8CNCc9zYwtSoqOuRvq9zsL4tgAHHDJxT9AWlgJYkMb+G3IC6BXZAutRD
 mdWsGpjfgDk6IL7vVx5u9NMQDsgJQ+yQx29cGVgU3K/TdzQ2UJzPGXfmDLuvcS+imV4c
 Lx2A==
X-Gm-Message-State: AOAM5313a/3yMxh1Tu+OlDmU9u2wDB1J9itllD8d2vfktKgNi/gywF5y
 9AI/bH8YOEXkof1AuXCfaRSu7RHP41Y+2ZydFkApn4NMRMH/+w==
X-Google-Smtp-Source: ABdhPJwNM55CqJch1mwGlUAaKn7x2Poha3HkRWnz78foVC2kopzu+1hd+pRXJhQmNTpdRgMG8wUJX8mT0KdZiHcNs74=
X-Received: by 2002:a05:6402:181a:: with SMTP id
 g26mr279818edy.225.1616429513234; 
 Mon, 22 Mar 2021 09:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210319223856.2983244-1-jason@jlekstrand.net>
 <161619569000.8629.1222908291030519887@emeril.freedesktop.org>
 <871rc7767y.fsf@intel.com>
In-Reply-To: <871rc7767y.fsf@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 22 Mar 2021 11:11:42 -0500
Message-ID: <CAOFGe94Mj+erHCDRDT3zLU_gBxJQmZ+miBaGvGugVYTDhb7tZw@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
	=?utf-8?q?rm/i915=3A_uAPI_clean-ups_part_2?=
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

On Mon, Mar 22, 2021 at 6:55 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Fri, 19 Mar 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> > == Series Details ==
> >
> > Series: drm/i915: uAPI clean-ups part 2
> > URL   : https://patchwork.freedesktop.org/series/88196/
> > State : failure
> >
> > == Summary ==
> >
> > Applying: drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
> > Applying: drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
> > Applying: drm/i915: Drop the CONTEXT_CLONE API
> > Applying: drm/i915: Implement SINGLE_TIMELINE with a syncobj
> > error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gem/i915_gem_context.c).
> > error: could not build fake ancestor
> > hint: Use 'git am --show-current-patch=diff' to see the failed patch
> > Patch failed at 0004 drm/i915: Implement SINGLE_TIMELINE with a syncobj
> > When you have resolved this problem, run "git am --continue".
> > If you prefer to skip this patch, run "git am --skip" instead.
> > To restore the original branch and stop patching, run "git am --abort".
>
> CI runs on top of drm-tip branch. What's this based on?

drm/topic/i915-gem-next

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
