Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FD3A7809B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 18:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD61610E61A;
	Tue,  1 Apr 2025 16:37:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UQE8STB4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD7210E628
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 16:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743525475; x=1775061475;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zL79jD9G64mmTsI/z9kP7MZetuDouUhcDLY/emBwFx8=;
 b=UQE8STB45rNY5O7gtNd3j26F/WCbf70HLu5kQHqqMl/V3nYALO/dCmYS
 JHx7lxibOf7bKR/puutEQg/FBXPdWGI25H9uLQRaBk81MxCRZe+3Pa44p
 6VqGAicnEY3QV4hBtoX9PO23avTjRLSLGysnPWCb9ikHnKLowh34PmgZq
 Uat24wBteFodC6wiD9gC+nLjojBVnAMYD5gQ8OQ0FSWmcHixhSijPJnBj
 aMQzJVwNFTtEowCkjN7Zo1VOz2lvoBzVZ0TuYsMtKrsq2YYbKYdOQS3kN
 ZowZiqrsFUmmE8HFOAlsaU4Uh4PuTHKmsDwVoRTxrYoUjMT709VhdBPsM A==;
X-CSE-ConnectionGUID: ahzoCgz8QdePdtxqUxF3Qw==
X-CSE-MsgGUID: 6jape8EQSAegQfnKufvfXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55520035"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="55520035"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 09:37:55 -0700
X-CSE-ConnectionGUID: g4h5OsJSRASG8KQjpH7z7A==
X-CSE-MsgGUID: moqh16CgRPqHomuCwXL0Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="131638534"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 09:37:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Apr 2025 19:37:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: DG1 fixes
Date: Tue,  1 Apr 2025 19:37:48 +0300
Message-ID: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
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

Fix a couple of problems on DG1, and remove the long overdue
force_probe requirement.

Ville Syrjälä (4):
  drm/i915: Apply the combo PLL frac w/a on DG1
  drm/i915: Simplify combo PLL frac w/a
  drm/i915/gem: Allow EXEC_CAPTURE on recoverable contexts on DG1
  drm/i915/pci: Remove force_probe requirement for DG1

 drivers/gpu/drm/i915/display/intel_dpll_mgr.c  | 5 +----
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                | 1 -
 3 files changed, 2 insertions(+), 6 deletions(-)

-- 
2.45.3

