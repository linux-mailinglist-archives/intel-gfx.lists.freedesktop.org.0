Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CBD63B5DC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 00:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C4C10E344;
	Mon, 28 Nov 2022 23:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C3010E344;
 Mon, 28 Nov 2022 23:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669678220; x=1701214220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0p/m7KGRokmaJXRofyrPbcr8CIOcr5Zrnq35c2CMFd4=;
 b=JuY9yuyeKYXfcmytiAEhhTRrX0MjOvt0DnLoZTKD6kpzfjAIuFxXdRF4
 i14iJL7AQ9IOL03SXRUeLR4SdVPtl21h5/kO0T3IUGS+ydkAznY4Li87y
 iVVR0+7X8MFBVQJCZXi1NPo49JmUbBbjZ7wt7orlYFlb4KFtVf7YwTpFF
 6V0aqY6RfEuiXZsztWEuCHCSPEB5j1iN4SVdMcWzcAzUrk7zTQbMAHCTp
 ol8dex3IyjZJxgB+fLqPIsRX2PNCObFHxB8d9ZlVQhO6ckjxyA2AUYJJK
 i8YuXu44wzRLab173c8HL5dz7XzEBG8Asohyx334AgePEKPMkmv02Mv++ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="302556662"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="302556662"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:30:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="706982224"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="706982224"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:30:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:30:09 -0800
Message-Id: <20221128233014.4000136-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] i915: dedicated MCR locking and hardware
 semaphore
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've been overloading uncore->lock to protect access to the MCR
steering register.  That's not really what uncore->lock is intended for,
and it would be better if we didn't need to hold such a high-traffic
spinlock for the whole sequence of (apply steering, access MCR register,
restore steering).  Switch to a dedicated MCR lock to protect the
steering control register over this critical section and stop relying on
the high-traffic uncore->lock.  On pre-MTL platforms the dedicated MCR
lock is just another software lock, but on MTL and beyond we also
utilize the hardware-provided STEER_SEMAPHORE that allows us to
synchronize with external hardware and firmware agents.

v2:
 - Use irqsave/irqrestore locking; on platforms that use execlist
   submission instead of GuC, MCR accesses can happen in interrupt
   context (tasklet) during reset -> error dump.
 - Extend timeout for hardware semaphore and CI taint if we ever
   encounter it (this implies a hardware/firmware problem).  (Mika)
 - Add an extra patch optimizing xehp_setup_private_ppat by holding
   forcewake & mcr lock over the sequence of register writes.  (Bala)

Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Matt Roper (5):
  drm/i915/gt: Correct kerneldoc for intel_gt_mcr_wait_for_reg()
  drm/i915/gt: Pass gt rather than uncore to lowest-level reads/writes
  drm/i915/gt: Add dedicated MCR lock
  drm/i915/mtl: Add hardware-level lock for steering
  drm/i915/mtl: Hold forcewake and MCR lock over PPAT setup

 drivers/gpu/drm/i915/gt/intel_gt.c          |   7 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c      | 129 ++++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |   8 ++
 drivers/gpu/drm/i915/gt/intel_gtt.c         |  27 ++--
 drivers/gpu/drm/i915/gt/intel_mocs.c        |   3 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  12 +-
 8 files changed, 162 insertions(+), 27 deletions(-)

-- 
2.38.1

