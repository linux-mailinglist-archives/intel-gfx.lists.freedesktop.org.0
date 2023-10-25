Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EA67D6E7E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 16:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D52810E5A9;
	Wed, 25 Oct 2023 14:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F0D910E5A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698243233; x=1729779233;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=wj8QFFQK3wAzB/BQQGwqZ6lpz0tIr+lA3xKQJXk1uGk=;
 b=ZWkPUeKytJiL2Buqn8Xnn2uHyT0kbKkpn/fWgyizLIn5sTBQiM34Z3kI
 EORgPX16D+PEXrPHghJA7lmQ5s6ob8yTA0fKqY4+tOllg8gYg1nRBZYDd
 luH0CHWW401YyUjSSvbBmfKl/PDh7m00WnvvobLqvWvGvQysY+BMZ+NDa
 GW3r+l2kf7iAIDf14M57m6BPkGJewEvaD1sHkx8VgmY/UTHaPM7YLiIao
 BcIEICLR3Dem6AFAzDCk7edfsoukNSPgS0GMu3BNFsLI0a1hdMZNzbkF4
 2AWZ6GDcTW9Nj8B6s3OeNohxylN5HrCGtu49qLZ2niwKCBJYpjLbSJaVe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="372367113"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="372367113"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 07:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="882458714"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882458714"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 07:13:51 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 25 Oct 2023 16:13:39 +0200
Message-Id: <20231025-wabb-v5-0-398e42309e9d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJMiOWUC/22O3U7DMAxGX2XKNa7yt67livdAu3ASl2Ri6eRUZ
 TD13UmGkIbE5Wf7Oz43UYgTFfG8uwmmNZU05xr2TzvhI+Y3ghRqFlpqo6SW8IHOgXM0Gm2xH3E
 Q9fTCNKXrHfN6rHni+QxLZMI/ZaXlqHSnhmGoE1CAOfAXnbqIp4AvKS/03vn53JAOC4FjzD42R
 OAKTJe2iaksM3/elVfTXv4+MD92qwEJCu3kfF8trXwgN7vV/leytTQd9oH82Gt3CI+lbdu+Ac3
 b+qYqAQAA
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2697;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=wj8QFFQK3wAzB/BQQGwqZ6lpz0tIr+lA3xKQJXk1uGk=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlOSKdjBMCSb5YKDJ9EH+NvJSOLZ31FgZdJCmCJ2uS
 eDbwnKaJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTkinQAKCRAjYrKT3hD911EQDA
 CdIr1Sj7rwrQVl/7jRXPP9Di5mWyoQH8vPGhWkcoT+t8TiJ1T5+RE2EDm0aE3ZMNs52a5UqSJHOXGU
 ZiTOho6egXKki3US6JLBPdFSfNtqOs9oaWKq6FPWvomAgXKZ8cB3BaAuaVwYbQeHTisQZp3V7TfJkt
 dR3ZhmtmS81GQcfzPkErEmOOfTANaAxOi71xEkE8dMt7AE9p6HW1k0DIFhufGDWra4TYQ7hpO3F/Ph
 tHB1ceybMOgl2i9EvBbMmCQGAwH3jH4YlNhMpwh9GV9T3STS498KqJOPoLPM8V7qbuCsjB/rbP/uPU
 o3uVeMbdIhML2uIrYukyBw2+nBkdrzLXHX3Wb8ufbTAzicAlYabC91gmbnh8zkKm/znDKUwfgzN7Y+
 kRtGHHkUwNChdwPLe6tUmF2JjDUmowubOb/kxWRiXbQcSlEKZG71T11gvMwJ9eNpA4iBUGfKLTTGI2
 zAXKb3hWnU0URW4UPU7Y8drs3PbNUB3cZQQhOmGrhOsGI=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v5 0/4] Apply Wa_16018031267 / Wa_16018063123
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
v5:
- fixed reserved memory allocation

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
- Link to v4: https://lore.kernel.org/r/20231023-wabb-v4-0-f75dec962b7d@intel.com

---
Andrzej Hajda (3):
      drm/i915: Reserve some kernel space per vm
      drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
      drm/i915/gt: add selftest to exercise WABB

Jonathan Cavitt (1):
      drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        |  42 ++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h         |   4 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   5 ++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++++++-----
 7 files changed, 205 insertions(+), 21 deletions(-)
---
base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
change-id: 20231020-wabb-bbe9324a69a8

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

