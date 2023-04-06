Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 792AD6D984B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 15:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C96010EBC9;
	Thu,  6 Apr 2023 13:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE94210EBBD
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 13:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680787965; x=1712323965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=es5qgnxvc5Pr026UtpK3AjTTtmcVTxm7iVGEifVTkpQ=;
 b=iYmYP2tdTKHNb6v1qlD70c54Q0j4/oOAjaO3L82Dhp0i+4GkNz74fp3d
 7iptRoZFZ6FaaDZNYMCEMBpDqwmC4ixr7peTqTnrlmaYZ+fW1Z2LZEI5S
 gKjskj0DpbdA8KLbsr4ag5V4Lhe1//q88zNegnH80//2XQjTZcKaNtKBI
 hxO3f7WxXdLmD9ODKcDLgz1zX3L0J34qepdcPxup6SA+Wb9TRLSrsmIEB
 a77VTDO++S51umGujxSxNL8GiWiUkO1c1Vw4HKi9/iv2SynLBEdRFNnoE
 4+vEvqiydIejvpRjqmIOrfNcCAYPrrkCdLEe5Tz1TE9d7z4G8eyGYGzjZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="345352294"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345352294"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 06:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="751641638"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="751641638"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 06 Apr 2023 06:07:28 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 16:02:13 +0300
Message-Id: <20230406130221.2998457-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/8] drm/i915/mtl: Add Support for C10 phy
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

Phy programming support for C10 phy. This is the first part of
the series that adds support for PICA phy. Later stage the support
for C20 phy is added. This series gets the eDP going.

v2: Register refinitions in intel_cx0_phy_regs.h file (Jani)
v3: Add waits for between message bus writes (Imre)
    General cleanups and macro definitions (Imre)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Ankit Nautiyal (1):
  drm/i915/display/mtl: Fill port width in
    DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI

Clint Taylor (1):
  drm/i915/mtl: Initial DDI port setup

José Roberto de Souza (1):
  drm/i915/mtl/display: Implement DisplayPort sequences

Mika Kahola (4):
  drm/i915/mtl: Add DP rates
  drm/i915/mtl: Create separate reg file for PICA registers
  drm/i915/mtl: Add vswing programming for C10 phys
  drm/i915/mtl: MTL PICA hotplug detection

Radhakrishna Sripada (1):
  drm/i915/mtl: Add Support for C10 PHY message bus and pll programming

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1259 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   47 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  190 +++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  447 +++++-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   31 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |    6 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../drm/i915/display/intel_display_types.h    |   13 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   26 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_irq.c               |  249 +++-
 drivers/gpu/drm/i915/i915_reg.h               |   43 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 17 files changed, 2361 insertions(+), 34 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

-- 
2.34.1

