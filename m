Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CC759DB78
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A261131EC;
	Tue, 23 Aug 2022 12:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FE8113A58
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 12:19:29 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id 202so12101159pgc.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 05:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc;
 bh=h3Gt6GfO7iahk4Z9hgPXcaayP+4k5NiZRatsBBvqq3I=;
 b=jp91CuNf82Skvn3Go665xPR4GMy50eIIwSw3xiqXHF3AEc70k9TFESW55BcprwdbDq
 QXXf7cevVFt3kkGMx1CFrUJSloQQx45NC5ABSD4phvkOF3dmKerUGShNblpN+spjNymo
 OoQHQ6PsX2JgYegEJBaGkjdNRxUKr61B6maxPGjtTX1wdyR+KssjchCArRM1LFRhzKhl
 BsGT8+KDFo6lE7lE3QgACghYOO7cdeXkgZvzQvcLgZaXYDdapUkFiyUEstS9ltiJGF9q
 ZM+XHqlhpwnE46ceHuBpT1AQg/4oIBNGrG3UCl5uMcdQalmUp+6VMg70OUG6ArBdIQG7
 CiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc;
 bh=h3Gt6GfO7iahk4Z9hgPXcaayP+4k5NiZRatsBBvqq3I=;
 b=zJvYHutQR0gSAUT8qIDvIdBcR5BvauMPkUWxS+mUelTQHHJ/PItie4+h9LJ4grZxyX
 /CxFPO3iJeTQq1ML8Wlp46stOmRluwzK3GensXYM/IZLxciCTZTSY5ZbZbvRHbSd6Za0
 K9MksXNxAvukwO8derMEQepAupi4foYaPFY/NV70QliRGfz438RTaeEyTE+Wao9IMlMV
 4GHiPMJm1SfFDFxg8P2Yoo0lcO1/snK7X27aWPcXTzS3ZAhYVGTclGRFO16M0TavV7mM
 kAeZel42pmKJ1AQZLPd6ePVP67W+kA1qjc/1oCxHoUc/rTG6/GVcF/RwLNfZW1jLkJi0
 219A==
X-Gm-Message-State: ACgBeo1igZs2Ds0jVkYwQeGHCJyYO/JV024Zc8TpU+bnoDi5Bgn8gtMZ
 xOSjWNUbQbmgGk3wQOxSbdY=
X-Google-Smtp-Source: AA6agR7UZf1qp2LkBQMndbgUpl3eJZqKhhxsCdF4Z8J/C8rZKqgJCtMoQxqRq6OO53NVLfLlUcARkw==
X-Received: by 2002:a63:5b10:0:b0:429:c287:7bfa with SMTP id
 p16-20020a635b10000000b00429c2877bfamr19658653pgb.347.1661257168688; 
 Tue, 23 Aug 2022 05:19:28 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e8-20020a170902b78800b0016cf3f124e5sm10291661pls.131.2022.08.23.05.19.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Aug 2022 05:19:27 -0700 (PDT)
Date: Tue, 23 Aug 2022 05:19:26 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220823121926.GD203169@roeck-us.net>
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com>
 <87ilmoo707.fsf@intel.com>
 <50a6d108-4518-c30e-5096-3ee921c75606@intel.com>
 <8735dnmgwp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8735dnmgwp.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 23, 2022 at 12:46:14PM +0300, Jani Nikula wrote:
[ ... ]
> >> 
> >> So why not do this in i915 Kconfig:
> >> 
> >> config DRM_I915
> >> 	...
> >> 	depends on HWMON || HWMON=n
> > With this change I am getting recursive dependancy error when I run make 
> > oldconfig
> >
> > badal@bnilawar-desk1:~/workspace/wp3/drm-tip$ make oldconfig
> >    HOSTCC  scripts/basic/fixdep
> >    HOSTCC  scripts/kconfig/conf.o
> >    HOSTCC  scripts/kconfig/confdata.o
> >    HOSTCC  scripts/kconfig/expr.o
> >    LEX     scripts/kconfig/lexer.lex.c
> >    YACC    scripts/kconfig/parser.tab.[ch]
> >    HOSTCC  scripts/kconfig/lexer.lex.o
> >    HOSTCC  scripts/kconfig/menu.o
> >    HOSTCC  scripts/kconfig/parser.tab.o
> >    HOSTCC  scripts/kconfig/preprocess.o
> >    HOSTCC  scripts/kconfig/symbol.o
> >    HOSTCC  scripts/kconfig/util.o
> >    HOSTLD  scripts/kconfig/conf
> > drivers/gpu/drm/i915/Kconfig:2:error: recursive dependency detected!
> > drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on HWMON
> > drivers/hwmon/Kconfig:6:        symbol HWMON is selected by EEEPC_LAPTOP
> > drivers/platform/x86/Kconfig:332:       symbol EEEPC_LAPTOP depends on INPUT
> > drivers/input/Kconfig:8:        symbol INPUT is selected by DRM_I915
> > For a resolution refer to Documentation/kbuild/kconfig-language.rst
> > subsection "Kconfig recursive dependency limitations"
> 
> *sigh*
> 
>   Note:
> 	select should be used with care. select will force
> 	a symbol to a value without visiting the dependencies.
> 	By abusing select you are able to select a symbol FOO even
> 	if FOO depends on BAR that is not set.
> 	In general use select only for non-visible symbols
> 	(no prompts anywhere) and for symbols with no dependencies.
> 	That will limit the usefulness but on the other hand avoid
> 	the illegal configurations all over.
> 
Agreed. HWMON should not be selected anywhere. Unfortunately it is, and
drm is no exception. It is selected by DRM_RADEON and DRM_AMDGPU.
Maybe just select it in DRM_I915 as well after all; in practice it won't
make a difference.

Guenter
