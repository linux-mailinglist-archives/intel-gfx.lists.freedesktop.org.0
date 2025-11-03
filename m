Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C12E0C2D3A0
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 17:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBAC10E44D;
	Mon,  3 Nov 2025 16:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="KQmb5FV/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5BB710E448
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 16:48:13 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-421851bcb25so2589373f8f.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 08:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762188492; x=1762793292; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SyYmbonVksmjO4zdrRb5zZMg/W/CIKYJ9eFNKIpVKgE=;
 b=KQmb5FV/z0lTcjJGS86Fi4o94D7HsOl3XcVuGDTWNN1RVpIJOYYodJGdN0PIQtDK7c
 gp49dIFHhL9f3XKmfK51a/6jPErT1mqIbRoIsOHA2MaUlLb/3xgxgjtcJHbvRi/B6Mz1
 zgLnZoJPyZohXRLnePRqrS9y12QKf2X49yGFpory4wh2NvsHtMjwL77EWj2BXSxOQ3zw
 /EV6Yps0PYXCrr2AzPjFKNryWMFr2EBanaFHx+asWWrKMvpUjiIphuW47PnRSuuVcBiv
 /A31/oJDE3tsvOMlPSqpul8jRml7UH/mQv+cMmIb/X4OSDWsg3P+N6U+I+MdLkUw8S3+
 X7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762188492; x=1762793292;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SyYmbonVksmjO4zdrRb5zZMg/W/CIKYJ9eFNKIpVKgE=;
 b=scZS3fKfNQCeqWcevKuoA06eKn18UBa5eX0JrJiWFUhojJ8hAv56FlKQ2hSOTlCY/g
 a2dBxXSSRznpsDzvgMLFJh48KHe6MOLkBYKpvJy/f6umDPIbFayNbU83NbDm34ZrOgdX
 b0tBz4sBu+R9nehTU4Zk0vMz1l2YEB6IYgrgKycaaX36Qu0Jzk+l09t1a+7qmeWuP/i4
 m7rblDyg3pS69on3v9hU3Aoqr5JOIEFxm7xemeFQlkZ3QdhsBKHnDfx/y/Fu9VFUCuYS
 OIDur8SOELh8NrESyDhpRRDTBFCUhNtRa8Tu9bo2V4YzngMzBf5PGxPlUPOQwWeopn6v
 2GhA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXric8H/a+rZikRQ3wSQJcgPCo9NtpHaLvSTORUlMo3ydt/GWD3fg6EsTDRYxrf/deKoeWmQZSaEVI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx4kDT19XCLEDxBu0qLfYC0We80IuZ8KjDrx5q2S84GatpK2T70
 RDP7j9uO5AoN7unFYURzlAbsq2rwxaTmDc+Tbcq6qStuyIrvDW6DQGXe3W0ui+nVNbw=
X-Gm-Gg: ASbGnctZ4ropCX6y9zgsh4wPn4aQGneeGHF+t1gSOwQh4PYFjuSvNHwvgytybBDbdd/
 sz1HNZuSNfzj7TFk3FDtuxwbFWNooKT3QN9ugyjuPJv/qFH9TlK/AQ6MKtmYxGB9YVCCwG5ic4F
 lXvqiuKGQMdT9F7/q/653QwK2Qz8D5cAllBMD/R8Cs1fNhr8bRcc2UGMh9NPaK39yuCFaCmD+2y
 v3X29GvXmoodz/7wAQOL8lPU+6xhTf8dFlhflZUJHXNkOpAC8xSehJwjPvsXc2qEgcJPyDnfP1r
 fwmZG6P8TKCCm3oim38WHqJ3H/8FH19axLvvb8D8IEYRISevCG+IphiF4eycTEtkB7OtM+rRTTQ
 aeIAz9yNjGHxexpB06J8NH3PMSsne4rRscMEaauLFLbwp524xMnTGczCsGZp/VZG4coXKLpvoJ1
 DinfQJJfT865qykkjxGjCuNbf2QQ5VE144Jh0=
X-Google-Smtp-Source: AGHT+IFc884SvsviOs5LrjoU8X3I/ITy7QFOXG0JfVMfzUC93v8R6MCSY9RxAFBfGaj4xUYdphxHcQ==
X-Received: by 2002:a05:6000:2010:b0:429:cc1c:c2e with SMTP id
 ffacd0b85a97d-429cc1c0e3emr4859302f8f.1.1762188492269; 
 Mon, 03 Nov 2025 08:48:12 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429d1061efasm9864899f8f.24.2025.11.03.08.48.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 08:48:11 -0800 (PST)
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
Subject: [PATCH v2 2/3] drm/i915: replace use of system_wq with
 system_percpu_wq in the documentation
Date: Mon,  3 Nov 2025 17:47:59 +0100
Message-ID: <20251103164800.294729-3-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251103164800.294729-1-marco.crivellari@suse.com>
References: <20251103164800.294729-1-marco.crivellari@suse.com>
MIME-Version: 1.0
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

This lack of consistency cannot be addressed without refactoring the API.

system_wq should be the per-cpu workqueue, yet in this name nothing makes
that clear, so replace system_wq with system_percpu_wq.

The above change to the Workqueue API has been introduced by:

commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")

The old wq (system_wq) will be kept for a few release cycles.

This change only update the documentation of drm/i915.

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
2.51.1

