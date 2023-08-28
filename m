Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A15A678A554
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E27510E0D1;
	Mon, 28 Aug 2023 05:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D4E10E0C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693201482; x=1724737482;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wiDQ4ywhZhb85bRO41bGNT/iZDhWpJWnkAh8mB2RlEw=;
 b=UoEv1nAACLQBnzHW47cujlFkLnZn7LS3Tc2k2G2oAx7gZhtWHkWSn2si
 ioWFSSdPeSzAimxzot5cZQK0ajznw80xZWD+TxOCaIZOQezclKkciVUmI
 mqRAGCmn/hUDIC1ainQaq7+s1eZwb3NfNJs9WjVLxHWFfI91N03vqaZRZ
 6rYIKu3iaqYcQpilnVRngVyO0VUxEsoo8eZdz8YGrGKeRllZmkqRqyL7g
 l1o925p5cA3VVCBHTKI4UW5kUqcC1KwwWUZIjWAAzMfiBgjgXFVhvhYRI
 d3Ww/IYvokZGV6WTIQw0a4q1wZ6MzAzZfZqIjTS+GLfAJ7G+l7AtsI0Or A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="373906586"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="373906586"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:44:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="738128522"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="738128522"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 27 Aug 2023 22:44:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 11:12:53 +0530
Message-Id: <20230828054300.560559-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 0/8] Add DSC PPS readout
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

--v8
-remove array dynamic allocation for dsc_reg [Jani]
-no need for an array to just verify dsc engine values [Jani]
-remove no_ from no_vdsc_per_pipe and wherever else it is
applicable [Ankit]

--v9
-change variable name to dsc_reg_size in intel_get_pps_reg [Ankit]
-send ARRAY_SIZE(dsc_reg) in intel_dsc_write_pps_reg [Ankit]

--v11
-add _ prefix to vdsc reg not be directly used [Jani]
-remove _REG suffix from register macros [Jani]
-do not register read in intel_dsc_read_pps_reg [Jani]

--v12
-use vdsc_per_pipe in get_pps_reg instead of array size of
dsc_reg which will always be 2 [Jani]

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
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 480 ++++++++----------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 365 ++++---------
 3 files changed, 351 insertions(+), 525 deletions(-)

-- 
2.25.1

