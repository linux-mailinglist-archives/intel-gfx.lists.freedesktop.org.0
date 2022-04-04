Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130364F160C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 15:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB3610E237;
	Mon,  4 Apr 2022 13:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3841310E00B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 13:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649079532; x=1680615532;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=me1+tPmf6n/070P7csOZvJPhwer7f+v9xoTPy92nUI4=;
 b=bSaUzpfHgD2/h+P0/yWMro5JkC28pnFl75/rk2md7dJpiGAzu0XkL0tE
 u4FdH5NbMTXO1p+GQhAACYJn1UVXSb6oVs2CM8UU4JA+eEZUUNQcksNbM
 EiNCO0mVN4C3xMgAqVydwxkr2EvVpVNgcyiWCDp53Nm+LCqi84p1EVRIr
 zYI1NpGv9ZzcltZCp64Q8nXClvXyXB7mtVp+B02tb/a/m0E0IsCvytu5G
 z58+Mta1jLBQIZQodCsc2wNxiSWJvc/xwAtelGoTs+/WcDT3zoRdOALEk
 t0K2NIx+PP6/hCNjZnR8aTTBcm/sPpa5naXsPF7A7Pch7nFcJU/heO3H9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="321210198"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="321210198"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 06:38:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="548655961"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 06:38:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 16:38:42 +0300
Message-Id: <20220404133846.131401-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/dg2: Add support for render/media
 decompression
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
Cc: =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a rebased version of patches 15-17 of [1], adding DG2 display
engine support for decompressing render and media compressed
framebuffers.

The dependency patches from [1] should be merged already to drm-tip.

It addresses the review comments on the modifier layout description from
Nanley, updates the commit logs vs. flat CCS and Tile4 and splits out
the changes adding the modifiers to drm_fourcc.h to separate patches.

[1] https://patchwork.freedesktop.org/series/95686/

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>

Anshuman Gupta (1):
  drm/i915/dg2: Add support for DG2 clear color compression

Matt Roper (2):
  drm/fourcc: Introduce format modifiers for DG2 render and media
    compression
  drm/i915/dg2: Add support for DG2 render and media compression

Mika Kahola (1):
  drm/fourcc: Introduce format modifier for DG2 clear color

 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 53 +++++++++++++++----
 .../drm/i915/display/skl_universal_plane.c    | 49 +++++++++++++----
 include/uapi/drm/drm_fourcc.h                 | 36 +++++++++++++
 4 files changed, 122 insertions(+), 20 deletions(-)

-- 
2.30.2

