Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8EB16AE65
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 19:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E7B6E83F;
	Mon, 24 Feb 2020 18:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com
 [210.131.2.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44026F5D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 05:50:32 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 01M5o4NZ030390
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 14:50:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 01M5o4NZ030390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582350605;
 bh=eq8IO/VMpfJ1RJrC1x1R1P0tHfinL6GT1Btf9n8F004=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1hUr8OYvNwQkeLHY+zP5zqW8Qb+ozYDbgl3HAQzCFHZLbasbZa4KLBM/SvJIi66lZ
 AQf0mF7pTn0B3qAC1CDi8UvNBwDRR5ewzKej5oxwefi7FSorv4uikCMaVYb4hvm4CQ
 gFcIy4+uHuD4hkbSMubTO26yc3TSAm0sjCmHv4ZO2tzH9Sjz5eTI4J5ztQOrPrH7Dw
 PKVRXENv91BUcnOH8Z5+fXvZyqRaemO7W58fnzz+FKJShtuoAI0ankskrW1Dk6byq/
 ebD1U4cV2a8nIw6AGRhc/avWe5QqZ2tc4dNR/eZAIEDjWRG2Sq6caD/cXsOfi1lT5y
 tU4WZLE6GrBXA==
X-Nifty-SrcIP: [209.85.221.173]
Received: by mail-vk1-f173.google.com with SMTP id b2so1197561vkk.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:50:05 -0800 (PST)
X-Gm-Message-State: APjAAAX33hZH/k+1KmLciWF+6hdW244gl1Q1XA8Pt8NHvAJ7Kq1UAwTa
 aiLebu0K4ob/+fsbhKxk6cN5EIZbnSTHHYLuWdw=
X-Google-Smtp-Source: APXvYqwJWpEaE796xeyan5SmnaRzumJrz/i7eeBS+BaRFmmhAaxfTB5EXpEN3YY5l0ESuLjYT2L/syj/2pfDzT43rsg=
X-Received: by 2002:a1f:6344:: with SMTP id x65mr18539272vkb.26.1582350603944; 
 Fri, 21 Feb 2020 21:50:03 -0800 (PST)
MIME-Version: 1.0
References: <20200221105414.14358-1-jani.nikula@intel.com>
 <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
 <CAK7LNASJmps=DvnfvhXJBCG533PYMYX_Hv3CS-fK4o47S1wq+g@mail.gmail.com>
 <373b4c07-2355-6e78-e9f4-e1bf50322287@infradead.org>
In-Reply-To: <373b4c07-2355-6e78-e9f4-e1bf50322287@infradead.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Feb 2020 14:49:28 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR838UVsXUxWFZFPTNbqqCw1V2+G0B6=k3GOghajMp35A@mail.gmail.com>
Message-ID: <CAK7LNAR838UVsXUxWFZFPTNbqqCw1V2+G0B6=k3GOghajMp35A@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 22, 2020 at 2:25 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 2/21/20 8:53 PM, Masahiro Yamada wrote:
> > On Sat, Feb 22, 2020 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >>
> >> Hi Jani,
> >>
> >> On Fri, Feb 21, 2020 at 7:54 PM Jani Nikula <jani.nikula@intel.com> wrote:
> >>>
> >>> $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
> >>> appended is writable. This is not the case when the output filename is
> >>> /dev/null:
> >>>
> >>>   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
> >>> /dev/null:1:0: error: cannot open /dev/null.gcno
> >>>   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
> >>> /dev/null:1:0: error: cannot open /dev/null.gcno
> >>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> >>> drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
> >>> make[5]: *** Waiting for unfinished jobs....
> >>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> >>> drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
> >>>
> >>> Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
> >>> make sense here anyway.
> >>
> >>
> >>
> >> Is GCOV the only case that produces a separate file?
> >>
> >> Could you also test CONFIG_DEBUG_INFO_SPLIT, please ?
> >>
> >>
> >> The GCC manual says this:
> >>
> >> -gsplit-dwarf
> >>
> >>    Separate as much DWARF debugging information as possible into a
> >> separate output
> >>    file with the extension .dwo. This option allows the build system
> >> to avoid linking
> >>    files with debug information. To be useful, this option requires a debugger
> >>    capable of reading .dwo files.
> >>
> >
> >
> > I just tested it.
> >
> > This is not a problem for header test
> > because cmd_hdrtest uses '-S' instead of '-c'.
> >
> > If '-c' were used, we would see a similar error.
> >
> >
> > So, gsplit-dwarf is OK.
>
> Yes, works for me also.
>
> (I think you have a faster build machine that I do. I began the build
> almost immediately after reading your email. :)


I use a reasonable PC for my development.
(core-i9 with 4 physical cores)


I just compiled under i915/ with this command:

make drivers/gpu/drm/i915/




-- 
Best Regards
Masahiro Yamada
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
