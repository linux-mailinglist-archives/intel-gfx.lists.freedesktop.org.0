Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E3F825501
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9524410E63C;
	Fri,  5 Jan 2024 14:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E49010E63C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704464118; x=1736000118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oC4TMAVGD96mu4/Qu91qnvMN9Y31/1oMXr3YogccT9A=;
 b=WgASevoWmFTOm8OstOc2qTsPHAHoIk3LBccQJKgdopNhhOHc+WK7b7E3
 3IO8bZhPlPoKSz+4A2+W/OAZaUgali6x9cL4l/cETyocD7SSvoAZBxBWD
 R1OqEeUiN3q9Qnnir4ywuI2riQ30xVPu37C+rpVAo3yqe/Yq093354/OW
 GEZ1N3aUOqivsKUeDCIDYqq+1MuzU8xLRbjan1qqwjZPpNwZZzVyl61xj
 cR2U+u5/iF60HF2VAOdnQD280hqq1zSqQRRRZuRoWW+xYaC0yQCc58r2h
 0cmc6mZwYP8MMXTJZz2T9dGkqduqhMa27c2JSY7oeDESUTIaKocmJ/odb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4880523"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4880523"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="22504262"
Received: from oreshotx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.52.142])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:16 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/4] ALPM AUX Wake Configuration
Date: Fri,  5 Jan 2024 16:15:00 +0200
Message-Id: <20240105141504.2808991-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set is adding some missing AUX wake related configuration
for Lunar Lake.

Also ALPM parameters are moved to separate struct because amount of
parameters is about to increase in upcoming patches.

Additionally all ALPM related register definitions are added for
Lunar Lake.

v2:
  - Use REG_BIT instead of BIT
  - Add commit message to first patch

Jouni Högander (4):
  drm/i915/alpm: Add ALPM register definitions
  drm/i915/psr: Add alpm_parameters struct
  drm/i915/alpm: Calculate ALPM Entry check
  drm/i915/alpm: Alpm aux wake configuration for lnl

 .../drm/i915/display/intel_display_types.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  69 ++++++++++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 103 ++++++++++++++++++
 3 files changed, 169 insertions(+), 14 deletions(-)

-- 
2.34.1

