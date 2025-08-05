Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F7BB1B6AC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEBC10E068;
	Tue,  5 Aug 2025 14:39:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="C0AsDbPr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11BB10E068
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:39:26 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-76bc61152d8so4689444b3a.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404766; x=1755009566;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=qdVZXCiIO7ug31YUFClpvZqUEX350zwu/Pv3sCY6zPA=;
 b=C0AsDbPrlMWmg19+nldXlTkTiUqh+hkSEVv1juWTcFYZ/+fGRhzrsd3nzi7pbDE3uN
 K0eMWYfhepUi9DDsZafLSf5lsWol54TPbJgQOWev72Ic1GLFMKPvKGLbJefFvG2kJQdq
 0jGsBocQSGQsvFFYI41zvUvqwHklZ/vk/FtvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404766; x=1755009566;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qdVZXCiIO7ug31YUFClpvZqUEX350zwu/Pv3sCY6zPA=;
 b=UQSVEtFoq9Y7c/iYK+88uefNP35fDJgbbHv2z4quPhiEy2v8BMoyeYeBQ6WiOGvyd6
 xgvqKqXs+bqatnh+KiJmSr7lchCL5G7DxpF6rUwSkVyearjiVaV5P1GCvvwnd3ZzXZ2Z
 PxG9AtKnSXUJBNIjU0DCEXw3EwmTHjunYU/B3jvutAuRCELolNaMPbw7DanEfNKengbN
 iQICNfHSuYAPKpVWsN+NDVwBOz7+tMIx4+E96vsFqiYFlvP8D90pKp0uECSsBFAhnDhA
 bzQ1rMo18+WK7QZQB5g3ucG1Rq8KhuEo6ajrZiVHTPpLLme5g5kY9cgnSzHE9WB+umqo
 e/8Q==
X-Gm-Message-State: AOJu0YwVb5Xb8axcpCPfg0aMYCE+cA+hx47VMsl9pS23dCaqOu0nKtzj
 8LEo9jsYSNxXWuhooWNYt5A5yyhQAxGRpjCBiSAiJKqu781wq7ugME0VCSZP/4eJDD0=
X-Gm-Gg: ASbGncsch6qaCcTaMW0lgQx4AYBq1iHwkMJPZ9rbyKWh/qh/DDdK6l/vsAzaGu0ZkQb
 l+w1RnqEdNAovIdg7eVfXiLzo9OXbDjw8c+vnfnkocqmd6ZYrOwo0AjND4NqQwi3wVG+BlVo1S+
 tO1B/KjniSl1ZQlSav8+QjeXRC1YRg0Z8RGo7CLbyEtmcuO10j6keRebI47VxeNJC9Ap1aI6+nI
 wvUgTvfrmDNUIk+lQDohLH5fjzveisG08HxtWjyglU5SxsMIYLN1zv3/H5sbqB8HEhTtmnvRTP9
 F5RFSDaubQ+kmuZLFLLUSIWAGFGKTe3bNWpML0HbI87j9jSdCscwkm81tHSWmrOA4IkA8KdRKtK
 XFVfZgNoCwwp7OU1iMj8ik6u6jMznhsJL
X-Google-Smtp-Source: AGHT+IFS5qPoqNEui+Z8+SDbcPC53GXm05RMSKQnq+9XNn0hHJsTCS+ZSy9epP1qV6UhFLp2idOvUQ==
X-Received: by 2002:a05:6a00:804:b0:76a:d724:d6fe with SMTP id
 d2e1a72fcca58-76bec4c1f5dmr15501224b3a.11.1754404765895; 
 Tue, 05 Aug 2025 07:39:25 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.39.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:39:25 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 0/9] drm/i915: Remove legacy struct_mutex usage
Date: Tue,  5 Aug 2025 11:38:55 -0300
Message-ID: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
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


Luiz Otavio Mello (9):
  drm/i915: Move struct_mutex to drm_i915_private
  drm/i915: Remove struct_mutex in i915_irq.c
  drm/i915: Change mutex initialization in intel_guc_log
  drm/i915: Replace struct_mutex with guc_lock in intel_guc_log
  drm/i915: Change comments about legacy struct_mutex 1/3
  drm/i915: Change comments about legacy struct_mutex 2/3
  drm/i915: Change comments about legacy struct_mutex 3/3
  drm/i915: Remove unused struct_mutex from drm_i915_private
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
 drivers/gpu/drm/i915/i915_drv.h               |  3 +--
 drivers/gpu/drm/i915/i915_gem.c               |  3 +--
 drivers/gpu/drm/i915/i915_irq.c               |  6 -----
 include/drm/drm_device.h                      | 10 --------
 15 files changed, 30 insertions(+), 72 deletions(-)

-- 
2.50.1

