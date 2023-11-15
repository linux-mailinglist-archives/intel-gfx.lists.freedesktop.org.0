Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE847EC409
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72D610E046;
	Wed, 15 Nov 2023 13:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D52F10E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700056121; x=1731592121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0tvKTA9Kbd2WFiB4tzZZOVvQVJWphGKfNNFCGsIngzQ=;
 b=lEKo+xrEvL5XqvSgnuSBb/ALg8Df5Bf2k84/jUMcthMMSeehhshZ8yjL
 bcG5CToycJF1cu9oFIhubLsvBWnEPT81c95BrcaItZlegwQJe5tS1yKM5
 dyaA/IEGAlhkN980PFH9enC9iS0eg5N/6oj0gy5v/TnBqY2TI7ZW4uVBv
 h1ypYg/Oo6ErJ+5yG1c05CKJQIusxMqzNn3Mr9XZ3Xw7kP0j41MXw2AVG
 AY4tC7DpwtoRMJgqIADyzzzI7NwDJDCJ25Qcq9yWJdS3/j4kgb4EPXLKC
 AwWXO5/eiY0IOY0AezCl0YPQiMq+erjx4sjZcnNEOEvUNTrFQ80CbAw4i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="421975269"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="421975269"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; 
   d="scan'208";a="6170491"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 15 Nov 2023 05:48:39 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 19:13:23 +0530
Message-Id: <20231115134326.3794326-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Implement CMRR Support
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CMRR is a display feature that uses adaptive sync
framework to vary Vtotal slightly to match the
content rate exactly without frame drops. This
feature is a variation of VRR where it varies Vtotal
slightly (between additional 0 and 1 Vtotal scanlines)
to match content rate exactly without frame drops
using the adaptive sync framework.

enable this feature by programing new registers for
CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
CMRR_M/CMRR_N ratio represents the fractional part
in (actual refresh rate/target refresh rate) * origVTotal.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Mitul Golani (3):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Add Enable/Disable for CMRR based on VRR state
  drm/i915: Compute CMRR and calculate vtotal

 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  51 ++++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 126 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 6 files changed, 178 insertions(+), 20 deletions(-)

-- 
2.25.1

