Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8155424D533
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 14:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D776E116;
	Fri, 21 Aug 2020 12:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17586E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 12:41:22 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id v9so1685190ljk.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 05:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vQ8YtZUq2JY+BH1jqqQCLSvh1WL0FVc7UY1mYQp2AQM=;
 b=Ehr1XCOBzdD5uog8ufwc8p/ZeibsGALJ/DPSRGA30L6oGq3HsS0KFwdyYUsug7ybHg
 uQac9t59HdWh/sctxLtx59MZmp9zKkXTcoNFgYd3aDVl9zN5KUBN1oZjufXKLn1TDuXt
 Wtw75wC4NFAvIaPTbdwVKS/HWohfj3La+pWL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vQ8YtZUq2JY+BH1jqqQCLSvh1WL0FVc7UY1mYQp2AQM=;
 b=okxFeAyTqcKpLaCF935uhW7LvClmFsHjRBR7z212lKTTpo7pGkipuSN+lR60HBmHvk
 uQ16L/rURhvUAIS2L7RHonMYqWLgkJxIbh5CSTPCzlf1/B0C/NOWUuyndULOfaNuJ1r3
 1HevkRwNI34FYCl++ZBa5W+N0ALBWhLTWV6x6+dPTc5f09yfrqAi7UDMfrmEBQCQRn21
 7JGPe6V+wXPOypAwvImx6KS1HbH5ZOrG9d3xZhJvvQYgaV9Sa6bkz88nKIWhQW252MlO
 XM9JfiqR5Bp05YlvTE6Ptoy9AmX7kKSIWKCmEYtOXPff2e73xrxSaPVg4O1a07X96CLf
 MVyw==
X-Gm-Message-State: AOAM531Z1fjurNJz0v2CqPZg8F1TOvm9HARdovw0ULIQQEUA3A/FTQgB
 QMsA8xoHSTTq7NI5sw+fuWgjLqiB+UsKuA==
X-Google-Smtp-Source: ABdhPJwYQaRlK+YDuor0JB24vK4bKdRcqZbZ04zTtsLxvNTYw08kRZK7MDVQPEqEvKOccE5HdRfeag==
X-Received: by 2002:a2e:8510:: with SMTP id j16mr1410542lji.196.1598013680624; 
 Fri, 21 Aug 2020 05:41:20 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com.
 [209.85.167.48])
 by smtp.gmail.com with ESMTPSA id j2sm364415ljb.98.2020.08.21.05.41.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Aug 2020 05:41:19 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id b11so840441lfe.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 05:41:19 -0700 (PDT)
X-Received: by 2002:a19:408d:: with SMTP id n135mr1384989lfa.192.1598013678967; 
 Fri, 21 Aug 2020 05:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821085011.28878-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200821085011.28878-2-chris@chris-wilson.co.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 21 Aug 2020 05:41:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiu1WHD0x0VXKoLQGy43S7KLCY=Yd-TPDh=7tDW08554w@mail.gmail.com>
Message-ID: <CAHk-=wiu1WHD0x0VXKoLQGy43S7KLCY=Yd-TPDh=7tDW08554w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gem: Sync the vmap PTEs upon
 construction
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
Cc: Joerg Roedel <jroedel@suse.de>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Pavel Machek <pavel@ucw.cz>, Dave Airlie <airlied@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 21, 2020 at 1:50 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since synchronising the PTE after assignment is a manual step, use the
> newly exported interface to flush the PTE after assigning via
> alloc_vm_area().

This commit message doesn't make much sense to me.

Are you talking about synchronizing the page directory structure
across processes after possibly creating new kernel page tables?

Because that has nothing to do with the PTE. It's all about making
sure the _upper_ layers of the page directories are populated
everywhere..

The name seems off to me too - what are you "flushing"? (And yes, I
know about the flush_cache_vmap(), but that looks just bogus, since
any non-mapped area shouldn't have any virtual caches to begin with,
so I suspect that is just the crazy architectures being confused -
flush_cache_vmap() is a no-op on any sane architecture - and powerpc
that mis-uses it for other things).

                   Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
