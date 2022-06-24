Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A79B559DE2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 17:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBC710E459;
	Fri, 24 Jun 2022 15:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F72B10E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 15:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086392; x=1687622392;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hy9xCN4UC2wNmNiS5zr72VUf9X7aDwab25w4qvSdatM=;
 b=j+PT6bwbmkAt+yJw7GlTx6raYeiTW0LR6w8Zy4nNKR+GwKu5oXc1hLOh
 NqdiSnxeMBJf5FVYbUp0UUTLRi13za0+vkQZu6onUfUo1iqElsgxOnoA0
 YdxY7oaR0yy/eKmy6F2lmkqUdjQX0r7gixxjVVosOsubBtzm4BpjYXSL2
 InoRT7mCYOnO9JuMZ+HJF2tKcE4JxuXYeI1n+JIXBh5esshM5JuYkh3M8
 SbU4SLyADquERKTW2OXA/xv5goFl+zZ6Q04nu8CnNv5WqBac+Ce/jo5gM
 We3O26BJBxg9uvrL46+5vqjmmDj9bhbU1lznAuYiF2Xh2JH6K8rAljlZW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762282"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762282"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835169980"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:39 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:13 +0530
Message-Id: <20220624155922.7435-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/9] DG2 VRAM_SR Support
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

TODO: GT and GuC Interface state save/restore on VRAM_SR entry/exit.

Anshuman Gupta (8):
  drm/i915/dgfx: OpRegion VRAM Self Refresh Support
  drm/i915/dg1: OpRegion PCON DG1 MBD config support
  drm/i915/dg2: Add DG2_NB_MBD subplatform
  drm/i915/dg2: DG2 MBD config
  drm/i915/dgfx: Add has_lmem_sr
  drm/i915/dgfx: Setup VRAM SR with D3COLD
  Drm/i915/rpm: Enable D3Cold VRAM SR Support
  drm/i915/rpm: d3cold Policy

Tvrtko Ursulin (1):
  drm/i915/xehpsdv: Store lmem region in gt

 drivers/gpu/drm/i915/display/intel_opregion.c | 101 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h |  17 +++
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |  25 +++++
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 drivers/gpu/drm/i915/i915_params.c            |   4 +
 drivers/gpu/drm/i915/i915_params.h            |   1 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 drivers/gpu/drm/i915/intel_device_info.c      |  14 +++
 drivers/gpu/drm/i915/intel_device_info.h      |   4 +-
 drivers/gpu/drm/i915/intel_pcode.h            |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |  95 ++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h               |   3 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       |   3 +-
 drivers/gpu/drm/i915/intel_runtime_pm.h       |   7 ++
 include/drm/i915_pciids.h                     |  23 ++--
 18 files changed, 302 insertions(+), 11 deletions(-)

-- 
2.26.2

