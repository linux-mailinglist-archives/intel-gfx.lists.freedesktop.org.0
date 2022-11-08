Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BAF620889
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 05:54:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5AAF10E3A6;
	Tue,  8 Nov 2022 04:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA08510E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 04:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667883254; x=1699419254;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oPYY8OCSP2KmbrCca1wzwT2bsYfQm/PVBZDvWpqrq3o=;
 b=NG9eNX1HRqkAe25eBdA65Y8Qh+rjGFRcRTx83a6JOZR4ieC2BC8adLGW
 +ZD8ZFzcXvjTQbmYzOL6YfxCtgnphw/2yFp1/vpgp1g60WcR8X2piHtLh
 DiebpaP+VPoPL09GvxOTs1yVPokKa10wvWnAOsAE1pWseOL2ziBiR8gzm
 cgkjvxTebRt1zpweqLONCV9ejtpK+kaCve68yaAXmg+Y2mG5jMzKoQvRy
 9tfAkW5Arfo9dM8ZmAvqmQRAnk6LA/rowJGh7L5BnqxrNcASH/AjsqruQ
 A6BjPR0JzKps5VhATPkgXZLvQI8x4nZuFSn9PKGenUfEwzIr8D8AL8qIt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374875738"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374875738"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 20:54:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965436274"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="965436274"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 07 Nov 2022 20:54:13 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 20:56:27 -0800
Message-Id: <20221108045628.4187260-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] drm/i915/pxp: Separate PXP FW interface
 structures for
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

In preparation for MTL, we need to separate the PXP FW structure
definitions for version 42 vs 43 for any commands we use. Details
are included in patch 1.

Changes from prior rev:
   v2: Fixed all the comments from Daniele and Jani.
   v1: Fixed build issue.


Alan Previn (1):
  drm/i915/pxp: Separate PXP FW interface structures for both v42 and 43

 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 28 +++++++++
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 26 +++++++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 35 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 10 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 12 ++--
 .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
 6 files changed, 100 insertions(+), 68 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
 delete mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h


base-commit: 36c4da734877fd1d69f0b9601dd7c3fa118d18f6
-- 
2.34.1

