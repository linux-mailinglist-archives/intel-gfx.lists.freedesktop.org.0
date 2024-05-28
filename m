Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195848D1935
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D33111218A;
	Tue, 28 May 2024 11:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YPbkcksB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8EC11218A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894952; x=1748430952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v+km8cZS39gG6m/cA/HQprGsNFdgPwq4NAGLd+2stPk=;
 b=YPbkcksBx9r3quwLA/1OO9g0WWlqLVMWw4jOIRQq/+u2Hole1eIBhMU9
 r31fU2Dj7EmXHBfE6Hv8pUmo8950s84UrBDmMJvN8YRxIUHojDzuHZSWS
 XKqNNtdfytCmk5mBdvyNe2yZiz9zRlEYdPjrQoopFsBbVnBjNGcecGwXG
 gtroq36F9UczVzyJdx6BPCJRiWrBTeCsfpyLJpqQMdgtxBC7FVO/7czC6
 hdS7vMmvF8Nr1o/DJdhdsVIvtoHuMbvkRKGe/Q8SOi/PBUHR5v/CH/Y93
 4qSkcN9A+TuuMOI78Y77zkWkR/D66zjF0jmkxUR2lBu35sYj0XInfn539 w==;
X-CSE-ConnectionGUID: 2hSeq30nRTu9tGZH692WVA==
X-CSE-MsgGUID: fZ5m+qJPRQmzRof8+GvPDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353882"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13353882"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:15:48 -0700
X-CSE-ConnectionGUID: p4f2WwWsSnuw5+ydy1pqww==
X-CSE-MsgGUID: iNwXRApNQOKKRmlk/6iegQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39877317"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:15:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915: DP AUX CH macro cleanups
Date: Tue, 28 May 2024 14:15:37 +0300
Message-Id: <cover.1716894909.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Jani Nikula (5):
  drm/i915/gvt: use proper macros for DP AUX CH CTL registers
  drm/i915: remove unused DP AUX CH register macros
  drm/i915: rearrange DP AUX register macros
  drm/i915: move PCH DP AUX CH regs to intel_dp_aux_regs.h
  drm/i915: remove intermediate _PCH_DP_* macros

 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 18 +++++++---
 drivers/gpu/drm/i915/gvt/handlers.c           | 35 +++++++++----------
 drivers/gpu/drm/i915/i915_reg.h               | 32 ++---------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  8 ++---
 4 files changed, 37 insertions(+), 56 deletions(-)

-- 
2.39.2

