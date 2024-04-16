Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1858A6517
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D200C10F769;
	Tue, 16 Apr 2024 07:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d1aZzjhw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 371DF10EEE2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713252603; x=1744788603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oxEaSjCUJlRcTC7hLM4LCM9da8Pchi1teGWWWLVM79U=;
 b=d1aZzjhwbUIK070aJia9sKwXamqirboUMCyMxhkaXKzUCrbM/Z7pSdoi
 Dg2DCl90x4VrzzFEAWsvaLBkQaaSe9HPQTESKaTZsybN2bXSQ13wDC2q/
 OZF4UO2djjuAV4gpuLQXjW2OUYQKglgKWLv6axEPBmukvOogW0cmeiYxv
 VNg/X2F2hDAEfP2mUVgHsdUi8aa+p9GUY8Eapv/v9uazUNV1udoqu0YWK
 +Wso5pbR1mK7w7U6cMRyyLQcnPxl+/YCdIbSLrDku4GqleGboyc5CcQls
 PHv3gknymu1LE2Fa08IVPwphtGTze/4FZ+vy9wvqVVo8ygaXPINLyH93V g==;
X-CSE-ConnectionGUID: IJq/OEebRYSOIxhAozJAFQ==
X-CSE-MsgGUID: c1PUgxf4SSqp1nXQFGUb3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="34063812"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="34063812"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:30:02 -0700
X-CSE-ConnectionGUID: WqCfMTH+QrWBo2FMXRfEBQ==
X-CSE-MsgGUID: i6XXztF6Sg+AD/mXYZU/4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22206604"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 16 Apr 2024 00:30:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Disable DPLS Gating around PPS
Date: Tue, 16 Apr 2024 12:57:32 +0530
Message-ID: <20240416072733.624048-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
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

Disable DPLS Gating around Panel Power on Sequence.
WA:16023567976

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915: Add SCLKGATE_DIS register definition
  drm/i915/pps: Disable DPLS_GATING around pps sequence

 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
 2 files changed, 16 insertions(+)

-- 
2.43.2

