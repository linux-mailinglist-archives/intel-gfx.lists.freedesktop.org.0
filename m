Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16918C015A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6015810FC9F;
	Wed,  8 May 2024 15:48:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdGHJzuj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F64A10FC9F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183282; x=1746719282;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vRgUGqlJljPlDQysqTVu9ubQFXSDH6bh+bOkrsKmLxY=;
 b=HdGHJzujZSwqJ4arLIzhXkSJq+COs3ILK1KGH49q9c05UXE8e2EKDG+7
 40KQ1s45Djz57oaUR8lB7TTy7Mh1z7tUqBrC0YovIgLvlKrKmCeo+0YKP
 sDd6w5wO0d877g5n1eCB7GD3WdJQ1Ha9Z7VutFFq7qEK9AUrsclBxwTW1
 tmUbWvo2zjoAERvkUUWkdMQdfhPJCe+hP0Q3E4Qh+DSIuQUr0XC4y11RQ
 lslBRQ3mNAU+ipxjMj3AJKsHSI4WWJmDErjD2KlTIkdA3cH5pYjKUpTmj
 N797r7AsfIkgEjV0rOSrk4x7hc3rBx2f2Mr+3vDR+cWSp4Ryxlqoml3w2 g==;
X-CSE-ConnectionGUID: aqbAtexSTRGUfIwZmNETlQ==
X-CSE-MsgGUID: UZWULiIbTfeLCZEm6eNS6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10924946"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10924946"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:02 -0700
X-CSE-ConnectionGUID: 0pi0bkvpRPWEAmlOfoKF1Q==
X-CSE-MsgGUID: 5zs9in2rSrSjwm8VJzM5tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52137044"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/10] drm/i915/display: remove implicit dev_priv from VRR
Date: Wed,  8 May 2024 18:47:46 +0300
Message-Id: <cover.1715183162.git.jani.nikula@intel.com>
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

Continue removing implicit dev_priv local variable use.

This is all scripted, based on [1].

[1] https://lore.kernel.org/r/cover.1714136165.git.jani.nikula@intel.com

Jani Nikula (10):
  drm/i915: pass dev_priv explicitly to TRANS_VRR_CTL
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAX
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VMIN
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAXSHIFT
  drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VTOTAL_PREV
  drm/i915: pass dev_priv explicitly to TRANS_VRR_FLIPLINE
  drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS2
  drm/i915: pass dev_priv explicitly to TRANS_PUSH
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VSYNC

 drivers/gpu/drm/i915/display/intel_vrr.c | 52 +++++++++++++++---------
 drivers/gpu/drm/i915/i915_reg.h          | 20 ++++-----
 2 files changed, 43 insertions(+), 29 deletions(-)

-- 
2.39.2

