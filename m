Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A66155D4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 00:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FD110E435;
	Tue,  1 Nov 2022 23:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B91F10E436
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 23:06:14 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id 130so14835085pfu.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 16:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XPbyEQQBk73Ni0h1h30fs6y6Ff39h2pLPwf6IGZm/XU=;
 b=eUptdhlUsvV6f6+h66eOG5r0izRulrLvkJ5ys7OCQD/MHQs5xN6d6LVLU3v2yxx4CR
 raSVpGmGBR51oXmx9pkSq8GN45s+bvJYMB8GYdxFRTlJL1yujWq5juUIeiJcJUWwkSQz
 2/xal7WVL9cZlY4jIns8zQ4LgzzbZdBp7YoPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XPbyEQQBk73Ni0h1h30fs6y6Ff39h2pLPwf6IGZm/XU=;
 b=QE9BGRVN0m36fiqqo7AF/zjLFCnqeSoL0jHSEV5xZ5mamHfMej36/MfXGfZUUKuod+
 eKX4NN6VPHJ4fumwBBWFAAiApT7Yl/l8Ldqgi2WExhprYrazFY0RDM0VtA3i0GEzX2bw
 5m3+NTCs48aehoSNafIwJB8Rowm2h0t2+zKpZehnlT89OJA9usnvGZcUZ/+4W9giku/A
 7UWJrI0nd9wWjqDf5Kkrr/ODtiQ8fNdvU3HebImo0Wg3kthKBXgANBayEZxTBWiilP/0
 VGQVuoOLLGNaZWauWxywLu62LqjJv9tu2R0HMI1q4CTSxEufAdTPlCuubfpICJMohAtm
 9NZA==
X-Gm-Message-State: ACrzQf2MtOGyICO+07wl1G4iz3r5lqlvjk6Fqkhnr0kd0YcuLopWjAb9
 e9D/AAxhDWIhNQikY+jJbznpGw==
X-Google-Smtp-Source: AMsMyM7KcPBNktfAVOVyJfxO7PvzhGbnCFsHqvVrZlIhrLio7l35KizVH52ERAEGwnHFBBN97GItsQ==
X-Received: by 2002:a63:ec51:0:b0:46f:ed8d:7089 with SMTP id
 r17-20020a63ec51000000b0046fed8d7089mr4658386pgj.469.1667343973773; 
 Tue, 01 Nov 2022 16:06:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 h29-20020a63121d000000b004388ba7e5a9sm6344238pgl.49.2022.11.01.16.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 16:06:13 -0700 (PDT)
Date: Tue, 1 Nov 2022 16:06:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <202211011605.2D8C927C2@keescook>
References: <20220926191109.1803094-1-keescook@chromium.org>
 <20221024201125.1416422-1-gwan-gyeong.mun@intel.com>
 <ffcfb7ce-7646-c827-8d29-7c41e4b121d6@intel.com>
 <202210290029.3CD089A86C@keescook>
 <850085e1-e420-b6eb-104d-15694a400bb7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <850085e1-e420-b6eb-104d-15694a400bb7@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] overflow: Introduce overflows_type() and
 castable_to_type()
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
Cc: arnd@kernel.org, airlied@linux.ie, trix@redhat.com, dlatypov@google.com,
 llvm@lists.linux.dev, ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, gustavoars@kernel.org, nathan@kernel.org,
 linux-sparse@vger.kernel.org, linux-hardening@vger.kernel.org,
 rodrigo.vivi@intel.com, mchehab@kernel.org, intel-gfx@lists.freedesktop.org,
 luc.vanoostenryck@gmail.com, vitor@massaru.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Oct 29, 2022 at 11:01:38AM +0300, Gwan-gyeong Mun wrote:
> 
> 
> On 10/29/22 10:32 AM, Kees Cook wrote:
> > On Sat, Oct 29, 2022 at 08:55:43AM +0300, Gwan-gyeong Mun wrote:
> > > Hi Kees,
> > 
> > Hi! :)
> > 
> > > I've updated to v5 with the last comment of Nathan.
> > > Could you please kindly review what more is needed as we move forward with
> > > this patch?
> > 
> > It looks fine to me -- I assume it'll go via the drm tree? Would you
> > rather I carry the non-drm changes in my tree instead?
> > 
> Hi!
> Yes, I think it would be better to run this patch on your tree.
> this patch moves the macro of i915 to overflows.h and modifies one part of
> drm's driver code, but I think this part can be easily applied when merging
> into the drm tree.

I've rebased it to the hardening tree, and it should appear in -next
shortly:

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/hardening&id=5904fcb776d0b518be96bca43f258db90f26ba9a

-- 
Kees Cook
