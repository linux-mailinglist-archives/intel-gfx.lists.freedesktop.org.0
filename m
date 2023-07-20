Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB78B75A8AF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 10:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B02510E574;
	Thu, 20 Jul 2023 08:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA8310E574
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689840546; x=1721376546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uzX/j8VnKfYAfHk+iCPlCRymK9nvGvmS5wQQn9sfw+k=;
 b=T1KFHMiaYcHGZuJsMlXB7apBM2W4kcfgTJ6tNDik0JrlTJvWywfERZN1
 YWHuVeR9uBt6ptPEVIKE1dbLMnctv/CoAwVdsW0gWogG9cwzk0Je53C1R
 RAadZJnm3hQFp+3p63y1MOoYM+2EKw9fmEokz4KaY2K9VB5pKa8hdo0Gv
 Ufcy4oZ/+vnB4DN8hcNWyfTzBPKLuKf/K3EbYzEvb9LyFPO8J+zN9THtU
 Kf2usOFm3OY3L041cXR5NKKjUbPPecILypuCZtEMeJEr9/vr6YFtyq473
 +Vnf0w6vliwpom0uQgbxJZ5iGWEo5c/JXpk5nAmbn6Gm0RJsJH2lP46X7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="366700135"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="366700135"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 01:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="724305452"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="724305452"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 20 Jul 2023 01:08:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 13:37:08 +0530
Message-Id: <20230720080715.3063267-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/7] Add DSC PPS readout
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

--v4
-Manipulate register addresses rather than creating a macro to
manipulate variable name based on pps [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>

Suraj Kandpal (7):
  drm/i915/vdsc: Refactor dsc register field macro
  drm/i915/vdsc: Add a check for dsc split cases
  drm/i915/vdsc: Add function to read any PPS register
  drm/i915/vdsc: Add function to write in PPS register
  drm/i915/vdsc: Remove unused dsc registers
  drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
  drm/i915/display: Compare the readout dsc pps params

 drivers/gpu/drm/i915/display/intel_display.c  |  31 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 448 ++++++++----------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 366 +++++---------
 3 files changed, 322 insertions(+), 523 deletions(-)

-- 
2.25.1

