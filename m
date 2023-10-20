Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C4A7D0F66
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 14:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8DD10E5AE;
	Fri, 20 Oct 2023 12:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D03110E5AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 12:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697803772; x=1729339772;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ldDJA0gbqJ3utLZapiVxlZZoX+cz8cKo9C9dU53Chbo=;
 b=Yu+zmnLIih3zsvH9HA7RJ1cFaCsZSQWKjqrghy+Hq1QMVkpAhK/PmhrO
 1BZ6QlHVRiCIVO//AgQRINn0g2FNR6xUnR3xBFCQ7nNIPUnjZDMpe+DbT
 t3F+9XO6YeltzacaHFAqkwS/Gi9EyrsoZiwttO6We0Gt5WtvIshPlw2gC
 5xtgm36FT8TBBKV+mXOL3US2DjMO3UkQYcwrBCXJpleSLW4gZqz1yEyAi
 OjzL/fizXW9prInW9svVH3he0Vhkka4RV3BSXa2FaPCV3M8azIrYcIIOr
 tXkhce/iNTWygGnwtmQ4hfFGVhxuj30vmfKBYx46NNsUukReT0jQA5V3U w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="383699497"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="383699497"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 05:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="881058663"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="881058663"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 05:09:30 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Oct 2023 14:09:08 +0200
Message-Id: <20231020120912.1888023-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Apply Wa_16018031267 / Wa_16018063123
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
Cc: andi.shyti@intel.com, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

This the series from Jonathan:
[PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123

taken over by me.

Changes in this version are described in the patches, in short:
- use real memory as WABB destination,
- address CI compains - do not decrease vm.total,
- minor reordering.

Regards
Andrzej

Andrzej Hajda (1):
  drm/i915: Reserve some kernel space per vm

Jonathan Cavitt (3):
  drm/i915: Enable NULL PTE support for vm scratch
  drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
  drm/i915: Set copy engine arbitration for Wa_16018031267 /
    Wa_16018063123

 .../drm/i915/gem/selftests/i915_gem_context.c |   6 ++
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  41 +++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h            |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 100 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   5 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  65 ++++++++----
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 12 files changed, 215 insertions(+), 21 deletions(-)

-- 
2.34.1

