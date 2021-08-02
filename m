Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71193DDCB4
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 17:48:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34D36E060;
	Mon,  2 Aug 2021 15:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BCC6E040
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 15:48:38 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id x14so25088641edr.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Aug 2021 08:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Je1GkPMHTo+2u31ib2roEhUY3F7SuIQc0J7TjsVwWiE=;
 b=JtER75F4sNtYTnisUXWM1Jpt8fpK4oFJWMPbt6n0NdDtc8HJg0oxyl0jacevLFg1ZW
 wjKyGJLcufdeHBmqYBRijdG+Mm/2CIEtlwzYGQmRM7NU9Yko5cgXavaNlnBslZ8VDfsY
 VrsXdrKE2zc6eq0nYLazSmnAnc1aBL4PSaJm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Je1GkPMHTo+2u31ib2roEhUY3F7SuIQc0J7TjsVwWiE=;
 b=AJgM1pzH8+HcPi9qF9f7k0Y7LUUgIDImV3JOqFDNAeFiOGgWBx4GsNfW1/hdSbOuaB
 RUfKYQ/8L1JmocEsF0vY3+9BGrY1ZMR0Q2i+wqPtCGr0Wjc9GrancAdv+MTBOU+8yiD8
 pT+bS6GpPt+pL6LC/b7ucpHCvEtk1plgNbqb26w5YFoONBIfW+uAlHnWPXLIn1TW/PwQ
 rexkRV9B8mib5WCrsqzG0GBtTbWPjLTnl1qsJ8BO3X2TYLseJGPyE5KbG97TmlIi8Dlm
 H0gdrCb/Ypdfn3ljh6Rnlo+ayjN2zbQpbeZNTWxGdZmi54AHOsDy5L525y5h/lC6SpV5
 I2aQ==
X-Gm-Message-State: AOAM533sG4kJ+7G37ZiAjj695Z2ki8DwdqBSvMGbpMk2X9EDcOwax8JN
 Rvmo16z1xMKNhbKAUViGCqag9g==
X-Google-Smtp-Source: ABdhPJwD+GXYZNG8bHj/JTxK0aWduPIq/XEPD1FJQVGwUm9G3cmAudeX0rz7bTeVxC31HifIm4M3Yw==
X-Received: by 2002:aa7:df09:: with SMTP id c9mr20488180edy.379.1627919317232; 
 Mon, 02 Aug 2021 08:48:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m20sm5064020edv.67.2021.08.02.08.48.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 08:48:36 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon,  2 Aug 2021 17:47:57 +0200
Message-Id: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] remove rcu support from i915_address_space
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Jason wanted to do that as part of the scheduler series, but I object
since rcu is very, very hard to review when adding, and much, much harder
even to review when removing.

This is because simply looking for __rcu pointer annotations and rcu
functions isn't enough, rcu is also relied upon in many datastructures
which have internally and rcu_read_lock protection (or at least the
required amount of barriers), like xarray.

The other problem is that it inherits when chasing pointers, e.g.
i915_gem_engines has an rcu pointer to intel_context, which has a non-rcu
pointer to i915_address_space. But since we could look-up the entire chain
under rcu i.e. engines->context[i]->vm this means more code to audit.

The audit explodes pretty quickly.

Anyway I'm reasonable confident I got them all in the current code, and
slightly less confident that I managed to stitch together the full
history.

References to relevant commits throughout the series.

Cheers, Daniel

Daniel Vetter (9):
  drm/i915: Drop code to handle set-vm races from execbuf
  drm/i915: Rename i915_gem_context_get_vm_rcu to
    i915_gem_context_get_eb_vm
  drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
  drm/i915: Add i915_gem_context_is_full_ppgtt
  drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
  drm/i915: Drop __rcu from gem_context->vm
  drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
  drm/i915: Stop rcu support for i915_address_space
  drm/i915: Split out intel_context_create_user

 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 82 ++++---------------
 drivers/gpu/drm/i915/gem/i915_gem_context.h   | 13 ++-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 12 ++-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  8 +-
 .../drm/i915/gem/selftests/i915_gem_context.c | 32 +++-----
 .../gpu/drm/i915/gem/selftests/mock_context.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 22 ++++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  1 -
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  6 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 +-
 drivers/gpu/drm/i915/i915_trace.h             |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  4 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  4 +-
 18 files changed, 79 insertions(+), 123 deletions(-)

-- 
2.32.0

