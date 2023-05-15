Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B17270415B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 01:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2DE10E2C7;
	Mon, 15 May 2023 23:17:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B20F10E10A
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 23:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684192623; x=1715728623;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UpCZByxRo8ryzv14t6znQEE4AOlc5heQFEGdbDLrCi0=;
 b=ALONXsvhC1zD0rCdUPNiE4gFcOdUDcItJFj2Lez8LHb8YR+G+jc+eMkq
 ycaJCIZUJ5pudKNfRVHlqo6XT5qlCK1+GsVyjS1RfipALuXtjVtHMq1km
 5za0N1MXgXeQc0oGYCPZP5OtNDur6vKML4MsSiG6D7zvjstekPczmpgPw
 XiOK9Y3Io4ZujL62lJWKnRkxHaHJx7kU4j3Wm9LxcWy+1ikKuwy0ueYT4
 A+qPnCgBM0MTDmxsCSI4HhFIVmEfaFVGs0udr7fSbPwTiOQ+uvyBp3WiL
 b7x3x+zKLrek8SAdS6F1bK+vjK376Oj9ib82IU9LCw+nSvbVMP/v11w8D Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348828693"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="348828693"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 16:17:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678609244"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="678609244"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 16:17:02 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:17:23 -0700
Message-Id: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] C20 Computed HDMI TMDS pixel clocks
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

Use computed C20 HDMI TMDS pixel clocks to support 25.175MHz to 594000MHz modes. Add 16 Bit mask operators to support C20 phy programming.

v2: checkpatch fixes
BSPEC: 64568
Cc: Imre Deak <imre.deak@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>

Clint Taylor (2):
  drm/i915: Add 16bit register/mask operators
  drm/i915/hdmi: C20 computed PLL frequencies

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 89 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 53 +++++++++++
 drivers/gpu/drm/i915/i915_reg_defs.h          | 48 ++++++++++
 3 files changed, 184 insertions(+), 6 deletions(-)

-- 
2.25.1

