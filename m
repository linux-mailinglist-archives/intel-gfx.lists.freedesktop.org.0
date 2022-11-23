Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E406636377
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2E410E572;
	Wed, 23 Nov 2022 15:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7841510E575
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217216; x=1700753216;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mi28KAlTcQpfvk1s55junHIbSpwfASgvXdvt7KHiHA4=;
 b=JV1mLVrh5QIOJOH6YoWLgrVVCnQcClnMFRyZwkAcWHC8ExN0AAS5Wjrv
 RGQMwsqyvBPMdidd4RY/LFKKQbxFDgwR0niB2Jyuv9ZP9KmeGOJsWE2RW
 3Owr3bUo2jBqAn+VjyM/lQv6CEmjHP7omdsY2kpUfwSApduj/5h3jxAz0
 2peaLWEJQHvtN5qHbqqXsbyemxYqP5dbC1GEmJguMdH2/L4Biy40JKkhX
 PpDvwWeLkiUZl+uLz5WG4pggEMdkGPuJwks+mcqFPwhciYVAaCnOPtynZ
 GEeK4uSiB/Vo/RJbz72LKrFvf3d8t26cG1YXydVUpiVf8lIuuYVF9+LOR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789846"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789846"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650912"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650912"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:25 +0200
Message-Id: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: Gamma/DSB prep work
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A bit of cleanups/refactoring/etc. around the gamma and
DSB code. The eventual aim is to get the DSB to succesfully
load the LUTs for us, but we're not there yet.

Ville Syrjälä (13):
  drm/i915: Shorten GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED a bit
  drm/i915: Clean up GAMMA_MODE defines
  drm/i915: Define skl+ palette anti-collision bit
  drm/i915: Clean up various indexed LUT registers
  drm/i915: Standardize auto-increment LUT load procedure
  drm/i915: Document LUT "max" register precision
  drm/i915: Move the DSB->mmio fallback into the LUT code
  drm/i915: Move the DSB setup/cleaup into the color code
  drm/i915: Make DSB lower level
  drm/i915: Disable DSB usage specifically for LUTs
  Revert "drm/i915: Disable DSB usage for now"
  drm/i915: Use ilk_lut_write*() for all ilk+ gamma modes
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    | 245 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_color.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  25 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  95 +++----
 drivers/gpu/drm/i915/display/intel_dsb.h      |  13 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  45 ++--
 9 files changed, 250 insertions(+), 187 deletions(-)

-- 
2.37.4

