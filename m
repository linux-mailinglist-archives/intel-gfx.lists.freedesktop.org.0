Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E779BBEBB3
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0448010E43E;
	Mon,  6 Oct 2025 16:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JU7akS+x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3673D10E442;
 Mon,  6 Oct 2025 16:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769238; x=1791305238;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fJpiRLNaxDOAKM9hXriT/IFhkrC1TJIlunA82i09B0I=;
 b=JU7akS+xXyhDW6/DhjN5nLQ3wfRc1lUWbSYX/ueclsy2dSlWrk+k5N6+
 /PCneKhR95lWJmBA9nQs/y/qFXVQuNYA14aeJrjoYFUsC8yhzeR0xioC8
 zU8sP0ypng4HUs81ePtG1GCyfmM0WyGtVqXNJCPpeSclODEdq4oC/XQJ1
 qtMPQLfo0o5yUZzNL+9ITFO5oUR2x9BwwoTnsETX4wevvDllcKi8OsLlr
 imIJqawajVozf4rimOlP6JyDB6wCQXdRGaDTldEO7yEomtxm1WQ89Z57R
 NH77e1ZVDiYrSi3xtsDqt1qjM3j1z7Y2bT4nboLPk5gpEgmZVG7HeMX0a g==;
X-CSE-ConnectionGUID: 7IpDExPQQo+Jo6wYI8og/A==
X-CSE-MsgGUID: 7a5wKHIzRKi02/mDx9XsqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65795689"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="65795689"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:18 -0700
X-CSE-ConnectionGUID: 46grjXIyTyuj35zumlrSyw==
X-CSE-MsgGUID: m0TU1SfBQMytGwn9rs+xnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179861579"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/10] drm/i915/frontbuffer: Extract intel_frontbuffer_ref()
Date: Mon,  6 Oct 2025 19:46:45 +0300
Message-ID: <20251006164648.6761-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
References: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I want to hide the kref from the high level frontbuffer code.
To that end abstract the kref_get() in intel_frontbuffer_queue_flush()
(which is the only high level function that needs this) as a new
intel_frontbuffer_ref().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 11c74aa99ab9..34bbf18f3c08 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -165,6 +165,11 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		frontbuffer_flush(display, frontbuffer_bits, origin);
 }
 
+static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
+{
+	kref_get(&front->ref);
+}
+
 static void intel_frontbuffer_flush_work(struct work_struct *work)
 {
 	struct intel_frontbuffer *front =
@@ -186,7 +191,7 @@ void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
 	if (!front)
 		return;
 
-	kref_get(&front->ref);
+	intel_frontbuffer_ref(front);
 	if (!schedule_work(&front->flush_work))
 		intel_frontbuffer_put(front);
 }
-- 
2.49.1

