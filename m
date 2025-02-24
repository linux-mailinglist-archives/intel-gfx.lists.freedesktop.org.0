Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80D7A42CC3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 20:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC7E10E4EC;
	Mon, 24 Feb 2025 19:30:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lbr9yT7P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E3610E4E8;
 Mon, 24 Feb 2025 19:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740425418; x=1771961418;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UsoOSQ9UnimLc0OGCZNwu0W5ODgw7bM5EGb0ZKXBZOE=;
 b=lbr9yT7PxdcKmxLRfI7vz8QQpq9BCQ1hKGFwhQZZnXtXMgAorujPGkWz
 11mf2CqWknNgq9yGSMzNB+NdaDNPN8WK3WMexzNP+bPJgRHY49s7wLaC/
 wdIisjqwMGzNC6nOGaffl56zggFuIhj6Xzx3S65UNqbEn10PfTqdOsG1Z
 ogIACzX7oVQDLqJN/xaz8CxKZ0XfKwlZXEk56L5mdiV5AkC3QRzTAS6/L
 LGVjpISW4dGiZ+CZvJMn0hrEMfef4UQzv8RZoXRtoBYWvDOcLltwV87EH
 sWOXnMJWXDtIPb3+gHFHMIuug9+V15UdVxkNE0jcrhB9u1J4sAHebW0S9 w==;
X-CSE-ConnectionGUID: 5ceb7bziTz2Cfmazy7i7qw==
X-CSE-MsgGUID: VEgDnLhGRq+dpmbd6v47cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40388252"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40388252"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:16 -0800
X-CSE-ConnectionGUID: LGa7ZASRRwyamjp85mToYw==
X-CSE-MsgGUID: tzgsMkUZTDCpxOB5F+FbUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="116169045"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:14 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915/hpd: Let an HPD pin be in the disabled state
 when handling missed IRQs
Date: Mon, 24 Feb 2025 21:31:11 +0200
Message-ID: <20250224193115.2058512-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250224193115.2058512-1-imre.deak@intel.com>
References: <20250224193115.2058512-1-imre.deak@intel.com>
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

A follow-up change will add support for suspending the HPD IRQ handling
on a given HPD pin (without disabling the IRQ generation on it), after
which it becomes possible to see a pin in the HPD_DISABLED state when
resuming the IRQ handling (since the suspending could've happened for an
already disabled pin). Adjust queue_work_for_missed_irqs() accordingly,
so that this function can be reused for resuming the IRQ handling.

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

