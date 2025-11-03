Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A8C2D3A3
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 17:48:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF7D10E44E;
	Mon,  3 Nov 2025 16:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="LH6ajlI9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0216E10E44C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 16:48:15 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-475dc6029b6so41699065e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 08:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762188493; x=1762793293; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FI956lBy30mk8LME6plJ5is5xzYMLNO6i3xgI6duHkg=;
 b=LH6ajlI9j195H/uv7j6Rwr/eujzO4cDmdG/yKEvfKZDhbN6JuF772aJxRv49Cfngbc
 eo1hyBRvXVfO+SFiW4z3o1ej1up5N7513iqad8xv9okVtYnAJdWDXu4l4IaX25IHsOJK
 I1JT8ovgLsuGueNq5AToXl8UHGOZLuPtTZldwmlWuS9AAPfec02cvsWnLWLJsB29aLpt
 1vuScTJnLZqY1LyCrfx5MhzCYP//7fUjTM08IIFekDR5i4v1zg2K0TwOpsfYIQ4oPcIP
 /ZA+J4GcTWEsYb1dfi9T+mbw19q/67RsfzUmxEZoLRcly/7agE2xSzXIbcwW7uTv70y4
 gBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762188493; x=1762793293;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FI956lBy30mk8LME6plJ5is5xzYMLNO6i3xgI6duHkg=;
 b=N8XNSNBw0xphKOPKjkoMDMEaPHau36ZiFnPPuLs93ZQx9l1E1/hZhKeuDKJc/SkODv
 ua+SWUiAoUXjXF/dVFcG2SReSuHJ2R5tLbqRNHNT36wjXrWhTkEFEj3Xa/6/pHMvh8yb
 tPrSDroBXcGhdYb4Km6dEGXfstE62ve1GJGFEJ3ErCoKlaHuAurFd4icosDx4j6oBI80
 XmAqpvpaeMk827QVwM9WzCaT3zaYy/wggcnVRw86CB52YQ9tA9T2vVc7MUCvcjC8Kejg
 hyXdDdmnNFab/jIr19dCAiPfQbejJIAW8M0BG492sBCT3SAiLahuPyLa+TxJZxrkU8l1
 nKDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVw49xyjDxxS+hXj0f8xNxoR3OFLHAw2Uqti4FMHeL9WfauFHNJUyhzq3PlTAgDSs9AbYNb+e/BELY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyKki/Dthej3tp+FGFeS3XafsqKuwkmGi/Mz3pIvfq89LOIjW5t
 giM0oMdu9C0H/yY53eMCuvD6sF+YSoQj8ggpe1u587k6evY15qyfbU1BgpWZ5uIWS5k=
X-Gm-Gg: ASbGncsQuX57RYH31uXrEIYRyUc8zaF3zy9TfJXyA5PEoP+KvVbU63usbyCK9o7l30C
 FbA8Qo+hWl6rTGkNye8E6gPFr3KbckSN2LGJQN5EuUHSathWq2rzJG8LcR1pavy+2iYeW1afRed
 bbYu0HxWb76VPb7Vp2t4m9oyHMv9bxlj/ST3lKiEB78lWgK3bMG5ZMqM50Gm+/vVLDIRo+sx2AD
 xGPAgQNQiZ0VTedy4ZVS+m4NokVTNai1lhVWf4gkvBCmWXyFJjnHDVOhzZU1vW/0b9vBL3kcsPD
 wkAkUF3QgoN84kqG7Pb5lomoKlVGJLQ08W0LluoKfceD4m7qteMzCp6iXADSYqKSk/5SumWgSyP
 ihAPWsTF6fJApRvMGNqQZOWo7n/jFB7cjfx8Irqjh8aIcO4QEpFFdfj815tRIteRK9hjbnSb9hb
 rcPaN7a5Nju0vwb2Ce4LA5lhVt
