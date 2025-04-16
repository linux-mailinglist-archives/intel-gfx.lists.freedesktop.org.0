Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B5DA8B04D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2E010E077;
	Wed, 16 Apr 2025 06:29:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItkPVUzM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10AC210E077
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784987; x=1776320987;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wwq05LqCXj5Krn4EMsITVju+anvtWQ/3n6gfZ2WrvMo=;
 b=ItkPVUzM4XKU8HVRHlU4MP+p1EPgOTsuNHtzOb8p6zMMh3zUQ7FS2nFM
 REF/1Q0h1PcfUUOpnlA8ifAYaDM1tIhfGeOl0TCLlP0ark5XXj9nZ+5Wm
 m1iNrGnbjGc6C4g4NAvpMnRCyNSDeD0neh3wbaCpWmqUwYZgYTNSZUqCO
 /DPq0XQMPaC01qwTkDxy5rFdcYKe9r7N1WfnMbITOqNAOO9Tq9HqmYNhC
 q+kHzafvN6PxFo/8ASidH7xZwN78IFUxH/DYRwDs+Pdwwj1NHsXWNu54L
 DcJlP/c8GY5qi4HDTMlrXgD8Wrdk5ukDYYJP60SVpDurxgFwpG4c3+eIs w==;
X-CSE-ConnectionGUID: n1+x5nTLQ2e/nuxKxJgNbw==
X-CSE-MsgGUID: Yw11dTs/T6KburtuG+SZSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710239"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710239"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:46 -0700
X-CSE-ConnectionGUID: pGHQhpJuSHGG6vBabLuQDg==
X-CSE-MsgGUID: EAExTbgsTlmmSs5rx5aMcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880158"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:45 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 0/8] Enable/Disable DC balance along with VRR DSB
Date: Wed, 16 Apr 2025 11:57:29 +0530
Message-ID: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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

Control DC Balance Adjustment bit to accomodate changes along
with VRR DSB implementation.

Mitul Golani (8):
  drm/i915/vrr: Add DC balance registers
  drm/i915/dmc: Add pipe DMC DC balance registers
  drm/i915/vrr: Refactor vmin/vmax stuff
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Pause DC balancing for DSB commits

 drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  16 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  37 +++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 138 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  43 ++++++
 10 files changed, 284 insertions(+), 39 deletions(-)

-- 
2.48.1

