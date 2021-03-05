Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F6B32F0AA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 18:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B1C6E221;
	Fri,  5 Mar 2021 17:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F89F6E13C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 17:05:53 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id a188so2589945pfb.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Mar 2021 09:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U1BseBekJ+tOeXt4taA9dL1obFHh1tg8YMeZxhPeNnE=;
 b=gi5SATDCCw9C0UWQXp8BZolqGR8Cejk+F9c/yekmDIcWrAqP/bCtfX/100GkpJNj1G
 CL03Cm+cZm9qKHzOhhMUxPMm/ghH7VyyrIjoLrFrtu6EoFO2d6/K5KlR3gbukvMTbXtH
 f1q+qBz/BBvbFqH5MwgngvpQ3rWsl5sfbgNNN4XhjsDqQOY8tEMrM6rbdzITQzyvlkTG
 Fz5AKoe+e6/zDEZNk7jtrGjuXd2OjqQD9SNTAFIdSDCesAKMwkMJErDbC4FDNLhlemqj
 LMTXrFgfj1Be4ZzsbV+zKNqwbxPPd3y66w8YOBOqWFGDjB8q8wK49TgcPbVsUdf2Ndlk
 H2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U1BseBekJ+tOeXt4taA9dL1obFHh1tg8YMeZxhPeNnE=;
 b=hXV/KZ+M0bLiyCLGIk/sfr4dxyaTx9HlLIK8M/eNcorRNczpuso4pJttqndzUgZZwC
 H2yApmaK3vOpJMKNes60UEV1ixlqVgQaqHO9o5w6nJEv1mYzW3l5U+lI5OxWr1xmRywG
 wVbyGFSw5INGSZLh38SX74znzUhEWrerfg0uNQ2D1yXOhsrYJ85YNN+VJEyaT+gYwFj0
 dAko/xtdsV5dDS7Fjx+J/nc9L98pcnC7FSwnStfNMu3RG4OnV9N/F9/FHhpK5Z10D7hl
 7yAN3ZjNeQuXFdNVJZ5ITQjEEHfnpdYM2eldKbfdHCCt8MpfHeT+jS80zCtN94Fe8qLT
 SEcw==
X-Gm-Message-State: AOAM531CcF7R+Ic8BRFUOIGpgsMRb1Fti9fLaeoTiRvm6q/NPeT7bEf0
 2lj5fSbWa6Z32+XC8d0QjS2gig==
X-Google-Smtp-Source: ABdhPJzCfw0PzF8b0qT06MTcyu3wF+GtyOwRwmiq9oU/D5te35pU95NuvYeRiASw/CACVBLIWvzujg==
X-Received: by 2002:a63:205c:: with SMTP id r28mr9895175pgm.183.1614963952908; 
 Fri, 05 Mar 2021 09:05:52 -0800 (PST)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id k64sm3257681pga.52.2021.03.05.09.05.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 09:05:52 -0800 (PST)
From: Jason Ekstrand <jason@jlekstrand.net>
X-Google-Original-From: Jason Ekstrand <jason.ekstrand@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 11:05:46 -0600
Message-Id: <20210305170546.56472-1-jason.ekstrand@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: Propagate errors on awaiting
 already signaled fences"
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
Cc: Jason Ekstrand <jason.ekstrand@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
since that commit, we've been having issues where a hang in one client
can propagate to another.  In particular, a hang in an app can propagate
to the X server which causes the whole desktop to lock up.

Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
---
 drivers/gpu/drm/i915/i915_request.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index e7b4c4bc41a64..870d6083bb57e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1232,10 +1232,8 @@ i915_request_await_execution(struct i915_request *rq,
 
 	do {
 		fence = *child++;
-		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
-			i915_sw_fence_set_error_once(&rq->submit, fence->error);
+		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
 			continue;
-		}
 
 		if (fence->context == rq->fence.context)
 			continue;
@@ -1333,10 +1331,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 
 	do {
 		fence = *child++;
-		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
-			i915_sw_fence_set_error_once(&rq->submit, fence->error);
+		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
 			continue;
-		}
 
 		/*
 		 * Requests on the same timeline are explicitly ordered, along
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
