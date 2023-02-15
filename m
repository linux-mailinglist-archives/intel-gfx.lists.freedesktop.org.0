Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FAE6972E5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 01:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1192110EA07;
	Wed, 15 Feb 2023 00:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F81310E10B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 00:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676422460; x=1707958460;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YiQPJEm1UG9mjzKDlhaOjtf94LqFOW9vXXnrj1/Ki1E=;
 b=VLKVbIhxxkUruJnEJ4ZgrlkARPdhHVoOdQhnD1no/M18axClUx60/RtD
 3UsRIc9zOtxzHJWUlirYj3R/qgKY+HZXawqXsobbf5R5QjRElr4ARUNU+
 xfZyIYznt/vWHsz1Sszy1GPIohDYsx1lDooM+IJ0PKdUjMiaXgBhGxXpE
 EIKDRiFyGzfkLftLzYzc9RXJg26Y1HKpNnek0H6BTqTxt82TZqtJMxO/3
 ZuXk07X23HqJfoq15rCXI/wIiKbGUD9X4KCXVS664FOeYm+mruSEZvMqq
 W5J+MsjYAQVA9I2xKj+57SfOdTkFy0TlqKiQOS1hoAU90hFzb/s4yJBj3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417536034"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="417536034"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914951610"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="914951610"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:19 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:54:10 -0800
Message-Id: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] Add OAM support for MTL
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The OAM unit captures OA reports specific to the media engines. Add support to
program the OAM unit on media tile on MTL.

The OAM unit is selected by passing the class:instance of a media engine to perf
parameters. Corresponding UMD changes are posted to the igt-dev repo as part of
supporting the GPUvis tool.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230215004648.2100655-1-umesh.nerlige.ramappa@intel.com
Cc: "Ashutosh Dixit <ashutosh.dixit@intel.com>"
Cc: "Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>"
Cc: "Joonas Lahtinen <joonas.lahtinen@linux.intel.com>"
Cc: "Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>"

Chris Wilson (1):
  drm/i915/perf: Drop wakeref on GuC RC error

Umesh Nerlige Ramappa (8):
  drm/i915/perf: Add helper to check supported OA engines
  drm/i915/perf: Validate OA sseu config outside switch
  drm/i915/perf: Fail modprobe if i915_perf_init fails
  drm/i915/perf: Group engines into respective OA groups
  drm/i915/perf: Parse 64bit report header formats correctly
  drm/i915/perf: Handle non-power-of-2 reports
  drm/i915/perf: Add engine class instance parameters to perf
  drm/i915/perf: Add support for OA media units

 drivers/gpu/drm/i915/gt/intel_engine_types.h |   4 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
 drivers/gpu/drm/i915/i915_driver.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h              |   2 +
 drivers/gpu/drm/i915/i915_pci.c              |   1 +
 drivers/gpu/drm/i915/i915_perf.c             | 632 +++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h             |   2 +-
 drivers/gpu/drm/i915/i915_perf_oa_regs.h     |  78 +++
 drivers/gpu/drm/i915/i915_perf_types.h       | 103 ++-
 drivers/gpu/drm/i915/intel_device_info.h     |   1 +
 include/uapi/drm/i915_drm.h                  |  24 +
 11 files changed, 735 insertions(+), 119 deletions(-)

-- 
2.36.1

