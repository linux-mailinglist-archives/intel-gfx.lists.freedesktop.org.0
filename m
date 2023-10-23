Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBBD7D40CF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 22:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B9310E242;
	Mon, 23 Oct 2023 20:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C995A10E242
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 20:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698092519; x=1729628519;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=pwONa9I43X+woVlXzYwoEtokrW3yMakzuMTHeGtSvXU=;
 b=YfeAn2/s8o9vJnW3S5S+y8fbBwUCldnDz+AH/d2H9QS+qQiMOpy2xAjt
 BCnl0lWesN1zFC/94ijIitKIn8UzGs7+FZVBrrVTiOg+RtfWUd71nfhvo
 zL5y4okKD2JZvGV5hFlYqMQBrpCDBXeyZXKKnopJKfRbb2qww2MogSmf9
 VXUjcEpAgeS8p3z2LfitsldEsHxi1tar7Ca42YI0awBPjCEGhVl2cSUFh
 DWSIVb+ZENSEZycOKcANYq2N/ZFXhdopIR7ShCBucbfraxNiplzjUp9uk
 l8DqvuPgv3P4Zk1bF+D/ai+qYPitkO0AZh4xxDDymVZlaTIMn7wMIVxPy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="371989463"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="371989463"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="734796460"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="734796460"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:21:56 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 22:21:44 +0200
Message-Id: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANjVNmUC/1WOyw6CMBBFf8V07ZA+iAFX/odhMS2DrdFCpgQfh
 H+3aEx0eeZx7p1FIg6UxH4zC6YppNDHDOV2I5zHeCIIbWahpTZKagk3tBaspdroEnc1ViKfDkx
 duL81xyZzx/0VRs+Ef89Ky1rpQlVVlSegAGPLTzoXHs8tHkIc6VK4/roqLSYCyxidXxUtZ2EY1
 o0Paez58a48mTXyG2A+7SYDEhSWnXW73LKUP+ZmWZYX5SJ4FfUAAAA=
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2571;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=pwONa9I43X+woVlXzYwoEtokrW3yMakzuMTHeGtSvXU=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNtXiMX91iTuCbNDEwdHB4cIMixRVH6sOa9T/WZ2g
 3GpQfdmJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTbV4gAKCRAjYrKT3hD91wFNDA
 CbnNks29hWxhdIIt0q9BZgOxMoVmKBVTvrrCiqgf+bRsQFCI49o3qvAPeyQolz2aGhPkinKf7xfAOr
 DGJf1CrAkLQIoxqaWnAJEVi6K8RZdEGWTS1/Cq2NCfLXeXHkzTrkJYL6X1+EheQN9BGrZ9grhnEDYd
 SqUrJ7+Td6VUu5fDBwVzd4UoYlU3rID7ru6JaW9nWlWn6NXQLnudaaRwwiji6/7a0TC6obUMivuzNZ
 C8w1RspE41wS6B8oHzaiBNMvUWy4J4nZ5v/QwNhy0OHuOEVoypJ3T7NVVZdw4fotYb2nST1YdrQnna
 Xyb63Vv1D/QktcTwek5ffRjwIVp8m2vNqfOQQfGLNKqtGUYcj4hS0wh0sTCl58oh64b0KRQfPb4CJ6
 Eg6xYyxNn5gJEYle8PpwYwDsWBFwJsfIBGADCtp2GD9ZjjppECAz1+iH6UbAkCJ4MmjWZ0HbhEUASN
 DgpVc9mTKOzR/ieOzXPGCNc1tFdY/4wiu8iSRCGvGPaKI=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v4 0/4] Apply Wa_16018031267 / Wa_16018063123
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

This the series from Jonathan:
[PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123

taken over by me.

Changes in this version are described in the patches, in short:
v2:
- use real memory as WABB destination,
- address CI compains - do not decrease vm.total,
- minor reordering.
v3:
- fixed typos,
- removed spare defs,
- added tags
v4:
- removed NULL PTE patch,
- separate selftest to separate patch,
- use BB only on BCS0

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

---
- Link to v3: https://lore.kernel.org/r/20231023-wabb-v3-0-1a4fbc632440@intel.com

---
Andrzej Hajda (3):
      drm/i915: Reserve some kernel space per vm
      drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
      drm/i915/gt: add selftest to exercise WABB

Jonathan Cavitt (1):
      drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        |  38 +++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h         |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   5 ++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++++++-----
 7 files changed, 198 insertions(+), 21 deletions(-)
---
base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
change-id: 20231020-wabb-bbe9324a69a8

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

