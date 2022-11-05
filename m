Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA91961A698
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 02:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79E810E09E;
	Sat,  5 Nov 2022 01:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5574B10E09E
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 01:29:32 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id q71so5776775pgq.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Nov 2022 18:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7C2GCLtMQSx6RJocWnvxPJSFhCTEVSq0Fk8ZTaEsD24=;
 b=QdD112MefAhdU3G3gWppzvYSasP93nd27nltrIRlmfXdgKqn7ETcddf+A8HzukKRpQ
 h87a7iaSwMNIfj8Lp4Q3aCafuiwBhLQWG1H7bxlM3Uo8gKdJcivM5z8pcceq8VjOdH4W
 RloIYuKDgfyzK/EZ41Nt9wulw+Tbrpnfum29Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7C2GCLtMQSx6RJocWnvxPJSFhCTEVSq0Fk8ZTaEsD24=;
 b=pTSnNlr8K0zMV6Xzju73s7kCfev9jrmUvMRazioaCxWNYHFkPS4VUUUtI3tg4MdPfZ
 rDXwzwIuFfMlmCMrpZ2+Iac9FCyQnha4z2SNtCILxkn/z1QBBzXP9flWJ+L5e278iDLQ
 5PX6iDEt6xrcmbf5c2zZy3JccXZgujYsR7XwBiHv8cCtdWkMSN7GKlM/xF6I9Re7Xu+J
 ndXhtvsecUbySeNCSFYcVKXLdSpBRoXpRxwqsAKTJYgZLZBMlZUM3SP5OYICotnWXbnN
 TQt4x5i/IwUq3DO+W8rVGU9+Hp8B9YLPnKPEi+Doy7sy4xVs42kB+SpWRYcEz7HWKcfX
 cqbg==
X-Gm-Message-State: ACrzQf1piA4+6s9LcQvPv5zy3gqKcVcNIC31DcyL1CFVH2WY3H5RwZMI
 wNDa1ujUzLwPM2ygLq4FPUi+/NhL1kK+LQ==
X-Google-Smtp-Source: AMsMyM4cRpP9exeO1rwHMYk33UoD/84ydhIBIboMAWRc71GQnJ093tciSirJdMZiJRxrHGapZyvnLw==
X-Received: by 2002:a63:7252:0:b0:46f:9763:7355 with SMTP id
 c18-20020a637252000000b0046f97637355mr28862792pgn.542.1667611771894; 
 Fri, 04 Nov 2022 18:29:31 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:db3:7e2d:1c04:dd29])
 by smtp.gmail.com with ESMTPSA id
 k17-20020a170902c41100b00186a6b6350esm350202plk.268.2022.11.04.18.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 18:29:31 -0700 (PDT)
Date: Fri, 4 Nov 2022 18:29:29 -0700
From: Brian Norris <briannorris@chromium.org>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <Y2W8eYOgcPhXW6jP@google.com>
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
 <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
 <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
 <CAM0jSHM99OxpmS-pqmEiyoK2pa07fnhekTKLRQTMsWqFkHCgJg@mail.gmail.com>
 <Y2MH4QCYqiAmvBQP@google.com>
 <CAM0jSHPe6Ecyh4X4ki=xcnT24REvAPoUqwH5Kkm6rEKYCCr4kQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM0jSHPe6Ecyh4X4ki=xcnT24REvAPoUqwH5Kkm6rEKYCCr4kQ@mail.gmail.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Set_PROBE=5FPREFER=5FASYNCHRONOUS?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 04, 2022 at 02:38:03PM +0000, Matthew Auld wrote:
> On Thu, 3 Nov 2022 at 00:14, Brian Norris <briannorris@chromium.org> wrote:
> > I'm still curious about the reported failures, but maybe they require
> > some particular sequence of tests? I also don't have the full
> > igt-gpu-tools set running, so maybe they do something a little
> > differently than my steps in [1]?
> >
> > Brian
> >
> > [1] I have a GLk system, if it matters. I figured I can run some of
> > these with any one of the following:
> >
> >   modprobe i915 live_selftests=1
> >   modprobe i915 live_selftests=1 igt__20__live_workarounds=Y
> >   modprobe i915 live_selftests=1 igt__19__live_uncore=Y
> >   modprobe i915 live_selftests=1 igt__18__live_sanitycheck=Y
> >   ...
> 
> CI should be using the IGT wrapper to run them, AFAIK. So something like:
> 
> ./build/tests/i915_selftest
> 
> Or to just run the live, mock or perf:
> 
> ./build/tests/i915_selftest --run-subtest live
> ./build/tests/i915_selftest --run-subtest mock
> ./build/tests/i915_selftest --run-subtest perf
> 
> Or if you want to run some particular selftest, like live mman tests:
> 
> ./build/tests/i915_selftest --run-subtest live --dyn mman

Thanks. I'm running through those now, and it seems like I'm doing
closer to what the CI logs show [1], but I'm still not reproducing on my
GLK. (I've now managed to run it with drm-tip; still no luck.)

So far, now I've managed to just reproduced *different* known problems:

https://lore.kernel.org/all/Y2WfpLbX1SeDtk+7@google.com/

But after working around those, I run without any similar lockup
failures.

I might poke around some more next week, but I've probably spent more
time than reasonable on this already.

Anyway, thanks for the help!

Regards,
Brian

[1] For one, I've run through a test list, in order, based on this:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-glk-j4005/testlist0.txt
