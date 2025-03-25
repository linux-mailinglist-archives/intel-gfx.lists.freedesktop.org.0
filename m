Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0F3A6E853
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 03:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61F410E127;
	Tue, 25 Mar 2025 02:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XaWfH34R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB0710E06A;
 Tue, 25 Mar 2025 02:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742869754; x=1774405754;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YQjVrwIVmwzE6tY+AjdC6wWAUWxRlzXHpE6zIr+b+fk=;
 b=XaWfH34Rmpe7ltGGW29hMMafExCALnmczMo0/90VVX/7wRLE5hgRqAo+
 Qtt69qkoQ6ubrTshXPQf9TikAabVJ97BwIZPY0Qfy24v2MfcZZiUKMKAo
 PQGID7LPsjnm7ljlE4+xQyDK3T3A6LWHtdwPspJieZRxlML54q8RERptc
 UgDn4KD5Csj8Gqq8QJrWQHuUU3fKIax2QkqSh77e2FPV2J02qT/0S33li
 F08TDIyqu/ZkKGSnvdHFC/D8C99lXV2cg1b8LEYb7QdZBxEwawsZKGp5E
 EMk1Pz4eNGlWOgmqtmGkGaCMX+ieLKqMzf4wx3zIdtaazElhqHrfqnlOy Q==;
X-CSE-ConnectionGUID: dQKym1bRTXOZMhxdVh1Y4g==
X-CSE-MsgGUID: vF2ioIl5SlKFV+mGttIyqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44022947"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44022947"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 19:29:08 -0700
X-CSE-ConnectionGUID: 4tIGvPXqQ3utzryg4Qoa9w==
X-CSE-MsgGUID: CIZQxgxpQsu/Ec54HbB7fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124034425"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 19:29:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 0/2] drm/i915: DRAM type logging
Date: Mon, 24 Mar 2025 19:28:40 -0700
Message-ID: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20250324-dram-type-e7c74461c670
X-Mailer: b4 0.15-dev-c25d1
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

Improve DRAM type logging across platforms.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
Lucas De Marchi (2):
      drm/i915/dram: Add missing INTEL_DRAM str conversions
      drm/i915/dram: Consolidate logging of DRAM type

 drivers/gpu/drm/i915/i915_drv.h       |  1 +
 drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++++++++-----
 drivers/gpu/drm/xe/xe_device_types.h  |  1 +
 3 files changed, 14 insertions(+), 5 deletions(-)

base-commit: 9a42bdcde0f77b2c1e947e283cc3b267b1ce2056
change-id: 20250324-dram-type-e7c74461c670

Lucas De Marchi

