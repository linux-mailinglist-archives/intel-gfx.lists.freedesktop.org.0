Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A91B27144BA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9686410E214;
	Mon, 29 May 2023 06:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09BD610E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685341664; x=1716877664;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0iQnFTpq1pkwuHBzLmzdoS7aN6C4h9pUu1GRhCc8zXs=;
 b=avkNGYg3GXOIFEQTVoZTEWex6Uq+q/2U2OBfwgmXp+m8qgDs/rB3QjY8
 Rjls9gNwo/zsaLF1+fo2yB0EIWJitLqY/cBAxvOh1NoWXBRvuePmQkKF0
 yH0rdVxkxvUBhsgKEbrRLh6t0/ssbtlZRVrWXyF4NF14IAhy9GcSfv1Tn
 u48ETs+zNXQdOdAb9XDsrtQajgiQWcPKaTfNOLASc9ta3LoMH3M8GIw9b
 aUUaqcBlY/sfQMgU+6IzclPoavWv+Rnru/cVICmRvXkEVIySfQx1KlzRL
 EtJS/R/tQX/c1/jNOb/IadJbNjubbZQUmJNEE9nb2hwLaN9x89a0AHDj0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418114371"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="418114371"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="739031509"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="739031509"
Received: from ilovin-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.33])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 09:27:19 +0300
Message-Id: <20230529062723.1928520-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Do not access i915_gem_object members from
 frontbuffer tracking
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are preparing for Xe driver. Binary objects will have differing
implementation in Xe driver. Due this we want to remove direct
accesses to i915_gem_object members and leave details to binary object
implementation.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (4):
  drm/i915: Add macros to get i915 device from i915_gem_object
  drm/i915: Add getter/setter for i915_gem_object->frontbuffer
  drm/i915/display: Remove i915_gem_object_types.h from
    intel_frontbuffer.h
  drm/i915: Add function to clear scanout flag for vmas

 .../gpu/drm/i915/display/intel_frontbuffer.c  | 44 +++++-------
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 28 --------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 70 ++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  6 ++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +
 drivers/gpu/drm/i915/i915_vma.c               | 22 +++++-
 drivers/gpu/drm/i915/i915_vma.h               |  2 +
 7 files changed, 116 insertions(+), 59 deletions(-)

-- 
2.34.1

