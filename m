Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1046B85CAC9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 23:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8173310E596;
	Tue, 20 Feb 2024 22:33:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDT/PRhL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27EB10E593
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 22:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708468395; x=1740004395;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DTSbSYG2V4na43u9YoyqXS+vgbqUWpkKmhAXgIfNpAA=;
 b=GDT/PRhLgU6CA6ri1aO5v3WHjp4qmPxXmiFjDwwrFqIVUvGMTb/1GJ2/
 nl4JGBT5IDGjvjtA7sbYa5yLYleperPMhSxv+W6zDViNtk8iuaGAKtVEV
 IBynN9jK4uGh0pWNDukI4pvuRH6CcLc4U5yYJ8dWuF5HP7uGpcgftAh2v
 40XVnoaVNE0uu7fMgbaLNE+ExTg3xNGG0PnHY1nIUDMUkPPpDd7hRF1km
 shGwFWhJo9U7fkHVRZmq1HltmawEbBzjEhxcMyfZU4VCdFa07EfNCyOp9
 yEtPEt/vjZyC6UEnRK+ZNHZsJPMl681iw4e2yX4qq3gjRQwlkKclNednA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="14006863"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="14006863"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:32:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="4869884"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:32:57 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/4] VBT read cleanup
Date: Tue, 20 Feb 2024 14:31:25 -0800
Message-Id: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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

This series is originally based out of [1], and built on top of [2].

The primary departure from [1] was that vbt is no longer cached. During vbt
show, based on the source of vbt, it would simply be re-read reducing the
read/cleanup complexity. With this series debugfs dump of vbt should work on
all the platforms that support display.

1. https://patchwork.freedesktop.org/series/128341/
2. https://patchwork.freedesktop.org/series/128683/

Radhakrishna Sripada (4):
  drm/i915: Pass size to oprom_get_vbt
  drm/i915: Pass size to spi_oprom_get_vbt
  drm/i915: Move vbt read from firmware to intel_bios.c
  drm/i915: Show bios vbt when read from firmware/spi/oprom

 drivers/gpu/drm/i915/display/intel_bios.c     | 104 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_opregion.c |  46 --------
 2 files changed, 86 insertions(+), 64 deletions(-)

-- 
2.34.1

