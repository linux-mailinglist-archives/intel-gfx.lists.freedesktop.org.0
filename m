Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9BD6476EA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 21:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0232210E4DC;
	Thu,  8 Dec 2022 20:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7502A10E4CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 20:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670529690; x=1702065690;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kVjltYQM47jsqqbyEwtkjxF2ySdB0V6KAlW85rvXkzU=;
 b=gDF0hpT0JWfrSK10/9TAPGmyPDJ2LkB8sy2PxltEIyIXTxpqWanaFkO/
 BqQcdw6uLSZNxjWaBznmf9JZlAp0Lf3lwJlT2lYSyIWYSDcr9E7x15RXw
 EbonxxMj5ul/72N8xtrDyVwPe5O86LwK+iIf56vSUoRqCN828TqtJrlVC
 TJYVjtUGxO0sSpzWlgwDd1FhndWyadPExVU18RzhJhNzcUFmGi6b6uQ2u
 zz4RRUjcIMVvrsaZ/pvFpGR26aMIsUxz33gzuywk8XEq3NB1phpoMd3dB
 NIU8hzonUspLWeIVs9YrVPT7MLWYVoAj0bzoGoEKIH2ewDmujRh5jyG65 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="317301786"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317301786"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597480134"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597480134"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:09 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:05:15 -0800
Message-Id: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/6] drm/i915: Add support for GSC FW loading
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

Starting from MTL, the GSC FW is runtime loaded by the driver, instead
of being stored in flash memory. Loading the GSC FW is required to allow
the media GT to go into its C6 state and for content protection features
(PXP, HDCP).

The loading happens via a submission to the GSC engine. All subsequent
communication with the FW will also happen via the engine, although no
further messages are implemented as part of this series.

This series also adds the GSC engine flag to the MTL platform, with the
engine being runtime disabled if the FW is not selected, which makes the
FW definition (not included in the series) the ultimate enabler for the
whole GSC block.

Note that just loading the FW is not enough for it to be fully
functional. We'll also need to establish and handle a communication
channel between GSC and CSME (a.k.a. SW proxy). This will require a new
mei component to handle the CSME side of things, so it will be pushed as
a separate series.

Daniele Ceraolo Spurio (5):
  drm/i915/uc: Introduce GSC FW
  drm/i915/gsc: Skip the version check when fetching the GSC FW
  drm/i915/gsc: GSC firmware loading
  drm/i915/gsc: Do a driver-FLR on unload if GSC was loaded
  drm/i915/mtl: MTL has one GSC CS on the media GT

Jonathan Cavitt (1):
  drm/i915/gsc: Disable GSC engine and power well if FW is not selected

 drivers/gpu/drm/i915/Makefile                |  11 +-
 drivers/gpu/drm/i915/gt/intel_engine.h       |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  18 ++
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |   7 +
 drivers/gpu/drm/i915/gt/intel_gt.h           |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c    | 210 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h    |  15 ++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c    | 137 ++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h    |  47 +++++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c        |  23 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc.h        |   3 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  78 +++++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   8 +-
 drivers/gpu/drm/i915/i915_params.c           |   3 +
 drivers/gpu/drm/i915/i915_params.h           |   1 +
 drivers/gpu/drm/i915/i915_pci.c              |   2 +-
 drivers/gpu/drm/i915/i915_reg.h              |   3 +
 drivers/gpu/drm/i915/intel_uncore.c          |  59 ++++++
 drivers/gpu/drm/i915/intel_uncore.h          |  13 ++
 19 files changed, 624 insertions(+), 21 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h

-- 
2.37.3

