Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE364B24B0C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA7110E021;
	Wed, 13 Aug 2025 13:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="ikprN/2E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A31110E715
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:50:53 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-24307977420so18610715ad.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093053; x=1755697853;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=o9QpCg6SOxitgtuC4/wfeZriEuxgyfcHAsMI7G1kjac=;
 b=ikprN/2E+2T5g3/yVkhYB9LOAe+UWBWBWAObu5qfiPB4jPXFW3xHyIyI5twSnZ6zRD
 b+gNHgAfKCI4ny4J22VfsceS+7Qz5h+cDdhI3Xt5bllFycp8YS7oxuGAuYmtS0//+mA4
 t0+uS2Pcys4VcJISZjXqT+jwZdYX85+X1P7Cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093053; x=1755697853;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=o9QpCg6SOxitgtuC4/wfeZriEuxgyfcHAsMI7G1kjac=;
 b=YY8slJn+oc1FpmPwRt4OGRp0dE8nOeOEqUmkwCk3+sh0ohZloA6eZVCcz29Jo0EKZn
 DPD8J/o8XugIZRvUf3FbgKkT5yywB6buaN+1UDmuZjF+RK11tRBEEy/ObxPL+wPU54WI
 R9vqIrDYA9hS37vsikesGCHC4aYn6ngI2Syxyhrd5HnYKN2bDXs75pBYON7sbQp6gMgt
 hqmIV87zuw+YfWsO0l67BM94RZQhvEyrEYuLZ03pCdtFDabnbZWnNKpyCqWD4xeRK/EY
 q5IWAM7I3cQEDOBFiAbkDiFmCtrh9LesuNrpeg8l40+wnj5N/XnpzXcEdWzk4lhNtBe6
 1Orw==
X-Gm-Message-State: AOJu0YzgCtDgb81DVJGw3unpcNWlnqaUUBZT8UkrsXJYbvIkgOlJaz3+
 za6/uykKNqPvaIeA+IzPUhUrKHlICUPUHxEJQq5faPkFBUvuetT9qt1Ktk/9/WEf9LE=
X-Gm-Gg: ASbGnctnH/Zotsz7qtKWpKroYDtwB9bzwJr7lLH1uuMFax+SY+cn2q+IQhw/75cKzmY
 /9PEYPS9QV3Odv26bNTv2FYuHIqXPiy8s3HYjg39bmRHf4cWBHqPEB8RAUr/jrfg+u8FdX849C0
 sc2okgJcyb3RBkNhy9qGsHxpA1xPCjJR8awHkqUm9pHUwPxb3mhkTxX1RpHqusLknbmEK3phstW
 38O/s8U/d/kPW0qGigsIUT841BaT+s4Sz7RYueaH/2kdsoST7SSm5slYTH7UfRmzC78/auEg9P+
 Zysf/ID5AZRbLYlGfr5R5CXAjSDoauN6Jzm0I1yfaXLYr78T6uPqFR2JhcGue6dN7LkEiUVIjIq
 9tOrrxuis8MzGa2SQu8yHmDFyCo8tREwa
X-Google-Smtp-Source: AGHT+IFOL/f2Pi8YdUDIexGQTTrc7uv9+BlJFeIXVxDVySCr/wPEa7YKtcTOyt37n011Rj3YjkX20A==
X-Received: by 2002:a17:902:c401:b0:240:2281:bd0e with SMTP id
 d9443c01a7336-2430d08b1a3mr51566435ad.2.1755093052624; 
 Wed, 13 Aug 2025 06:50:52 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.50.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:50:52 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 0/9 v3] drm/i915: Remove legacy struct_mutex usage
Date: Wed, 13 Aug 2025 10:50:24 -0300
Message-ID: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

This patch series completes the long-standing effort to eliminate usage
of the legacy struct_mutex from i915 driver.

Historically, struct_mutex was used to serialize access to global driver
state across the DRM subsystem. Over time, it has been gradually
replaced by more fine-grained and localized locking mechanism. The i915
driver was the last remaining user of this lock, and even there, its
usage had become redundant or outdated.

Specifically, the mutex was only still used in two places: i915_irq.c
and intel_guc_log.c. In both cases, the lock could either be removed or
replaced with a more appropriate lock.

This series performs the following steps:

* Moves struct_mutex from drm_device to drm_i915_private, since i915 was
  its only remaining user.
* Removes or replaces all remaining uses of struct_mutex in i915 driver.
* Updates or removes comments referring to struct_mutex to prevent
  future confusion.
* Deletes the lock entirely from the i915 driver once no longer in use.
* Cleans up the corresponding TODO entry in Documentation/gpu/todo.rst
  and comments about struct_mutex in Documentation/gpu/i915.rst.

Some additional notes:

* In intel_guc_log.c, a missing destructor for a lock was identified.
  Since the series introduces a new lock in that area, this issue was
  addressed first, to the two locks do not lack memory in kernel.

* Comments referencing struct_mutex were spread across various parts of
  i915 codebase. To improve clarity, they were cleaned up across three
  separate patches.

The only remianig reference to struct_mutex is in a comment in
i915_gem_execbuffer.c, inside the eb_relocate_vma() function. It was
kept because the intended locking mechanism for that case is unclear.

Changes since v1:
* Rebased onto latest drm-tip as requested for CI compatibility
* No changes to code/content

Changes since v2:
* Rebased onto tip/drm-tip
* Correct code formatting

Luiz Otavio Mello (9):
  drm/i915: Move struct_mutex to drm_i915_private
  drm/i915: Remove struct_mutex in i915_irq.c
  drm/i915: Change mutex initialization in intel_guc_log
  drm/i915: Replace struct_mutex in intel_guc_log
  drm/i915/gem: Clean-up outdated struct_mutex comments
  drm/i915/display: Remove outdated struct_mutex comments
  drm/i915: Clean-up outdated struct_mutex comments
  drm/i915: Drop unused struct_mutex from drm_i915_private
  drm/i915: Remove todo and comments about struct_mutex

 Documentation/gpu/i915.rst                    |  7 ------
 Documentation/gpu/todo.rst                    | 25 -------------------
 drivers/gpu/drm/drm_drv.c                     |  2 --
 drivers/gpu/drm/i915/display/intel_fbc.c      |  6 +----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +--
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  4 +--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |  8 +++---
 drivers/gpu/drm/i915/gt/intel_reset_types.h   |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 12 ++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  8 ++++++
 drivers/gpu/drm/i915/i915_drv.h               | 14 +++++++++--
 drivers/gpu/drm/i915/i915_gem.c               |  3 +--
 drivers/gpu/drm/i915/i915_irq.c               |  6 -----
 include/drm/drm_device.h                      | 10 --------
 15 files changed, 41 insertions(+), 72 deletions(-)

-- 
2.50.1

