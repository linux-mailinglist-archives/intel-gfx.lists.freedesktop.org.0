Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB147D886C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D967110E862;
	Thu, 26 Oct 2023 18:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425D010E854
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345400; x=1729881400;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=+zOeIQmfj2gLSfVVwdOkIGAkc9BL2dEK1ct8b4c/fqU=;
 b=GNR8RdNWA+zfWwL3gO4+FNeQAOsHdZIYOdOPRAwu1j/d0epbOhAjLTG4
 EcqcgfYwSZg4JUFAsK8AknkdVYzQf6uiXHSQvVAfANFyzl6mm+xOhks/R
 V5oloe9jfflm3YcdZIW8tpLol6YBnQ5S7I6szf6GP9JwRTjNdjbVpDu+m
 EbxROWk1d5qcFOJ3cubXsySqqh2PuciUr2w5spt8IUS/VW3yOOHXqh3Iz
 MtpZO/37wxs6UxOybSDYLvyJLZ+q4cPgsdnmki++tzQAgNYbGCcuFpGWf
 aYnn9RDzJHmqCNUPMn5/2T2SUbj40eaqFv8pe6m7PFYhJLvo5SoGLIEEi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="391497769"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="391497769"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="762941871"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="762941871"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:37 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Thu, 26 Oct 2023 20:36:25 +0200
Message-Id: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKmxOmUC/22Oy27DIBBFfyViXSxediCr/kfVxQDjQtTgCCy3T
 eR/DySplFRd3pk5Z+6ZFMwRC9ltziTjEkucUg3Dy4a4AOkDafQ1E8GE5Eww+gXWUmvRSKFgMKB
 JPT1mHOP3VfP2XvOYpwOdQ0Z4grlghouOa63rhHIKyecT7rsAew+vMc342bnp0JQWClKbIbnQF
 D5XYTy2TYhlnvLPtfIi28vfB/LWbpGUUQ5qtG6oLRV7MLd2i/oPUhUat71HZwZht/4v1D9C/R3
 qKySNRiUkM2ieoHVdLy+3SeNfAQAA
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3022;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=+zOeIQmfj2gLSfVVwdOkIGAkc9BL2dEK1ct8b4c/fqU=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlOrGzfTrSZMTC4ilNb/gqp35DBp83+S0yCzzLF8aF
 Qo3YD0aJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTqxswAKCRAjYrKT3hD919pJC/
 90g1ppwA29oJqHPQbRtkaA6pAbE/WilWiRtm+r4J6rRZ52n3UZFAQCiwSkPSDoS0giqIEHQagbwrP2
 hwZCnmdY1w9I7yXJ+RtnOs0gqXQejWXn/HXFqGtwVfgvk3wbEpY/dIs7iRzEoU8++097kqbszpNQ8l
 vCzlqg1xCSfcpRZIqqEyg7xdIqt2bCHuB6O1BWwKSpVzYbJSG5CYh0aNnWIxvhDMnFNIwkycbumPtB
 z4gYqLCEBizwJbd06l1N9YIrzt0pRLWfxk90QBj3RCTha1xD3F2lUAMD8i3gjGYEZIkkD5oAL8ouZD
 5fthVVBMenytUVL2e6udwczBIhgUG8YIS9KCm+LyfZ/cprSV9raPqqNn7aopA1sgEI9MD6lWRXmMKg
 5z/VEGe3581gzfBsBowV8iZYgq13E+YVRRJytZPFcseVKBT1bTfn+BlFti5Rsi0P6KvAncPadxaDJn
 i4tvGmRAk6Kejqxo7oOGbIqjPIgzC5wzIAe4yxrlsD6mI=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v6 0/4] Apply Wa_16018031267 / Wa_16018063123
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
 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

This the series from Jonathan:
[PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123
taken over by me.

This patchset requires IGT changes fixing handling gtt sizes
not being power of 2:
https://patchwork.freedesktop.org/series/125640/

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
v6:
- decresase vm->total by reserved size

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

Test-with: 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com
---
- Link to v3: https://lore.kernel.org/r/20231023-wabb-v3-0-1a4fbc632440@intel.com
- Link to v4: https://lore.kernel.org/r/20231023-wabb-v4-0-f75dec962b7d@intel.com
- Link to v5: https://lore.kernel.org/r/20231025-wabb-v5-0-398e42309e9d@intel.com

---
Andrzej Hajda (3):
      drm/i915: Reserve some kernel space per vm
      drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
      drm/i915/gt: add selftest to exercise WABB

Jonathan Cavitt (1):
      drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123

 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        |  43 ++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h         |   4 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |   5 ++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++++++-----
 7 files changed, 206 insertions(+), 21 deletions(-)
---
base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
change-id: 20231020-wabb-bbe9324a69a8

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

