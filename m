Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E2497EE0D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24F610E415;
	Mon, 23 Sep 2024 15:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFhxW0Ba";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B028C10E0DC;
 Mon, 23 Sep 2024 15:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105096; x=1758641096;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tjsE4UakjZkngFx+sor+kG0423EtswNdrJQhUPxpBBs=;
 b=XFhxW0Ba7uhwpri2Au7oB/cwPb4aXUOYiDyafcM74VwimHeLS/deEPBY
 rAityXO9+Cg/xcuyydAtAQ0eyv/VADaq7e457wkK5dLfSbOAmS5SfatKI
 z6Xd/8Bb9VA+2LeBJm2xoJaaz/yeEL4g34rRO7EgiWw4Key1Oyu84vn/9
 tJdGRHaTCzEtrwRTXp0EIElOuP8chXYNhn9ulWTfeZK1Sn8tAxDmD+sz3
 O3URnj1kGQEM4FVu2k+/8QbIodUtDnuB+nz+ou6aeifGiun5eEflGLm1p
 IR6Nqz68tY3DNXG4T3s+GcRj7ENSGzuvHJh4kpSRH4lgQU+afeqnOMsZC Q==;
X-CSE-ConnectionGUID: efxrFB+NSQivZX48DeLGDw==
X-CSE-MsgGUID: trW0SPxPQmqNt1h00xjzQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013427"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013427"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:24:56 -0700
X-CSE-ConnectionGUID: VP0ixFIDTRGEZw7xPjInjQ==
X-CSE-MsgGUID: rI3FHmMlQFa8d8D7fAGXbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239509"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:24:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:24:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/6] drm/i915/bios: Refactor ROM access
Date: Mon, 23 Sep 2024 18:24:47 +0300
Message-ID: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

Unify the behaviour of the PCI ROM vs. SPI flash VBT
read codepaths, and relocate out the low level nuts details
from intel_bios.c into a new soc/intel_rom.c file.

v2: Sort out the drm_dbg() vs. drm_dbg_kms() mess
    Include terminating '\0' in vbt_signature[]
    Drop an unneccesry cast

Ville Syrjälä (6):
  drm/i915/bios: Use drm_dbg_kms() consistently
  drm/i915/bios: Add some size checks to SPI VBT read
  drm/i915/bios: Round PCI ROM VBT allocation to multiple of 4
  drm/i915/bios: Extract intel_spi_read16()
  drm/i915/bios: Extract vbt_signature[]
  drm/i915/bios: Extract soc/intel_rom.c

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 157 +++++------------
 drivers/gpu/drm/i915/soc/intel_rom.c          | 160 ++++++++++++++++++
 drivers/gpu/drm/i915/soc/intel_rom.h          |  25 +++
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 .../xe/compat-i915-headers/soc/intel_rom.h    |   6 +
 6 files changed, 239 insertions(+), 115 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.c
 create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h

-- 
2.44.2

