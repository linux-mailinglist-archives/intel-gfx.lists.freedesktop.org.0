Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE2BC2BCB3
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FEEF10E3ED;
	Mon,  3 Nov 2025 12:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="eam9D8Lo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E12D10EAF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 10:09:40 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-4711b95226dso25724035e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 03:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1761905379; x=1762510179; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AR6DCodMEiRozMtWWQUdsBs+LPg+2s6MkeWZ5TMIU0g=;
 b=eam9D8LoH2KHTz8LTAN1EI2U5Lbyj02hXTV64u+PZ6GHBqw3kDo1fR6540UabmRDHX
 peq2XK9DmhhTCp6RQ3GkziMMLJDaHOKs0UnPB7Itpp01mwe3TWisL5PmF/knub5kHeVQ
 FM+JvBfK13GkBXX+QLQwfXk+Ehl812MRCBLoBumFeUwJie3gs7GlZtruHeRXoHmWSYMJ
 HZi2TAyv2NHv8tRPu6tHfqF2UtjMW8Cii/2Ole84yQb5dSCgJegzMMRP7XZ4sX8cIzJg
 H0ecSCEBdiSx2x73Fl67rAY/MlsIZyitK4HADaBhvPK2b33H9m64l6tC2fU0zI7hDYmF
 Pl9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761905379; x=1762510179;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AR6DCodMEiRozMtWWQUdsBs+LPg+2s6MkeWZ5TMIU0g=;
 b=RJnwC3JPbhgP/PCPQ9Elawqn6LT+J+qbaZhKnFDR9hheX7StvB/H3Px4Z6/NoUxZeP
 hClCh0TTOAyU6Vw3xM+LTZx1qZCXiTd98glGYNqG8O3ipeRn3aUWi2BMFbIkEnf18MDa
 HFTmMp7CoKUV2CTV9DS1Himx0SjvlxfzUKSeiMRC+iivqj4DqpqiwER+MXWoSXvbjLL9
 lM4yFJlhmkaHCwULx7bJsoXeT1mBytu9+kf5vbKjMsiL771B7EJLiWQ3fUvNcD07h9n9
 FLO8mAv5qVbtpknKIn4s6i7nlpBoW2Vx2gaYybdRs9z+6QJUz+oQm2tfNJ+4LbjYRkfV
 A8JA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8+kOpa+al2UddM/iUbTWKeYc7VwaSR2gFw5y9Wf/a6MBLrVh/7wgMylsexV6xV18NmCF++t53M1E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxZ8+zlwDrRHu8by0I6rtxF3aHQutEOnf1P72ooGzCV0IaygTmR
 yEhxY4aY1K+nRgAtxuDLYvWR3LCuDDiTr311zhY2ZAtVUlNbWFjBsC9rfNXqacjw4U9fcyL3Cbx
 suvBq
X-Gm-Gg: ASbGncusC9gykMBWVjHHhAUXU4bI1+Xmpc74Oy74KQQ61Y7AlgoNePMsyjKLMyh+7Xe
 1tY9QXfjzSDHC9aGaE6arHZpwkTHWxpiugATZVjbqXpAg+Zatc9j6hNcb0T0ME2IZR3K/M0B60h
 MTZsh6291aRymgaHcUC1mMWsdGGZWGMZud51CCVYlfvTGe88DVjK9o50EL2cHd7C6JohCYV+pkD
 j1exyf0tzU9HHjG4hFdTP3eUvD6ogUflOTDpMv/p/zILRq+WVfNZjA7LHF8t4/cxOug3bvoa0zS
 ocT73E/TT9uyXKXQZt8mNqw73cGRstEvdSnelKTqGe1pJL3/w/FMpQHRlcF5yDAZmsM4cdqZpbj
 kyd17G68wRsaTpcxsJ+tRaEUhXbxbUdel2EsMQ1jTcKpGo2egIMhxrW0lQR/PnnMBYNBPzpwvlG
 1VamD2nXd1dYXjRUL5JnIsVchW
X-Google-Smtp-Source: AGHT+IF5CL1Q/oaHD87zPjFp4KiqyMUDxM2HoYOoLKtrm0XnT5ekaMI5s76J1xMKBksDY9h87GST6A==
X-Received: by 2002:a05:600c:3e06:b0:475:dc58:39e5 with SMTP id
 5b1f17b1804b1-4773089b541mr25699695e9.27.1761905378913; 
 Fri, 31 Oct 2025 03:09:38 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c13e1c9esm2839171f8f.22.2025.10.31.03.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Oct 2025 03:09:38 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Michal Hocko <mhocko@suse.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Subject: [PATCH 2/3] drm/i915: replace use of system_wq with system_percpu_wq
Date: Fri, 31 Oct 2025 11:09:22 +0100
Message-ID: <20251031100923.85721-3-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031100923.85721-1-marco.crivellari@suse.com>
References: <20251031100923.85721-1-marco.crivellari@suse.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.

This lack of consistency cannot be addressed without refactoring the API.

system_wq should be the per-cpu workqueue, yet in this name nothing makes
that clear, so replace system_wq with system_percpu_wq.

The old wq (system_wq) will be kept for a few release cycles.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a28c3710c4d5..0f33cdc11736 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -140,7 +140,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	/*
 	 * The unordered i915 workqueue should be used for all work
 	 * scheduling that do not require running in order, which used
-	 * to be scheduled on the system_wq before moving to a driver
+	 * to be scheduled on the system_percpu_wq before moving to a driver
 	 * instance due deprecation of flush_scheduled_work().
 	 */
 	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6a768aad8edd..d9f73b9995cf 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -256,7 +256,7 @@ struct drm_i915_private {
 	 *
 	 * This workqueue should be used for all unordered work
 	 * scheduling within i915, which used to be scheduled on the
-	 * system_wq before moving to a driver instance due
+	 * system_percpu_wq before moving to a driver instance due
 	 * deprecation of flush_scheduled_work().
 	 */
 	struct workqueue_struct *unordered_wq;
-- 
2.51.0

