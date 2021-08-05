Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE57D3E12CF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF146E5CA;
	Thu,  5 Aug 2021 10:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC096E573
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:39:23 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id u3so8802699ejz.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nEhSWkigAaOfWaZKnIIHk2rBZ9MlD+oJszdpR+hXuQE=;
 b=Cu4k+Z+ngAhUaa5PzpDlfdCHjBibsN4g5JlNhZ29CNS5WufR1VbFPIlYXKjQCDRqM/
 z62y363XwLHwNQRl5rDgMt6PTl8KiOfLYz1P14h9oXRiJv8UrvMU0hnJc1SHk8q3G8Kx
 c+9GrKLKgYLpiwwBoIt/iRLhgj0h3nvNlnarE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nEhSWkigAaOfWaZKnIIHk2rBZ9MlD+oJszdpR+hXuQE=;
 b=hHxTFa8m0JJ/zpy5RooEl22DtSrt/pJrJeraEsLc7Xx/jwZXhYJkBBcU7YWiIeS04P
 XDaD8OZ/SB/vFFXp7+h6WZX/ScmgZSa9TzmcrmT4BrCUtzJrmGiUqhwlarRhGYUB8FHZ
 iSqTcu8tJnHCOpp43UbsTA2A9QIRnrePPTcpRC/bnTOkViZxiwCJdgf/6FImb4b57nnp
 pO+fvidJP6ZzR6fetEt0OkN9VTzj1h8ib6mYimlGmQlxx8v7byQ0LwAsDDFQXiK8Bokb
 galez/599VQckBUoYxbmRB/PDUZm1zk4wAtoHGpDi2V/gcEfz0w8obXqRRYwawdfjw42
 6hkQ==
X-Gm-Message-State: AOAM532Xa1ig10+9XZGVEaRVHa9tozk3z7bVrXb863ktOYAkq5GIhmgI
 OsJu+/3dMta9fwUyf/UUkHmzhGy43aqGQQ==
X-Google-Smtp-Source: ABdhPJz5IfvBojc6FiqajANRxmJryjLWT7PMLpjcy6+isGfWRn2m0XRiYfTB6Sneft9s9woYk2xI8w==
X-Received: by 2002:a17:906:30d0:: with SMTP id
 b16mr4124963ejb.495.1628159961595; 
 Thu, 05 Aug 2021 03:39:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j22sm1593727ejt.11.2021.08.05.03.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:39:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu,  5 Aug 2021 12:39:08 +0200
Message-Id: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/8] remove rcu support from
 i915_address_space
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

My seemingly trivial but totally not cleanup patch at the end now leaks,
so clearly the fixup in v2 did improve things but I still don't understand
that. Anyway that was fairly orthogonal, so I dropped it for later.

v1: https://lore.kernel.org/dri-devel/20210802154806.3710472-1-daniel.vetter@ffwll.ch/
v2: https://lore.kernel.org/dri-devel/20210804142522.4113021-1-daniel.vetter@ffwll.ch/

Cheers, Daniel

Daniel Vetter (8):
  drm/i915: Drop code to handle set-vm races from execbuf
  drm/i915: Rename i915_gem_context_get_vm_rcu to
    i915_gem_context_get_eb_vm
  drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
  drm/i915: Add i915_gem_context_is_full_ppgtt
  drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
  drm/i915: Drop __rcu from gem_context->vm
  drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
  drm/i915: Stop rcu support for i915_address_space

 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 78 ++++---------------
 drivers/gpu/drm/i915/gem/i915_gem_context.h   | 13 ++--
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  8 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  8 +-
 .../drm/i915/gem/selftests/i915_gem_context.c | 34 ++++----
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  1 -
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  6 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  4 +-
 drivers/gpu/drm/i915/i915_trace.h             |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  4 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  4 +-
 15 files changed, 52 insertions(+), 118 deletions(-)

-- 
2.32.0