X-Google-Smtp-Source: AGHT+IGVmeKMU2dsaQUkPgPXdqhRjYWIfzuES8flQr6U09xY1SVQ23sf3RB1gngixUUiNGnG+Ta+wQ==
X-Received: by 2002:a05:600c:4710:b0:46f:b42e:e360 with SMTP id
 5b1f17b1804b1-477308a8972mr114450845e9.40.1762188493541; 
 Mon, 03 Nov 2025 08:48:13 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429d1061efasm9864899f8f.24.2025.11.03.08.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 08:48:12 -0800 (PST)
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
 Simona Vetter <simona@ffwll.ch>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 3/3] drm/i915: add WQ_PERCPU to alloc_workqueue users
Date: Mon,  3 Nov 2025 17:48:00 +0100
Message-ID: <20251103164800.294729-4-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251103164800.294729-1-marco.crivellari@suse.com>
References: <20251103164800.294729-1-marco.crivellari@suse.com>
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

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.
This lack of consistentcy cannot be addressed without refactoring the API.

alloc_workqueue() treats all queues as per-CPU by default, while unbound
workqueues must opt-in via WQ_UNBOUND.

This default is suboptimal: most workloads benefit from unbound queues,
allowing the scheduler to place worker threads where they’re needed and
reducing noise when CPUs are isolated.

This change adds a new WQ_PERCPU flag to explicitly request
alloc_workqueue() to be per-cpu when WQ_UNBOUND has not been specified.

With the introduction of the WQ_PERCPU flag (equivalent to !WQ_UNBOUND),
any alloc_workqueue() caller that doesn’t explicitly specify WQ_UNBOUND
must now use WQ_PERCPU.

The above change to the Workqueue API has been introduced by:

commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

Once migration is complete, WQ_UNBOUND can be removed and unbound will
become the implicit default.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++--
 drivers/gpu/drm/i915/i915_driver.c                  | 3 ++-
 drivers/gpu/drm/i915/selftests/i915_sw_fence.c      | 2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c    | 2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index cf1c14412abe..e12f9126b155 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -257,13 +257,13 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 		goto cleanup_wq_modeset;
 	}
 
-	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI, 0);
+	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI | WQ_PERCPU, 0);
 	if (!display->wq.cleanup) {
 		ret = -ENOMEM;
 		goto cleanup_wq_flip;
 	}
 
-	display->wq.unordered = alloc_workqueue("display_unordered", 0, 0);
+	display->wq.unordered = alloc_workqueue("display_unordered", WQ_PERCPU, 0);
 	if (!display->wq.unordered) {
 		ret = -ENOMEM;
 		goto cleanup_wq_cleanup;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0f33cdc11736..380cb20a47c6 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -143,7 +143,8 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	 * to be scheduled on the system_percpu_wq before moving to a driver
 	 * instance due deprecation of flush_scheduled_work().
 	 */
-	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
+	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", WQ_PERCPU,
+						 0);
 	if (dev_priv->unordered_wq == NULL)
 		goto out_free_wq;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
index 8f5ce71fa453..b81d65c77458 100644
--- a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
@@ -526,7 +526,7 @@ static int test_ipc(void *arg)
 	struct workqueue_struct *wq;
 	int ret = 0;
 
-	wq = alloc_workqueue("i1915-selftest", 0, 0);
+	wq = alloc_workqueue("i1915-selftest", WQ_PERCPU, 0);
 	if (wq == NULL)
 		return -ENOMEM;
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index fb8751bd5df0..684e6ca0f960 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -221,7 +221,7 @@ struct drm_i915_private *mock_gem_device(void)
 	if (!i915->wq)
 		goto err_drv;
 
-	i915->unordered_wq = alloc_workqueue("mock-unordered", 0, 0);
+	i915->unordered_wq = alloc_workqueue("mock-unordered", WQ_PERCPU, 0);
 	if (!i915->unordered_wq)
 		goto err_wq;
 
-- 
2.51.1

