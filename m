Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 849747D2B8B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 09:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACC910E158;
	Mon, 23 Oct 2023 07:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D712410E158
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 07:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698046902; x=1729582902;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=DvQg+EFAlSyzlolJ+v0kmMalQQ+lccJrrJ+WaUAWuTE=;
 b=YwFTR/pbc8t7YjWdSe3YZyjIK29w/80rGlhZ7DCcTawom+olm3ov/jYx
 tM2BpZU/BZpEQ5G/F1518fhdRax495/iZvV+dzlvsd/FDGZ8l9h1ZO8nF
 IrrjAKgjAiiVI1IJaPqrP/sHdmP6se7OrxHDd3aAWJh2gxLZQQDPDq17V
 terwqGbAmsJuMRzG30dE+UbK9bhZPgEHQUWKOBiYN1fY7gSaOBUvx5BUA
 L/mqMzuX4BGdR7qHtHK7AwVjhf//9dXOHKulnjCfWPh8L4h/6XCec6ru7
 WHohdSnxzMeiQ1WnSlVxEtLp18asHTG2t3hZCbdEjds81+1nThclrG+5N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="473000634"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="473000634"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 00:41:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="848716397"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="848716397"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 00:41:39 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 09:41:18 +0200
Message-Id: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ4jNmUC/1XMwQ6CMAzG8VchPTuyDWOGJ9/DeOhYcSUySEfUS
 Hh3hzeP/6bfb4VMwpThXK0g9OTMUyrRHCroIqY7KQ6lwWrbGG21eqH3yntqG3vEU4sOyuss1PP
 7x1xvpXuZRrVEIfwbG6tbY2vjnCsXZRSmIB8a6ohDwAunhR51N4076TGT8oKpizsRpIA8w7Z9A
 Xg4xiizAAAA
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2673;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=DvQg+EFAlSyzlolJ+v0kmMalQQ+lccJrrJ+WaUAWuTE=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNiOxVyvgpbgOI/OIB4Xr4tS5lCHTUItdU9a0baBv
 AQLOEayJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTYjsQAKCRAjYrKT3hD91zuIC/
 9185zfVWmakByjG/pvQIJGXa6tfJBFbDzK8dvYycvusSG6qq1shK5Kqyp3l/Py22ChwNhRQ5RSiFhP
 7ULuwjTjbXAjYqoMViYszZ5JuEShQ73LWuqz6GmG6PVyHAsTz5TcW7LH2b/pZWMrKg9iV7sLwVN1Mg
 QFm0dIddCHNE0SarfL0ni2L/EvIRS/eXuk2PInLJB28tXXuXxiuYa5PlIoNcOh8rNr25uQ5wOTJa/H
 AAZPWR4NAK6WEQGuTaMJ/qQ1Oe8/VEUA7AFvXeui/QUtHep74KlDUGoSHbWgJZTlD6jGlW9G6UL/7c
 6TRHFElbB+kTFN+n2Dnif9Q0VWoCsSI0lPnek6hmPFQ6yDaNsBSMJCcWkeFi6CUdiswLCyb3j5tcUD
 bsphW30ZIQXtfZQEBBmmfXPoVfRXG7zp0JQVqgXV0NJzo+8eoVddh9dSGn25S0tkaS6LYnH16ZDLyZ
 IX29CN1cVHhIYJCoT5Jo8QvVwAAeKs8CfALzH4NF+QGTY=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v3 0/4] Apply Wa_16018031267 / Wa_16018063123
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
Andrzej Hajda (1):
      drm/i915: Reserve some kernel space per vm

Jonathan Cavitt (3):
      drm/i915: Enable NULL PTE support for vm scratch
      drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
      drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123

 .../gpu/drm/i915/gem/selftests/i915_gem_context.c  |   6 ++
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c               |  41 +++++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h        |   6 ++
 drivers/gpu/drm/i915/gt/intel_gt.h                 |   4 +
 drivers/gpu/drm/i915/gt/intel_gtt.h                |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c                | 100 ++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |   5 ++
 drivers/gpu/drm/i915/gt/selftest_lrc.c             |  65 ++++++++++----
 drivers/gpu/drm/i915/i915_drv.h                    |   2 +
 drivers/gpu/drm/i915/i915_pci.c                    |   2 +
 drivers/gpu/drm/i915/intel_device_info.h           |   1 +
 11 files changed, 213 insertions(+), 21 deletions(-)
---
base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
change-id: 20231020-wabb-bbe9324a69a8

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

