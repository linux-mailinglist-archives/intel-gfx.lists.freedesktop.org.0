Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E964E7BE6AC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 18:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6890710E131;
	Mon,  9 Oct 2023 16:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588B810E131
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 16:38:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 665A960304;
 Mon,  9 Oct 2023 16:38:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8EF2C433C7;
 Mon,  9 Oct 2023 16:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696869519;
 bh=MSbNJzxR5Uxb0K+7ztElxHBM3Hj8ixSJi5qLk0iBaMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QGwJpxqDz0aWM/BosmKez3lWAzKO+tIizIY36faOYAH58uTLnp/LRvmv+60FlDGVe
 j+nJdg6GSQNkrt2VQyGWEgLwrD8L9SERIVo2+5HUKmwIUtodiwZ6jnCQsc8ShIslMn
 6kkKaaC7DRHQ/B5LgLHxL/mCEleCGkegj26CeiHwZGAUXnmeUbYw4NvJ0Ps/jt5v8A
 uoDLD68YHxnJ/ztUMTWuuJVCLSR5Z4dy6qIYEi1mEWwH5PSODGxwFCcWfmj32QBYsl
 GmaRQP3mNh23EAW9bZCm31L9FDMjQet0Sx7tqfFJ89tjtX7gxxXAyWGgJICUSLOGZD
 cmCfoaJPEy/RA==
Date: Mon, 9 Oct 2023 09:38:37 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Message-ID: <20231009163837.GA1153868@dev-arch.thelio-3990X>
References: <cover.1696595500.git.jani.nikula@intel.com>
 <48f11648d7169687e7242e4c9b4694a0c03c4263.1696595500.git.jani.nikula@intel.com>
 <CAK7LNAT6MzbcjR7KZMEFUCHkq+WXgTB=Qmp_VD4UC7TvMg+dMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK7LNAT6MzbcjR7KZMEFUCHkq+WXgTB=Qmp_VD4UC7TvMg+dMg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: drop -Wall and related
 disables from cflags as redundant
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Oct 08, 2023 at 12:28:46AM +0900, Masahiro Yamada wrote:
> On Fri, Oct 6, 2023 at 9:35 PM Jani Nikula <jani.nikula@intel.com> wrote:
> >
> > The kernel top level Makefile, and recently scripts/Makefile.extrawarn,
> > have included -Wall, and the disables -Wno-format-security and
> > $(call cc-disable-warning,frame-address,) for a very long time. They're
> > redundant in our local subdir-ccflags-y and can be dropped.
> >
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: Nathan Chancellor <nathan@kernel.org>
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> I made a similar suggestion in the past
> https://lore.kernel.org/dri-devel/20190515043753.9853-1-yamada.masahiro@socionext.com/
> 
> So, I am glad that Intel has decided to de-duplicate the flags.
> 
> 
> 
> I think you can drop more flags.
> 
> For example,
> 
>  subdir-ccflags-y += -Wno-sign-compare
> 
> 
> It is set by scripts/Makefile.extrawarn
> unless W=3 is passed.
> 
> 
> If W=3 is set by a user, -Wsign-compare should be warned
> as it is the user's request.
> 
> 
> drivers/gpu/drm/i915/Makefile negates W=3.
> There is no good reason to do so.
> 
> 
> Same applied to
> 
> 
> subdir-ccflags-y += -Wno-shift-negative-value

As I point out in my review of the second patch [1], I am not sure these
should be dropped because -Wextra turns these warnings back on, at least
for clang according to this build report [2] and my own testing, so they
need to be disabled again.

[1]: https://lore.kernel.org/20231006174550.GC3359308@dev-arch.thelio-3990X/
[2]: https://lore.kernel.org/202310070011.Fji48IBk-lkp@intel.com/

Cheers,
Nathan.
