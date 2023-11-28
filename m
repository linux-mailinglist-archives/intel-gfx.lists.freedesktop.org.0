Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8177FB468
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 09:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F1310E12C;
	Tue, 28 Nov 2023 08:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9122910E12C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 08:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701160677; x=1732696677;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zoFtHMpfYixEKSQ3n84HoGqgT1nXNnLv0sBb6UBG7Xw=;
 b=DsA9JbR9+eQJVcVY+ax+3u+d7X69iTGOQ+gT7BC8umr9f9GMAFxNH3Iw
 zu8GWL2h4ZntXgil4aVRSDDr3bWhijhWBnvrjW8N0F6dkv06MGpxLk3K0
 cT+NaBMI9eTjoy8OpG7w/7H1MtG40yKrAtjVYgUuA7WSIb/A4pRLMr4h/
 2EyISNknjtMS9rcl8L/sEMSX4Xk9Ub6rLAQglHnz47c1/bum/tPN9D37v
 rGFRZp4fwvPOEzLS585PcVuieOVj//Y2RE+1yINfTe4QyRDLsaSBiYebx
 JfX7WEPiJFUZ4OgnCvj+JxsQn2GuCdWonv4PIKTecPJ5rAHK4gleVmAaZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459381738"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459381738"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 00:37:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="834577648"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="834577648"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 28 Nov 2023 00:37:55 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 10:37:51 +0200
Message-Id: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] QGV/SAGV related fixes
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

We have couple of customer issues, related to SAGV/QGV point
calculation. Those patches contain fixes plus some additional
debugs for those issues.

Stanislav Lisovskiy (3):
  drm/i915: Add meaningful traces for QGV point info error handling
  drm/i915: Extract code required to calculate max qgv/psf gv point
  drm/i915: Disable SAGV on bw init, to force QGV point recalculation

 drivers/gpu/drm/i915/display/intel_bw.c | 104 ++++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_bw.h |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c   |   2 +
 3 files changed, 89 insertions(+), 18 deletions(-)

-- 
2.37.3

