Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D7A666E2F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8223310E8B6;
	Thu, 12 Jan 2023 09:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35FB10E8B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 09:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673515707; x=1705051707;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yz/KIC7kL2rnHF7/GhVaP5UeLcTLwduYEF8EQ9c9L9w=;
 b=Pq3drYWdQLPMBdozPMRogVbOZEHIYgunSyflq0kMBIvLFbd0qc373ld3
 irl2cJCYVD51UVSZJCR3Dc5tan3Gim7vewYXuIBKM5Hj7YTuo5Zg1NZ/f
 rgoxGGVEgfYHd0H32Mqme88JZyTuSGSbi6HKnKh7A7vw4j6axKj6U3+xJ
 YuXYk0fGvOixHl4J/JFQMMGuntBnv04+2eFZvG7QYrtXT2iN6jJTjqlJ8
 I5KYyqaXFlh1CSm3pjqgpSr5+QQzlh5/hSYo5NqzSUFcU+LIPvTi+zMC6
 StsxZGgBlT2LWwFYsib9p66PfV2qRHdXOB0Ku2Q1qVvoUVs4DqgHHz2oq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307178116"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="307178116"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:28:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831627512"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="831627512"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2023 01:28:09 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 14:57:56 +0530
Message-Id: <20230112092758.539070-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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

  A new step of 480MHz has been added on SKUs that have an RPL-U
device id. This particular step is to support 120Hz panels
more efficiently.

This patchset adds a new table to include this new CDCLK
step. Details can be found in BSpec entry 55409.

Create a new sub-platform to identify RPL-U which will enable
us to make the differentiation during CDCLK initialization.

Furthermore, we need to make a distinction between ES (Engineering
Sample) and QS (Quality Sample) parts as this change comes only
to QS parts. This version of the patch does not include this change
as we are yet to make a decision if this particular part needs
to be upstreamed.(see comments on revision 2)

Chaitanya Kumar Borah (2):
  drm/i915: Add sub platform for 480MHz CDCLK step
  drm/i915/display: Add 480 MHz CDCLK steps for RPL-U

 drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            |  2 ++
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.c   |  8 +++++++
 drivers/gpu/drm/i915/intel_device_info.h   |  2 ++
 include/drm/i915_pciids.h                  | 11 +++++----
 6 files changed, 46 insertions(+), 4 deletions(-)

-- 
2.25.1

