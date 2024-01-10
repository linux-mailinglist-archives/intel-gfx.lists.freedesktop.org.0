Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4679682983B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 12:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C6210E5E0;
	Wed, 10 Jan 2024 11:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EEDC10E597
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 11:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704884493; x=1736420493;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kV+sWk+kqhUggsxYWATMJ3aVKik/4u+j+bAMvFvlbY0=;
 b=AeD3Z/MqGGXuJ51uxT1h2lREN0wqt5H+ELKX7uBgIxm+cX5rGfa+HqfW
 EpZd9me6kTRIuuMw9XhXGR7PfkBNCH8ieOnxLgSR6Vni5nz8hzvh9UZSx
 lm+bC4LF0W8cPtPTuUfuRvudXRX9imHr1y2yXMuo6GoVb6wG9L8KEHV8B
 bYwAJR6tKp/NZ+/CCB9SuUoki8122Mbut2r+5vmBlVdMF2dGLtlo2IrPM
 fEQoWn8vLHevaBGhFlEW3Q7+iaoTc+8t3u4zezmIodsp21CA212oBr3+9
 DXZDyG0gmhrvYiNao5UuQc+BGFxlSL5l8zG4HVQwsgDhvpmHpZr5JyIq/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11965045"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="11965045"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="23908712"
Received: from plebeaut-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.36.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:01:19 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 0/2] drm/xe: ensure fbc cfb size to be page size aligned
Date: Wed, 10 Jan 2024 13:00:07 +0200
Message-Id: <20240110110009.28799-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DRM gem object handling expet the object size to be page size
aligned. Neither the driver or xe stolen memory handlers do that
causing BUG_ON being triggered in some cases.

Vinod Govindapillai (2):
  drm/i915/display: use PAGE_SIZE macro for FBC cfb alloc
  drm/xe: Modify the cfb size to be page size aligned for FBC

 drivers/gpu/drm/i915/display/intel_fbc.c                 | 6 ++++--
 drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h | 3 +++
 2 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.34.1

