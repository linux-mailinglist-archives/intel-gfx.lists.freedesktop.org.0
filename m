Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505AE74D2FE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCE510E25A;
	Mon, 10 Jul 2023 10:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E8B10E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688983857; x=1720519857;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mv9W/AjgTBV8rYtEHbQbc06ojaN3Ikn2KfzPZYYjiIo=;
 b=EhmyC5pIz65sBt+oOTpOA0zpi6PeiZlHt/VJlIiHsGH23OwOEcjjDRr6
 CVBDgvpiUO9KTZ0OF6uO/trVJnKeeAWnN3y1c90NOmy7IySzyXP1NWgSt
 RIoOl44kBmrb/sDC8y+6/V7jbQhrRvH9tXdbpU0EWbZJdBSiBUPyuz6U1
 u55cEtm6wc85+XsiozstWHhXAC6xSfueUj2/Z8oJDUBpQ3Fah+KX6cWV/
 19cDdY6+/TTv0iiKwxMTkslJhyZadEJglay6kHkQvbyahMmRnYScejKOl
 HgZTpvmpHI96VDiGv4bbGJ3/Du8AuOdqD+VHwrF+Gv0qkThXWMuJa3tnu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343897091"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343897091"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="723955037"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="723955037"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 03:10:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 15:39:06 +0530
Message-Id: <20230710100911.2736389-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Add DSC PPS readout
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

Up until now we only verified one or two of the dsc pps
params like bits_per_component and bits_per_pixel this
patch series aim to readout almost all PPS param and get
them compared.
Along with that some work on making a common function to
read and write PPS param regiters is also done.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>


Suraj Kandpal (5):
  drm/i915/dsc: Add PPS enum
  drm/i915/vdsc: Add function to read any PPS register
  drm/i915/vdsc: Add function to write in PPS registers
  drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
  drm/i915/display: Compare the readout dsc pps params

 drivers/gpu/drm/i915/display/intel_display.c  |  55 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 944 +++++++++++++-----
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  53 +-
 3 files changed, 762 insertions(+), 290 deletions(-)

-- 
2.25.1

