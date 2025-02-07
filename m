Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C6A2D018
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 22:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F6A10EBB2;
	Fri,  7 Feb 2025 21:54:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nLjDfoeM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C593310E143;
 Fri,  7 Feb 2025 21:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738965250; x=1770501250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZRWrJLe+hdp+YWVmBLDTYzCjbyvN/uXgkfqBI29/6qI=;
 b=nLjDfoeMkopz4vn4stgvksYPJlOzL0oJeoeOI51DYuvOB5DFrZ7/GV55
 PjaTSe4Lvc0P2bDHsAasGSRIfO99OKXL70UdWfml+fjp9lPRGkGMD+AB4
 3Nh7tyPxWJ0ZAMLUjAj+mHEztyNpNq09WZbyFqXOLb4pH/Gu5EJNPClx7
 MVKrC2oX1o27c4L5dbDdSND4vhJCRjIw84qgfFwI44d6M5Sym/qH1jn1f
 Uuyxl+zJ/THC0c5Fpabm8GUoiyo0f4ytnfHTR66xiuM66ILZ5M3pt8CDN
 oZDek+6+cRa0kH0jbiLus1+OMqvhiG7kmveYkiXtBCLzKWBWWgG8KVR0U w==;
X-CSE-ConnectionGUID: YIkrM7CmTjqSwnCD/YBvkQ==
X-CSE-MsgGUID: 2e6ytleMSPOmIN8aVmetYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39745980"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39745980"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 13:54:10 -0800
X-CSE-ConnectionGUID: G9GQP4rNRjOv3KjbtJtZUg==
X-CSE-MsgGUID: OzuZspasRyix30uWxb2LaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111851030"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 13:54:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2025 23:54:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
Date: Fri,  7 Feb 2025 23:54:03 +0200
Message-ID: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

Something has changed in the hardware on LNL/BMG because
HDMI outputs no longer have the extra scanline offset.

I confirmed that MTL still has the old behaviour, which
is a bit weird since both MTL and BMG have display ver 14
vs. LNL is version 20. But can't argue with actual
hardware behaviour.

Ville Syrjälä (3):
  drm/i915: Fix scanline_offset for LNL+ and BMG+
  drm/i915: Reverse the scanline_offset if ladder
  drm/i915: Replace the HAS_DDI() in intel_crtc_scanline_offset() with
    specific platform checks

 drivers/gpu/drm/i915/display/intel_vblank.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

-- 
2.45.3

