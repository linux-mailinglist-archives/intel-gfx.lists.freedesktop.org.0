Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5004B53AB7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 19:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814B610E3F5;
	Thu, 11 Sep 2025 17:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTl0mDnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A5110EB78
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 17:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757613051; x=1789149051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hnV2f684pZQwz1mb/+EeoHqbRFTBkmyF9H5+kP8K1/0=;
 b=LTl0mDnL33DyH2JENmyBTCxSVrS3sjXvAy3zlftQu99Q7RTcPsB1ma00
 m5pSO9bIBTsdjOcX1J2MwllMueeccjAUTZR1swgWVZ+1dWFx9Oq729mrF
 Fk8qH4aGdx1WlUohodo3Qt40M7VpoNi9BjxlSu+2wjHcC5glmZoOubM9D
 KV97HgzKHqY57K9oAJJs+qbRkvd07IaeVWf3CF295mWlZadE79BatiRBt
 nG2hEYU862+l26Su7OCF2fCdoNMg1dLvPKacty93zhNBmgwHoqDr9PgZs
 Yl52xvmVytlm8QDKbPyDwphyNlm+cw4E03kC+HNRFPe2dbK6uFYkJAxO3 Q==;
X-CSE-ConnectionGUID: Dcgry0D2SjWKPXEx8xhhbw==
X-CSE-MsgGUID: 9XAOtxo2RIWokkIMf/rOVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="60027587"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="60027587"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 10:50:51 -0700
X-CSE-ConnectionGUID: 97AJhsmxR+ynkm850SfpBQ==
X-CSE-MsgGUID: frq7j4kHRd2vpkvXWV1e9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="174194250"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 10:50:51 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH v2 0/2] Check if CSME is available before initializing PXP
Date: Thu, 11 Sep 2025 10:50:22 -0700
Message-ID: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
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
IDs for the device, an exported function has been added to allow the
i915 driver to fetch it to perform the device availability check.

The plan is to merge both patches via the drm-intel tree.

v2: move the pci_dev_present check to i915, so that mei doesn't need to
care about locking. Also clarify why i915 does not require any locking.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Daniele Ceraolo Spurio (2):
  mei: me: Add exported function to get the PCI ID list
  drm/i915/pxp: Do not support PXP if CSME is not available

 drivers/gpu/drm/i915/pxp/intel_pxp.c | 23 +++++++++++++++++++++++
 drivers/misc/mei/pci-me.c            | 22 ++++++++++++++++++++++
 include/linux/mei_me.h               | 20 ++++++++++++++++++++
 3 files changed, 65 insertions(+)
 create mode 100644 include/linux/mei_me.h

-- 
2.43.0

