Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2539C0AE9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7794910E329;
	Thu,  7 Nov 2024 16:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5ygzUTF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F7310E13D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995895; x=1762531895;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LrmR+gGZZb2WQ5nVb62oGTZhnrSd7W4K+T1s8qJBZkI=;
 b=X5ygzUTFOBXNTBIG475UveYjFboJxDkDgZKIHBpCHSzE9PkDREqZ1zQW
 cWql5xvSgyi9RQ5BK2ZCgxDQ+hd1vDFl385sqmt3nTKbXlR15OaEoEPWe
 YGsktXy87pF7yPFstw9cirr1Jj5LSrfq5T7N1HQu4fX7IqeAqIwwSKV7z
 qAcQYMcDw8TgtvL5+g2UAHi0I7Wq+47ESlj7Xbhn80pKinhAz3OMV7qqB
 tk/65XgL41CPHfSlKIp9CWK1Z6enBKU1WYYSANLeALZLIB2dfaVVF2eOV
 IJNoEt7Bu+Bb3bVcNkkVQFam538XTkFT8G3hXTV0+iuvK1MjfppPMr3rf g==;
X-CSE-ConnectionGUID: TyUMrKZAS5ibilc8QY/Y9Q==
X-CSE-MsgGUID: aVV4cqFxSOGF8+xtQr6DTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41442993"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41442993"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:26 -0800
X-CSE-ConnectionGUID: 7fseI+/lQvSQhSfqY0adKQ==
X-CSE-MsgGUID: uIrMyuTeQhGoaaVlkV6gzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277824"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/10] drm/i915: Potential boot oops fix and some cleanups
Date: Thu,  7 Nov 2024 18:11:13 +0200
Message-ID: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I noticed we're grabbing intel_display from the 'state' parameter
in a bunch of encoder hooks. That could oops due to
intel_sanitize_encoder() being an idiot. So fix that.

Follow up with a bunch of cleanups for the analog port code.

Ville Syrjälä (10):
  drm/i915: Grab intel_display from the encoder to avoid potential
    oopsies
  drm/i915/crt: Split long line
  drm/i915/crt: Drop the unused ADPA_DPMS bit definitions
  drm/i915/crt: Use REG_BIT() & co.
  drm/i915/crt: Clean up ADPA_HOTPLUG_BITS definitions
  drm/i915/crt: Extract intel_crt_regs.h
  drm/i915/crt: s/pipe_config/crtc_state/
  drm/i915/crt: Drop pointless drm_device variables
  drm/i915/crt: Rename some variables
  drm/i915/crt: Nuke unused crt->connector

 drivers/gpu/drm/i915/display/intel_crt.c      | 157 +++++++++---------
 drivers/gpu/drm/i915/display/intel_crt_regs.h |  48 ++++++
 .../gpu/drm/i915/display/intel_pch_display.c  |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   4 +-
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  47 ------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 8 files changed, 131 insertions(+), 129 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crt_regs.h

-- 
2.45.2

