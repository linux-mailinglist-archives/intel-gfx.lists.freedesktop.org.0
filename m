Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F9E8BCBA7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 12:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6296810EAD5;
	Mon,  6 May 2024 10:09:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/HMYCua";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C7E10EAD5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 10:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714990150; x=1746526150;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2n+GdrrUcqJS/tPec6CmGyOJaedSqJIB4LE81xNSIRI=;
 b=W/HMYCuaos/ZH4UV6oBDLa+IOjeMk1oxqilbptf9rTS8Ixe8ui43NAs5
 4/Vn1nICbdIjN8nCK6o9TiBOwX1XSDUzEziC+PikCJlbqDfTNu/pQQMr7
 xZc8lO5dNxYHPN+EUzjGCQRcUUFdpXiET+rC0AUVJxURmIvqHuJs4x42P
 uCZIqCODNg4OxVA66l+SLsfB3t95CTVOLocQIM2ibR4lHidfrB0o5Om8Q
 9n1XQlRFzgY09Nb8Cbe9O4k4SdJVpmKtRSMbI/fRgEU8ie5pKsQEJKqT5
 uf+ss6FI6/6Z1lDLx0FDUelzjDn6V1PsR/o0TzbJ++mHjUuAGkA70f7WX A==;
X-CSE-ConnectionGUID: Npb6iqU4SviIxi7tQOsy5g==
X-CSE-MsgGUID: JyrdTAVSRzeSJ+TkK78kzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="21341423"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21341423"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:10 -0700
X-CSE-ConnectionGUID: y59QhJRFRIe/77Qv3MUgzQ==
X-CSE-MsgGUID: PzS1rL21SZa1/lkivAF79w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32718993"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/display: remove implicit dev_priv from pipe crc
Date: Mon,  6 May 2024 13:09:01 +0300
Message-Id: <cover.1714990089.git.jani.nikula@intel.com>
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

Jani Nikula (3):
  drm/i915: pass dev_priv explicitly to PIPE_CRC_CTL
  drm/i915: pass dev_priv explicitly to PIPE_CRC_*
  drm/i915: pass dev_priv explicitly to PORT_DFT2_G4X

 .../gpu/drm/i915/display/intel_display_irq.c  | 24 +++++++++--------
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 20 +++++++-------
 drivers/gpu/drm/i915/i915_reg.h               | 26 +++++++++----------
 3 files changed, 36 insertions(+), 34 deletions(-)

-- 
2.39.2

