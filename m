Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9AA69785C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 09:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9DE10EA69;
	Wed, 15 Feb 2023 08:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0711F10EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 08:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676450325; x=1707986325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8gqORQtZkFP9K77c5ukZb0qItoXyjvNwPP149Ucs25A=;
 b=GqawzLyn8gEhxRQmUDTgviRmtMQmfx6QyZbuk5tXNsGn11HOWDNe7Xzl
 mMxv1Z3ApN7BvDIDXMZW7dHevkf3/sHvwuGQX65zkm3UxkcNvAK3Wm3cP
 eq+KfIueeYEnHL0Rl+0IDCdgrCIdtqGTbIRt6ugdeGuGBmATQ1wXBVKf5
 VifFH/C1frkHyXsHep5rZodjdnroUWS4aNzwOfJHXBxiaZ0xh7IpCNKGE
 2a912NqpJpRuPKnhfoQw6UQFNTTEOByLrKXP8fmN9kAGsnwWbGTU3FXO2
 dQjrFX+TMoycRYQVNuKZxCDFW7DIJFxVB+LptA4V+++EEmK6lfc3dJufY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="332686596"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="332686596"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 00:38:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="669528733"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="669528733"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.37])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 00:38:42 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 10:38:30 +0200
Message-Id: <20230215083832.287519-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Provision to ignore long HPDs in CI
 systems
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some panels generate long HPDs during CI execution steps even
while connected to the system and cause unexpected CI execution
failures. In environments like CI, we don't expect to disconnect
the panels in the middle of the CI execution.

There are two parts to handle this case - display driver and IGT

1. In the display driver, based on a flag, long HPDs are
ignored. This flag can be set/unset using debugfs on systems
where such panels are connected. Also random link training
issues are popping up because of spurious HPDs, ignore the
link training failures as well if the ignore long HPD is set.

2. In IGT, add provision to set ignore long HPD debugfs entry
on the driver and also set Force "on" the active connectors.
With force on, the connector's detect sequences will not get
initiated.

This patchset address the driver part to handle this issue.

Vinod Govindapillai (2):
  drm/i915/display: ignore long HPDs based on a flag
  drm/i915/display: ignore link training failures in CI

 .../gpu/drm/i915/display/intel_display_core.h | 11 +++++++++
 .../drm/i915/display/intel_dp_link_training.c | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  9 +++++++
 3 files changed, 44 insertions(+)

-- 
2.34.1

