Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225CB16AE64
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 19:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CA66E83B;
	Mon, 24 Feb 2020 18:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 597 seconds by postgrey-1.36 at gabe;
 Sat, 22 Feb 2020 04:54:09 UTC
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com
 [210.131.2.82])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE336E44C
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 04:54:09 +0000 (UTC)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01M4rhmY009781
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 13:53:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01M4rhmY009781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582347224;
 bh=MDkE/gLaZQd9wu6cp818ppvOV5XgDwRERbjXtv7aclg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LYHluDol/+g9ym9fVv2/GtrPeCzPoUlUQT5L8ZtnTswQENCQoCGVtCPPbiHV88nzB
 FEobtk8ncZnxJ6qfGoRWs4pOJdzgqfY9gLeM61/v6Y1uqm3YokYo4pP4mef5a37CGs
 WsIV/JfXTni8pJxCJBIviX/pwVgSpb6mB/3WvnKi3MAkq1h4kfs0p+cqsj44j8iT0Q
 LhRdd93PuaqZ1jp0PAcO/bYmf6kTS1P5A7bVXGTNC1kJEOIx68aOhCEZmlCcEIgI7x
 08RBZpsTzUrgU0rLGR52dldXQjGZpOihR9XenDczdIJBA1NdhrsAH8WYiUWvj7YI7a
 74bXPkiw6Odeg==
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id m4so2597606vsa.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 20:53:44 -0800 (PST)
X-Gm-Message-State: APjAAAUMsfe2frjicij48Uxw80AXQAr9hBytRlWSjIMRJMhLW2Wz6nF+
 KJSd2pF7Oiphvnai0eXuJNtux9KgL6W6LTXA7fk=
X-Google-Smtp-Source: APXvYqzHF+HUyBH9qV/9HbuiblR+xHce51mwTNBXQCWfdkGC4g6zcCTQTUO0zBXBGZu7xFJUin89zID6eZvwR8hrza0=
X-Received: by 2002:a67:fa4b:: with SMTP id j11mr22319237vsq.155.1582347223150; 
 Fri, 21 Feb 2020 20:53:43 -0800 (PST)
MIME-Version: 1.0
References: <20200221105414.14358-1-jani.nikula@intel.com>
 <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
In-Reply-To: <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Feb 2020 13:53:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNASJmps=DvnfvhXJBCG533PYMYX_Hv3CS-fK4o47S1wq+g@mail.gmail.com>
Message-ID: <CAK7LNASJmps=DvnfvhXJBCG533PYMYX_Hv3CS-fK4o47S1wq+g@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
X-Mailman-Approved-At: Mon, 24 Feb 2020 18:13:30 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix header test with GCOV
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
Cc: intel-gfx@lists.freedesktop.org, Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 22, 2020 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Jani,
>
> On Fri, Feb 21, 2020 at 7:54 PM Jani Nikula <jani.nikula@intel.com> wrote:
> >
> > $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
> > appended is writable. This is not the case when the output filename is
> > /dev/null:
> >
> >   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
> > /dev/null:1:0: error: cannot open /dev/null.gcno
> >   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
> > /dev/null:1:0: error: cannot open /dev/null.gcno
> > make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> > drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
> > make[5]: *** Waiting for unfinished jobs....
> > make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> > drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
> >
> > Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
> > make sense here anyway.
>
>
>
> Is GCOV the only case that produces a separate file?
>
> Could you also test CONFIG_DEBUG_INFO_SPLIT, please ?
>
>
> The GCC manual says this:
>
> -gsplit-dwarf
>
>    Separate as much DWARF debugging information as possible into a
> separate output
>    file with the extension .dwo. This option allows the build system
> to avoid linking
>    files with debug information. To be useful, this option requires a debugger
>    capable of reading .dwo files.
>


I just tested it.

This is not a problem for header test
because cmd_hdrtest uses '-S' instead of '-c'.

If '-c' were used, we would see a similar error.


So, gsplit-dwarf is OK.




>
>
> If this does not work, filtering flags
> does not seem to be a maintainable way.
>
>
>
>
> >
> > References: http://lore.kernel.org/r/d8112767-4089-4c58-d7d3-2ce03139858a@infradead.org
> > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > Fixes: c6d4a099a240 ("drm/i915: reimplement header test feature")
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index b314d44ded5e..bc28c31c4f78 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -301,7 +301,7 @@ extra-$(CONFIG_DRM_I915_WERROR) += \
> >                 $(shell cd $(srctree)/$(src) && find * -name '*.h')))
> >
> >  quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
> > -      cmd_hdrtest = $(CC) $(c_flags) -S -o /dev/null -x c /dev/null -include $<; touch $@
> > +      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
> >
> >  $(obj)/%.hdrtest: $(src)/%.h FORCE
> >         $(call if_changed_dep,hdrtest)
> > --
> > 2.20.1
> >
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Best Regards
Masahiro Yamada
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
