Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54367738EE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 10:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C3610E00E;
	Tue,  8 Aug 2023 08:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D566310E00E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 08:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691482415; x=1723018415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lIv6uw5ycn1QI29O7ZUg3Ad8GW5//4ArAZ8mi5lHO/k=;
 b=RNgEX+EfcrkJ/Ucp/K7SOtCNziZRDxKqe5MwOxkNEjc2ksD7wAE78F5O
 tKTVeoVghdItflh1aCrXqDoORHQ/3wCMdGGrmQcohNBhkdBvkofJK71o7
 TUElCyP+XMXILsDTq5saMAw/ei8fK/rYvh+Wpu2H8Lktbv7Y1XFlDjOe8
 SGKKKX3+iUBIzkCfqWNghk+Z2ibN/LDQXj+urNNTFas1wl920L4AyfODK
 OiCNM4x4uaFNGB62Zg9tMdPKoqPFFiz90bx07nUHVcOrpDYTSwZAzHaVs
 IKrOvEs0zId/efp16icM4paX9501b4Idu6aCGF/jFt6hsZU31dN1Sgx7f w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434603649"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="434603649"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 01:13:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801244843"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="801244843"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 01:13:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 13:41:27 +0530
Message-Id: <20230808081134.4187416-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/8] Add DSC PPS readout
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

--v6
-make intel_get_no_vdsc_inst_per_pipe func static

--v7
-shorten func name for getting vdsc instances per pipe [Ankit]
-send no vdsc instances to dsc read and write reg funcs [Ankit]

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

