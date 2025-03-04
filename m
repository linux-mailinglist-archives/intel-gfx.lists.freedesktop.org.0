Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AECAA4E33B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EAB510E5DE;
	Tue,  4 Mar 2025 15:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B08WsZ2a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B99110E5C9;
 Tue,  4 Mar 2025 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741102162; x=1772638162;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y65M2kjDAVbb6CZPLripJaDb2fOiSSowllcBwCngTho=;
 b=B08WsZ2aDMWg1qoq5M6TyiEPF8M631O+XYfyXg4sl3DX5ZlkAPqcZZeo
 iukX69yUfhABl5ieMlKtdo5ZNXS5Aj5QTQ4ax1ap7Mi/gCaIRfA3IdXOD
 sy3UIEdu3HGi7WSTP2Smu7lZDIZ1lts15tWkahK8YCfsXdI75tfTEGm5a
 oIAUckoZJv76+tn5T3R6LlsLQPQ5NHG99wZfZGabUwgw0WEElZf1jqIDC
 d5nHl4PG+WI930AOdDPSs6+xyag5zzLlcYHNZ9y9fSKfRg8IhLXfPLugL
 BY33VzwA92RWrUcFZTBcCpTKah8R2D74S5fE+UXDuqqwNrhkfgN8+M8RU g==;
X-CSE-ConnectionGUID: GaaM0k/jR0iqJ7dwFrsgvA==
X-CSE-MsgGUID: 6Wqqejt7T1qpt+kTHRePLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59575802"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="59575802"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:21 -0800
X-CSE-ConnectionGUID: /yrKBzXXSrWwhonJkhUIcQ==
X-CSE-MsgGUID: 11QG5md8RnaI3YICeqWdnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118921322"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 0/6] drm/i915/dp: Fix link training interrupted by HPD pulse
Date: Tue,  4 Mar 2025 17:29:11 +0200
Message-ID: <20250304152917.3407080-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

This is v5 of [1], simplifying the handling of HPD pulse events on pins
used by multiple encoders, by tracking the HPD pins for pending events
instead of the corresponding ports. (Ville, patch 1, 3, 6)

[1] https://lore.kernel.org/all/20250226171924.2646997-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (6):
  drm/i915/hpd: Track HPD pins instead of ports for HPD pulse events
  drm/i915/hpd: Let an HPD pin be in the disabled state when handling
    missed IRQs
  drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin
  drm/i915/dp: Fix link training interrupted by a short HPD pulse
  drm/i915/dp: Queue a link check after link training is complete
  drm/i915/crt: Use intel_hpd_block/unblock() instead of
    intel_hpd_disable/enable()

 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +-
 .../gpu/drm/i915/display/intel_display_core.h |   5 +-
 .../drm/i915/display/intel_dp_link_training.c |  23 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 284 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   5 +-
 5 files changed, 248 insertions(+), 76 deletions(-)

-- 
2.44.2

