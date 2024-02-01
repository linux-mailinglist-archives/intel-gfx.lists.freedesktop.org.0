Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB86684532D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 09:55:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7235010E6A8;
	Thu,  1 Feb 2024 08:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C6210E6A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 08:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706777701; x=1738313701;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=48lCLMiJ+oEA92Kur48IcBdRJZdbanU5hnWhKLykYe0=;
 b=W70lerlNL3OEIcizFU31zBxcfszTw/hAO6FRTkQZuH4DZGD4CNRNqQSw
 HjBLRyzLcjCBFtehEYiqF1E2GkXkSPLcTdfh3UpasraaX92zVsgzO5bzD
 gBIflLPVkcCjLBYHMFinwqajt1LU8UlxdmyhOH75rKy9rBsbwou5khy8N
 D4BVkHZRkeocYEpaYZ0r2tbJ2m41yjVid4fhcS84XwZlndlFFx1TsuJ4U
 /da0mGHwRxfBbDmcl55pcG8+z4L1tsMYFP2BYT9WzgKNgSUGOzznHC88J
 QsjRclodOiYKQ7TG5HVnVMi9uQb8Qmgw7Hs11X9WIaJWKGnikO0aNLfZH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22348519"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="22348519"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 00:55:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="908179012"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="908179012"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2024 00:54:59 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] Program Deep PKG_C_LATENCY register
Date: Thu,  1 Feb 2024 14:21:57 +0530
Message-Id: <20240201085158.1000285-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

The change needed here is to read the latency from the punit and write
it onto the display register PKGC_LATENCY, so that the DE_WAKE is
asserted at latency us before window2 to bring memory up for DSBs
Hw is also responsible to block from entering to deep PKGC until frame
start.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/lnl: Add pkgc related register
  drm/i915/lnl: Program PKGC_LATENCY register

 drivers/gpu/drm/i915/display/skl_watermark.c  | 31 +++++++++++++++++++
 .../gpu/drm/i915/display/skl_watermark_regs.h |  4 +++
 2 files changed, 35 insertions(+)

-- 
2.25.1

