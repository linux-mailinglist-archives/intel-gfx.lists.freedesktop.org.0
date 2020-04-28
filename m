Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 612971BC162
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 16:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F416E7F5;
	Tue, 28 Apr 2020 14:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA7B6E7F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 14:33:43 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id q124so245668pgq.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 07:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W5OpsyfM7tuv0IrwrgSsbwZYPDop4IiEMmlDr+wgVBA=;
 b=dKqerUzOAvp2jBPKdgInwm/2sAYu/dpwHcUODvjsH96W7iV+nYkIZfXk6epyBUKGHj
 zoCX287LFBjnXpSoaTA6NisOOhgXmievndHr6dcO1OTSEIGYIcW8s053JkjxrCHjs50Z
 KE73vvqrEj7iKSvKGEmFQkpXZT9S1LuA0bNp7SNAFEhQ/jgCQbuOYtiESXzoiu7KHZ8H
 H2GX3N1MDgs4wxFwQ61jILzGZQOmwQiu7KzhFGUfgVEfzNreGqT70QaS3IcJl2LqIfnu
 vDRV+2TcubEIeOOUQ2rv+fJa5/CzK8d5aaawD7h4ym2wYxuncRU5E/n+v7HDrgm1PbFB
 4kqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W5OpsyfM7tuv0IrwrgSsbwZYPDop4IiEMmlDr+wgVBA=;
 b=CEHQFX+iUaNgp3O4rTaYqxDxWGiE9TmwGZgYD7J/uzrK6CPNm10lXwl6lNQ4NwQQvT
 bvl0T4ccJVEHi0RsTZvRHmDK5uEwlm1mOe+GUIZoRLHhpJVMKkqLG29ytuedqyO1UTvj
 a2f4fMYFkuk8HwqKEikKC64HU6Iskk6pDT9YjPU8k/e1D6EeEGi/MfotHAiJF9eW84jF
 jt442fCGTHG0GfzUamrs91pmJjNv9pkYykqSJa9m945CVOEfQYbUipPzKwijX/gTlnpg
 FvYeohzQcrIPy44idU56PQoCmBp8DfFVUNGD0QSw32mzFt4mUNgMLgBeTrTmQo7JtrG2
 NHpg==
X-Gm-Message-State: AGi0PuaxrbU2nYEMt9+IsrzbVgDNm+kgFUCApAJj/n0di66WT1wNT2i4
 ImhPnGoGH6nJGtsBMHz4uioExXo/MmsKcaChXWA=
X-Google-Smtp-Source: APiQypL0s2TJ5DZC7JxzBLn5xCrfc5Old6KrMZSv0NOmJ05aJ8HPA/ynLgBwDdepu1DNF/9YmvmRgkw25/RSw1QHh6Q=
X-Received: by 2002:a63:b952:: with SMTP id v18mr28499883pgo.179.1588084422892; 
 Tue, 28 Apr 2020 07:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200428034705.3907-1-apodtele@gmail.com>
 <20200428135744.GI6112@intel.com>
In-Reply-To: <20200428135744.GI6112@intel.com>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Tue, 28 Apr 2020 10:33:30 -0400
Message-ID: <CAJU=AjX92CfBB21AeYtxqKN6fiqyH5mLD=cgSih5UCbhEoPOdw@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [patch] drm/i915: Add PCI IDs for Skylake GT1.5
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > These devices are also known as iSKLULTGT15 and iSKLDTGT15.
>
> We also seem to be missing 0x1915 from the ulx list.

Indeed, iSKLULXGT15 can be found.

> Another odd things I noticed in our SKL PCI ID lists is that
> that 0x1923 and 0x1927 are potentially miscategorized. They
> are listed as ULT in some parts of the spec whereas we have
> them in the non-ULT/ULX list. Also 0x1927 is listed as Iris
> graphics 550, and ark.intel.com says that it can be found
> in the i5-6267U CPU, which is ULT. The other one is listed
> as HD Graphics 535 which does give some ULT google hits based
> on the Windows drivers. So looks like we should make these ULT.

Ditto for iSKLULTGT3 and iSKLULTGT328W.

> The third odd thing is that 0x192a is listed as both GT3 and GT4
> in the spec. Not really able to find corroborating evidence one
> way or the other unfortunately.

Hypothetical iSKLSRVGT3 cannot be found, whereas iSKLSRVGT3e and
iSKLSRVGT4 are already assigned differently.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
