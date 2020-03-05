Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C477517AEC2
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 20:08:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D143E89829;
	Thu,  5 Mar 2020 19:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D789289829
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 19:08:13 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id h2so3764350pgr.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 11:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=vV8z0GsZZu3m0kH6uF6vvQ4/IvRFkRrMZtfhsx0k6TI=;
 b=YV7xV8M3DhjS341B1FbWI2e9/z0zGE3HQi+lrKeH8yMk2RZK1VmLYNo03dMRXeZ8zV
 /rKvnFQua/efZO9ZS3hkwq8Kflsny8X+eU98ywOVqVDH08/XxtsD9P0kEXad07BARzYF
 efsA+z44yTwkK5AAiNf10EZx96kpxg7NrI4KLbrZbw9/fH7k48LiCw6nMGgVzvIc1v+Z
 qhvjefnJePz5qhwzpvnOUikJn/kfL3UMNJ+j+Vqo7iY30M/9RY2Isbt/lxiCL6Y2y987
 6l0JLD6Jah8/0L2/5eRl8z4m42rzYvg4fAbcnyMRP6ENNyHKAHSRFg2tpfa7kronF3CJ
 aT9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=vV8z0GsZZu3m0kH6uF6vvQ4/IvRFkRrMZtfhsx0k6TI=;
 b=tjaDmjrqPGGJlEtN+ghfu8Umu3w7zw1ab2YYiio8JX6s0ysnSxRYPZl5cm82Na9RnC
 gS0sKV1sFZfsfEczHpMBjT7nsNy85GQZkR1ubH3Petd4trEQ+e3zvf+mVqqh2n8ohkSe
 VFKtTzFnoo3QYe5GcCme606ODOobgqjA4HYYEb+uyNG7pYzuErJiHlMR4ooppGnmU3bh
 dIJH1xD7e9Cq3s+5q7XMFhDLaBEgxxSS6fbsLLvGitDgLWYZgwjGVU07GYtcjL0LCFkG
 /W4K00pHkfskc28JI91HemkcKaOMjvVfy/E99rXmH6aDxZh7EAprgfZH0zFB+hNHZfhm
 sGLQ==
X-Gm-Message-State: ANhLgQ0LVnNRMDbych0qDK2pQN4elbgHk+mj1xG0oPxwgKhY5p6zdDET
 MdHRT7ioh4rkZ4Icn60y0KXjk/1GgfMIbCvIDAg=
X-Google-Smtp-Source: ADFU+vtsPNEhoZYfLLNXWhaa0tC5oLUyO6VhuMmUdbuSEAtXZtyepn0wMub0ueCCxhSbMt9+4v6YFAEs8eBaVHIIwmI=
X-Received: by 2002:a65:4bc5:: with SMTP id p5mr8786317pgr.409.1583435293361; 
 Thu, 05 Mar 2020 11:08:13 -0800 (PST)
Date: Thu,  5 Mar 2020 11:08:11 -0800
In-Reply-To: <d5d0609ac6a81f940d91bf93a11506b0af0ce631.camel@intel.com>
Message-Id: <20200305190811.3009-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <d5d0609ac6a81f940d91bf93a11506b0af0ce631.camel@intel.com>
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

Hello Jose,
So this is triggering a very subtle bug in 2 separate CI systems:
- KernelCI: https://storage.kernelci.org/next/master/next-20200305/x86_64/x86_64_defconfig/clang-9/build.log
- our CI: https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/293826383

commit 50148a2 ("drm/i915/tgl: Move and restrict Wa_1408615072")

for Clang builds.  It seems that Clang is inlining `wa_masked_en` into
`rcs_engine_wa_init`, which has implications for `__builtin_constant_p`
evaluation.

The relevant call chain looks like:

rcs_engine_wa_init (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
  wa_masked_en (drivers/gpu/drm/i915/gt/intel_workarounds.c) ->
    _MASKED_BIT_ENABLE (drivers/gpu/drm/i915/i915_reg.h) ->
      _MASKED_FIELD (drivers/gpu/drm/i915/i915_reg.h)

So it looks like there's build time validation that the masks and values have
their bottom 2 bytes unset (mask & 0xffff0000, little endian).  (There doesn't
seem to be equivalent runtime checks that the masks & values obey this
invariant when they're not "integer constant expressions").

This will break should GCC ever decide to inline `wa_masked_en` into
`rcs_engine_wa_init`.

VSUNIT_CLKGATE_DIS_TGL is defined as `REG_BIT(19)` which evaluates to
0x00080000, which would fail the check against
0xffff0000.

Can you please validate that VSUNIT_CLKGATE_DIS_TGL has the correct value, or
if the invariant that the bottom two bytes of values passed to
`_MASKED_BIT_ENABLE` must be set?

I would expect one of those two to be incorrect.

Link: https://github.com/ClangBuiltLinux/linux/issues/918
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
