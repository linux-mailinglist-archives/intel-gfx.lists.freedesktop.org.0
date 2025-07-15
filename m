Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD763B06997
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 01:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3861C10E6E0;
	Tue, 15 Jul 2025 23:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKL8ASDY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4401810E6E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jul 2025 23:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752620415; x=1784156415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DDb9rOrtLgghqhklQnrXS0ZVl8SfRqYaq9hERA1LDrU=;
 b=CKL8ASDY+faShvWvYejHsNkSFemhfwyMPUhqWMKBJcaZ94UtgTNce6UA
 RO56YckiIhoGGI5cuWJry6imTbXG5DZ+FLgpK4o9NxIJEGfRIMHm8nlCC
 t5nSUScaC8MRYJhxednOjhDXTySyVv8NlxcpkJDY6QTqTSCX9k6qD4hJr
 WzE4FNP0X6hgY3BR0ZPhn276cso+RWZe3ii3p0b99E4H2OWIMDcXeawyb
 3675G9PyMHLip3mYfueGmSfyVxfZS25fz9O+t2k7hC4L2KwaF+of+Otm0
 LM/Fr5L3vUGsC3SIzlCW29ynhWsJLTlZuzh9OI0INNKiu7sTnWYKvMp2E g==;
X-CSE-ConnectionGUID: EEZ232csTXyp8wq1bQoLng==
X-CSE-MsgGUID: Eor5jCB4T2mI9gGTwBfILA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57462168"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57462168"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 16:00:15 -0700
X-CSE-ConnectionGUID: p7935u1rTmawSgrEQ/VZsA==
X-CSE-MsgGUID: egPdmjziQwK9CTzluBBl5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="157150182"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 16:00:15 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Check if CSME is available before initializing PXP
Date: Tue, 15 Jul 2025 16:00:00 -0700
Message-ID: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
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

Given that mei_me owns the CSME, the check for the device availability
is added to that driver and exported, with i915 calling it. The plan is
to merge both patches via the drm-intel tree.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Daniele Ceraolo Spurio (2):
  mei: me: Add exported function to check ME device availabiliy
  drm/i915/pxp: Do not support PXP if CSME is not available

 drivers/gpu/drm/i915/i915_module.c   |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c |  5 +++++
 drivers/misc/mei/pci-me.c            | 17 +++++++++++++++++
 include/linux/mei_me.h               | 20 ++++++++++++++++++++
 4 files changed, 43 insertions(+)
 create mode 100644 include/linux/mei_me.h

-- 
2.43.0

