Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 707A116AE61
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 19:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2AB38923C;
	Mon, 24 Feb 2020 18:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 310 seconds by postgrey-1.36 at gabe;
 Sat, 22 Feb 2020 04:52:40 UTC
Received: from condef-07.nifty.com (condef-07.nifty.com [202.248.20.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266E46E44C
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 04:52:40 +0000 (UTC)
Received: from conssluserg-03.nifty.com ([10.126.8.82])by condef-07.nifty.com
 with ESMTP id 01M4iCsF027736
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 13:44:12 +0900
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01M4hj4m004629
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 13:43:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01M4hj4m004629
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582346626;
 bh=QvpKGZVZv95PNi6ixPVBE83E3pILL0328mYd2ZaLEFo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YzO/juWvY1nPLwmvSH2OI8GKkftpx4fND6YChpZjYVrhg8pw+B4tdazmAZxW4Jf/z
 hryvzGNZbgSy6hbqNBUtlGX9uPG1XYE5EEac55SrSVi0eyOnrMxnBCT8qZUbMnrW7T
 makFi9SwuazKpa6mT8BXbSkPEFxKuX09OTDq3F8Z+aM2v6zCliE+QnirwYnkN4uDqo
 bV2gcncZ06zEz1PQX2xSgeSsTfhiwt83e0dROj19dw5qM8XJPHarO3IpycZ5nPZNCh
 mHhl4LZ2gKiyxnRyOFho8lVlA2PhPcRvoIrdq7vodOVCYY0G8t7NEZ8nkveWfIIuFM
 zDVlmpAD6kdHQ==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id g15so2633687vsf.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 20:43:45 -0800 (PST)
X-Gm-Message-State: APjAAAUJ7SWpm/cXBW/EOX80LhJW9lZ/DFIeRqYlT1YwJPlMdngnyD0C
 7bC/ZQhJZOkUsGTQRdFiZhHVRT0isR7c16XjUPk=
X-Google-Smtp-Source: APXvYqxzt42Ka+koM7AFPRS/xDxRNIizK9/Er4m0ek0Du2zqTcHK0VKxD/0OcGyLn7I4FUOuTf2zKk1Gyf8+Vta6Kz4=
X-Received: by 2002:a05:6102:190:: with SMTP id
 r16mr21360782vsq.215.1582346624455; 
 Fri, 21 Feb 2020 20:43:44 -0800 (PST)
MIME-Version: 1.0
References: <20200221105414.14358-1-jani.nikula@intel.com>
In-Reply-To: <20200221105414.14358-1-jani.nikula@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Feb 2020 13:43:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
Message-ID: <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
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

Hi Jani,

On Fri, Feb 21, 2020 at 7:54 PM Jani Nikula <jani.nikula@intel.com> wrote:
>
> $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
> appended is writable. This is not the case when the output filename is
> /dev/null:
>
>   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
> /dev/null:1:0: error: cannot open /dev/null.gcno
>   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
> /dev/null:1:0: error: cannot open /dev/null.gcno
> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
> make[5]: *** Waiting for unfinished jobs....
> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
>
> Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
> make sense here anyway.



Is GCOV the only case that produces a separate file?

Could you also test CONFIG_DEBUG_INFO_SPLIT, please ?


The GCC manual says this:

-gsplit-dwarf

   Separate as much DWARF debugging information as possible into a
separate output
   file with the extension .dwo. This option allows the build system
to avoid linking
   files with debug information. To be useful, this option requires a debugger
   capable of reading .dwo files.




If this does not work, filtering flags
does not seem to be a maintainable way.




>
> References: http://lore.kernel.org/r/d8112767-4089-4c58-d7d3-2ce03139858a@infradead.org
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Fixes: c6d4a099a240 ("drm/i915: reimplement header test feature")
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b314d44ded5e..bc28c31c4f78 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -301,7 +301,7 @@ extra-$(CONFIG_DRM_I915_WERROR) += \
>                 $(shell cd $(srctree)/$(src) && find * -name '*.h')))
>
>  quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
> -      cmd_hdrtest = $(CC) $(c_flags) -S -o /dev/null -x c /dev/null -include $<; touch $@
> +      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
>
>  $(obj)/%.hdrtest: $(src)/%.h FORCE
>         $(call if_changed_dep,hdrtest)
> --
> 2.20.1
>


-- 
Best Regards
Masahiro Yamada
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
