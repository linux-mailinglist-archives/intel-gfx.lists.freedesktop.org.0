Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDCE3459FE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 09:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1CD6E0CE;
	Tue, 23 Mar 2021 08:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB936E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 08:45:00 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so10337927wmj.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 01:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7ctMAs2ck6qhQkBco0XwNML8tiYEOiG6Y+b8Y6p/AsQ=;
 b=k0G0WK9sV8PLOfVaSjiR0KLC4w9QmPmfQ3RJzQ2g06W4sdwvTypK/1z4zA7S2u0AoV
 gdcqFGbhtUl2HlbxOinofPHYfvT7CyqAlaYJx+7ZfURF67a9wvVwMruu2Acxo/0KEqlS
 g4zfVCe4Hy4hIaQ6ZTs/qUKfuxbWdP1dDCbFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7ctMAs2ck6qhQkBco0XwNML8tiYEOiG6Y+b8Y6p/AsQ=;
 b=LdCWTWlzUKs98n4PMsENxL8H8HvmwNeXbxiH/DcohY/1yYC99FiJWVT+UXT1gwzLWw
 GZPatU8BipHwnHOFC96cth4M0Vmjp/EtehDWzI+lP2RBt6c1K+5vBpW5Zbjq7GtdEthY
 Z6zKwugsQEkEXC81clZ179J4D2AVaHGGSvxYF0SEkZLifPP2iSOMWEGuk7PO/2MvsX8Z
 0WpEwDVsDesqqFNKgxx3nRqXHPI8694zdmx+dSEP8e5yvf8AIhHzZefdh/BHJXbcejGX
 9eiVz7nBDvQ70amH2444g0ln+e04GDY6vT8FT5Z5T6s/7sLWPA+IBWvGTNiaWUXpBRPG
 ouKw==
X-Gm-Message-State: AOAM530a4wTHQFxEp7ulysE2tmOFouxjrGR4aK0dUixEShLbFwy4PiCH
 GzNzZldIwWWD5L/CdcFOyZUoNw==
X-Google-Smtp-Source: ABdhPJwQshgo2y6o1jYvCLDYmYmjLnx3OE40p+nYnx2V6Uu+7yXfI8YgW1III2M9Z2QzEPMN2R6+0g==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr2244841wml.147.1616489099002; 
 Tue, 23 Mar 2021 01:44:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g202sm1772835wme.20.2021.03.23.01.44.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 01:44:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 23 Mar 2021 09:44:52 +0100
Message-Id: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: add gem/gt TODO
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've discussed a bit how to get the gem/gt team better integrated
and collaborate more with the wider community and agreed to the
following:

- all gem/gt patches are reviewed on dri-devel for now. That's
  overkill, but in the past there was definitely too little of that.

- i915-gem folks are encouraged to cross review core patches from
  other teams

- big features (especially uapi changes) need to be discussed in an
  rfc patch that documents the interface and big picture design,
  before we get lost in the details of the code

- Also a rough TODO (can be refined as we go ofc) to get gem/gt back
  on track, like we've e.g. done with DAL/DC to get that in shape.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Dave Airlie <airlied@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/TODO.txt | 36 +++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/TODO.txt

diff --git a/drivers/gpu/drm/i915/TODO.txt b/drivers/gpu/drm/i915/TODO.txt
new file mode 100644
index 000000000000..d2e5bbb6339d
--- /dev/null
+++ b/drivers/gpu/drm/i915/TODO.txt
@@ -0,0 +1,36 @@
+gem/gt TODO items
+-----------------
+
+- For discrete memory manager, merge enough dg1 to be able to refactor it to
+  TTM. Then land pci ids (just in case that turns up an uapi problem). TTM has
+  improved a lot the past 2 years, there's no reason anymore not to use it.
+
+- Come up with a plan what to do with drm/scheduler and how to get there.
+
+- There's a lot of complexity added past few years to make relocations faster.
+  That doesn't make sense given hw and gpu apis moved away from this model years
+  ago:
+  1. Land a modern pre-bound uapi like VM_BIND
+  2. Any complexity added in this area past few years which can't be justified
+  with VM_BIND using userspace should be removed. Looking at amdgpu dma_resv on
+  the bo and vm, plus some lru locks is all that needed. No complex rcu,
+  refcounts, caching, ... on everything.
+  This is the matching task on the vm side compared to ttm/dma_resv on the
+  backing storage side.
+
+- i915_sw_fence seems to be the main structure for the i915-gem dma_fence model.
+  How-to-dma_fence is core and drivers really shouldn't build their own world
+  here, treating everything else as a fixed platform. i915_sw_fence concepts
+  should be moved to dma_fence, drm/scheduler or atomic commit helpers. Or
+  removed if dri-devel consensus is that it's not a good idea. Once that's done
+  maybe even remove it if there's nothing left.
+
+Smaller things:
+- i915_utils.h needs to be moved to the right places.
+
+- dma_fence_work should be in drivers/dma-buf
+
+- i915_mm.c should be moved to the right places. Some of the helpers also look a
+  bit fishy:
+
+  https://lore.kernel.org/linux-mm/20210301083320.943079-1-hch@lst.de/
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
