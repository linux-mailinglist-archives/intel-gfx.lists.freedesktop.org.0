Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21293C5F328
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912EB10E261;
	Fri, 14 Nov 2025 20:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dPKjXD6B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C79A10E261
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Nov 2025 20:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763151295; x=1794687295;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MHoFMA5dnirrqStWZQPU4msOqAEHpbzpsrSL0IHRHog=;
 b=dPKjXD6Bcd0R3pmHWE2xgYEbV4YLHg1P1GWrGfn/zNCpsuR83vwhpUwr
 rnJgZ5I0SbA3mR5ubxN5gzcRo/ro/9gdWvlgpOdPqho4GCU7c2ncuo26Z
 CaJ14f54+nH1TR/iahXgg/2S5fusTNmAL31GndV8bxDAALUjhfC5Rh/wv
 zKgTNHuWbRH/PCyeMJhxepT3rbodwTRSEppYDnUa5oPw2p+TSizV0KwHA
 KAv151unsgAF64b9uizVaBYK6Z/moqHPNN7F7xBwhTYv4vr1FMKN9FX0f
 H9Mg0ytwZHHp0qve5gDJsWTQPIWuSrVPkUmUbUUBeeU5QfuIcNLIA2Uqd A==;
X-CSE-ConnectionGUID: AlCS6gByTzCcFg0ceNeEGA==
X-CSE-MsgGUID: IYL50kKjS9Sj23XAOaCqUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65188075"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65188075"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:14:54 -0800
X-CSE-ConnectionGUID: HgBy+Pf4QNODKSPL3M6IrQ==
X-CSE-MsgGUID: v51YB09PTjKcpTmZtGZW7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189147994"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:14:54 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gregkh@linuxfoundation.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH v3 0/2] Check if CSME is available before initializing PXP
Date: Fri, 14 Nov 2025 12:14:32 -0800
Message-ID: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

To support PXP, i915 needs to interface with CSME, which is done via the
component interface. However, BIOS/Coreboot can hide the CSME device,
which leads to i915 timing out waiting for the component to bind. While
PXP failing to initialize is a supported scenario (and there are several
possible ways for it to happen), the particular case where the CSME is
not available at all is something we can easily detect in the driver
and therefore avoid entirely, which means userspace doesn't need to
handle the error in this case.

Given that mei_me owns the CSME and already has a list of possible PCI
IDs for the device, we can export that and use it in the i915 driver
to perform the device availability check.

The plan is to merge both patches via the drm-intel tree.

v2: move the pci_dev_present check to i915, so that mei doesn't need to
care about locking. Also clarify why i915 does not require any locking.

v3: export the pci_id list directly from the mei driver instead of using
a wrapper function.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Daniele Ceraolo Spurio (2):
  mei: me: Export the PCI ID list
  drm/i915/pxp: Do not support PXP if CSME is not available

 drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++++++
 drivers/misc/mei/pci-me.c            | 12 +++++++++++-
 include/linux/mei_me.h               | 15 +++++++++++++++
 3 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/mei_me.h

-- 
2.43.0

