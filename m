Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE2872EE4B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8647010E3E4;
	Tue, 13 Jun 2023 21:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D08710E3E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 21:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686693246; x=1718229246;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wf6Jak/qpEN9RYrxjTauqE5tp5N/lItMLI5kslNaAtA=;
 b=eyXOG4VpavaLjwstsStDb1m61xH76+s8zcVEPnR5k34ISxEDcCHPTWQV
 mp+ltAiSiJGmiZnaCW9sK0Ymyk2SQ0HQ/qPGVbJzD7Lnnwt9ETIJpwWm6
 RSXYYKivXxiypgGSK40IGY6qofxAsiWIqKPdhHfwkPOLKJiVB6e++BIZD
 4HMNlsUbZctpRIfYuXAXLvcOUNQsFQJCdgnG3zHpEawMmrkuRdYClTVm7
 Af8WGYTxE9KTbxJhe/0y32KiWb8MmQXjUbeJ+W4g+MmLiykwdmcGprFRX
 B5x05Zfe6K5aseSa+woMk0lYZqTvuf+t28XUPu3HmO5bxytQNJVy3av1r w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338813911"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338813911"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741604226"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741604226"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 14:52:41 -0700
Message-Id: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Use non traceable api in display trace code
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

Nesting of tracing events should in general be avoided. Many of the
display tracing events use the traceable versions of register read/writes.
This patchset replaces them with non traceable versions and defines them
if required.

This cleanup will be helpful to introduce reg rw tracing of the xe driver.

Radhakrishna Sripada (4):
  drm/i915: Add a notrace version of intel_de_read_fw
  drm/i915: Add a dummy notrace version of intel_de_read64_2x32
  drm/i915: Make intel_crtc_get_vblank_counter use no trace hw reads
  drm/i915: Make intel_get_crtc_scanline use no trace hw reads

 drivers/gpu/drm/i915/display/intel_de.h     | 17 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.c | 22 +++++++++++----------
 drivers/gpu/drm/i915/intel_uncore.h         |  2 ++
 3 files changed, 31 insertions(+), 10 deletions(-)

-- 
2.34.1

