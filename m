Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CD369A337
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B608010E3BB;
	Fri, 17 Feb 2023 00:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623A910E138
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595535; x=1708131535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JG0OJ3qV9yRtWEY9KmVARIXbtTl4kGUvrTVUzlkn+hk=;
 b=Yj2SGCyLglOew0W62cX1piJEfKS+LstffesChdBIBxVqGhYDXsgxyzBm
 ZsRJp3pVNo/ytiufeqwGD1e1n6oZ0R1BQjCU8cygbCCSPz5VrReRUDV/L
 zFXCIw8WgMYOFmSJjMKSUw1O3fi0hi/2iqNkk8jZsPDKFYTn3nlB3Jdt1
 8Y/+aAIWQbS/Nkf5BU5PBxmuvjeifgLK/LpwUQ1mWUdxB87j8BrztUjGY
 H2wAu+MKLThiXlrBTwQDDzQ6UdTXY2Nw7Zoi2go50OxkRMyItYdzgYIAE
 gPH9flAGj0rG1wk0rBRcfQcw3pIpQPbDheOt5fhE4x7sxhRtuxvd0gWXV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512375"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512375"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390195"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390195"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:41 -0800
Message-Id: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] Add OAM support for MTL
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

The OAM unit captures OA reports specific to the media engines. Add support to
program the OAM unit on media tile on MTL.

The OAM unit is selected by passing the class:instance of a media engine to perf
parameters. Corresponding UMD changes are posted to the igt-dev repo as part of
supporting the GPUvis tool.

v2: Incorporate review feedback (Jani, Ashutosh)

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
  drm/i915/perf: Group engines into respective OA groups
  drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM
  drm/i915/perf: Parse 64bit report header formats correctly
  drm/i915/perf: Handle non-power-of-2 reports
  drm/i915/perf: Add engine class instance parameters to perf
  drm/i915/perf: Add support for OA media units

 drivers/gpu/drm/i915/gt/intel_engine_types.h |   4 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
 drivers/gpu/drm/i915/i915_driver.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h              |   2 +
 drivers/gpu/drm/i915/i915_pci.c              |   1 +
 drivers/gpu/drm/i915/i915_perf.c             | 626 +++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h             |   2 +-
 drivers/gpu/drm/i915/i915_perf_oa_regs.h     |  78 +++
 drivers/gpu/drm/i915/i915_perf_types.h       | 103 ++-
 drivers/gpu/drm/i915/intel_device_info.h     |   1 +
 include/uapi/drm/i915_drm.h                  |  24 +
 11 files changed, 731 insertions(+), 117 deletions(-)

-- 
2.36.1

