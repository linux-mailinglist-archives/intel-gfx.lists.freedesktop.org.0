Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C83D6E99B6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 18:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D47C10E2D4;
	Thu, 20 Apr 2023 16:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309E810E0C4;
 Thu, 20 Apr 2023 16:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682008849; x=1713544849;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w6c3gpqiA0wAAVObyEJMhZg76zswNg+Q4jMeT6Ir5bU=;
 b=UNGC9+T7ln6w/frXMYQ3bczv43rTfmNmmBZcZZVisTd/EIrebKfkN8CD
 O/Ysg763tC8mtmL7W3uop4PiK8jCKf5uujXzJQhJFG6s/2UqaFEJIbLGi
 MieaxfkEeBkwWBMO6Lh71crPViizGAYhKUWrQ+9LXRtjlkbTo7YmhrrxU
 A24DrTlX4B0BpC0YgjvNXBaXw+K6fbTVMYsXfGgyyyq15XpxFxHNW707z
 rCnOiUJ4N0xTqCaXEfhGQ385g1bofqS8n7kEoqRsABcVlk7weZfHF8GvT
 cJ3n6C8tg4II3mVIlfd5YjG9tA1MB6WPFkOM1BYfKqsiC1oP0kJrY04E+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344540942"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="344540942"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:40:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="724479581"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="724479581"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:40:47 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 09:40:38 -0700
Message-Id: <20230420164041.1428455-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/3] drm/i915/guc: Disable PL1 power limit
 when loading GuC firmware
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
Cc: dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v6: Update Patch 3 to remove the timeout when blocked
v1-v5: Please see individual patches for revision history

Ashutosh Dixit (3):
  drm/i915/hwmon: Get mutex and rpm ref just once in hwm_power_max_write
  drm/i915/guc: Disable PL1 power limit when loading GuC firmware
  drm/i915/hwmon: Block waiting for GuC reset to complete

 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 13 +++-
 drivers/gpu/drm/i915/i915_hwmon.c     | 87 +++++++++++++++++++++++----
 drivers/gpu/drm/i915/i915_hwmon.h     |  7 +++
 3 files changed, 93 insertions(+), 14 deletions(-)

-- 
2.38.0

