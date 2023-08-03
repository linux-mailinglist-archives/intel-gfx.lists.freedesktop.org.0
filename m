Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E42976E955
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 15:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9687210E607;
	Thu,  3 Aug 2023 13:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8531210E607
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 13:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691067923; x=1722603923;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LTmAon/djFG3HAfM6UVtfpnbv7YHHMCoPDftYTRNuCc=;
 b=RsAs0ztyvnRGb4Qo3R6mZn5hOthw7vBkXLd6E3OxtqMUwHToQrY+RcSs
 AR7ELzPdvplmXWNEml9aNNHyOZGbNytKKYhYA4AL/GtzF8s8bryiKxkm0
 aYwcezua2SCVO2woa5iAmSV30nOiXs99GsH/m8s7opPK7gXi4/FBpPfMl
 6VQk3FrsRNAarX0iWAVYt+BhWSw3bhHPXLImxCjxklaRg/x9JlepjV1ze
 CajiKuz58+qqFFfWLoBZV0ijhvoKv66pJJQFfVuqbmXYYZZP0mvRiCjPi
 kWLX+/KriOx9/13V/v4DpHLa41rc7tYgUueTA7efDEmQRoujypnSkHsG2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="359906473"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="359906473"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 06:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="843585774"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="843585774"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2023 06:05:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 18:33:30 +0530
Message-Id: <20230803130337.3784597-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/8] Add DSC PPS readout
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

--v5
-Use an array to fill the dsc registers instead of individual register
[Ankit]
-Get only dsc register that are required.

-v6
-make intel_get_no_vdsc_inst_per_pipe func static

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>

Suraj Kandpal (8):
  drm/i915/vdsc: Refactor dsc register field macro
  drm/i915/vdsc: Add a check for dsc split cases
  drm/i915/vdsc: Add func to get no. of vdsc instances per pipe
  drm/i915/vdsc: Add function to read any PPS register
  drm/i915/vdsc: Add function to write in PPS register
  drm/i915/vdsc: Remove unused dsc registers
  drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
  drm/i915/display: Compare the readout dsc pps params

 drivers/gpu/drm/i915/display/intel_display.c  |  31 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 524 +++++++++---------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 366 ++++--------
 3 files changed, 392 insertions(+), 529 deletions(-)

-- 
2.25.1

