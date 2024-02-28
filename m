Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B680E86B9F7
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DD910E3C4;
	Wed, 28 Feb 2024 21:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDUve6mo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E111310E272
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156048; x=1740692048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2qpv2R7LfLoD3iyFoBoNmy2GonRCJNAlqJmTMT7DWeY=;
 b=mDUve6mogTyBDk9BetevxCg+Y8ikbC7tx5zUXgoy63z+CQ4ej9vThurE
 F4AyOYUr+wnGv51+7SQypkAw00pTLqVID8A+P/J+c5m5yc7lpNxYHiC4p
 3kOZLlJrUcU1iPSHM92FBeznBzZ22XeAGgB7mcgw/mO6+cLyD2dqiq2Tw
 RQz3Flywq1kCB0oMLrVnZNnT7Vurpmf9bnOvmorMXaCHDoDWhQnVnx4uV
 rAmyQOX5rvI0xDiXVlwAxgPoB3ob2S4rYBDOksQs306U02otwCHAa7Zr8
 LJMmgj/IBFoVEqwMi5q9MJGnB34PSwNxRdHkEJ3Us1VZPVIPwg+xZJq+x Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753122"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753122"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623723"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 0/6] VBT read cleanup
Date: Wed, 28 Feb 2024 13:32:29 -0800
Message-Id: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
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

v3 of the series extracts opregion firmware check and harmonizes the memory
handling of different variants viz. opregion/oprom/spi/fimrware

1. https://patchwork.freedesktop.org/series/128341/
2. https://patchwork.freedesktop.org/series/128683/


Radhakrishna Sripada (6):
  drm/i915: Pass size to oprom_get_vbt
  drm/i915: Pass size to spi_oprom_get_vbt
  drm/i915: Move vbt read from firmware to intel_bios.c
  drm/i915: Extract opregion vbt presence check
  drm/i915: Duplicate opregion vbt memory
  drm/i915: Show bios vbt when read from firmware/spi/oprom

 drivers/gpu/drm/i915/display/intel_bios.c     | 108 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.c |  58 ++--------
 drivers/gpu/drm/i915/display/intel_opregion.h |   1 +
 3 files changed, 92 insertions(+), 75 deletions(-)

-- 
2.34.1

