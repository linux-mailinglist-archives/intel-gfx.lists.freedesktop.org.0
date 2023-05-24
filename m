Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0038D737421
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202FB10E376;
	Tue, 20 Jun 2023 18:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com
 [IPv6:2607:f8b0:4864:20::e2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7399210E57D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 07:02:36 +0000 (UTC)
Received: by mail-vs1-xe2a.google.com with SMTP id
 ada2fe7eead31-4394b1820a8so194030137.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 00:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1684911755; x=1687503755;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Zathy20xS7vJeZuKOGggo3NoBWnp0DVNbyEjeiM6xS4=;
 b=GS0T+2ZiZtIWhMLKI1BCOYeVgv/IGtV84JHpGDoKwUETz4c5FtzkwVnkLZRCAUXr1w
 UOjLF0XImHP0TCxXerBTDu66jzWaLqIR9nA8v6V3EWkXUKhwccAiz/r4JNsXzNNbfyFu
 nkw+g0Ehx1u0wgcDZr5f8Pz/jHmmPlEZAglyd6lx2LTlJhSwj5U9kaoBXf/dQ3pujEmR
 r20QDnFLKHPJ373hZiYFZ+HMh3Tp2Fd/nANKSufzOjFVaDzoXf/4zxNzYDQeWcR6iT+g
 kcmTH8SLmxfacnyj+71eWYp0Vr8Xvd9/4o5fysO5cedJS1mDIsMXl9PfLh5zO+vTPfGp
 xvKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684911755; x=1687503755;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Zathy20xS7vJeZuKOGggo3NoBWnp0DVNbyEjeiM6xS4=;
 b=XMRS7PnaZNgJMpzqSQoeWS0egTd03sKWpnxNQ63hYRCrUNckpV5lzLdpR2UDJ/EhaB
 L/5j2foqKO8wdIL+sma0KW0qc4VPzlZi1uNfgyZFRpoCdfnfGdhm9J9XOQvYZyI821kw
 0ST3xa7FdhLt/lBpV7c+2V6WgLR1Qi7hIXa799fHIwkapdsYAm6KUkBvodSmV527dvkk
 ItcNTd0ioZZacBKwtymB60GlCcjB5jIfyS+AG0nOksNshHiyXJyuhIMUF3jb8e99cJB0
 yAF8l3RZahYBuWeOvNYKiAeCqXegMBl7dKK22Qk7CqvX0cVdjoqvlDPRwvT6vCSb/7M2
 SyAA==
X-Gm-Message-State: AC+VfDxQpjhEKoFcNrxruAk5/Jd2NSfsY/s5OBRZgBqa+Slxo+TCpzCu
 NBnmlRPFZCuyx3/qRPMr2iiAb/XflB832l7wpK5sLQ==
X-Google-Smtp-Source: ACHHUZ5YvfK9jIfenGUN1SYu3dWbneLgbIzcETIs71ai8XaJGabWjDHqNLVp3vKy8J/gVDKADHkGbupXtaLmckg4avo=
X-Received: by 2002:a05:6102:2f4:b0:437:db1d:7edf with SMTP id
 j20-20020a05610202f400b00437db1d7edfmr5330791vsj.26.1684911755092; Wed, 24
 May 2023 00:02:35 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 24 May 2023 12:32:24 +0530
Message-ID: <CA+G9fYv68V3ewK0Qj-syQj7qX-hQr0H1MFL=QFNuDoE_J2Zu-g@mail.gmail.com>
To: Linux-Next Mailing List <linux-next@vger.kernel.org>,
 clang-built-linux <llvm@lists.linux.dev>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 20 Jun 2023 18:28:21 +0000
Subject: [Intel-gfx] next: clang: x86_64: /intel_display.c:6012:3: error:
 unannotated fall-through between switch labels [-Werror,
 -Wimplicit-fallthrough]
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
Cc: Nathan Chancellor <nathan@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Linux next-20230523 and next-20230524 the x86_64 and i386 builds failed
with clang.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

make --silent --keep-going \
  --jobs=8 O=/home/tuxbuild/.cache/tuxmake/builds/1/build ARCH=x86_64 \
  SRCARCH=x86 CROSS_COMPILE=x86_64-linux-gnu- \
  'HOSTCC=sccache clang' 'CC=sccache clang' \
   LLVM=1 LLVM_IAS=1

drivers/gpu/drm/i915/display/intel_display.c:6012:3: error:
unannotated fall-through between switch labels
[-Werror,-Wimplicit-fallthrough]
                case I915_FORMAT_MOD_X_TILED:
                ^
drivers/gpu/drm/i915/display/intel_display.c:6012:3: note: insert
'break;' to avoid fall-through
                case I915_FORMAT_MOD_X_TILED:
                ^
                break;
1 error generated.

log:
 - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230524/testrun/17171777/suite/build/test/clang-lkftconfig/log
 - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230524/testrun/17171777/suite/build/test/clang-lkftconfig/history/



--
Linaro LKFT
https://lkft.linaro.org
