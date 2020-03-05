Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B0C17AED3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 20:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90616EBFF;
	Thu,  5 Mar 2020 19:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E676EBFE
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 19:15:40 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id c33so955358pgl.20
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 11:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5rxqTIhyXDQUDBlmPKY/XymUnZCSNBSx6WZr21UpFlk=;
 b=jC3W1Q7eMPsQZnRICg6SFIdGdEOzMnTO6o7xObUBlnCrLfarwt7qSGLeQe9qF+CGuR
 kwq/kQVU71YjzPbTD3BC96JikpIyiIF0uv7Y5y40cX/PRyL00uoPI8KzEXczWXlgL0AG
 QTYNnx0SxZ1Wl+gGOFSDrg9lavxG509Fm/byzvn3gXmlwo2u0aapMlD+vXLxKcu20bsx
 5GIk4bprJoUzP76CmtrxZzhvIs8828geENYS4jeoVdwJ2l8l67DWH4upf+HqWbqBcyDg
 aEv5yRP4zaSqnL+Fl+9o5ngvGXVqupfcRH/YDojWMz9vPC0RtJN7tFGcAn6yCQQ5k1qR
 UTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5rxqTIhyXDQUDBlmPKY/XymUnZCSNBSx6WZr21UpFlk=;
 b=WseL/wpI8QU8PGGPnTQhpivnfAYvxNQFH+Gx6XfzqfOTu3DoLj6Rwy+TamR0As8LS+
 cIkBZ3ko0NA/WJV9uzi924YF4JgC4tR1FTEGMDixKwmxDI2JBbvEKa0CB1kZoO5pEEpF
 zKAxwutxPUBOl3odHCKbTTwXxm01v+2ve/lnUJVriVcSCQ0DfMrMzje1kd6dWLgedjv6
 9GeaTdEqt5jM/nAhabUX4mduJW/tpXUPG4F+M65LvI2C6CFz69S8s4SxkrDvIVRB39X+
 6w9KdrYDgUMNlgCVREq8Yeof25bOCl4HDPmnUg09NPfGIgUIlLEwJEMr0e2uO6TjH0v+
 /DCg==
X-Gm-Message-State: ANhLgQ1uGKh/QE9++gmuxlrW9iJ29NYEm3hZl4fCOIwZyJipKSde1uFA
 iMAlCBduCEiMZ5NYTYoIUnmII92giwgCPar/pZY=
X-Google-Smtp-Source: ADFU+vu4bsr7hB2DvTZU4ZInYRvXZ0RKK/E4wYxG4BltlcM2kIhn7BX3pkyK3q248JttQ2CXCPoA5kMicBuElGdZXQw=
X-Received: by 2002:a63:35c1:: with SMTP id c184mr9226603pga.121.1583435740308; 
 Thu, 05 Mar 2020 11:15:40 -0800 (PST)
Date: Thu,  5 Mar 2020 11:15:38 -0800
In-Reply-To: <20200305190811.3009-1-ndesaulniers@google.com>
Message-Id: <20200305191538.6570-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200305190811.3009-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
From: Nick Desaulniers <ndesaulniers@google.com>
To: jose.souza@intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Move and restrict
 Wa_1408615072
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
Cc: clang-built-linux@googlegroups.com, intel-gfx@lists.freedesktop.org,
 bot@kernelci.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Hello Jose,
> So this is triggering a very subtle bug in 2 separate CI systems:
> - KernelCI: https://storage.kernelci.org/next/master/next-20200305/x86_64/x86_64_defconfig/clang-9/build.log
> - our CI: https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/293826383
> 
> commit 50148a2 ("drm/i915/tgl: Move and restrict Wa_1408615072")
> 
> for Clang builds.  It seems that Clang is inlining `wa_masked_en` into
> `rcs_engine_wa_init`, which has implications for `__builtin_constant_p`
> evaluation.
> 
> The relevant call chain looks like:
> 
> rcs_engine_wa_init (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
>   wa_masked_en (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
>     _MASKED_BIT_ENABLE (drivers/gpu/drm/i915/i915_reg.h) ->
>       _MASKED_FIELD (drivers/gpu/drm/i915/i915_reg.h)
> 
> So it looks like there's build time validation that the masks and values have
> their bottom 2 bytes unset (mask & 0xffff0000, little endian).  (There doesn't
> seem to be equivalent runtime checks that the masks & values obey this
> invariant when they're not "integer constant expressions").
> 
> This will break should GCC ever decide to inline `wa_masked_en` into
> `rcs_engine_wa_init`.
> 
> VSUNIT_CLKGATE_DIS_TGL is defined as `REG_BIT(19)` which evaluates to
> 0x00080000, which would fail the check against
> 0xffff0000.
> 
> Can you please validate that VSUNIT_CLKGATE_DIS_TGL has the correct value, or
> if the invariant that the bottom two bytes of values passed to
> `_MASKED_BIT_ENABLE` must be set?

(Sorry, didn't quite finish that sentence, I meant to say):

Can you please validate that VSUNIT_CLKGATE_DIS_TGL has the correct value, or
if the invariant that the bottom two bytes of values passed to
`_MASKED_BIT_ENABLE` must not be set should still hold, otherwise please either
revert or drop your patch if you cannot resolve quickly (otherwise these two CI
systems will be red).

> 
> I would expect one of those two to be incorrect.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/918
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
