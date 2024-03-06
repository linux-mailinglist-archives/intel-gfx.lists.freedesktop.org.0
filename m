Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74963872DDF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 05:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2AB112E8B;
	Wed,  6 Mar 2024 04:08:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GNseSlVf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0DC112E8B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 04:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709698092; x=1741234092;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EvP40WihBjr0BTkhTgolE+8DXZrpV/F9IKHxejl9DuE=;
 b=GNseSlVfyDjx3k9hGWMfmv5EAhgftAwSK7sbn8FHe2coZTalnzuhmGC4
 Yb9bPctO6/nnqpoxAMvjKB3qVsw3++F9TtO2/AfUeYijCuFhb3cG8EVDp
 m3x8/IYSJKD5SKle7YyhFiQrpZNg4EvQmpAZiWkRpN8qcF351KyGU1A2t
 1kvJmBTnGQncaOSL8VFagAer6wljI23KQMVhvumnbqI1upxCTOdyTEZKS
 P+8mAJhvJuW/cIBoaB/2+8POeE1y7ggQ2un+n1llVNB54/dxvtiKd9rDy
 WmtZTrqXPyWBc9eCiUs9f2SATMgKRRUrlpitXavVE/HrIeS1cgjD7Yx6l Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="21817360"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="21817360"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 20:08:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="827774097"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="827774097"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 20:08:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Mar 2024 06:08:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: Fix DSB vblank waits with VRR
Date: Wed,  6 Mar 2024 06:08:03 +0200
Message-ID: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Make DSB vblank waits work correctly when VRR is enabled.

Ville Syrjälä (3):
  drm/i915/vrr: Generate VRR "safe window" for DSB
  drm/i915/dsb: Fix DSB vblank waits when using VRR
  drm/i915/dsb: Always set DSB_SKIP_WAITS_EN

 drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c |  7 ++++---
 drivers/gpu/drm/i915/i915_reg.h          |  2 +-
 3 files changed, 20 insertions(+), 4 deletions(-)

-- 
2.43.0

