Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EB07CE752
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 21:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB53B10E43F;
	Wed, 18 Oct 2023 19:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AC010E43F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697656028; x=1729192028;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l4H395Dg6duY9LjNNgMUe8M6E+QyjCmebBYyT/dCyTw=;
 b=XblXcV4Q1lX/RIhokfxxiKBIMsn8PDg7+4DB4H9/LInuHaZL6OVbb4Si
 dehiB1HQ5PhltGFCIkfF+Q1oTJ814TVBWeDhKioW21CSVq2f5k/3MhYEA
 YK1PSdfjrzMmRktzQwGu1YltaqX9IJ1eroayFIuXnHPtYMk0gEcCTjUh1
 TLtoHwjuoPHdOIDVAVxU2I5Sl35X3T+j2q5+b0gtu6zOulKru96CluNh6
 buNyoH5nPXAsO1j4LBvZJoqGaSWLL1k8bHh96LMH1/mxvUuAwNnLzALtT
 DGVX+RafaLmE+4Ec0WSmVXWnbmAU5Cx/c06k/NaFjNP+VbHtawzhxlLFJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="452561530"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="452561530"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 12:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="873147296"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="873147296"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga002.fm.intel.com with ESMTP; 18 Oct 2023 12:07:07 -0700
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Wed, 18 Oct 2023 12:07:01 -0700
Message-ID: <20231018190701.2388817-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.13.1
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit 7727f7e3b3358713c7c91c64a835e80c331a6b8b:

  Merge branch 'patch-1696561325' into 'main' (2023-10-06 03:04:57 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.13.1

for you to fetch changes up to 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa:

  i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34:26 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL

 WHENCE               |   8 ++++----
 i915/adlp_guc_70.bin | Bin 297984 -> 342848 bytes
 i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
 i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
 i915/tgl_guc_70.bin  | Bin 285888 -> 330304 bytes
 5 files changed, 4 insertions(+), 4 deletions(-)
