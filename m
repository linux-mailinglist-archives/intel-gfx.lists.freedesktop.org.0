Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C84E9738DA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113FA10E7ED;
	Tue, 10 Sep 2024 13:42:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncvIJ17S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FAD110E7ED;
 Tue, 10 Sep 2024 13:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725975744; x=1757511744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RxjuDIWQdkM5hooI2qvJji3fa9zhGCxtYpiUurzlkWk=;
 b=ncvIJ17SgpSw77QxePNL0d73kHB4TvDqS1wvg5iZZxxxjdTdJ2eCtq0b
 MZ0dx9RGiQWAc0v8uI08jewZLBD3KyDNaiAIKaDj3kmHdR3b3RdC7uW8H
 JmhE8qTQdCM91qqZ1Q61vrDJA/Q4ldp8VgT+apOix6c+hlk6FKrgoAHOR
 3ExrQ5J9lNqkkzMW7MRdvWxxlUFEatLK6gEfqGXUzD15cVmT4H52gJEW4
 r7jkZS3pVZdp7dA0LKsYD5ElYWTQ/cAcPb5ebeawX55i1UhXmhLHzZCUi
 G8ySYW0mQK4C+qsv2uxp7vqgKoy8nY/JetR8mNZ5t4qda3K/Kign1S2uS A==;
X-CSE-ConnectionGUID: 3vRYGeuFT7eahpeWySHPPQ==
X-CSE-MsgGUID: pcUvchiqTAGWMci4PMQdbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35861210"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35861210"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:42:23 -0700
X-CSE-ConnectionGUID: OjUIHZiVRraFz++995gjXQ==
X-CSE-MsgGUID: U8gZRh/yRCub679MLvu6vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67081283"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 06:42:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 16:42:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915/bios: Refactor ROM access
Date: Tue, 10 Sep 2024 16:42:14 +0300
Message-ID: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
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

Ville Syrjälä (5):
  drm/i915/bios: Add some size checks to SPI VBT read
  drm/i915/bios: Round PCI ROM VBT allocation to multiple of 4
  drm/i915/bios: Extract intel_spi_read16()
  drm/i915/bios: Extract vbt_signature[]
  drm/i915/bios: Extract soc/intel_rom.c

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 141 ++++-----------
 drivers/gpu/drm/i915/soc/intel_rom.c          | 160 ++++++++++++++++++
 drivers/gpu/drm/i915/soc/intel_rom.h          |  25 +++
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 .../xe/compat-i915-headers/soc/intel_rom.h    |   6 +
 6 files changed, 230 insertions(+), 108 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.c
 create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h

-- 
2.44.2

