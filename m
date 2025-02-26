Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CB4A467CD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 18:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4861110E974;
	Wed, 26 Feb 2025 17:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g42iK0gJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04CB10E96C;
 Wed, 26 Feb 2025 17:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740590309; x=1772126309;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KH7kSTwItxcZLXJECtDqdcDrWcKwGmRzCgYdXzvQNt8=;
 b=g42iK0gJQMC1+RWDNRRmA+uBlf7WfTawxCWy9qpb4nam4evm4rUEHB/M
 Q4cmry/eJJPQCPwvVwLCx+oamvhPatAdFuP1IqUV6vWGy4tSWALUBjJw9
 NlLPJ9WD4uPlKAMpaUy/EJsal8JvKhLrbjHWa3SUrDEB62QcSEqjcwZAx
 m6jBO/jf7c1WWbO8PCQJwtDaE95JBfXDpkUrg4Jh7u0lV4LSlO6f76gBp
 rdq7oflh0fH9oRZlUlbs8jwU/lg/3uu/OH5qbKXplxC9L0LSaZff1gnuf
 gDDi0sotVYbhk1fkpdSAhTkC3Ut3qbnGZgw6B7X6uKeR3XwDHMDcmQjhp w==;
X-CSE-ConnectionGUID: qAt9ySKkTmqCi9CkyzfnvQ==
X-CSE-MsgGUID: aayy4spUTse1oMvVnnXblg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40628466"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="40628466"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:24 -0800
X-CSE-ConnectionGUID: IPYwiHpARpGAu7uF+6kpiQ==
X-CSE-MsgGUID: gKa/yOqJR9iN7nxgINJL9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121371279"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:23 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 1/5] drm/i915/hpd: Let an HPD pin be in the disabled state
 when handling missed IRQs
Date: Wed, 26 Feb 2025 19:19:19 +0200
Message-ID: <20250226171924.2646997-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250226171924.2646997-1-imre.deak@intel.com>
References: <20250226171924.2646997-1-imre.deak@intel.com>
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

After suspending and resuming the detection on connectors, HPD IRQs that
arrived while the detection was suspended, are handled by scheduling the
intel_hotplug::hotplug work for them. All HPD pins must be at this point
in either the HPD_ENABLED (set for all pins during driver loading/system
resuming) or HPD_MARK_DISABLED (set by IRQ storm detection) state: the
HPD_DISABLED state for a pin can be set only from the HPD_MARK_DISABLED
state by the hotplug work after a storm detection (enabling polling on
the given pin/connector), however the hotplug work won't be scheduled
while the detection is suspended.

A follow-up change will add support for blocking the HPD IRQ handling
on a given HPD pin (without disabling the IRQ generation on it), after
which it becomes possible to see a pin in the HPD_DISABLED state when
unblocking the IRQ handling (since the blocking could've happened for an
already disabled pin). Adjust queue_work_for_missed_irqs() accordingly,
so that this function can be reused for unblocking the IRQ handling.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 00d7b1ccf1900..ab8e71c4b0f86 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -980,6 +980,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		case HPD_MARK_DISABLED:
 			queue_work = true;
 			break;
+		case HPD_DISABLED:
 		case HPD_ENABLED:
 			break;
 		default:
-- 
2.44.2

