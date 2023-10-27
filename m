Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 862157D944E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D349A10E009;
	Fri, 27 Oct 2023 09:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42DBB10E009
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698400548; x=1729936548;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bz6Y1j67RGy+OY6D7NHOBAZpsuIrQWwomU3zriS+wFo=;
 b=S4zPXrCtmgbllGOvld7co5x8iqr7GrOIdu/Chdwt6uBtC7zjKGqSw7sC
 pW4E24VTKMSdKGlFvULj57xm8belopl6qrDamTQlAR2J0FeqvBuTkAimT
 U5vF3aJkFEVPcMWI0k2UGrYVeidX+YqV18NOE01wPJA3tZIbohqwcqQcu
 UaAcmlR8W75E9awCp0EXANQK2bFOzcXjlrf1evDdeiE4gJcmm5qQT5RCp
 TQ/KqyEfzGPxvmuT5KUSXIlgpE0zg5tGS0cY5hFCPj+LbRaxLDKkmovU/
 FUjnoLDIDEXIbT1fILUqIoCQ/fi+jQ+ZMDuRj+XbxQDkfKihl13e6J4Ie g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384953735"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="384953735"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="1090878998"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="1090878998"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2023 02:55:46 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Oct 2023 15:23:34 +0530
Message-Id: <20231027095336.3059445-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2 0/2]  Enable Darkscreen Feature
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

The logic checks for any black screen at pipe level and
upon such detection prints error. Darkscreen compares the
pixels with the compare value(0x00 - black) for the detection
purpose. This feature can be enables/disabled through debugfs.

Nemesa Garg (2):
  drm/i915/display: Add support for darskscreen detection
  drm/i915/display: Add darkscreen debugfs entry under crtc

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 123 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   |  26 ++++
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   8 ++
 6 files changed, 162 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

-- 
2.25.1

