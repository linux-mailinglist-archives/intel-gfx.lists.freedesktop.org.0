Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC568A4E33D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB4310E61A;
	Tue,  4 Mar 2025 15:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GTLvPJm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFD510E5E7;
 Tue,  4 Mar 2025 15:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741102164; x=1772638164;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=C5iee+QwzsSk0/3BpnysiIhC+DG3L7Fa67FR7VBytFw=;
 b=GTLvPJm6bAfptOreC7GQVwXxAOwDIsJ2UF2dTjGwC31biNFjw6VmwybE
 gATLb98KHA2Jsz4Tgns6ZyOEtGy3skaU8A8FwWor+GU7PpnQgWD45lWQ9
 NeA9EbXESYhFPj2Z1nLl36LpzJh0bTATeUgNf40xRBl7sKm24ibUoBvJm
 N2/xc/fwFgDQsw/GngI/ACMg0rPxvUrN3KiHa27ke54cW8CkJBbO7b8Xz
 t5uEdSct4O10yi5YbBjlfmbdpoKl2K7MJy4QSY43VhOKZ3oFBvf2s+vui
 d+wOIHFDGTP4jZbAqn97kLt46Ke1s+TeoBR6s/OLFT4UetRMev2hcM4YV Q==;
X-CSE-ConnectionGUID: kR/ZFjrmTIOm8LJxN5V5Kw==
X-CSE-MsgGUID: C7z9MsTAREuV9Jb+NNK8yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59575809"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="59575809"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:24 -0800
X-CSE-ConnectionGUID: t9sKeeJfSIqRohdOR6ek7A==
X-CSE-MsgGUID: gGge7+VXSYeZfh9ydtHvfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118921336"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:23 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 2/6] drm/i915/hpd: Let an HPD pin be in the disabled state
 when handling missed IRQs
Date: Tue,  4 Mar 2025 17:29:13 +0200
Message-ID: <20250304152917.3407080-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250304152917.3407080-1-imre.deak@intel.com>
References: <20250304152917.3407080-1-imre.deak@intel.com>
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
index 9692b5c01aea9..3fb5feeefa144 100644
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

