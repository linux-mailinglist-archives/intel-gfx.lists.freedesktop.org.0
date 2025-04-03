Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B31BA7A2B4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 14:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7072D10E9A7;
	Thu,  3 Apr 2025 12:21:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PLjEeTf8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DE410E23A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Apr 2025 12:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743682905; x=1775218905;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JVvNHg3Y8EwbWmWBfjdQ+nDnQPlx77Kxa/3oNZ+ZAzE=;
 b=PLjEeTf85JyYL3NPPFBwfux6wylxmyADHFwABrrQjYX5aFgrAT108WVX
 JDIOTnuIj+ZPhbo5YL9qAwqCF/e9x1qT90qMpaYdFL5egj++yRNhHTOdb
 5XlZc+qPaaIl3jfM/aYohgAu3ts9HD+PEhFMdttyhs7fNxmjMarUVQ5AN
 /uc+oHejuFiaPCq9TCw3BKa57nLSD9CiWxM0LjTVjCbOMgcF9eNGAyf9p
 0l3IiWrFSS5lNxbcHgyFkUb1uZOaSFcnPqYyNI/evjKg7KQN1F5rVFci1
 LOH4ZxbCVnhR8V+frJn1zzAMVCLYXfy8sw9WSbLoTFLoTZpD5p1ryEW2o g==;
X-CSE-ConnectionGUID: 70K+XS/MSJ67R75X9Sb2Hw==
X-CSE-MsgGUID: 3Zmb+pp0Sj2fESWch97ujw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="47804508"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="47804508"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:21:41 -0700
X-CSE-ConnectionGUID: AQR+PKEJSLyG3kK9HnWpFA==
X-CSE-MsgGUID: sDNy73JBS6yF9UVSqKggWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="126764504"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:21:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	William Tseng <william.tseng@intel.com>
Subject: [PATCH 0/2] drm/i915/dsi: couple of fixing
Date: Thu,  3 Apr 2025 15:21:32 +0300
Message-Id: <cover.1743682608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

When I was reviewing [1] these oddities caught my eye.

BR,
Jani.

[1] https://lore.kernel.org/r/20250311100626.533888-1-william.tseng@intel.com

Cc: William Tseng <william.tseng@intel.com>

Jani Nikula (2):
  drm/i915/dsi: separate clock and data lane prepare timing
  drm/i915/dsi: unify naming and simplify checks for dphy params

 drivers/gpu/drm/i915/display/icl_dsi.c | 90 ++++++++------------------
 1 file changed, 26 insertions(+), 64 deletions(-)

-- 
2.39.5

