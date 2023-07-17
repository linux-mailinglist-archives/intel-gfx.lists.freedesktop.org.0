Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC9075601F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A9610E222;
	Mon, 17 Jul 2023 10:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1901010E222
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689588681; x=1721124681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8NrBMXUfRsT/hitGWUN/DstFpeEs81vgq1/UKhdQMfo=;
 b=FEU2+dhQ2L3YHeYlqp8lI95+Zig+tDRsOYu2sdIAz5+LIUeGuof9e+VA
 U0H2G3g0hBskFZNi8c0MHODpSvrUxCOcTZ57OPE0VsvFUFotXheQWBGMO
 MV7pvyciqRkOAKTt2JRpPy5zWyHnwuq7reeo+UL1DJeWpDNpv9pPFM9+u
 OZn9FzNBd1691DUZoVkAmCkRY8L4K6xtBrEhg3F7JlYiB1SJG2gW7YmqZ
 n9fyqtWBSa/rBNZSYZgfHOEQfsFdXyQtRMeZbh/ZpRonFp2O+iKKeVjoX
 hw5i2jrHAxgMBZgWzuk5qSPicYc0Hmalx1nUskRvxXtq9vfn0C/fQe7EM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369445957"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369445957"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836832453"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836832453"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 03:11:17 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:39:24 +0530
Message-Id: <20230717100931.2989980-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/7] Add DSC PPS readout
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Up until now we only verified one or two of the dsc pps
params like bits_per_component and bits_per_pixel this
patch series aim to readout almost all PPS param and get
them compared.
Along with that some work on making a common function to
read and write PPS param regiters is also done.

--v2
-Remove duplicated code and create function that fetches register
and reuse that. [Jani]
-move WARN_ON one abstraction layer up. [Jani]
-Split patch so that refactor and a new functionality is not added
in the same patch. [Jani]
-Add a new refactor patch so that bit shifting can be done in a
clean way. [Jani]

--v3
-Fix the typo in patch 2 [Jani]
-Get both dsc_reg regardless of dsc_eng_no. [Jani]
-Remove usage of num_vdsc_instances. [Ankit]
-Add macro to further optimize intel_dsc_get_pps_reg

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>

Suraj Kandpal (7):
  drm/i915/vdsc: Refactor dsc register field macro
  drm/i915/vdsc: Add a check for dsc split cases
  drm/i915/vdsc: Add function to read any PPS register
  drm/i915/vdsc: Use MACRO to cleanup intel_dsc_get_pps_reg
  drm/i915/vdsc: Add function to write in PPS register
  drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
  drm/i915/display: Compare the readout dsc pps params

 drivers/gpu/drm/i915/display/intel_display.c  |  31 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 506 +++++++++---------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 101 +++-
 3 files changed, 347 insertions(+), 291 deletions(-)

-- 
2.25.1

