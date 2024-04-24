Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C618B0352
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 09:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615BC10FDA4;
	Wed, 24 Apr 2024 07:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gSNexHO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF7510F802
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 07:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713944456; x=1745480456;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vz6yEthT8MCTcPf5EfPcSgUtJyG/NOwuOl82PydXRP8=;
 b=gSNexHO1eFG4FPfHvF8Htw7CflYKyyVUIFXGpUVXoGWYvqUQnfOySVZb
 wmkvGxjkDnvrWIR/+hnkhh9Zs5N/OhjL7mYFOQ6uQu8iUo6ZN79dCcRL7
 KyeyXaTNMfCKI51N9q6KJSsZwKzImvKwRb6qGFXniYJDz7m56O8oRwYYc
 pc5042D47HLBHMBjRakgw42LR+Y+9VhI1hYWHQlsNlVn5N5vbQDboG2Z5
 qafomWdctJ0oaYzRz//jDqxyiliKj8HGdb3NkY2EPux7K86fX4Sfwk6iw
 QqzR/XI9YdYOb2Ni1BzzYYeH9a5yL5n2n0iePxlcEiTHRt4Ri+q9xlynd A==;
X-CSE-ConnectionGUID: pv1fy/n6S0S0+78mcpSnVQ==
X-CSE-MsgGUID: PBa3bfM3Sw6AvyWSbp6lnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13391752"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="13391752"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 00:40:56 -0700
X-CSE-ConnectionGUID: zQP2NaD0R+6FA5ICFtHyMg==
X-CSE-MsgGUID: NXtjX1buRwaMCq4HNoR5gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29108235"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 24 Apr 2024 00:40:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [RFC 0/3] Enable darkscreen detection
Date: Wed, 24 Apr 2024 13:08:16 +0530
Message-ID: <20240424073829.824312-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Fifo underrun can lead to flicker, screen corruption and blank screen in
case of pipe hang.
This patch series aims to enable dark screen detection whenever
FIFO underruns are hit and in case we face a darkscreen at this point
instead of disabling irq and fbc we want to try reset the pipe on which
the underrun has occured and keep a track on the number of times
underrun occurs post reset and if this persists more than 5 times we go
ahead and reset the whole display. If this still persists we then
fallback to disabling irq and the fb.
To summarize we are using the dark screen detction feature to detect the
pipe hung scenario of FIFO underrun. After detection as corrective
measurements following is done.
1)pipe reset
2)display reset
Comments on this design and ideas on how else this can be implemented
or diffrent scenarios dark screen detection can be used are also
welcome.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915: Add Dark screen detection registers
  drm/i915/darkscreen: Enable darkscreen detection
  drm/i915: Schedule darkscreen detection work

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 139 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   |  25 ++++
 .../drm/i915/display/intel_display_types.h    |   3 +
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   8 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 7 files changed, 179 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

-- 
2.43.2

