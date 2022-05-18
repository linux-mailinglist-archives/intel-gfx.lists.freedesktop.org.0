Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C980F52BB52
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2473B10ED82;
	Wed, 18 May 2022 13:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A56810ED79
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879267; x=1684415267;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0jtO8WnLmwB9/I+G6+PCFPvzBdxdMzsmlI+raDlo9MI=;
 b=imar0KhXl7mzP1ieZUXqAXavTG02J8um79seuwkqm1itZ1uTkI9Yk4DG
 ErG92ybJNvmG/htG3WrjjMht7Jk/qtCeF82lnBjoVepY7cKxpV0lllEVl
 Yj5F1+2zESjjsQWlVB3HrqcaGiMo7yH1cw+HqfWT6BtDMoqG4BWu09x3B
 EJS3NDsG4o93+KBJEMJCdKPWcH7yDKTOL44atVf7kGXAmPrW/x6y8UZm7
 9FsJnAtwCUYRRF00XnV9+I3RbqnCryznX82MkNgeVX/TvkqrFJ+nQZjqY
 ajhiTerifEZqtoIdWOjth8kjTVVoFbmSr5igz5fPmUxjkHyxfdEzpPBKR w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071659"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071659"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314242"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:25 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:09 +0530
Message-Id: <20220518130716.10936-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] DG2 VRAM_SR Support
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series add DG2 D3Cold VRAM_SR support.

TODO: GuC Interface state save/restore on VRAM_SR entry/exit.

Anshuman Gupta (7):
  drm/i915/dgfx: OpRegion VRAM Self Refresh Support
  drm/i915/dg1: OpRegion PCON DG1 MBD config support
  drm/i915/dg2: DG2 MBD config
  drm/i915/dgfx: Add has_lmem_sr
  drm/i915/pcode: DGFX PCODE MBOX headers
  drm/i915/dgfx: Setup VRAM SR with D3COLD
  drm/i915/rpm: Enable D3Cold VRAM SR Support

 drivers/gpu/drm/i915/display/intel_opregion.c | 85 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 17 ++++
 drivers/gpu/drm/i915/i915_driver.c            | 28 ++++++
 drivers/gpu/drm/i915/i915_drv.h               | 17 ++++
 drivers/gpu/drm/i915/i915_pci.c               |  2 +
 drivers/gpu/drm/i915/i915_reg.h               |  7 ++
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_pcode.c            | 25 ++++++
 drivers/gpu/drm/i915/intel_pcode.h            |  1 +
 drivers/gpu/drm/i915/intel_pm.c               | 43 ++++++++++
 drivers/gpu/drm/i915/intel_pm.h               |  2 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  3 +-
 12 files changed, 228 insertions(+), 3 deletions(-)

-- 
2.26.2

