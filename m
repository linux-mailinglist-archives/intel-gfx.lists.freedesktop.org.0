Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF5A6A5126
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 03:24:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E8510E5E0;
	Tue, 28 Feb 2023 02:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7F810E471
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 02:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677551015; x=1709087015;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TU7KB/63syHlsidRBFn6TSYZ2Svj63ADQRjOP3WDURY=;
 b=CMl6KuVcHV8hO/8qpJEZPOQMpgcKDFQZN9pCRc9xkx4Icl99u4L3pv+3
 VOyLX0rdQvD2SroSrAs67bxhWcIw7rafjQVsbQRbdsKNffstSyvHqPFNy
 nxdc/cjV80lXLn/MnjueoSTQIJZ0quhom6s6uEJCw+dtvx33gjQ7Oy8YQ
 1KYUgw/ukQhS5pSbh9N+tX6i13uvloDJSD4scB1W7ujC6H+7VcmBRfWNz
 tYyesD9luj6OQiW6exYyt0yT/VRM+pZZunRtTyYgFdy6GRkVgL8s+o+0Y
 NJ3HHRW2QwHcq5XSEgaWpuiIp87V9x6ZXmvYaGabQG+PwyVBfUuUpgPGE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331504070"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="331504070"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:23:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676129211"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="676129211"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:23:35 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 18:23:20 -0800
Message-Id: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/9] Add OAM support for MTL
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
v3: Incorporate review feedback (Jani, Ashutosh)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230215004648.2100655-1-umesh.nerlige.ramappa@intel.com

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

 drivers/gpu/drm/i915/gt/intel_engine_types.h |  10 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
 drivers/gpu/drm/i915/i915_driver.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h              |   2 +
 drivers/gpu/drm/i915/i915_pci.c              |   1 +
 drivers/gpu/drm/i915/i915_perf.c             | 543 +++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h             |   2 +-
 drivers/gpu/drm/i915/i915_perf_oa_regs.h     |  78 +++
 drivers/gpu/drm/i915/i915_perf_types.h       |  75 ++-
 drivers/gpu/drm/i915/intel_device_info.h     |   1 +
 include/uapi/drm/i915_drm.h                  |  26 +
 11 files changed, 624 insertions(+), 121 deletions(-)

-- 
2.36.1

